class AddAtfileToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :atfile
    end
  end

  def self.down
    drop_attached_file :posts, :atfile
  end
end
