class TruckAccidentsController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :load_truck, except: [:showimage]
  before_action :set_truck_accident, only: [:show, :edit, :update, :destroy]
  before_action :set_image, only: [:showimage]
  before_action :build_lists

  # GET /truck_accidents
  def index
    @truck_accidents = @truck.truck_accidents.all
  end

  # GET /truck_accidents/1
  def show
  end

  # GET /truck_accidents/new
  def new
    @truck_accident = @truck.truck_accidents.new
    @truck_accidents = @truck.truck_accidents.all
    @truck_accident.accident_contacts.build
    @truck_accident.accident_attachments.build title: 'DRIVERS REPORT'
    @truck_accident.accident_attachments.build title: 'POLICE REPORT'
    @truck_accident.accident_attachments.build title: 'PHOTO 1'
    @truck_accident.accident_attachments.build title: 'PHOTO 2'
    @truck_accident.accident_attachments.build title: 'PHOTO 3'
    @truck_accident.accident_attachments.build title: 'PHOTO 4'
    @truck_accident.accident_videos.build title: 'TRUCK'
    @truck_accident.accident_videos.build title: 'ADDITIONAL 1'
    @truck_accident.accident_videos.build title: 'ADDITIONAL 2'
  end

  # GET /truck_accidents/1/edit
  def edit
    @truck_accidents = @truck.truck_accidents.all
    @truck_accident.accident_contacts.build
  end

  # POST /truck_accidents
  def create
    @truck_accident = @truck.truck_accidents.new(truck_accident_params)

    respond_to do |format|
      if @truck_accident.save
        format.html { redirect_to [@truck, @truck_accident], notice: 'Truck accident was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /truck_accidents/1
  def update
    @truck_accidents = @truck.truck_accidents.all
    respond_to do |format|
      if @truck_accident.update(truck_accident_params)
        format.html { redirect_to [@truck, @truck_accident], notice: 'Truck accident was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /truck_accidents/1
  def destroy
    @truck_accident.destroy
    respond_to do |format|
      format.html { redirect_to truck_truck_accidents_path(@truck), notice: 'Truck accident was successfully destroyed.' }
    end
  end

  def showimage
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_truck
      @truck = Truck.find(params[:truck_id])
    end

    def set_truck_accident
      @truck_accident = TruckAccident.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @contact_type = ['CALL', 'EMAIL', 'INTERVIEW', 'TEXT']
      @claim_status = ['Active', 'Closed']
    end

    def set_image
      @accident_attachment = AccidentAttachment.find(params[:id])
      @truck_accident = TruckAccident.find(@accident_attachment.truck_accident_id)
      @truck = Truck.find(@truck_accident.truck_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_accident_params
      params.require(:truck_accident).permit(:truck_id, :accident_date, :driver, :route, :claim, :location, :accident_time, :accident_detail, :injury, :dot_recordable, :towed, :report_filed, :damage_estimate, :costs, :claim_number, :route, :claim_date, :claim_status, :close_date, :recovery_amt, :reserve_amt, :reserve_date, :user_id,
        accident_contacts_attributes:
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
        accident_videos_attributes:
          [
            :id,
            :video,
            :title
          ],
        accident_attachments_attributes:
          [
            :id,
            :image,
            :title
            ])
      end

end
