# This migration comes from kms (originally 20150901115303)
class AddClassNameToKmsFields < ActiveRecord::Migration[4.2]
  def change
    add_column :kms_fields, :class_name, :string
  end
end
