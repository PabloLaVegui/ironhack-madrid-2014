class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :movie, index: true
      t.references :user, index: true
      t.integer :points

      t.timestamps
    end
    add_index :votes, :points
  end
end
