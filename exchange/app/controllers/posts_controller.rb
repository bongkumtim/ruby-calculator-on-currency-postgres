class PostsController < ApplicationController
	before_action :find, only: [:show, :edit, :update, :destroy]

	load_and_authorize_resource

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
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.delete
		redirect_to :back
	end

	private

	def find
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :amount,:exchange, :account_id)
	end

end
