require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context "transaction validations" do
    it "ensures name presence" do
      transaction = Transaction.new(amount: 3000).save
      expect(transaction).to eq(false)
    end

    it "ensures amount presence" do
      transaction = Transaction.new(name: "icre").save
      expect(transaction).to eq(false)
    end

    it "ensures category presence" do
      transaction = Transaction.new(amount: 3000).save
      expect(transaction).to eq(false)
    end

  end
end
