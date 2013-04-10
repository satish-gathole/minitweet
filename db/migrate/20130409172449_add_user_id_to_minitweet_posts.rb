class AddUserIdToMinitweetPosts < ActiveRecord::Migration
  def change
    add_column :minitweet_posts, :user_id, :integer
  end
end
