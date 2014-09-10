require 'rails_helper'

feature 'CRUD chairs' do
  scenario 'User can visit home page and see welcome' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end