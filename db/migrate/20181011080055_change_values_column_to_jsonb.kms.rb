# This migration comes from kms (originally 20170802063046)
class ChangeValuesColumnToJsonb < ActiveRecord::Migration[5.1]
  def change
    execute "ALTER TABLE kms_entries ALTER COLUMN values SET DATA TYPE jsonb USING values::jsonb"
  end
end
