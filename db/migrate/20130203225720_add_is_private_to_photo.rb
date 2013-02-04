class AddIsPrivateToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :is_private, :boolean, :default=>true
  end
end
