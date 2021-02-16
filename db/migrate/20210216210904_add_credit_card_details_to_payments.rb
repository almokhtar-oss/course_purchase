class AddCreditCardDetailsToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :card_number, :string
    add_column :payments, :cvv, :integer
    add_column :payments, :expiry_date, :date
  end
end
