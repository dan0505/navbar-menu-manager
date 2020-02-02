class MenuItem < ApplicationRecord
  belongs_to :menu
  belongs_to :submenu

  default_scope { order(:sort) }
end
