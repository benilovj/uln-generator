class AddNameToUlns < ActiveRecord::Migration[5.0]
  def change
    add_column :ulns, :name, :string
  end
end
