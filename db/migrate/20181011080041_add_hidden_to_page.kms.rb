# This migration comes from kms (originally 20141209132901)
class AddHiddenToPage < ActiveRecord::Migration[4.2]
  def change
    add_column :kms_pages, :hidden, :boolean, default: false
  end
end
