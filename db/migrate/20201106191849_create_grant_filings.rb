class CreateGrantFilings < ActiveRecord::Migration[6.0]
  def change
    create_table :grant_filings do |t|
      t.references :grant_filer, null: false, foreign_key: true
      t.string :url
      t.integer :tax_year
      t.datetime :tax_period_begin_date
      t.datetime :tax_period_end_date
      t.datetime :timestamp

      t.timestamps
    end
    
    add_index :grant_filings, :url, unique: true
  end
end
