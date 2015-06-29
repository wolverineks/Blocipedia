class RegenCollaboratorsTable < ActiveRecord::Migration
  def change
    drop_table :collaborators

    create_table :collaborators do |t|

      t.references :wiki
      t.references :user

      t.timestamps null: false
    end

    add_index :collaborators, :wiki_id
    add_index :collaborators, :user_id

  end
end
