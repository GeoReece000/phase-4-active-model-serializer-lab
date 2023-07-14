class AuthorsController < ApplicationController
  def index
    @authors = Author.all

    respond_to do |format|
      format.html # Render the index.html.erb view
      format.json { render json: authors } # Return JSON response
    end
  end
end
