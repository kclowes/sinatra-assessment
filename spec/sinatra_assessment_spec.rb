require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'sinatra assessment' do
  scenario 'user can manage a list of items' do
    visit '/'
    expect(page).to have_content('Welcome')
    click_link 'Add a Product'
    fill_in('new_product', :with => 'Cow')
    click_button 'Create Product'
    expect(page).to have_content('Cow')
  end
end