class BooksController < ApplicationController
    def index
        @book = Book.new
        @user = current_user
    end

    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to book_path(@book)
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end

    def edit
    end

    def update
    end
  private

  def book_params
    params.require(:book).permit(:title,:body)
  end

end
