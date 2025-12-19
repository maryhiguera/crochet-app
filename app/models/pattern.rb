class Pattern < ApplicationRecord
  has_rich_text :introduction
  has_rich_text :notes
  has_rich_text :construction_overview
end
