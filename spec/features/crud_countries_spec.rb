require 'spec_helper'

feature 'Create coutries' do  
	scenario "Can create country" do
		visit '/countries'

		click_link 'New Country'

		fill_in('Name', with: "Mexico")
		fill_in('Abvr', with: "Mex.")
		check("Predet")
		click_button('Save')

		page.should have_content("Country has been created.")

	end
	
end