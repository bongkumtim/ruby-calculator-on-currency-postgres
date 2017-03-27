class AccountsController < ApplicationController
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@accounts = Account.all.order(created_at: :desc)
	end

	def show
	end

	def new
		@account = Account.new
		@thai = Post.find(3).exchange
		@sgd = Post.find(4).exchange
		
	end

	def create
		
		@account = Account.new(account_params)
		if @account.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @account.update(account_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy
		@account.delete
		redirect_to root_path
	end

	private

	def find
		@account = Account.find(params[:id])
	end

	def account_params
		params.require(:account).permit(:title, :balance, :user_id)
	end
end
