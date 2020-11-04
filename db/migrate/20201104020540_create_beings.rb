class CreateBeings < ActiveRecord::Migration[6.0]
  def change
    create_table :beings do |t|
      t.string :name
      t.string :catchphrase
      t.string :bio

      t.timestamps
    end
  end
end
