# This migration comes from kms (originally 20170802085121)
class AddPositionToKmsFields < ActiveRecord::Migration[5.1]
  def change
    add_column :kms_fields, :position, :integer, default: 0, null: false
  end
end
