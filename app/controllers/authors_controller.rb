class AuthorsController < ApplicationController

  before_filter :find_project, only: [:index]
  before_action :set_author, only: [:update, :edit, :destroy]

  def index
    @author = Author.find_by(project_id: @project.id)
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to :controller => 'authors', :action => 'index', :project_id => @author.project_id, notice: 'Author was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def edit
  end

  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to :controller => 'authors', :action => 'index', :project_id => @author.project_id, notice: 'Author was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @author.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'authors', :action => 'index', :project_id => @author.project_id, notice: 'Author was successfully destroyed.' }
    end
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

  def author_params
   params.require(:author).permit(:name, :user_id, :project_id)
  end
end
