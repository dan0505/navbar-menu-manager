class Menu < ApplicationRecord
  has_many :submenus
  has_many :menu_items
end
