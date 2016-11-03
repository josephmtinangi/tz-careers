class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :subdomain
      t.string :logo
      t.text :description

      t.timestamps
    end
  end
end
