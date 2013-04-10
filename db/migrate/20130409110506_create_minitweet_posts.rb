class CreateMinitweetPosts < ActiveRecord::Migration
  def change
    create_table :minitweet_posts do |t|
      t.text :content

      t.timestamps
    end
  end
end
