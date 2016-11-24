class AddAppurlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :appurl, :string
  end
end
