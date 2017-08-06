class InstsController < ApplicationController
  before_action :set_inst, only: [:show, :edit, :update, :destroy]
  
  require 'inst_decorator'

  # GET /insts
  # GET /insts.json
  def index
    @insts = Inst.all
  end

  # GET /insts/1
  # GET /insts/1.json
  def show
  end

  # GET /insts/new
  def new
    @inst = Inst.new
  end

  # GET /insts/1/edit
  def edit
  end

  # POST /insts
  # POST /insts.json
def create
@inst = Inst.new()
@inst.firstname = params[:inst][:firstname]
@inst.lastname = params[:inst][:lastname]
@inst.color = params[:inst][:color]
@inst.manufacturer = params[:inst][:manufacturer]
myInst = BasicInst.new(10, @inst.manufacturer, @inst.color)
# add the extra features to the new instrument
if params[:inst][:windows].to_s.length > 0 then
myInst = ElectricWindowsDecorator.new(myInst)
end
if params[:inst][:devise2].to_s.length > 0 then
myInst = Devise2Decorator.new(myInst)
end

## populate the cost and the description details
@inst.cost = myInst.cost
@inst.description = myInst.details
respond_to do |format|
if @inst.save
format.html { redirect_to @inst, notice: 'Inst was successfully created.'}
format.json { render :show, status: :created, location: @inst }
else
format.html { render :new }
format.json { render json: @inst.errors, status: :unprocessable_entity }
end
end
end

  # PATCH/PUT /insts/1
  # PATCH/PUT /insts/1.json
  def update
    respond_to do |format|
      if @inst.update(inst_params)
        format.html { redirect_to @inst, notice: 'Inst was successfully updated.' }
        format.json { render :show, status: :ok, location: @inst }
      else
        format.html { render :edit }
        format.json { render json: @inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insts/1
  # DELETE /insts/1.json
  def destroy
    @inst.destroy
    respond_to do |format|
      format.html { redirect_to insts_url, notice: 'Inst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inst
      @inst = Inst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inst_params
      params.require(:inst).permit(:firstname, :lastname, :manufacturer, :cost, :description, :color)
    end
end
