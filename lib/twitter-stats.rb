require "twitter-stats/version"
require 'nokogiri'
require 'open-uri'

module Twitter
  module Stats

    class Count
      def initialize(username, keyword, days_ago = 356)
        @username = username.to_s
        @keyword = keyword.to_s
        @days_ago = days_ago.to_i
      end

      def value
        @value ||= fetch
      end

      private
      def min_time
        Time.now.to_i - @days_ago * 24 * 60 * 60
      end

      def topsy_search_url
        "http://topsy.com/s?q=#{@keyword}+from%3A#{@username}&order=rank&mintime=#{min_time}"
      end

      def fetch
        doc = Nokogiri::HTML(open(topsy_search_url))
        doc.css('.result-desc strong')[2].content.to_i
      end
    end

  end
end
