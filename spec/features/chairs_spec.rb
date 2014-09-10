require 'rails_helper'

feature 'CRUD chairs' do
  scenario 'User can visit home page and see welcome' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a chair'
    fill_in 'Size', with: 'Small'
    fill_in 'Color', with: 'Green'
    click_on 'Add chair'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Green'
  end
end