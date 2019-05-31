
class BankAccount
    attr_accessor :id, :amount

    def initialize(newId, newAmount)
        @id = newId
        @amount = newAmount
    end

end



acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(321, 100)
acct3 = BankAccount.new(421, -100)
accts = [acct1, acct2, acct3]

total_sum = 0

accts.each do | singleAccount |
    total_sum = total_sum + singleAccount.amount
end

# expected output:
# 200
puts total_sum