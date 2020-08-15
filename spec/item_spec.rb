require './lib/gilded_rose.rb'

describe Item do

  describe '#add' do
    it 'adds an item to the shop' do
      item = Item.new
      item.add("Ham", 10, 10)
      expect(item.items).to eq [["Ham", 10, 10]] 
    end
    
    it 'adds multiple items to the shop to sell' do
      item = Item.new
      item.add("Ham", 10, 10)
      item.add("Coffee", 20, 20)
      expect(item.items).to eq [["Ham", 10, 10], ["Coffee", 20, 20]]
    end
  end

end