require 'spec_helper'

feature 'Create States' do 
	scenario "Can create State" do
		
		visit '/states'
		click_link 'New State'

		fill_in('Name', with: "Colima")
		fill_in('Abvr', with: "Col.")
		check('Predet')
		#select("Countries", from: 'Countries')
		click_button('Save')

		page.should have_content("State has been created.")
	end
	
end