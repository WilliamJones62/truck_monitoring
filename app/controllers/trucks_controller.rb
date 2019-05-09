class TrucksController < ApplicationController
  before_action :set_truck, only: [:show, :edit, :update, :destroy]
  before_action :build_lists, only: [:new, :create, :edit, :update]

  # GET /trucks
  def index
    @trucks = Truck.all
  end

  # GET /trucks/1
  def show
  end

  # GET /trucks/new
  def new
    @truck = Truck.new
  end

  # GET /trucks/1/edit
  def edit
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
    respond_to do |format|
      if @truck.update(truck_params)
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck
      @truck = Truck.find(params[:id])
    end

    def build_lists
      @type = ['BOX TRUCK', 'TRACTOR', 'TRAILER']
      @status = ['TO BE SCHEDULED', 'SCHEDULED', 'INSTALLED', 'ACTIVE', 'INACTIVE', 'UNINSTALLED']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_params
      params.require(:truck).permit(:truck_id, :vehicle_type, :video_status, :temp_status, :camera1, :camera2, :camera3, :dvr, :acquired, :disposed, :install, :deinstall, :install_company, :location, :notes)
    end
end
