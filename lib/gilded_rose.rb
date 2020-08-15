class GildedRose

  def initialize(item = Item.new)
    @items = item.items
    @items_array = []
  end
  
  def update_quality(days_passed)
    @items.each do |item|
      case item[2]
        when item[2] < 50    
          case item.name
            when "Aged Brie"
              item.sell_in -= days_passed
              item.quality += days_passed

            when "Backstage Passes"
              item.sell_in -= days_passed 
                if item.sell_in <= 0
                  item.quality == 0
                elsif item.sell_in > 0 && item.sell_in <= 5
                  item.quality += 3 * days_passed
                elsif item.sell_in > 5 && item.sell_in <= 10
                  item.quality += 2 * days_passed
                else
                  item.quality += days_passed
                end

            when "Sulfuras"
              item.quality = "This is a legendary item. It's timeless!"  

            when "Conjured items"
              item.sell_in -= days_passed
              item.quality += 2 * days_passed
            
            else
              item[1] -= days_passed
                if item[1] <= 0
                    item[2] -= 2 * days_passed
                else
                    item[2] -= days_passed
                end
            end
          else
            puts "Item Quality cannot be over 50"    
        end
      end
    @items_array << item
  end
end
  
class Item
  attr_reader :items
  
  def initialize
    @items = []
  end

  def add(name, sell_in, quality)
    item = []
    item = [name, sell_in, quality]
    items_for_sale(item)
  end
  
  def items_for_sale(item)
    @items << item
  end
end