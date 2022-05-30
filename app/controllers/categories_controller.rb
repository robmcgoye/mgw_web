class CategoriesController < ApplicationController
  before_action :require_admin_user
  before_action :set_continent, only: [ :new, :create ]
  before_action :set_category, only: [ :edit, :update, :destroy ]
   
  def edit
  end

  def new
    @category = @continent.categories.new
  end

  def create
    @category = @continent.categories.build( category_params )
    if @category.save
      flash[:notice] = "The category was successfully created"
      redirect_to continent_path(@continent)
    else
      render :new
    end
  end

  def update
    if @category.update( category_params )
      flash[:notice] = "The category was successfully updated"
      redirect_to continent_path(@continent)
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    flash[:notice] = "The category was successfully deleted"
    redirect_to continent_path(@continent)
  end

  private
    def set_continent
      @continent = Continent.find(params[:continent_id])
    end

    def set_category
      @category = Category.find(params[:id])
      @continent = Continent.find(@category.continent_id)
    end

    def category_params
      params.require(:category).permit(:title, :sort, :published, links_attributes:[:id, :title, :url, :sort, :_destroy])
    end

end