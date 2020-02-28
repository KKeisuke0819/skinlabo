class CreateAgegenres < ActiveRecord::Migration[5.2]
  def change
    create_table :agegenres do |t|
      t.string :agevariety

      t.timestamps
    end
  end
end
