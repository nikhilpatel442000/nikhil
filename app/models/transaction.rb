class Transaction < ApplicationRecord
  belongs_to :account
  scope :my_transaction, ->(id) { where(:from => id) }
end
