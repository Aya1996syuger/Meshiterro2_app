class BooksController < ApplicationController

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
   @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  end

  private

  def book_params
    params.require(:books).permit(:title, :body)
  end