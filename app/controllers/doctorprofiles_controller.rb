class DoctorprofilesController < ApplicationController
  before_action :set_doctorprofile, only: [:show, :edit, :update, :destroy]
  
  
  
  def signedinuserdoctorprofile
doctorprofile = Doctorprofile.find_by_user_id(current_user.id)
if doctorprofile.nil?
redirect_to "/doctorprofiles/new"
else
@doctorprofile = Doctorprofile.find_by_user_id(current_user.id)
redirect_to "/doctorprofiles/#{@doctorprofile.id}"
end
end

  # GET /doctorprofiles
  # GET /doctorprofiles.json
  def index
    @doctorprofiles = Doctorprofile.all
  end

  # GET /doctorprofiles/1
  # GET /doctorprofiles/1.json
  def show
  end

  # GET /doctorprofiles/new
def new
@doctorprofile = Doctorprofile.new
@doctorprofile.user_id = current_user.id
respond_to do |format|
format.html # new.html.erb
format.json { render json: @doctorprofile }
end
end

  # GET /doctorprofiles/1/edit
  def edit
  end

  # POST /doctorprofiles
  # POST /doctorprofiles.json
  def create
    @doctorprofile = Doctorprofile.new(doctorprofile_params)

    respond_to do |format|
      if @doctorprofile.save
        format.html { redirect_to @doctorprofile, notice: 'Doctorprofile was successfully created.' }
        format.json { render :show, status: :created, location: @doctorprofile }
      else
        format.html { render :new }
        format.json { render json: @doctorprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctorprofiles/1
  # PATCH/PUT /doctorprofiles/1.json
  def update
    respond_to do |format|
      if @doctorprofile.update(doctorprofile_params)
        format.html { redirect_to @doctorprofile, notice: 'Doctorprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctorprofile }
      else
        format.html { render :edit }
        format.json { render json: @doctorprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctorprofiles/1
  # DELETE /doctorprofiles/1.json
  def destroy
    @doctorprofile.destroy
    respond_to do |format|
      format.html { redirect_to doctorprofiles_url, notice: 'Doctorprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctorprofile
      @doctorprofile = Doctorprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctorprofile_params
      params.require(:doctorprofile).permit(:firstname, :lastname, :qualification, :clinic, :user_id)
    end
end
