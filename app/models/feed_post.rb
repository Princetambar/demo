#require 'feedzirra'
class FeedPost < ActiveRecord::Base
	belongs_to :feed

	def self.update_posts_from_feed(feed_url,feed_id)
  	# feed = Feedzirra::Feed.fetch_and_parse(feed_url)
  	# feed.entries.each do |entry|
   #  	unless exists? :guid => entry.id
   #    	create!(
   #    	  :feed_id      => feed_id
   #      	:title        => entry.title,
   #      	:content      => entry.summary,
   #      	:url          => entry.url,
   #      	:published_at => entry.published,
   #      	:guid         => entry.id
   #    	)
   #  	end
  end
end
