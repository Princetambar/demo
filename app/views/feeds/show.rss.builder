xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title @feed.title
    xml.description "Feed demo...."
    xml.link feed_posts_url

    @feed.feed_posts.order("published_at").each do |feed_post|
      xml.item do
        xml.title feed_post.title
        xml.link feed_post_url(feed_post),:target => "_blank"
        xml.guid feed_post_url(feed_post),:target => "_blank"
       end
    end
  end
end