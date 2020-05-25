class CreateTwets < ActiveRecord::Migration[6.0]
  def change
    create_table :twets do |t|
      t.text :twet

      t.timestamps
    end
  end
end
