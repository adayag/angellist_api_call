require 'spec_helper'

describe "Angel List Parser" do
	context "Successful API request" do
		it "displays product description", :vcr do
			visit root_path
	    fill_in "startup_company_url", with: "http://www.visible.vc"
	    click_on "Fill from AngelList"
	    page.should have_content  'Visible simplifies the sharing, management, and reporting of data between startups and investors.'
		end
	end

	context "Unsuccessful API request", :vcr do
		it "displays Invalid URL" do
			visit root_path
	    fill_in "startup_company_url", with: "http://www.visible.com"
	    click_on "Fill from AngelList"
	    page.should have_content  'Invalid URL'
		end
	end
end
