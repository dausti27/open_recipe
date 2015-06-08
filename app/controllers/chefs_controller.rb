class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new
    @chef.name = params[:name]
    @chef.image_url = params[:image_url]

    if @chef.save
      redirect_to "/chefs", :notice => "Chef created successfully."
    else
      render 'new'
    end
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def update
    @chef = Chef.find(params[:id])

    @chef.name = params[:name]
    @chef.image_url = params[:image_url]

    if @chef.save
      redirect_to "/chefs", :notice => "Chef updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @chef = Chef.find(params[:id])

    @chef.destroy

    redirect_to "/chefs", :notice => "Chef deleted."
  end
end
