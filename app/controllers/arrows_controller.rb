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
      params.require(:arrow).permit(:autothought, :distortion, :response,
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
