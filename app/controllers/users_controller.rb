class UsersController < ApplicationController
   def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path

  end

  def index
  @book = Book.all
  end

  def show
    @user = User.find(params[:id])
  end
end
