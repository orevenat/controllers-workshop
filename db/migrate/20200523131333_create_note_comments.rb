class CreateNoteComments < ActiveRecord::Migration[6.0]
  def change
    create_table :note_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
