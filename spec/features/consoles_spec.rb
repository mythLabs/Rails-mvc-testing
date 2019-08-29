require 'rails_helper'

RSpec.describe 'Consoles features' do
    describe 'viewing of index' do
        it 'list all the consoles' do
            Console.create!(name:'Wii',manufacturer:'Nitendo')
            Console.create!(name:'PS4',manufacturer:'Sony')

            visit('/')
            click_link('Consoles')

            expect(page).to have_content('Wii Nitendo');
            expect(page).to have_content('PS4 Sony');
        end
    end
end
 