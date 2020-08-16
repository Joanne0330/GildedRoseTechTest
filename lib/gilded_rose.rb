class Item
  attr_accessor :items
  
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
    @items.each do |i|
      p i[0]
      p i[1]
      p i[2]
      p 
    #   case item[2]
    #     when item[2] < 50    
    #       case item.name
    #         when "Aged Brie"
    #           item.sell_in -= days_passed
    #           item.quality += days_passed

    #         when "Backstage Passes"
    #           item.sell_in -= days_passed 
    #             if item.sell_in <= 0
    #               item.quality == 0
    #             elsif item.sell_in > 0 && item.sell_in <= 5
    #               item.quality += 3 * days_passed
    #             elsif item.sell_in > 5 && item.sell_in <= 10
    #               item.quality += 2 * days_passed
    #             else
    #               item.quality += days_passed
    #             end

    #         when "Sulfuras"
    #           item.quality = "This is a legendary item. It's timeless!"  

    #         when "Conjured items"
    #           item.sell_in -= days_passed
    #           item.quality += 2 * days_passed
            
    #         else
              sell_in = (i[1] -= 1)
    #             if item[1] <= 0
    #                 item[2] -= 2 * days_passed
    #             else
                    quality = (i[2] -= 1)
    #             end
    #         end
    #       else
    #         puts "Item Quality cannot be over 50"    
    #     end
       
       print [i[0], sell_in, quality]
      end
  end
end

# a = [["ham", 10, 10], ["coffee", 20, 20]]
# a.each do |b|
#    print [b[0], b[1] - 1, b[1] - 1 ]
# end
  
