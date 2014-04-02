class AddUserIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :user_id, :belongs_to
  end
end
