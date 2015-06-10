class ProteinsController < ApplicationController
  def index
    @proteins = Protein.all
  end

  def show
    @protein = Protein.find(params[:id])
  end

  def new
    @protein = Protein.new
  end

  def create
    @protein = Protein.new
    @protein.name = params[:name]
    @protein.image_url = params[:image_url]

    if @protein.save
      redirect_to "/proteins", :notice => "Protein created successfully."
    else
      render 'new'
    end
  end

  def edit
    @protein = Protein.find(params[:id])
  end

  def update
    @protein = Protein.find(params[:id])

    @protein.name = params[:name]
    @protein.image_url = params[:image_url]

    if @protein.save
      redirect_to "/proteins", :notice => "Protein updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @protein = Protein.find(params[:id])

    @protein.destroy

    redirect_to "/proteins", :notice => "Protein deleted."
  end
end
