class Account < ApplicationRecord
	belongs_to :user
	has_many :transactions
	def update_account!(transaction)
		self.balannce -= transaction.amount.to_i;
		transaction.account.balannce += transaction.amount.to_i;
		transaction.account.save!
		self.save!
	end
end
