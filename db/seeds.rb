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

# seattle_zipcodes = [98177, 98133, 98125, 98117, 98107, 98103, 98115, 98105, 
#   98195, 98112, 98102, 98199, 98119, 98109, 98122, 98121, 98101, 98164, 98174, 
#   98104, 98144, 98134, 98136, 98126, 98116, 98106, 98118]

# Store density in Zipcode model ?
# => calculate in the model

# labels: "HD01_VD01": :total,
# "HD01_VD02": :English,
# "HD01_VD03": Spanish or Spanish Creole:
# HD01_VD06,"Estimate; Total: - French (incl. Patois, Cajun):"
# HD01_VD09,Estimate; Total: - French Creole:
# HD01_VD12,Estimate; Total: - Italian:
# HD01_VD15,Estimate; Total: - Portuguese or Portuguese Creole:
# HD01_VD18,Estimate; Total: - German:
# HD01_VD21,Estimate; Total: - Yiddish:
# HD01_VD24,Estimate; Total: - Other West Germanic languages:
# HD01_VD27,Estimate; Total: - Scandinavian languages:
# HD01_VD30,Estimate; Total: - Greek:
# HD01_VD33,Estimate; Total: - Russian:
# HD01_VD36,Estimate; Total: - Polish:
# HD01_VD39,Estimate; Total: - Serbo-Croatian:
# HD01_VD42,Estimate; Total: - Other Slavic languages:
# HD01_VD45,Estimate; Total: - Armenian:
# HD01_VD48,Estimate; Total: - Persian:
# HD01_VD51,Estimate; Total: - Gujarati:
# HD01_VD54,Estimate; Total: - Hindi:
# HD01_VD57,Estimate; Total: - Urdu:
# HD01_VD60,Estimate; Total: - Other Indic languages:
# HD01_VD63,Estimate; Total: - Other Indo-European languages:
# HD01_VD66,Estimate; Total: - Chinese:
# HD01_VD69,Estimate; Total: - Japanese:
# HD01_VD72,Estimate; Total: - Korean:
# HD01_VD75,"Estimate; Total: - Mon-Khmer, Cambodian:"
# HD01_VD78,Estimate; Total: - Hmong:
# HD01_VD81,Estimate; Total: - Thai:
# HD01_VD84,Estimate; Total: - Laotian:
# HD01_VD87,Estimate; Total: - Vietnamese:
# HD01_VD90,Estimate; Total: - Other Asian languages:
# HD01_VD93,Estimate; Total: - Tagalog:
# HD01_VD96,Estimate; Total: - Other Pacific Island languages:
# HD01_VD99,Estimate; Total: - Navajo:
# HD01_VD102,Estimate; Total: - Other Native North American languages:
# HD01_VD105,Estimate; Total: - Hungarian:
# HD01_VD108,Estimate; Total: - Arabic:
# HD01_VD111,Estimate; Total: - Hebrew:
# HD01_VD114,Estimate; Total: - African languages:
# HD01_VD117,Estimate; Total: - Other and unspecified languages:
