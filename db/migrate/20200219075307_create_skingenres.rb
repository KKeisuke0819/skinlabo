class CreateSkingenres < ActiveRecord::Migration[5.2]
  def change
    create_table :skingenres do |t|
      t.string :skinvariety

      t.timestamps
    end
  end
end
