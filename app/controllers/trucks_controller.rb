class TrucksController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :set_truck, only: [:show, :edit, :update, :destroy]
  before_action :build_lists, only: [:new, :create, :edit, :update]
  before_action :set_image, only: [:showimage]

  # GET /trucks
  def index
    @trucks = Truck.where(["start_decommission = ?", false])
  end

  def decomm
    @trucks = Truck.where(["start_decommission = ?", true])
  end

  # GET /trucks/1
  def show
  end

  # GET /trucks/new
  def new
    @new = true
    @truck = Truck.new
    @truck.truck_attachments.build
  end

  # GET /trucks/1/edit
  def edit
    @decommission = @truck.start_decommission
    @new = false
  end

  # POST /trucks
  def create
    @truck = Truck.new(truck_params)

    respond_to do |format|
      if @truck.save
        format.html { redirect_to @truck, notice: 'Truck was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /trucks/1
  def update
    tp = truck_params
    respond_to do |format|
      if @truck.update(tp)
        format.html { redirect_to @truck, notice: 'Truck was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /trucks/1
  def destroy
    @truck.destroy
    respond_to do |format|
      format.html { redirect_to trucks_url, notice: 'Truck was successfully destroyed.' }
    end
  end

  def showimage
  end

  def upload
  end

  def import
    Truck.import(params[:file])
    redirect_to root_url, notice: "Truck list imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck
      @truck = Truck.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @type = ['TRACTOR SLEEPER', 'TRACTOR DAY CAB', "BOX TRUCK 16'", "BOX TRUCK 18'", "STRAIGHT TRUCK 22'", "STRAIGHT TRUCK 28'", "VAN", "TRAILER"]
      @location = ['DES PLAINES, IL', 'UNION, NJ', 'HOUSTON, TX', 'AUSTIN, TX', 'BALTIMORE, MD', 'DALLAS, TX', 'EDINA, MN', 'MACON, GA', 'MIAMI, FL', 'ORLANDO, FL', 'DENVER, CO', 'DETROIT, MI', 'MINNEAPOLIS, MN', 'PHILADELPHIA, PA', 'RANDOLPH, MA', 'HARTFORD, CT', 'WASHINGTON, DC', 'BOSTON, MA']
      @contract_type = ['RENT', 'OPERATING LEASE', 'CAPITAL LEASE', 'LOAN']
      @service_type = ['LINE HAUL', 'LAST MILE']
      @status = ['TO BE SCHEDULED', 'SCHEDULED', 'INSTALLED', 'ACTIVE', 'INACTIVE', 'UNINSTALLED']
      @registered_to = ['DARTAGNAN', 'RYDER', 'SALEM']
      @attachments = ['INSURANCE', 'REGISTRATION', 'AGREEMENT', 'HUT', 'IFTA']
    end

    def set_image
      @truck_attachment = TruckAttachment.find(params[:id])
      @truck = Truck.find(@truck_attachment.truck_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_params
      params.require(:truck).permit(:truck_number, :vehicle_type, :video_status, :temp_status, :camera1, :camera2, :camera3, :dvr, :acquired, :disposed, :install, :deinstall, :install_company, :location, :notes, :vehicle_year, :make_model, :vin, :license, :flat_rate, :mile_rate, :registered_to, :service_start, :lease_end, :accident, :accident_driver, :insurance_claim, :temp_verified, :service_out, :truck_length, :reg_expires, :ins_expires, :wexcard, :ez_pass, :pre_pass, :out_reason, :maint_date, :service_flag, :contract_type, :contract_start, :contract_end, :service_type, :start_mileage, :hut_expires, :ifta_expires, :medalion_expires, :user_id, :truck_active, :start_decommission, :decommission_complete,
        truck_attachments_attributes:
          [
            :id,
            :image,
            :image_type
            ])
    end
end
