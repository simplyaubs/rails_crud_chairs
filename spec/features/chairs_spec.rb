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

  scenario 'User can update a chair from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a chair'
    fill_in 'Size', with: 'Small'
    fill_in 'Color', with: 'Green'
    click_on 'Add chair'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Green'
    click_on 'Small'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Green'
    click_on 'Edit'
    fill_in 'Size', with: 'Large'
    fill_in 'Color', with: 'Red'
    click_on 'Update chair'
    expect(page).to have_content 'Large'
    expect(page).to have_content 'Red'
    expect(page).to_not have_content 'Small'
    expect(page).to_not have_content 'Green'
  end
end