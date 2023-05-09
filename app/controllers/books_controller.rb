class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      redirect_to "/books/#{@book.id}", flash: {notice: 'Book was successfully created.' }
    else
      render :new
    end
    
  end  
  
  # def index
  # end

  def show
    @book =Book.find(params[:id])
  end

  def edit
    @book =Book.find(params[:id])
  end
  
  def update
    @book =Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id), flash: {notice: 'Book was successfully updated.' }
    else
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
