class CreateContributions < ActiveRecord::Migration
  def change
	  create_table :contributions do |t|
		  t.string :name
		  t.string :address
		  t.string :traffic
		  t.string :money
		  t.string :shift
		  t.string :explanation
		  t.string :feature
		  t.string :condition
		  t.string :period
		  t.string :count
		  t.string :fare
		  t.string :treatment
		  t.string :ratio
		  t.string :age
		  t.string :representations
		  t.string :atmosphere
		  t.string :message
		  t.string :manner
		  t.string :flow
		  t.string :tel
		  t.timestamps null: false
	  end
  end
end
