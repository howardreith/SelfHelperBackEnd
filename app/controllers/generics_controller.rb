class GenericsController < ProtectedController
  before_action :set_generic, only: [:show, :update, :destroy]

  # GET /generics
  def index
    @generics = current_user.generics.all

    render json: @generics
  end

  # GET /generics/1
  def show
    render json: current_user.generics.find(params[:id])
  end

  # POST /generics
  def create
    @generic = current_user.generics.build(generic_params)

    if @generic.save
      render json: @generic, status: :created
    else
      render json: @generic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /generics/1
  def update
    if @generic.update(generic_params)
      render json: @generic
    else
      render json: @generic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /generics/1
  def destroy
    @generic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic
      @generic = current_user.generics.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def generic_params
      params.require(:generic).permit(:activity, :fear_level, :created_at, :updated_at)
    end
end
