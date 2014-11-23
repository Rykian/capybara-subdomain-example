require 'rails_helper'

feature 'Testing with Poltergeist', js: true do
  scenario 'main domain' do
    visit '/'
    expect(page).to have_content 'subdomain:'
  end

  scenario 'subdomains' do
    switch_subdomain 'test' do
      visit '/'
      expect(page).to have_content 'subdomain: test'
    end
  end
end
