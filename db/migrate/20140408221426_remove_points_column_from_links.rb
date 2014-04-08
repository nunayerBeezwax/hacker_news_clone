class RemovePointsColumnFromLinks < ActiveRecord::Migration
  def change
    remove_column :links, :points
  end
end
