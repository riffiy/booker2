class BooksController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
  end

  def show
  end

  def edit
  end
  
   private
  
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end
