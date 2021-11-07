class UsersController < ApplicationController

 def index
    @book = Book.new
   @users = User.all
   @user = current_user
 end

  def create
   @book = Book.new(book_params)
    @book.user_id = current_user.id
    @user = current_user

    if @book.save
       flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book)
    else
      @books = Book.all
      render :index
    end
  end


 def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = Book.all
 end




 def edit
     @user = User.find(params[:id])
 end

 def update
   @user = User.find(params[:id])
   @user.update(user_params)
   redirect_to user_path(@user.id)
 end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
