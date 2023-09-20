class JobseekersController < ApplicationController
  before_action :set_jobseeker, only: %i[ show edit update destroy ]

  # GET /jobseekers or /jobseekers.json
  def index
    @jobseekers = Jobseeker.all
  end

  # GET /jobseekers/1 or /jobseekers/1.json
  def show
  end

  # GET /jobseekers/new
  def new
    @jobseeker = Jobseeker.new
  end

  # GET /jobseekers/1/edit
  def edit
  end

  # POST /jobseekers or /jobseekers.json
  def create
    @jobseeker = Jobseeker.new(jobseeker_params)

    respond_to do |format|
      if @jobseeker.save
        format.html { redirect_to jobseeker_url(@jobseeker), notice: "Jobseeker was successfully created." }
        format.json { render :show, status: :created, location: @jobseeker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobseeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobseekers/1 or /jobseekers/1.json
  def update
    respond_to do |format|
      if @jobseeker.update(jobseeker_params)
        format.html { redirect_to jobseeker_url(@jobseeker), notice: "Jobseeker was successfully updated." }
        format.json { render :show, status: :ok, location: @jobseeker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobseeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobseekers/1 or /jobseekers/1.json
  def destroy
    @jobseeker.destroy

    respond_to do |format|
      format.html { redirect_to jobseekers_url, notice: "Jobseeker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobseeker
      @jobseeker = Jobseeker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobseeker_params
      params.require(:jobseeker).permit(:full_name, :email, :site_id)
    end
end
