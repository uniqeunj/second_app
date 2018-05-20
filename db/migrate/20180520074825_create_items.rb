class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      # t.integer :owner.id
      # t.reference :owner
      t.belongs_to :owner
      t.timestamps
    end
  end
end
