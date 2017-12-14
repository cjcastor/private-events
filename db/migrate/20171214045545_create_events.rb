class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :host_id
      t.datetime :time
      t.timestamps
    end
  end
end
