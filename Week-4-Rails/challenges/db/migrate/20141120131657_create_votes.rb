class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :challenge_id
      t.string  :email
      t.timestamps
    end
  end
end
