class AccountsController < ApplicationController
	def new
		@account = Account.new
	end

	def index
  	@accounts = Account.all
  	#render json: @users
  end
  def show
    @account = Account.find(params[:id])
    #render json: @users
  end

  def create
    @account = Account.new(account_params)
    #render json: @account
    if @account.save
      # render json: @account
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
  end

  def pay(email)
    @account = Account.find(params[:id])
    @account.update_account!(email)   
  end

  private 

  def account_params
  	params.require(:account).permit(:account_no, :user_id)
  end  
end
