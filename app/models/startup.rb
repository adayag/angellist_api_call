class Startup
	include ActiveModel::Conversion
	extend ActiveModel::Naming
	attr_accessor :name, :logo_url, :city, :state, :product_description
	attr_accessor :market_names, :high_concept_pitch, :angel_list_url, :company_url

	def initialize(attributes={})
		@market_names = []
		attributes.each do |key, value|
			send "#{key}=", value
		end
	end

	def persisted?
		false
	end

	def add_market(market)
		@market_names << market
	end

	def market_names
		@market_names.join("\n")
	end
end
