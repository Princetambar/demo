class CreateFeedPosts < ActiveRecord::Migration
  def self.up
    create_table :feed_posts do |t|
    	t.integer   :feed_id
      t.string 		:title
      t.string 		:content
      t.string 		:url
      t.datetime  :published_at
      t.string    :guid
      t.timestamps
    end
  end

  def self.down
    drop_table :feed_posts
  end
end
