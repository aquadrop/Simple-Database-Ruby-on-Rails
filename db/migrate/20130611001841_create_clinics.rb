class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics, {:primary_key => :id} do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  add_index :clinics, [:name], :unique => true
  end
end
