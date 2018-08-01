class JournalEntriesController < ProtectedController
  before_action :set_journal_entry, only: [:show, :update, :destroy]

  # GET /journal_entries
  def index
    @journal_entries = current_user.journal_entries.all

    render json: @journal_entries
  end

  # GET /journal_entries/1
  def show
    render json: Journal_entry.find(params[:id])
  end

  # POST /journal_entries
  def create
    @journal_entry = current_user.journal_entries.build(journal_entry_params)

    if @journal_entry.save
      render json: @journal_entry, status: :created
    else
      render json: @journal_entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /journal_entries/1
  def update
    if @journal_entry.update(journal_entry_params)
      render json: @journal_entry
    else
      render json: @journal_entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /journal_entries/1
  def destroy
    @journal_entry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_entry
      @journal_entry = current_user.journal_entries.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def journal_entry_params
      params.require(:journal_entry).permit(:title, :content, :starred, :dateCreated)
    end
end
