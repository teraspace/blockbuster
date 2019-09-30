class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :producer
      t.string :country
      t.text :synopsis
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
