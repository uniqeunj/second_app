class CreateHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.belongs_to :owner
      
      t.timestamps
    end
  end
end
