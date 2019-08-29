class ConsolesController < ApplicationController
    def index
        @consoles = Console.all
    end

    def new
    end

    def create

        Console.create(console_params)

        redirect_to consoles_path
    end

    private

    def console_params
        params.require(:console).permit(:name, :manufacturer )
    end
end