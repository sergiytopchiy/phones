class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :e_mail

      t.timestamps
    end
  end
end
