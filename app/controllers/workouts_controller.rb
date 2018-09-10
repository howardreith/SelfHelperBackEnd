class WorkoutsController < ProtectedController
  before_action :set_workout, only: [:show, :update, :destroy]

  # GET /workouts
  def index
    @workouts = current_user.workouts.all

    render json: @workouts
  end

  # GET /workouts/1
  def show
    render json: current_user.workouts.find(params[:id])
  end

  # POST /workouts
  def create
    @workout = current_user.workouts.build(workout_params)

    if @workout.save
      render json: @workout, status: :created
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = current_user.workouts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:name, :id, :created_at, :updated_at,
      :exercise1, :exercise1reps1, :exercise1reps2, :exercise1reps3,
      :exercise1reps4, :exercise1reps5, :exercise1reps6, :exercise1reps7, :exercise1reps8,
      :exercise2, :exercise2reps1, :exercise2reps2, :exercise2reps3,
      :exercise2reps4, :exercise2reps5, :exercise2reps6, :exercise2reps7, :exercise2reps8,
      :exercise3, :exercise3reps1, :exercise3reps2, :exercise3reps3,
      :exercise3reps4, :exercise3reps5, :exercise3reps6, :exercise3reps7, :exercise3reps8,
      :exercise4, :exercise4reps1, :exercise4reps2, :exercise4reps3,
      :exercise4reps4, :exercise4reps5, :exercise4reps6, :exercise4reps7, :exercise4reps8,
      :exercise5, :exercise5reps1, :exercise5reps2, :exercise5reps3,
      :exercise5reps4, :exercise5reps5, :exercise5reps6, :exercise5reps7, :exercise5reps8,
      :exercise6, :exercise6reps1, :exercise6reps2, :exercise6reps3,
      :exercise6reps4, :exercise6reps5, :exercise6reps6, :exercise6reps7, :exercise6reps8,
      :exercise7, :exercise7reps1, :exercise7reps2, :exercise7reps3,
      :exercise7reps4, :exercise7reps5, :exercise7reps6, :exercise7reps7, :exercise7reps8,
      :exercise8, :exercise8reps1, :exercise8reps2, :exercise8reps3,
      :exercise8reps4, :exercise8reps5, :exercise8reps6, :exercise8reps7, :exercise8reps8,
      :exercise9, :exercise9reps1, :exercise9reps2, :exercise9reps3,
      :exercise9reps4, :exercise9reps5, :exercise9reps6, :exercise9reps7, :exercise9reps8,
      :exercise10, :exercise10reps1, :exercise10reps2, :exercise10reps3,
      :exercise10reps4, :exercise10reps5, :exercise10reps6, :exercise10reps7, :exercise10reps8,
      :exercise1weight, :exercise2weight, :exercise3weight, :exercise4weight, :exercise5weight,
      :exercise6weight, :exercise7weight, :exercise8weight, :exercise9weight, :exercise10weight)
    end
end
