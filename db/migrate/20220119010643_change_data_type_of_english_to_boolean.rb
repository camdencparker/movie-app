class ChangeDataTypeOfEnglishToBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column_default :movies, :english, from: true, to: false 
  end
end
