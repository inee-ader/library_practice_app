class CreateLibraryVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :library_visits do |t|
      t.string :location
      t.references :being, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
