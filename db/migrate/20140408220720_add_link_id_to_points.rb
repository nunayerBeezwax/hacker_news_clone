class AddLinkIdToPoints < ActiveRecord::Migration
  def change
    add_column :points, :link_id, :integer
  end
end
