class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :nomor_hp

      t.timestamps
    end
  end
end
