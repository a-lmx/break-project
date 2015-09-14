require 'csv'

zipcode_headers = [
  { "GEO.id2"   => :zipcode },
  { "HD01_VD01" => :total },
  { "HD01_VD02" => :english },
  { "HD01_VD03" => :spanish },
  { "HD01_VD06" => :french },
  { "HD01_VD09" => :french_creole },
  { "HD01_VD12" => :italian },
  { "HD01_VD15" => :portuguese },
  { "HD01_VD18" => :german },
  { "HD01_VD21" => :yiddish },
  { "HD01_VD24" => :other_west_germanic },
  { "HD01_VD27" => :scandinavian },
  { "HD01_VD30" => :greek },
  { "HD01_VD33" => :russian },
  { "HD01_VD36" => :polish },
  { "HD01_VD39" => :serbo_croatian },
  { "HD01_VD42" => :other_slavic },
  { "HD01_VD45" => :armenian },
  { "HD01_VD48" => :persian },
  { "HD01_VD51" => :gujarati },
  { "HD01_VD54" => :hindi },
  { "HD01_VD57" => :urdu },
  { "HD01_VD60" => :other_indic },
  { "HD01_VD63" => :other_indo_european },
  { "HD01_VD66" => :chinese },
  { "HD01_VD69" => :japanese },
  { "HD01_VD72" => :korean },
  { "HD01_VD75" => :mon_khmer_cambodian },
  { "HD01_VD78" => :hmong },
  { "HD01_VD81" => :thai },
  { "HD01_VD84" => :laotian },
  { "HD01_VD87" => :vietnamese },
  { "HD01_VD90" => :other_asian },
  { "HD01_VD93" => :tagalog },
  { "HD01_VD96" => :other_pacific_island },
  { "HD01_VD99" => :navajo },
  { "HD01_VD102" => :other_native_north_american },
  { "HD01_VD105" => :hungarian },
  { "HD01_VD108" => :arabic },
  { "HD01_VD111" => :hebrew },
  { "HD01_VD114" => :african },
  { "HD01_VD117" => :other_and_unspecified }
]

CSV.foreach("db/aff_download/ACS_13_5YR_B16001_with_ann.csv", 
  encoding: "UTF-8", headers: true) do |row|

  row_hash = row.to_hash
  zipcode_hash = {}
  zipcode_headers.each do |header|
    zipcode_hash[header.values.first] = row_hash[header.keys.first]
  end

  Zipcode.create(zipcode_hash)
end

languages = [
  { name: "English (only)", label: :english },
  { name: "Spanish or Spanish Creole", label: :spanish },
  { name: "French (incl. Patois, Cajun)", label: :french },
  { name: "French Creole", label: :french_creole },
  { name: "Italian", label: :italian },
  { name: "Portuguese or Portuguese Creole", label: :portuguese },
  { name: "German", label: :german },
  { name: "Yiddish", label: :yiddish },
  { name: "Other West Germanic languages", label: :other_west_germanic },
  { name: "Scandinavian languages", label: :scandinavian },
  { name: "Greek", label: :greek },
  { name: "Russian", label: :russian },
  { name: "Polish", label: :polish },
  { name: "Serbo-Croatian", label: :serbo_croatian },
  { name: "Other Slavic languages", label: :other_slavic },
  { name: "Armenian", label: :armenian },
  { name: "Persian", label: :persian },
  { name: "Gujarati", label: :gujarati },
  { name: "Hindi", label: :hindi },
  { name: "Urdu", label: :urdu },
  { name: "Other Indic languages", label: :other_indic },
  { name: "Other Indo-European languages", label: :other_indo_european },
  { name: "Chinese", label: :chinese },
  { name: "Japanese", label: :japanese },
  { name: "Korean", label: :korean },
  { name: "Mon-Khmer, Cambodian", label: :mon_khmer_cambodian },
  { name: "Hmong", label: :hmong },
  { name: "Thai", label: :thai },
  { name: "Laotian", label: :laotian },
  { name: "Vietnamese", label: :vietnamese },
  { name: "Other Asian languages", label: :other_asian },
  { name: "Tagalog", label: :tagalog },
  { name: "Other Pacific Island languages", label: :other_pacific_island },
  { name: "Navajo", label: :navajo },
  { name: "Other Native North American languages", label: :other_native_north_american },
  { name: "Hungarian", label: :hungarian },
  { name: "Arabic", label: :arabic },
  { name: "Hebrew", label: :hebrew },
  { name: "African languages", label: :african },
  { name: "Other and unspecified languages", label: :other_and_unspecified }
]

languages.each do |language|
  Language.create(language)
end
