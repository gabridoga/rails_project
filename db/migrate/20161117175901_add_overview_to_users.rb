class AddOverviewToUsers < ActiveRecord::Migration
  def change
    add_column :users, :overview, :string
  end
end
