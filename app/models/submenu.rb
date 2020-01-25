class Submenu < ApplicationRecord
  belongs_to :menu
  has_many :item_menus
end
