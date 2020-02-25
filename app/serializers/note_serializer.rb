class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :subject, :text, :user, :user_id, :date
end
