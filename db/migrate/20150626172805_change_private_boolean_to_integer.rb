class ChangePrivateBooleanToInteger < ActiveRecord::Migration
  def change
    change_column :wikis, :private, :integer
  end
end
