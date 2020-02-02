class MenuController < ApplicationController
  def manage
    @menus = Menu.includes(:submenus, :menu_items)
  end

  def update_all
    params[:menus].each do |id, menu_params|
      Menu.update(id, menu_params(menu_params))
    end
    redirect_to menu_manage_url, flash: { success: "All Menus Updated." }
  rescue
    redirect_to menu_manage_url, flash: { error: "Menu can't be saved" }
  end

  private

  def menu_params(input)
    input.permit(
      :name,
      submenus_attributes: [
        :name,
        :id,
      ],
      menu_items_attributes: [
        :name,
        :id,
        :sort,
        :submenu_id,
      ],
    )
  end
end
