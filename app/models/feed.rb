#require 'feedzirra'
class Feed < ActiveRecord::Base
  has_many    :feed_posts
  before_save :update_title
  validates   :url, :presence =>  true
  after_save  :add_or_update_posts

  private

   def update_title
   	# feed = Feedzirra::Feed.fetch_and_parse(url)
    # self.title = feed.title if feed
   end

   def add_or_update_posts
   	 FeedPost.update_posts_from_feed(self.url,self.id)
   end
end
