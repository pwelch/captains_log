class AddAttributesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :entry_type, :string
    add_column :events, :user, :string
    add_column :events, :source_ip, :string
    add_column :events, :hostname, :string
  end
end
