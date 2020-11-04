class BeingsController < ApplicationController

    before_action :find_being, only: [:edit, :update, :show, :destroy]
    def index 
        @beings = Being.all
    end

    def new 
        @being = Being.new
    end
     
    def create 
        @being = Being.new(being_params)
        if @being.save
            redirect_to @being
        else 
            render :new
        end
    end

    def update 
        if @being.update(being_params)
            redirect_to @being
        else 
            render :edit
        end
    end

    def destroy 
        @being.destroy
        redirect_to beings_path
    end

    private 

    def find_being
        @being = Being.find(params[:id])
    end

    def being_params
        params.require(:being).permit(:name, :catchphrase, :bio)
    end
end
