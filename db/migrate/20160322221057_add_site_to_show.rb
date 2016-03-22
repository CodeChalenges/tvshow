class AddSiteToShow < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :site, :string
  end
end
