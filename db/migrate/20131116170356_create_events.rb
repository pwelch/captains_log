class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :entry

      t.timestamps
    end
  end
end
