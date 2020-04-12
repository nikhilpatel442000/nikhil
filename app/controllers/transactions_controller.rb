class TransactionsController < ApplicationController
	#before_action :pay, only: :create
  def new
  	@transaction = Transaction.new
  end
  
  def index
  	@transactions = Transaction.all
  	#render json: @users
  end

  def show
  	@transactions = Transaction.all.my_transaction(params[:id])
  	#render json: @users
  end
  
  def create
    @transaction = Transaction.new(transaction_params)
    @account = current_user.account
    @account.update_account!(@transaction)
    if @transaction.save
      # render json: @account
      redirect_to root_path
    else
      render "new"
    end
  end

  def pay
    @account = current_user.account
    @account.update_account! 
  end


  private 

  def transaction_params
  	params.require(:transaction).permit(:account_id, :amount, :from, :user_id)
  end  
end
