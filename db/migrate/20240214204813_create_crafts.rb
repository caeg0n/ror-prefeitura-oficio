class CreateCrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :crafts do |t|
      t.integer :number

      t.timestamps
    end
  end
end
