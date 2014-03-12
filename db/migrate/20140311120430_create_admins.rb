class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.text :address
      t.string :gender
      t.text :dob

      t.timestamps
    end
  end
end
