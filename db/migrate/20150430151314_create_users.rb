class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	    t.string :first_name
	    t.string :last_name
	    t.string :email
		t.string :username
		t.string :password_digest
		t.string :address_line_1
		t.string :address_line_2
		t.string :address_line_3
		t.string :address_line_4
		t.string :postcode

    	t.timestamps null: false
    end
  end
end
