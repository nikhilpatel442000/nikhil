module TransactionsHelper
	
	def options_for_account
		Account.all.map {|account| [account.account_no, account.id]}
	end
end
