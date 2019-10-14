class TruckRepairsController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :load_truck, except: [:showimage]
  before_action :set_truck_repair, only: [:show, :edit, :update, :destroy]
  before_action :set_image, only: [:showimage]
  before_action :build_lists

  # GET /truck_repairs
  def index
    @truck_repairs = @truck.truck_repairs.all
  end

  # GET /truck_repairs/1
  def show
  end

  # GET /truck_repairs/new
  def new
    @new = true
    @truck_repair = @truck.truck_repairs.new
    @truck_repairs = @truck.truck_repairs.all
    @truck_repair.repair_contacts.build
    @truck_repair.repair_attachments.build
  end

  # GET /truck_repairs/1/edit
  def edit
    @new = false
    @truck_repairs = @truck.truck_repairs.all
    @truck_repair.repair_contacts.build
    @truck_repair.repair_attachments.build
  end

  # POST /truck_repairs
  def create
    @truck_repair = @truck.truck_repairs.new(truck_repair_params)

    respond_to do |format|
      if @truck_repair.service_status
        @truck_repair.service_out = Date.today
      else
        @truck_repair.service_in = Date.today
      end
      if @truck_repair.save
        format.html { redirect_to [@truck, @truck_repair], notice: 'Truck repair was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /truck_repairs/1
  def update
    @truck_repairs = @truck.truck_repairs.all
    tp = truck_repair_params
    if (@truck_repair.service_status && tp[:service_status] == '0') || (!@truck_repair.service_status && tp[:service_status] == '1')
      # the flag has changed
      if tp[:service_status] == '1'
        tp[:service_out] = Date.today
      else
        tp[:service_in] = Date.today
      end
    end
    respond_to do |format|
      if @truck_repair.update(tp)
        format.html { redirect_to [@truck, @truck_repair], notice: 'Truck repair was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /truck_repairs/1
  def destroy
    @truck_repair.destroy
    respond_to do |format|
      format.html { redirect_to truck_truck_repairs_path(@truck), notice: 'Truck repair was successfully destroyed.' }
    end
  end

  def showimage
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_truck
      @truck = Truck.find(params[:truck_id])
    end

    def set_truck_repair
      @truck_repair = TruckRepair.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @contact_type = ['CALL', 'EMAIL', 'TEXT']
      @repair_type = ['BODY','BRAKES', 'ELECTRCAL', 'ENGINE', 'GLASS', 'LIGHTS', 'REEFER', 'TIRE', 'TRANSMISSION']
    end

    def set_image
      @repair_attachment = RepairAttachment.find(params[:id])
      @truck_repair = TruckRepair.find(@repair_attachment.truck_repair_id)
      @truck = Truck.find(@truck_repair.truck_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_repair_params
      params.require(:truck_repair).permit(:truck_id, :service_in, :service_out, :service_status, :out_reason, :maint_date, :repair_estimate, :costs, :repair_type, :user_id,
      repair_contacts_attributes:
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
      repair_attachments_attributes:
        [
          :id,
          :image
          ])

    end
end
