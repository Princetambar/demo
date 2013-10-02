class FeedPostsController < ApplicationController

	def show
	 @feed_post = FeedPost.find(params[:id])
	end

end
