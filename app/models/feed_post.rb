require 'rss'
class FeedPost < ActiveRecord::Base
	belongs_to :feed

	def self.update_posts_from_feed(feed_url,feed_id)
   feed = RSS::Parser.parse(open(feed_url).read, false)
   feed.items.each do |entry|
    feed_post = where("feed_id =? and url =?",feed_id,entry.link)
    if feed_post.blank?
     	  create!(
     	    :feed_id      => feed_id,
       	  :title        => entry.title,
       	  :content      => entry.description,
       	  :url          => entry.link,
       	  :published_at => entry.pubDate.to_date
     	  )
   	end
   end
end
end
