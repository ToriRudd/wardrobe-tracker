class Item < ActiveRecord::Base

  attr_accessible :main_colour, :name, :description, :size

  belongs_to :user

  validates_presence_of :name
  validates_presence_of :main_colour
  
end
