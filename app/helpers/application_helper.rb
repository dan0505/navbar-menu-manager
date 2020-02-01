module ApplicationHelper
  def menus
    Menu.includes(:submenus, :menu_items)
  end
end
