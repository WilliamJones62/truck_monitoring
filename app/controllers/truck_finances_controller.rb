class TruckFinancesController < ApplicationController
  before_action :set_user_dept_and_manager
  before_action :load_truck, except: [:showimage]
  before_action :set_truck_finance, only: [:show, :edit, :update, :destroy]
  before_action :build_lists, only: [:new, :create, :edit, :update]
  before_action :set_image, only: [:showimage]

  # GET /truck_finances
  def index
  end

  # GET /truck_finances/1
  def show
  end

  # GET /truck_finances/new
  def new
    @truck_finance = @truck.truck_finances.new
    @truck_finance.finance_attachments.build title: 'INSURANCE'
    @truck_finance.finance_documents.build title: 'LEASE/RENTAL'
    @truck_finance.finance_attachments.build title: 'TITLE'
  end

  # GET /truck_finances/1/edit
  def edit
    if @truck_finance.finance_documents.length == 0
      @truck_finance.finance_documents.build title: 'LEASE/RENTAL'
    end
  end

  # POST /truck_finances
  def create
    @truck_finance = @truck.truck_finances.new(truck_finance_params)

    respond_to do |format|
      if @truck_finance.save
        format.html { redirect_to [@truck, @truck_finance], notice: 'Truck finance was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /truck_finances/1
  def update
    respond_to do |format|
      if @truck_finance.update(truck_finance_params)
        format.html { redirect_to [@truck, @truck_finance], notice: 'Truck finance was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /truck_finances/1
  def destroy
    @truck_finance.destroy
    respond_to do |format|
      format.html { redirect_to truck_truck_finances_path(@truck), notice: 'Truck finance was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_truck
      @truck = Truck.find(params[:truck_id])
    end

    def set_truck_finance
      @truck_finance = TruckFinance.find(params[:id])
    end

    def set_user_dept_and_manager
      @user = current_user.email.upcase
      @dept = current_user.user_dept.upcase
      @manager = current_user.dept_manager
    end

    def build_lists
      @contract_type = ['AWAIT LEASE', 'CAPITAL LEASE', 'LOAN', 'OPERATING LEASE', 'RENTAL']
    end

    def set_image
      @finance_attachment = FinanceAttachment.find(params[:id])
      @truck_finance = TruckFinance.find(@finance_attachment.truck_finance_id)
      @truck = Truck.find(@truck_finance.truck_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_finance_params
      params.require(:truck_finance).permit(:flat_rate, :mile_rate, :ins_expires, :wexcard, :ez_pass, :contract_type, :contract_start, :contract_end, :user_id, :wex_start, :wex_end, :user_id, :page_complete, :wexcard_return, :ezpass_return, :insurance_cancelled, :decommissioned, :ezstart, :ezend,
        finance_attachments_attributes:
          [
            :id,
            :image,
            :title
          ],
        finance_documents_attributes:
          [
            :id,
            :document,
            :title
            ])
    end
end
