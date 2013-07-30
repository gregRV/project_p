class CreatePogs < ActiveRecord::Migration
  def change
  	create_table :pogs do |t|
  		t.string :name
  		t.text :img_url
  		t.text :description
  		t.integer :creator_id
  		t.belongs_to :user

  		t.timestamps
  	end
  end
end
