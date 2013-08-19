class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :extrated_name
      t.string :name
      t.string :reg_commerce_number
      t.string :legilux_url
      t.date :constitution_date
      t.string :forme_juridique

      t.timestamps
    end
  end
end
