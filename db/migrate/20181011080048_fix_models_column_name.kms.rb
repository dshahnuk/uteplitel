# This migration comes from kms (originally 20150821201250)
class FixModelsColumnName < ActiveRecord::Migration[4.2]
  def change
    rename_column :kms_models, :model_name, :kms_model_name
  end
end
