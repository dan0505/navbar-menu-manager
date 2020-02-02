class Menu < ApplicationRecord
  has_many :submenus
  has_many :menu_items

  accepts_nested_attributes_for :submenus, :menu_items
end
