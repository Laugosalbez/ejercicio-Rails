class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
			t.string :user_name
	  		t.integer :location_id
	  		t.datetime :from_date
	  		t.datetime :to_date
     	 	t.timestamps
    end
  end
end
