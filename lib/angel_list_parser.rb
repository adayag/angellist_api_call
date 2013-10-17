require 'open-uri'
require 'json'

module AngelListParser

	def open_url(url)
		url = strip_url(url)
		angellist = open("http://api.angel.co/1/startups/search.json?domain=#{url}")
		to_json(angellist.read)
	end

 private

	def to_json(body)
		JSON.parse(body)
	end

	def strip_url(url)
	  url.sub!(/https\:\/\/www./, '') if url.include? "https://www."
	  url.sub!(/http\:\/\/www./, '')  if url.include? "http://www."
	  url.sub!(/www./, '')            if url.include? "www."
	  return url
  end

  extend self
end
