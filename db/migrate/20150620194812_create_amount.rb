class CreateAmount < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :default
    end
  end
end
