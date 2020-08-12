class Item

  attr_reader :item_name, :days_to_sell, :quality_value

  def initialize(item_name, days_to_sell, quality_value)
    @item_name = item_name
    @days_to_sell = days_to_sell
    @quality_value = quality_value
  end

end