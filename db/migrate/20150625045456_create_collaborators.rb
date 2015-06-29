class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators, id: false do |t|

      t.references :wiki
      t.references :user

      t.timestamps null: false
    end

    add_index :collaborators, :wiki_id
    add_index :collaborators, :user_id

  end
end
