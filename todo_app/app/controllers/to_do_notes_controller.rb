class ToDoNotesController < ApplicationController
  before_action :set_to_do_note, only: [:show, :edit, :update, :destroy]

  # GET /to_do_notes
  # GET /to_do_notes.json
  def index
    @to_do_notes = ToDoNote.all
  end

  # GET /to_do_notes/1
  # GET /to_do_notes/1.json
  def show
  end

  # GET /to_do_notes/new
  def new
    @to_do_note = ToDoNote.new
    #@to_do_note.user_id=current_user.id
    params[:user_id] = current_user.id
  end

  # GET /to_do_notes/1/edit
  def edit
  end

  # POST /to_do_notes
  # POST /to_do_notes.json
  def create
    @to_do_note = ToDoNote.new(to_do_note_params)

    respond_to do |format|
      if @to_do_note.save
        format.html { redirect_to @to_do_note, notice: 'To do note was successfully created.' }
        format.json { render :show, status: :created, location: @to_do_note }
      else
        format.html { render :new }
        format.json { render json: @to_do_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /to_do_notes/1
  # PATCH/PUT /to_do_notes/1.json
  def update
    respond_to do |format|
      if @to_do_note.update(to_do_note_params)
        format.html { redirect_to @to_do_note, notice: 'To do note was successfully updated.' }
        format.json { render :show, status: :ok, location: @to_do_note }
      else
        format.html { render :edit }
        format.json { render json: @to_do_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_do_notes/1
  # DELETE /to_do_notes/1.json
  def destroy
    @to_do_note.destroy
    respond_to do |format|
      format.html { redirect_to to_do_notes_url, notice: 'To do note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do_note
      @to_do_note = ToDoNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def to_do_note_params
      params.require(:to_do_note).permit(:title, :notes, :user_id, :done)
    end
end
