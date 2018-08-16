class ExposuresController < ProtectedController
  before_action :set_exposure, only: [:show, :update, :destroy]

  # GET /exposures
  def index
    @exposures = current_user.exposures.all

    render json: @exposures
  end

  # GET /exposures/1
  def show
    render json: current_user.exposures.find(params[:id])
  end

  # POST /exposures
  def create
    @exposure = current_user.exposures.build(exposure_params)

    if @exposure.save
      render json: @exposure, status: :created
    else
      render json: @exposure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exposures/1
  def update
    if @exposure.update(exposure_params)
      render json: @exposure
    else
      render json: @exposure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exposures/1
  def destroy
    @exposure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exposure
      @exposure = current_user.exposures.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exposure_params
      params.require(:exposure).permit(:action, :prediction, :actual, :satisfaction, :created_at, :updated_at)
    end
end
