class BooksController < ApplicationController

  def create
    @books = Book.create(book_params)
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def list
    @books = Book.all.search(params[:name])
  end

  def new
  end

  def edit
    @books = Book.find_by(params[:id])
  end

  def update
    @books = Book.find_by(params[:id])
    @books.update(book_params)
    redirect_to root_path
  end

  def destroy
    @books = Book.find_by(params[:id])
    @books.destroy
    redirect_to root_path
  end

  def show
    @books = Book.find_by(params[:id])
  end

  private

  def book_params
    params.permit(:name, :authors_name, :read)
  end
end
