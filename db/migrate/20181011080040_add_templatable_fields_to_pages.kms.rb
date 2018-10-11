# This migration comes from kms (originally 20141127073902)
class AddTemplatableFieldsToPages < ActiveRecord::Migration[4.2]
  def change
    add_column :kms_pages, :templatable, :boolean, default: false
    add_column :kms_pages, :templatable_type, :string
  end
end
