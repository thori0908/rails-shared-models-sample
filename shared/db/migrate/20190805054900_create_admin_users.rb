class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email,            null: false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :admin_users, :email, unique: true
  end
end
