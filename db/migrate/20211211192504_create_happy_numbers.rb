class CreateHappyNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :happy_numbers do |t|
      t.integer :number
      t.text :result
    end
  end
end
