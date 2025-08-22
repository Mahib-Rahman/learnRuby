module Movies
    class ReviewsController < ApplicationController
        before_action :set_movie
    
        def create
            @review = @movie.reviews.build(review_params)
    
            respond_to do |format|
            if @review.save
                format.turbo_stream
                format.html { redirect_to @movie, notice: 'Review was successfully created.' }
            else
                format.html { redirect_to @movie, alert: 'Error creating review.' }
            end
            end
        end
    
        private
    
        def set_movie
            @movie = Movie.find(params[:movie_id])
        end
    
        def review_params
            params.require(:review).permit(:rating, :body, :reviewer_name)
        end
    end
end