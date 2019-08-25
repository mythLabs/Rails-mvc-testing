class ConsoleController < ApplicationController

    before_action :initialize_consoles, only: [:index, :find]

    def index
       

        render(json: {'consoles' => @consoles.map(&:name)})
    end

    def find

        render(json: {'consoles' => @consoles.where('manufacturer = ?', params[:manufacturer]).map(&:name) } )

    end

    private

    def initialize_consoles
       @consoles = Console.all
    end
end