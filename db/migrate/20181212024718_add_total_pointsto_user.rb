class AddTotalPointstoUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_points, :integer
  end
end
