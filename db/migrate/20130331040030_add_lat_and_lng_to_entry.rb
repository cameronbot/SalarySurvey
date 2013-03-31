class AddLatAndLngToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :lat, :decimal, :precision => 10, :scale => 6
    add_column :entries, :lng, :decimal, :precision => 10, :scale => 6
    remove_column :entries, :zip
  end
end
