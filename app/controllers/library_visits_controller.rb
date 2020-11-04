class LibraryVisitsController < ApplicationController

    before_action :find_lib, only: [:edit, :update, :show]

    def index 
        @libs = LibraryVisit.all
    end

    def new 
        @lib = LibraryVisit.new
    end
     
    def create 
        @lib = LibraryVisit.new(lib_params)
        if @lib.save
            redirect_to @lib
        else 
            render :new
        end 
    end

    def update 

    end

    private 

    def find_lib
        @lib = LibraryVisit.find(params[:id])
    end

    def lib_params
        params.require(:library_visit).permit(:location, :being_id, :book_id)
    end
end
