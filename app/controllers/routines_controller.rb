class RoutinesController < ProtectedController
  before_action :set_routine, only: [:show, :update, :destroy]

  # GET /routines
  def index
    @routines = current_user.routines.all

    render json: @routines
  end

  # GET /routines/1
  def show
    render json: current_user.routines.find(params[:id])
  end

  # POST /routines
  def create
    @routine = current_user.routines.build(routine_params)

    if @routine.save
      render json: @routine, status: :created
    else
      render json: @routine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routines/1
  def update
    if @routine.update(routine_params)
      render json: @routine
    else
      render json: @routine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routines/1
  def destroy
    @routine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routine
      @routine = current_user.routines.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def routine_params
      params.require(:routine).permit(:name, :include, :exercise1, :reps1, :sets1,
      :exercise2, :reps2, :sets2, :exercise3, :reps3, :sets3, :exercise4, :reps4,
      :sets4, :exercise5, :reps5, :sets5, :exercise6, :reps6, :sets6, :exercise7,
      :reps7, :sets7, :exercise8, :reps8, :sets8, :exercise9, :reps9, :sets9,
      :exercise10, :reps10, :sets10)
    end
end
