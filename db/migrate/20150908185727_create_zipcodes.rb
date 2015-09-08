class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.string :zipcode
      t.integer :total
      t.integer :english
      t.integer :spanish
      t.integer :french
      t.integer :french_creole
      t.integer :italian
      t.integer :portuguese
      t.integer :german
      t.integer :yiddish
      t.integer :other_west_germanic
      t.integer :scandinavian
      t.integer :greek
      t.integer :russian
      t.integer :polish
      t.integer :serbo_croatian
      t.integer :other_slavic
      t.integer :armenian
      t.integer :persian
      t.integer :gujarati
      t.integer :hindi
      t.integer :urdu
      t.integer :other_indic
      t.integer :other_indo_european
      t.integer :chinese
      t.integer :japanese
      t.integer :korean
      t.integer :mon_khmer_cambodian
      t.integer :hmong
      t.integer :thai
      t.integer :laotian
      t.integer :vietnamese
      t.integer :other_asian
      t.integer :tagalog
      t.integer :other_pacific_island
      t.integer :navajo
      t.integer :other_native_north_american
      t.integer :hungarian
      t.integer :arabic
      t.integer :hebrew
      t.integer :african
      t.integer :other_and_unspecified

      t.timestamps null: false
    end
  end
end
