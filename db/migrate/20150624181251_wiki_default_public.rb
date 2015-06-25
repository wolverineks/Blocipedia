class WikiDefaultPublic < ActiveRecord::Migration
  def change
    change_column_default(:wikis, :private, true)
  end
end
