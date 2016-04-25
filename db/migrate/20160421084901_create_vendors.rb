class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.text :vendor_id
      t.text :name
      t.text :address
      t.text :contact_no
      t.timestamps null: false
    end
  end
end
