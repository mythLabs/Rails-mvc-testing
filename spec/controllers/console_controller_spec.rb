require 'rails_helper'

RSpec.describe ConsoleController, :type => :controller do

    it 'GET /consoles' do
        get('index')
        expect(response_json['consoles']).to contain_exactly('NES','Wii','Xbox','Playstation')
    end

    it 'GET /consoles/Nitendo' do

        get('find',params: {manufacturer: 'Nitendo'})
        expect(response_json['consoles']).to contain_exactly('NES','Wii')       
    end

    it 'GET /consoles/Xbox' do

        get('find',params: {manufacturer: 'Microsoft'})
        expect(response_json['consoles']).to contain_exactly('Xbox')       
    end

   
end