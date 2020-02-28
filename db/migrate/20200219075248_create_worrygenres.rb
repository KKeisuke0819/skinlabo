class CreateWorrygenres < ActiveRecord::Migration[5.2]
  def change
    create_table :worrygenres do |t|
      t.string :worryvariety

      t.timestamps
    end
  end
end
