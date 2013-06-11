class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors, {:primary_key => :id} do |t|
      t.integer :id
      t.string :name
      t.references :clinic

      t.timestamps
    end
    add_index :doctors, :clinic_id
  end
end
