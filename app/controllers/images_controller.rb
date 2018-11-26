class ImagesController < ApplicationController
    def index
        @images = Image.all
    end
    
    def show
        @image = Image.find(params[:id])
    end
    
    def new
        @image = Image.new
    end
    
    def create
        if @image.save
            redirect_to @image
        else
            render 'new'
        end
    end
    
    def edit
        @image = Image.find(params[:id])
    end
    
    def update
        @image = Image.find(params[:id])
        
        if @image.update(image_params)
            redirect_to @image
        else
            render 'edit'
        end
    end
end

private
    def image_params
        params.require(:image).permit(:title, :text)
    end
