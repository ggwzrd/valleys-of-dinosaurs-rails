class DinosaursController < ApplicationController

  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    dino_params = dinosaur_params

    @dinosaur = Dinosaur.new( dino_params )

    if @dinosaur.save
         redirect_to @dinosaur
    else
       render 'new'
    end
  end

  def edit
      @dinosaur = Dinosaur.find(params[:id])
  end

  def update
    @dinosaur = Dinosaur.find( params[:id] )

    dino_params = dinosaur_params

    if @dinosaur.update_attributes( dino_params )
     redirect_to @dinosaur
    else
     render 'edit'
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])

    @dinosaur.destroy

    redirect_to dinosaurs_path
  end


  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url, :valley_id)
  end
end
