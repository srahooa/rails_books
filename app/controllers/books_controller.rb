class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: @data
    end

    #Show a single book
    def show
      puts @data[1]
    end

    #Create a new book
    def create
      @data.push("title", "author")
    end

    #Update a book
    def update
    end

    #Remove a book
    def destroy
    end

    private
    def setup_data
        @data = [
            { title: "Harry Potter", author: "J.K Rowling" },
            { title: "Name of the wind", author: "Patrick Rothfuss" }
        ]
    end
end