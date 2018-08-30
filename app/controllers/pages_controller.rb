class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def Create
    @page = Page.new(page_params)

    if @page.save
      #redirect somewhere
    else
      render :new
    end
  end

  private

    def page_params
      params.require(:page).permit(:title, :author, :body)
    end
end
