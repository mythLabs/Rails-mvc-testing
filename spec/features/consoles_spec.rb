require 'rails_helper'

RSpec.describe 'Consoles features' do
    let(:view_consoles) do
        visit('/')
        click_link('Consoles')
    end

    describe 'viewing of index' do
        it 'list all the consoles' do
            Console.create!(name:'Wii',manufacturer:'Nitendo')
            Console.create!(name:'PS4',manufacturer:'Sony')

            view_consoles

            expect(page).to have_content('Wii Nitendo');
            expect(page).to have_content('PS4 Sony');
        end
    end

    describe 'adding new console' do
        it 'adds console to list' do
            view_consoles
            click_link('Add New Consoles')

            expect(current_path).to have_content('/consoles/new');

            fill_in('Name',with: 'NES')
            fill_in('Manufacturer',with: 'Nitendo')
            click_button('Create')

            expect(page).to have_content('NES Nitendo');
            expect(current_path).to have_content('/consoles');

        end
    end
end
 