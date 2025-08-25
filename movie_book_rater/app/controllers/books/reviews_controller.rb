module Books
    class ReviewsController < ApplicationController
        before_action :set_book
    
        def create
            @review = @book.reviews.build(review_params)
    
            respond_to do |format|
            if @review.save
                format.turbo_stream
                format.html { redirect_to @book, notice: 'Review was successfully created.' }
            else
                format.html { redirect_to @book, alert: 'Error creating review.' }
            end
            end
        end
        def destroy
            @review = @book.reviews.find(params[:id])
            @review.destroy

            respond_to do |format|
                format.turbo_stream
                format.html { redirect_to @book, notice: 'Review was successfully destroyed.' }
            end
        end
        def show
            @review = @book.reviews.find(params[:id])
        end

        private
    
        def set_book
            @book = Book.find(params[:book_id])
        end
    
        def review_params
            params.require(:review).permit(:rating, :body, :reviewer_name)
        end
    end
end