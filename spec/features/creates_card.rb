require 'rails_helper'

feature 'user creates new card' do
  scenario ' userly properly fills in card name' do

    visit new_card_path

    fill_in 'Name', with: 'King Kong'
    fill_in 'Flavor_text', with: "A big bad monkey"
    click_on 'submit'


    expect(page).to have_content('Card created successfully')
    expect(page).to have_content('King Kong')
  end

  scenario 'user does not specify card name' do
    click_on 'submit'

    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Make Your Own Card Here!")

  end
end
