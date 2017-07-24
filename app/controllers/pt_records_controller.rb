class PtRecordsController < ApplicationController
  before_action :set_pt_record, only: [:show, :edit, :update, :destroy]

  # GET /pt_records
  # GET /pt_records.json
  def index
    @pt_records = PtRecord.all
  end

  # GET /pt_records/1
  # GET /pt_records/1.json
  def show
  end

  # GET /pt_records/new
  def new
    @pt_record = PtRecord.new
  end

  # GET /pt_records/1/edit
  def edit
  end

  # POST /pt_records
  # POST /pt_records.json
  def create
    @pt_record = PtRecord.new(pt_record_params)

    respond_to do |format|
      if @pt_record.save
        format.html { redirect_to @pt_record, notice: 'Pt record was successfully created.' }
        format.json { render :show, status: :created, location: @pt_record }
      else
        format.html { render :new }
        format.json { render json: @pt_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt_records/1
  # PATCH/PUT /pt_records/1.json
  def update
    respond_to do |format|
      if @pt_record.update(pt_record_params)
        format.html { redirect_to @pt_record, notice: 'Pt record was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_record }
      else
        format.html { render :edit }
        format.json { render json: @pt_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt_records/1
  # DELETE /pt_records/1.json
  def destroy
    @pt_record.destroy
    respond_to do |format|
      format.html { redirect_to pt_records_url, notice: 'Pt record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_record
      @pt_record = PtRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_record_params
      params.require(:pt_record).permit(:firstname, :lastname, :string, :email, :birthdate, :infection)
    end
end
