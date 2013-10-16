require 'angel_list_parser'

class StartupsController < ApplicationController
	def new
		@startup = Startup.new
	end

	def fill_from_angel_list
		json = AngelListParser.open_url(params['startup']['angel_list_url'])
		@startup = Startup.new(:name => json['name'],
													 :city => json['locations'][0]['display_name'],
													 :product_description => json['product_desc'],
													 :high_concept_pitch => json['high_concept'],
													 :logo_url => json['logo_url'],
													 :angel_list_url => json['company_url']
			                    )
    json['markets'].each do |market|
    	@startup.add_market market['name']
    end
    render 'new.html.erb'
	end
end
