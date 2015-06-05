class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :strata_name
      t.string :registrar_name
      t.string :registrar_email
      t.string :status
      t.string :token
      t.string :ip_address

      t.timestamps null: false
    end
    add_index :registrations, :token
  end
end
