class CreateArttypes < ActiveRecord::Migration[5.2]
  def change
    create_table :arttypes do |t|

      t.timestamps
      t.string :name
    end
  end
end
