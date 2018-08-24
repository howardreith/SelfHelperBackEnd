class PublicRoutinesController < ApplicationController
  before_action :set_public_routine, only: [:show, :update, :destroy]

  # GET /public_routines
  def index
    @public_routines = PublicRoutine.all

    render json: @public_routines
  end

  # GET /public_routines/1
  def show
    render json: @public_routine
  end

  # POST /public_routines
  def create
    @public_routine = PublicRoutine.new(public_routine_params)

    if @public_routine.save
      render json: @public_routine, status: :created
    else
      render json: @public_routine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /public_routines/1
  def update
    if @public_routine.update(public_routine_params)
      render json: @public_routine
    else
      render json: @public_routine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /public_routines/1
  def destroy
    @public_routine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_routine
      @public_routine = PublicRoutine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def public_routine_params
      params.require(:public_routine).permit(:name, :include, :exercise1, :reps1, :sets1, :exercise2, :reps2,
      :sets2, :exercise3, :reps3, :sets3, :exercise4, :reps4, :sets4, :exercise5, :reps5, :sets5,
      :exercise6, :reps6, :sets6, :exercise7, :reps7, :sets7, :exercise8, :reps8, :sets8)
    end
end
