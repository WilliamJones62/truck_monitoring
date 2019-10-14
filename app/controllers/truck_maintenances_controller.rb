class TruckMaintenancesController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :load_truck
  before_action :set_truck_maintenance, only: [:show, :edit, :update, :destroy]
  before_action :build_lists

  # GET /truck_maintenances
  def index
    @truck_maintenances = @truck.truck_maintenances.all
  end

  # GET /truck_maintenances/1
  def show
  end

  # GET /truck_maintenances/new
  def new
    @truck_maintenance = @truck.truck_maintenances.new
    @truck_maintenances = @truck.truck_maintenances.all
    # set the first service date.
    if @truck.truck_finances.count == 0
      now = Date.today
    elsif @truck.truck_finances.first.contract_start.blank?
      now = Date.today
    else
      now = @truck.truck_finances.first.contract_start
    end
    if now.day > 28
      first = now.change(day: 1)
      first = first + 4.months
    else
      first = now + 3.months
    end
    # need to create schedule records for this new maintenance record.
    if ["TRACTOR SLEEPER", "TRACTOR DAY CAB", "STRAIGHT TRUCK 22'", "STRAIGHT TRUCK 28'"].include? @truck.vehicle_type
      3.times do
        if ["TRACTOR SLEEPER", "TRACTOR DAY CAB"].include? @truck.vehicle_type
          #Tractors do 100,000 miles a year
          @truck_maintenance.maintenance_schedules.build scheduled_date: first - 2.months, maint_type: 'A'
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
          # 'B' and 'C' services include an 'A' service
          @truck_maintenance.maintenance_schedules.build scheduled_date: first + 1.month, maint_type: 'A'
          @truck_maintenance.maintenance_schedules.build scheduled_date: first + 2.months, maint_type: 'A'
          first = first + 3.months
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
          @truck_maintenance.maintenance_schedules.build scheduled_date: first + 1.month, maint_type: 'A'
          first = first + 3.months
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
          @truck_maintenance.maintenance_schedules.build scheduled_date: first + 1.month, maint_type: 'A'
          @truck_maintenance.maintenance_schedules.build scheduled_date: first + 2.months, maint_type: 'A'
          first = first + 3.months
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'C'
          first = first + 3.months
        else
          #straight trucks do 60,000
          @truck_maintenance.maintenance_schedules.build scheduled_date: first - 2.months, maint_type: 'A'
          2.times do
            @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
            first = first + 3.months
          end
          @truck_maintenance.maintenance_schedules.build scheduled_date: first - 2.months, maint_type: 'A'
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
          first = first + 3.months
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'C'
          first = first + 3.months
        end
      end
    elsif ["TRAILER"].include? @truck.vehicle_type
      first = now + 2.months
      10.times do
        9.times do
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'A'
          first = first + 1.month
        end
        first = first + 1.month
        @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
        first = first + 2.months
      end
    else
      # Box trucks and vans do 40,000
      4.times do
        3.times do
          @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'B'
          first = first + 3.months
        end
        @truck_maintenance.maintenance_schedules.build scheduled_date: first, maint_type: 'C'
        first = first + 3.months
      end
    end
  end

  # GET /truck_maintenances/1/edit
  def edit
    @truck_maintenances = @truck.truck_maintenances.all
    @truck_maintenance.maintenance_contacts.build
  end

  # POST /truck_maintenances
  def create
    @truck_maintenance = @truck.truck_maintenances.new(truck_maintenance_params)

    respond_to do |format|
      if @truck_maintenance.service_status
        @truck_maintenance.service_out = Date.today
      else
        @truck_maintenance.service_in = Date.today
      end
      if @truck_maintenance.save
        format.html { redirect_to [@truck, @truck_maintenance], notice: 'Truck maintenance was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /truck_maintenances/1
  def update
    @truck_maintenances = @truck.truck_maintenances.all
    tp = truck_maintenance_params
    if (@truck_maintenance.service_status && tp[:service_status] == '0') || (!@truck_maintenance.service_status && tp[:service_status] == '1')
      # the flag has changed
      if tp[:service_status] == '1'
        tp[:service_out] = Date.today
      else
        tp[:service_in] = Date.today
      end
    end
    respond_to do |format|
      if @truck_maintenance.update(tp)
        format.html { redirect_to [@truck, @truck_maintenance], notice: 'Truck maintenance was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /truck_maintenances/1
  def destroy
    @truck_maintenance.destroy
    respond_to do |format|
      format.html { redirect_to truck_truck_maintenances_path(@truck), notice: 'Truck maintenance was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_truck
      @truck = Truck.find(params[:truck_id])
    end

    def set_truck_maintenance
      @truck_maintenance = TruckMaintenance.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @contact_type = ['CALL', 'EMAIL', 'TEXT']
      @maint_type = ['A', 'B', 'C']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_maintenance_params
      params.require(:truck_maintenance).permit(:truck_id, :service_in, :service_out, :service_status, :out_reason, :maint_date, :user_id,
      maintenance_contacts_attributes:
        [
          :id,
          :company,
          :contact_name,
          :contact_date,
          :contact_time,
          :contact_type,
          :contact_details,
          :employee
          ],
      maintenance_schedules_attributes:
        [
          :id,
          :scheduled_date,
          :mileage,
          :maint_type,
          :actual_date,
          :service_in,
          :service_out
          ]
        )
    end
end
