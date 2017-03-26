class PostsController < ApplicationController
	before_action :find, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all.order(created_at: :desc)
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render 'new'
		end

	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def find
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :amount,:exchange, :account_id)
	end

end
