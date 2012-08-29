class Item < ActiveRecord::Base

  attr_accessible :main_colour, :name, :description, :size, :main_category

  belongs_to :user

  validates_presence_of :name
  validates_presence_of :main_colour
  validates_presence_of :size
  validates_presence_of :main_category

  MAIN_COLOUR = {:black => "Black", :blue => "Blue", :cream => "Cream", :gold => "Gold",
                 :green => "Green", :grey => "Grey", :orange => "Orange", :pink => "Pink",
                 :purple => "Purple", :red => "Red", :silver => "Silver", :white => "White",
                 :yellow => "Yellow"}

  MAIN_CATEGORY = {:accessory => "Accessory", :dress => "Dress", :shoes => "Shoes",
                   :shorts => "Shorts", :skirt => "Skirt", :top => "Top", :trousers => "Trousers"}

end
