class ArrowsController < ProtectedController
  before_action :set_arrow, only: [:show, :update, :destroy]

  # GET /arrows
  def index
    @arrows = current_user.arrows.all

    render json: @arrows
  end

  # GET /arrows/1
  def show
    render json: current_user.arrows.find(params[:id])
  end

  # POST /journal_entries
  def create
    @arrow = current_user.arrows.build(arrow_params)

    if @arrow.save
      render json: @arrow, status: :created
    else
      render json: @arrow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arrows/1
  def update
    if @arrow.update(arrow_params)
      render json: @arrow
    else
      render json: @arrow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arrows/1
  def destroy
    @arrow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrow
      @arrow = current_user.arrows.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arrow_params
      params.require(:arrow).permit(:autothought, :distortion, :response, :created_at, :updated_at)
    end
end
