class GildedRose

    def initialize(items)
      @items = items
    end
  
    def update_quality
      @items.each do |item|
        if item.name != "Aged Brie" && item.name != "Backstage passes" && item.name != "Sulfuras"
          if item.quality > 0
              item.quality -= 1
          end
        else
          if item.quality < 50
            item.quality += 1
            if item.name == "Backstage passes"
              if item.sell_in < 11
                item.quality += 1
              end
            end
          end
        end
        if item.name != "Sulfuras"
          item.sell_in -= 1
        end
        if item.sell_in < 0
          if item.name != "Aged Brie"
            if item.name != "Backstage passes"
              if item.quality > 0
                if item.name != "Sulfuras"
                  item.quality -= 1
                end
              end
            else
              item.quality = 0
            end
          else
            if item.quality < 50
              item.quality += 1
            end
          end
        end
      end
    end
  end
  
  class Item
    attr_accessor :name, :sell_in, :quality
  
    def initialize(name, sell_in, quality)
      @name = name
      @sell_in = sell_in
      @quality = quality
    end
  
    def to_string
      "#{@name}, #{@sell_in}, #{@quality}"
    end
  end