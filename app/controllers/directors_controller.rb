class DirectorsController < ApplicationController

  def index
    @directors = Director.all
    render("index.html.erb")
  end

  def show

  end

  def destroy

  end

  def new_form
  end

  def create_row

  end

  def edit_form

  end

  def update_row

  end

end
