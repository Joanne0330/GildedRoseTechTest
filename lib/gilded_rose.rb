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

class GildedRose

  def initialize(item = Item.new)
    @items = item
    @items_array = []
  end
  
  def update_quality
    @items.each do |item|
      if item[2] > 50 
        item[2] = "Item quality cannot be over 50!"  
      else   
          case item[0]
            when "Aged Brie"
              sell_in = item[1] -= 1
              quality = item[2] += 1
    

      #       when "Backstage Passes"
      #         item.sell_in -= days_passed 
      #           if item.sell_in <= 0
      #             item.quality == 0
      #           elsif item.sell_in > 0 && item.sell_in <= 5
      #             item.quality += 3 * days_passed
      #           elsif item.sell_in > 5 && item.sell_in <= 10
      #             item.quality += 2 * days_passed
      #           else
      #             item.quality += days_passed
      #           end

      #       when "Sulfuras"
      #         item.quality = "This is a legendary item. It's timeless!"  

      #       when "Conjured items"
      #         item.sell_in -= days_passed
      #         item.quality += 2 * days_passed
            
            else
              sell_in = item[1] -= 1
      #           if item[1] <= 0
      #               item[2] -= 2 * days_passed
      #           else
              quality = item[2] -= 1
      #           end
            end
         item = [item[0], sell_in, quality]

        
      end
       
    
    end
  end
end
  
