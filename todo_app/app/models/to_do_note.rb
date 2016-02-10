class ToDoNote < ActiveRecord::Base
  #@to_do_note = ToDoNote.new(to_do_note_params)
  #attr_accessible :title , :notes , :user_id , :done
  belongs_to :User
   delegate :name, to: User, prefix: true
  #def to_do_note_params
   #   params.require(:to_do_note).permit(:title, :notes, :user_id, :done)
   # end
end
