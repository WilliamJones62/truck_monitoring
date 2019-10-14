class TruckLogisticsController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :load_truck, except: [:showimage]
  before_action :set_truck_logistic, only: [:show, :edit, :update, :destroy]
  before_action :build_lists, only: [:new, :create, :edit, :update]
  before_action :set_image, only: [:showimage]

  # GET /truck_logistics
  def index
  end

  # GET /truck_logistics/1
  def show
  end

  # GET /truck_logistics/new
  def new
    @truck_logistic = @truck.truck_logistics.new
    @truck_logistic.logistic_attachments.build title: 'REGISTRATION'
    @truck_logistic.logistic_attachments.build title: 'HUT'
    @truck_logistic.logistic_attachments.build title: 'IFTA'
    @truck_logistic.logistic_attachments.build title: 'MEDALLION'
    @truck_logistic.logistic_attachments.build title: 'DECAL'
    @truck_logistic.logistic_attachments.build title: 'FRONT'
    @truck_logistic.logistic_attachments.build title: 'LEFT'
    @truck_logistic.logistic_attachments.build title: 'RIGHT'
    @truck_logistic.logistic_attachments.build title: 'REAR'
  end

  # GET /truck_logistics/1/edit
  def edit
  end

  # POST /truck_logistics
  def create
    @truck_logistic = @truck.truck_logistics.new(truck_logistic_params)

    respond_to do |format|
      if @truck_logistic.save
        format.html { redirect_to [@truck, @truck_logistic], notice: 'Truck logistic was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /truck_logistics/1
  def update
    respond_to do |format|
      if @truck_logistic.update(truck_logistic_params)
        format.html { redirect_to [@truck, @truck_logistic], notice: 'Truck logistic was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /truck_logistics/1
  def destroy
    @truck_logistic.destroy
    respond_to do |format|
      format.html { redirect_to truck_truck_logistics_path(@truck), notice: 'Truck logistic was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_truck
      @truck = Truck.find(params[:truck_id])
    end

    def set_truck_logistic
      @truck_logistic = TruckLogistic.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @service_type = ['LINE HAUL', 'LAST MILE']
    end

    def set_image
      @logistic_attachment = LogisticAttachment.find(params[:id])
      @truck_logistic = TruckLogistic.find(@logistic_attachment.truck_logistic_id)
      @truck = Truck.find(@truck_logistic.truck_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_logistic_params
      params.require(:truck_logistic).permit(:reg_expires, :pre_pass, :service_type, :hut_expires, :ifta_expires, :medallion_expires, :roadnet, :user_id, :page_complete, :out_roadnet, :out_pre_pass, :decommissioned,
        logistic_attachments_attributes:
          [
            :id,
            :image,
            :title
            ])
    end
end
