class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id,   :null => false
      t.datetime :start_at, :null => false
      t.datetime :end_at,   :null => false
      t.boolean :state,     :default => false, :null => false

      t.timestamps
    end
  end
end
