class TruckItsController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :load_truck
  before_action :set_truck_it, only: [:show, :edit, :update, :destroy]
  before_action :build_lists, only: [:new, :create, :edit, :update]

  # GET /truck_its
  def index
  end

  # GET /truck_its/1
  def show
  end

  # GET /truck_its/new
  def new
    @truck_it = @truck.truck_its.new
  end

  # GET /truck_its/1/edit
  def edit
  end

  # POST /truck_its
  def create
    @truck_it = @truck.truck_its.new(truck_it_params)

    respond_to do |format|
      if @truck_it.save
        format.html { redirect_to [@truck, @truck_it], notice: 'Truck IT was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /truck_its/1
  def update
    tp = truck_it_params
    if tp[:video_status] == 'ACTIVE' && @truck_it.video_status != 'ACTIVE'
      tp[:camera1] = true
      tp[:camera2] = true
      tp[:camera3] = true
      tp[:dvr] = true
    elsif (tp[:camera1] == '0' && @truck_it.camera1) || (tp[:camera2] == '0' && @truck_it.camera2) || (tp[:camera3] == '0' && @truck_it.camera3) ||(tp[:dvr] == '0' && @truck_it.dvr)
      tp[:video_status] = 'INACTIVE'
    end
    respond_to do |format|
      if @truck_it.update(tp)
        format.html { redirect_to [@truck, @truck_it], notice: 'Truck IT was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /truck_its/1
  def destroy
    @truck_it.destroy
    respond_to do |format|
      format.html { redirect_to truck_truck_its_path(@truck), notice: 'Truck IT was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_truck
      @truck = Truck.find(params[:truck_id])
    end

    def set_truck_it
      @truck_it = TruckIt.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @status = ['TO BE SCHEDULED', 'SCHEDULED', 'INSTALLED', 'ACTIVE', 'INACTIVE', 'UNINSTALLED']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_it_params
      params.require(:truck_it).permit(:video_status, :temp_status, :camera1, :camera2, :camera3, :dvr, :tablet, :install, :install_company, :notes, :temp_verified, :user_id, :page_complete, :decommissioned, :equipment_removed)
    end
end
