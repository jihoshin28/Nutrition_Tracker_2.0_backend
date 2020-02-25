class Api::V1::NotesController < ApplicationController 
    skip_before_action :authorized
    def index
        notes = Note.where(query_params)
        render json: NoteSerializer.new(notes)
    end

    def create
        note = Note.create(note_params)
        if note.valid?
            render json: { note: NoteSerializer.new(note) } 
        else 
            render json: { error: 'failed to create note'}
        end
    end

    def show
        note = Note.find(params[:id])
        render json: NoteSerializer.new(note)
    end

    def update
        note = Note.find(params[:id])
        note.update(note_params)
        render json: { update: params[:id]}
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: { destroy: params[:id] }
    end

    private

    def note_params
        params.require(:note).permit(:subject, :text, :user_id, :date)
    end

    def query_params
        params.permit(:user_id, :date)
    end
end