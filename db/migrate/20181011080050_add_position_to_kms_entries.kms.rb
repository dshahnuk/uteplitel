# This migration comes from kms (originally 20150910081440)
class AddPositionToKmsEntries < ActiveRecord::Migration[4.2]
  def change
    add_column :kms_entries, :position, :integer, default: 0, null: false
  end
end
