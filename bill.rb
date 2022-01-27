require 'date'
require_relative 'tenant'

class Bill
  attr_accessor :start_date
  attr_accessor :end_date
  attr_accessor :amount

  def initialize(start_date, end_date, amount)

    @start_date = Date.strptime(start_date, "%m-%d-%y")
    @end_date = Date.strptime(end_date, "%m-%d-%y")
    @amount = amount

    raise TypeError, "Start date should be a Date" unless @start_date.is_a?(Date)
    raise TypeError, "End date should be a Date" unless @end_date.is_a?(Date)
    raise TypeError, "age should be a Float" unless ( @amount.is_a?(Float) || @amount.is_a?(Integer) )
  end

  def to_s
    "#{@start_date.strftime('%m-%d-%y')} to #{@end_date.strftime('%m-%d-%y')}: $%.2f" % @amount
  end
end

bills = Array.new
bills.push(Bill.new("1-2-2022", "1-31-2022", 320.55))
bills.push(Bill.new("12-2-2022", "1-1-2022", 888.92))

for bill in bills do
  puts bill 
end


tenants = Array.new
tenants.push(Tenant.new("Bill", "5-1-2019", "5-1-2025"))
tenants.push(Tenant.new("Joe", "5-1-2019", "5-1-2025"))

