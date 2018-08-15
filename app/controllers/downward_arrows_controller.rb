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
      params.require(:downward_arrow).permit(:autothought1, :distortion1, :response1,
      :created_at, :updated_at, :autothought2, :distortion2, :response2, :autothought3,
      :distortion3, :response3, :autothought4, :distortion4, :response4,
      :autothought5, :distortion5, :response5, :autothought6, :distortion6,
      :response6, :autothought7, :distortion7, :response7, :autothought8,
      :distortion8, :response8, :autothought9, :distortion9, :response9,
      :autothought10, :distortion10, :response10, :autothought11, :distortion11,
      :response11, :autothought12, :distortion12, :response12, :autothought13,
      :distortion13, :response13, :autothought14, :distortion14, :response14,
      :autothought15, :distortion15, :response15, :autothought16, :distortion16,
      :response16, :autothought17, :distortion17, :response17, :autothought18,
      :distortion18, :response18, :autothought19, :distortion19, :response19,
      :autothought20, :distortion20, :response20)
    end
end
