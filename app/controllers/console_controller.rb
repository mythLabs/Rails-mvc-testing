class ConsoleController < ApplicationController

    before_action :initialize_consoles, only: [:index, :find]

    def index
       

        render(json: {'consoles' => @consoles.map{|console| console[:name]}})
    end

    def find

        render(json: {'consoles' => @consoles.select{|console| console[:manufacturer] == params[:manufacturer]}.map{|console| console[:name]}})

    end

    private

    def initialize_consoles
        @consoles ||= 
        [
            {name: 'NES', manufacturer: "Nitendo"},
            {name: 'Wii', manufacturer: "Nitendo"},
            {name: 'Xbox', manufacturer: "Microsoft"},
            {name: 'Playstation', manufacturer: "Sony"},
        ]
    end
end