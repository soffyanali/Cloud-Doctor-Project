class DtrecordsController < ApplicationController
  before_action :set_dtrecord, only: [:show, :edit, :update, :destroy]

  # GET /dtrecords
  # GET /dtrecords.json
  def index
    @dtrecords = Dtrecord.all
  end

  # GET /dtrecords/1
  # GET /dtrecords/1.json
  def show
  end

  # GET /dtrecords/new
  def new
    @dtrecord = Dtrecord.new
  end

  # GET /dtrecords/1/edit
  def edit
  end

  # POST /dtrecords
  # POST /dtrecords.json
  def create
    @dtrecord = Dtrecord.new(dtrecord_params)

    respond_to do |format|
      if @dtrecord.save
        format.html { redirect_to @dtrecord, notice: 'Dtrecord was successfully created.' }
        format.json { render :show, status: :created, location: @dtrecord }
      else
        format.html { render :new }
        format.json { render json: @dtrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dtrecords/1
  # PATCH/PUT /dtrecords/1.json
  def update
    respond_to do |format|
      if @dtrecord.update(dtrecord_params)
        format.html { redirect_to @dtrecord, notice: 'Dtrecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @dtrecord }
      else
        format.html { render :edit }
        format.json { render json: @dtrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtrecords/1
  # DELETE /dtrecords/1.json
  def destroy
    @dtrecord.destroy
    respond_to do |format|
      format.html { redirect_to dtrecords_url, notice: 'Dtrecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dtrecord
      @dtrecord = Dtrecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dtrecord_params
      params.require(:dtrecord).permit(:name, :string, :age, :string, :user, :references, :clinic, :string)
    end
end
