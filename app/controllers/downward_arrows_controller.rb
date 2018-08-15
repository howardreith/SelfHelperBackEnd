class DownwardArrowsController < ProtectedController
  before_action :set_downward_arrow, only: [:show, :update, :destroy]

  # GET /downward_arrows
  def index
    @downward_arrows = current_user.downward_arrows.all

    render json: @downward_arrows
  end

  # GET /downward_arrows/1
  def show
    render json: current_user.downward_arrows.find(params[:id])
  end

  # POST /downward_arrows
  def create
    @downward_arrow = current_user.downward_arrows.build(downward_arrow_params)

    if @downward_arrow.save
      render json: @downward_arrow, status: :created
    else
      render json: @downward_arrow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /downward_arrows/1
  def update
    if @downward_arrow.update(downward_arrow_params)
      render json: @downward_arrow
    else
      render json: @downward_arrow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /downward_arrows/1
  def destroy
    @downward_arrow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_downward_arrow
      @downward_arrow = current_user.downward_arrows.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def downward_arrow_params
      params.require(:downward_arrow).permit(:autothought, :distortion, :response, :created_at, :updated_at)
    end
end
