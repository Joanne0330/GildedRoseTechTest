require './lib/item.rb'

describe Item do

  describe '#item_name' do
    it 'stores the name of the item in the system' do
      item = Item.new("Quality Ham", 10, 10)
      expect(item.item_name).to eq("Quality Ham")
    end
   

    
end

end