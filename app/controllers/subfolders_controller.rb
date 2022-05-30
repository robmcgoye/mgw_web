class SubfoldersController < ApplicationController
  before_action :require_admin_user
  before_action :set_category, only: [ :new, :create ]
  before_action :set_subfolder, only: [ :edit, :update, :destroy ]
   
  def edit
  end

  def new
    @subfolder = @category.subfolders.new
  end

  def create
    @subfolder = @category.subfolders.build( subfolder_params )
    if @subfolder.save
      flash[:notice] = "The subfolder was successfully created"
      redirect_to continent_path(@category.continent_id)
    else
      render :new
    end
  end

  def update
    if @subfolder.update( subfolder_params )
      flash[:notice] = "The subfolder was successfully updated"
      redirect_to continent_path(@category.continent_id)
    else
      render :edit
    end
  end

  def destroy
    @subfolder.destroy
    flash[:notice] = "The subfolder was successfully deleted"
    redirect_to continent_path(@category.continent_id)
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end

    def set_subfolder
      @subfolder = Category.find(params[:id])
      @category = Category.find(@subfolder.folder_id)
    end

    def subfolder_params
      params.require(:category).permit(:title, :sort, :published, links_attributes:[:id, :title, :url, :sort, :_destroy])
    end

end