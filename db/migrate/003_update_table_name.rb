class UpdateTableName < ActiveRecord::Migration
rename_table :schoolclasses, :school_classes
end
