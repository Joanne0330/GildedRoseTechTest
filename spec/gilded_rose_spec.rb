# require File.join(File.dirname(__FILE__), 'gilded_rose')
require './lib/gilded_rose.rb'

describe GildedRose do

  describe "#update_quality" do
    it "chagnes the sell-in and quality" do
      gr = GildedRose.new([["ham", 10, 10], ["coffee", 20, 20]])
      expect(gr.update_quality).to eq [["ham", 9, 9], ["coffee", 19, 19]]
    end

    it 'shows that quality cannot be over 50' do
      gr = GildedRose.new([["ham", 10, 55], ["coffee", 20, 20]])
      expect(gr.update_quality).to eq [["ham", 10, "Item quality cannot be over 50!"], ["coffee", 19, 19] ]
    end
  end
end