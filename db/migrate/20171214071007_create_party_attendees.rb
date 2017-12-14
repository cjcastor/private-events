class CreatePartyAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :party_attendees do |t|
      t.integer :attendee_id
      t.integer :event_id
      t.timestamps
    end
  end
end
