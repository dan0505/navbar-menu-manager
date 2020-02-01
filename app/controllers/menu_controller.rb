class MenuController < ApplicationController
  def manage
    @menus = Menu.includes(:submenus, :menu_items)
  end
end
