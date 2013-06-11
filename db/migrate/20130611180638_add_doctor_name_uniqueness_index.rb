class AddDoctorNameUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :doctors, :name, :unique => true
  end

  def down
    remove_index :doctors, :name
  end
end
