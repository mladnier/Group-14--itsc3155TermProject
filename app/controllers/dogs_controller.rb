class DogsController < ApplicationController
    
    def index
        
    end
    
    def new
        
    end
    
    def create
        
       
        @dog = Dog.new(dog_params)
        
        @dog.save
        redirect_to @dog
    end
    
    def show
        @dog = Dog.find(params[:id])
    end
    
    def edit
        @article = Dog.find(params[:id])
    end
    
    def update
        @article = Dog.find(params[:id])
        
        if @dog.update(dog_params)
            redirect_to @dog
        else
            render 'edit'
        end
    end
    
    
    
    
end


private
    def dog_params
      params.require(:dog).permit(:name, :sex, :age, :bio) 
    end
