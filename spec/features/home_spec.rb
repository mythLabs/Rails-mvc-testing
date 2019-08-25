require 'rails_helper'

RSpec.describe 'Home features' do
    it 'displays name of app' do
        visit('/home')
        expect(page).to have_content('Book Tracker')

        click_link('About')
        expect(current_path).to eql('/about')
        expect(page).to have_content('About')
    end
end