class TweetsController < ApplicationController

	def new
		@tweet = Tweet.new
	end

	def create 
		@tweet = Tweet.new(params[:content])
		if @tweet.save
			flash[:success] = "You have created a tweet."
			redirect_to new_tweet_path
		end
	end

	def tweet_params
		params.require(:tweet).permit(:content)
	end

end












