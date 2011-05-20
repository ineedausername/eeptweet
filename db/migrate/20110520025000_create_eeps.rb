class CreateEeps < ActiveRecord::Migration
  def self.up
    create_table :eeps do |t|
      t.string :post
      t.string :mood
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :eeps
  end
end

