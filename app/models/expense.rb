class Expense < Transaction
  def amount
    -super
  end
end
