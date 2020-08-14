class GildedRose

  def initialize(item = Item.new)
    @items = item.items
    @items_array = []
  end
  
  def update_quality(days_passed)
    @items.each do |item|
      case item.quality
        when < 50    
          case item.name
            when "Aged Brie"
              if item.sell_in -= days_passed
                item.quality += days_passed
              end      
            when "Backstage Passes"
              if item.sell_in -= days_passed 
                if item.sell_in == 0
                  item.quality == 0
                elsif item.sell_in > 0 && <= 5
                  item.quality += 3 * days_passed
                elsif item.sell_in > 5 && <= 10
                  item.quality += 2 * days_passed
                else
                  item.quality += days_passed
                end
              end
            when "Sulfuras"
              item.quality = "This is a legendary item. It's timeless!"  
            when "Conjured items"
              if item.sell_in -= days_passed
                item.quality += 2 * days_passed
              end
            else
              if item.sell_in -= days_passed
                if item.sell_in == 0
                    item.quality -= 2 * days_passed
                else
                    item.quality -= days_passed
                end
              end
            end
          else
             puts "Item Quality cannot be over 50"    
        end
    end
    @items_array << item
end

#         if item.name != "Aged Brie" && item.name != "Backstage passes" && item.name != "Sulfuras"
#           if item.quality > 0
#               item.quality -= 1
#           end
#         else
#           if item.quality < 50
#             item.quality += 1
#             if item.name == "Backstage passes"
#               if item.sell_in < 11
#                 item.quality += 1
#               end
#             end
#           end
#         end
#         if item.name != "Sulfuras"
#           item.sell_in -= 1
#         end
#         if item.sell_in < 0
#           if item.name != "Aged Brie"
#             if item.name != "Backstage passes"
#               if item.quality > 0
#                 if item.name != "Sulfuras"
#                   item.quality -= 1
#                 end
#               end
#             else
#               item.quality = 0
#             end
#           else
#             if item.quality < 50
#               item.quality += 1
#             end
#           end
#         end
#       end
#     end
#   end
  
  class Item
    attr_accessor :name, :sell_in, :quality, :items
  
    def initialize(name, sell_in, quality)
      @name = name
      @sell_in = sell_in
      @quality = quality
      @items = []
      strings_of_items
    end
  
    def strings_of_items
      @items << "#{@name}, #{@sell_in}, #{@quality}"
    end
  end