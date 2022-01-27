class Tenant
  attr_accessor :name
  attr_accessor :move_in_date
  attr_accessor :move_out_date


  def initialize(name, move_in_date, move_out_date)
    @name = name
    @move_in_date = Date.strptime(move_in_date, "%m-%d-%y")
    @move_out_date = Date.strptime(move_out_date, "%m-%d-%y")

    raise TypeError, "Move in date should be a Date" unless @move_in_date.is_a?(Date)
    raise TypeError, "Move out date should be a Date" unless @move_out_date.is_a?(Date)
    raise TypeError, "Name should be a String" unless @name.is_a?(String)
  end

end
