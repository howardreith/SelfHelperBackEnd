class ColumMethodsController < ProtectedController
  before_action :set_colum_method, only: [:show, :update, :destroy]

  # GET /colum_methods
  def index
    @colum_methods = current_user.colum_methods.all

    render json: @colum_methods
  end

  # GET /colum_methods/1
  def show
    render json: current_user.colum_methods.find(params[:id])
  end

  # POST /colum_methods
  def create
    @colum_method = current_user.colum_methods.build(colum_method_params)

    if @colum_method.save
      render json: @colum_method, status: :created
    else
      render json: @colum_method.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /colum_methods/1
  def update
    if @colum_method.update(colum_method_params)
      render json: @colum_method
    else
      render json: @colum_method.errors, status: :unprocessable_entity
    end
  end

  # DELETE /colum_methods/1
  def destroy
    @colum_method.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colum_method
      @colum_method = current_user.colum_methods.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def colum_method_params
      params.require(:colum_method).permit(:event, :emotion, :autothought, :distortion, :response, :created_at, :updated_at)
    end
end
