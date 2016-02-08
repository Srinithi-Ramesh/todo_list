json.array!(@to_do_notes) do |to_do_note|
  json.extract! to_do_note, :id, :title, :notes, :user_id, :done
  json.url to_do_note_url(to_do_note, format: :json)
end
