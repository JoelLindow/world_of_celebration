stock_message = "Needs URL Populated from Geognos Flag API"
Country.create!(name: "Argentina",              abbreviation: "AR", flag_img_url: stock_message)
Country.create!(name: "Angola",                 abbreviation: "AO", flag_img_url: stock_message)
Country.create!(name: "Austria",                abbreviation: "AT", flag_img_url: stock_message)
Country.create!(name: "Australia",              abbreviation: "AU", flag_img_url: stock_message)
Country.create!(name: "Aruba",                  abbreviation: "AW", flag_img_url: stock_message)
Country.create!(name: "Bosnia",                 abbreviation: "BA", flag_img_url: stock_message)
Country.create!(name: "Belgium",                abbreviation: "BE", flag_img_url: stock_message)
Country.create!(name: "Bulgaria",               abbreviation: "BG", flag_img_url: stock_message)
Country.create!(name: "Bolivia",                abbreviation: "BO", flag_img_url: stock_message)
Country.create!(name: "Brazil",                 abbreviation: "BR", flag_img_url: stock_message)
Country.create!(name: "The Bahamas",            abbreviation: "BS", flag_img_url: stock_message)
Country.create!(name: "Canada",                 abbreviation: "CA", flag_img_url: stock_message)
Country.create!(name: "Switzerland",            abbreviation: "CH", flag_img_url: stock_message)
Country.create!(name: "China",                  abbreviation: "CN", flag_img_url: stock_message)
Country.create!(name: "Colombia",               abbreviation: "CO", flag_img_url: stock_message)
Country.create!(name: "Costa Rica",             abbreviation: "CR", flag_img_url: stock_message)
Country.create!(name: "Cuba",                   abbreviation: "CU", flag_img_url: stock_message)
Country.create!(name: "Czech Republic",         abbreviation: "CZ", flag_img_url: stock_message)
Country.create!(name: "Germany",                abbreviation: "DE", flag_img_url: stock_message)
Country.create!(name: "Denmark",                abbreviation: "DK", flag_img_url: stock_message)
Country.create!(name: "Dominican Republic",     abbreviation: "DO", flag_img_url: stock_message)
Country.create!(name: "Ecuador",                abbreviation: "EC", flag_img_url: stock_message)
Country.create!(name: "Spain",                  abbreviation: "ES", flag_img_url: stock_message)
Country.create!(name: "Finland",                abbreviation: "FI", flag_img_url: stock_message)
Country.create!(name: "France",                 abbreviation: "FR", flag_img_url: stock_message)
Country.create!(name: "United Kingdom",         abbreviation: "GB", flag_img_url: stock_message)
Country.create!(name: "Hong Kong",              abbreviation: "HK", flag_img_url: stock_message)
Country.create!(name: "Honduras",               abbreviation: "HN", flag_img_url: stock_message)
Country.create!(name: "Croatia",                abbreviation: "HR", flag_img_url: stock_message)
Country.create!(name: "Hungary",                abbreviation: "HU", flag_img_url: stock_message)
Country.create!(name: "Indonesia",              abbreviation: "ID", flag_img_url: stock_message)
Country.create!(name: "Ireland",                abbreviation: "IE", flag_img_url: stock_message)
Country.create!(name: "India",                  abbreviation: "IN", flag_img_url: stock_message)
Country.create!(name: "Israel",                 abbreviation: "IL", flag_img_url: stock_message)
Country.create!(name: "Iceland",                abbreviation: "IS", flag_img_url: stock_message)
Country.create!(name: "Italy",                  abbreviation: "IT", flag_img_url: stock_message)
Country.create!(name: "Japan",                  abbreviation: "JP", flag_img_url: stock_message)
Country.create!(name: "Kazakhstan",             abbreviation: "KZ", flag_img_url: stock_message)
Country.create!(name: "Lesotho",                abbreviation: "LS", flag_img_url: stock_message)
Country.create!(name: "Luxembourg",             abbreviation: "LU", flag_img_url: stock_message)
Country.create!(name: "Madagascar",             abbreviation: "MG", flag_img_url: stock_message)
Country.create!(name: "Malta",                  abbreviation: "MT", flag_img_url: stock_message)
Country.create!(name: "Mauritius",              abbreviation: "MU", flag_img_url: stock_message)
Country.create!(name: "Mexico",                 abbreviation: "MX", flag_img_url: stock_message)
Country.create!(name: "Mozambique",             abbreviation: "MZ", flag_img_url: stock_message)
Country.create!(name: "Nigeria",                abbreviation: "NG", flag_img_url: stock_message)
Country.create!(name: "Netherlands",            abbreviation: "NL", flag_img_url: stock_message)
Country.create!(name: "Norway",                 abbreviation: "NO", flag_img_url: stock_message)
Country.create!(name: "Peru",                   abbreviation: "PE", flag_img_url: stock_message)
Country.create!(name: "Pakistan",               abbreviation: "PK", flag_img_url: stock_message)
Country.create!(name: "Phillipines",            abbreviation: "PH", flag_img_url: stock_message)
Country.create!(name: "Poland",                 abbreviation: "PL", flag_img_url: stock_message)
Country.create!(name: "Puerto Rico",            abbreviation: "PR", flag_img_url: stock_message)
Country.create!(name: "Portugal",               abbreviation: "PT", flag_img_url: stock_message)
Country.create!(name: "Paraguay",               abbreviation: "PY", flag_img_url: stock_message)
Country.create!(name: "Romania",                abbreviation: "RO", flag_img_url: stock_message)
Country.create!(name: "Russia",                 abbreviation: "RU", flag_img_url: stock_message)
Country.create!(name: "Seychelles",             abbreviation: "SC", flag_img_url: stock_message)
Country.create!(name: "Sweden",                 abbreviation: "SE", flag_img_url: stock_message)
Country.create!(name: "Singapore",              abbreviation: "SG", flag_img_url: stock_message)
Country.create!(name: "Slovenia",               abbreviation: "SI", flag_img_url: stock_message)
Country.create!(name: "Sao Tome and Principe",  abbreviation: "ST", flag_img_url: stock_message)
Country.create!(name: "Slovakia",               abbreviation: "SK", flag_img_url: stock_message)
Country.create!(name: "Tunisia",                abbreviation: "TN", flag_img_url: stock_message)
Country.create!(name: "Turkey",                 abbreviation: "TR", flag_img_url: stock_message)
Country.create!(name: "Ukraine",                abbreviation: "UA", flag_img_url: stock_message)
Country.create!(name: "United States",          abbreviation: "US", flag_img_url: stock_message)
Country.create!(name: "Uraguay",                abbreviation: "UY", flag_img_url: stock_message)
Country.create!(name: "Venezuela",              abbreviation: "VE", flag_img_url: stock_message)
Country.create!(name: "South Africa",           abbreviation: "ZA", flag_img_url: stock_message)
Country.create!(name: "Zimbabe",                abbreviation: "ZW", flag_img_url: stock_message)

# Adds Flag Image URL from geognos flag API
Country.all.each do |country|
  country.update!(flag_img_url: "http://www.geognos.com/api/en/countries/flag/#{country.abbreviation}.png")
  puts "#{country.name} updated with Flag API data"
end

#Countries that do not have flag entries on the flag API. Manually added Flag URL
Country.create!(name: "Martinique", abbreviation: "MQ", flag_img_url: "http://www.crwflags.com/fotw/images/m/mq-unof.gif")
Country.create!(name: "Aland Island", abbreviation: "AX", flag_img_url: "http://www.crwflags.com/fotw/images/a/ax.gif")
Country.create!(name: "England", abbreviation: "GB-ENG", flag_img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Old_union_jack.gif/320px-Old_union_jack.gif")
Country.create!(name: "Northern Ireland", abbreviation: "GB-NIR", flag_img_url: "http://hasankocabas.com.tr/files/yuklenenler/resim/A21.png")
Country.create!(name: "Guatemala", abbreviation: "GB-SCT", flag_img_url: "http://www.geognos.com/api/en/countries/flag/GT.png")
Country.create!(name: "Island of Réunion", abbreviation: "RE", flag_img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Proposed_flag_of_R%C3%A9union_%28VAR%29.svg/200px-Proposed_flag_of_R%C3%A9union_%28VAR%29.svg.png")
puts "Hand Rolled countries have been seeded with manually added flag URLs"


puts ". : |       S E E D I N G   W A S   S U C C E S S F U L        | : ."
puts ""
puts "--------------------------------------------------------------------"
puts "                       BASIC SETUP INSTRUCTIONS"
puts "--------------------------------------------------------------------"
puts "1) If you haven't bundled yet, do it now."
puts "2) Type: bundle exec figaro install"
puts "3) Visit https://holidayapi.com and sign up for your API key."
puts "4) Add your Api Key and your HOLIDAY_API_KEY to the config/application.yml file"
puts "5) Visit Google Developer Portal and get your OAUTH Key and Secret"
puts "6) Add your GOOGLE_ID and GOOGLE_SECRET to the config/application.yml file"
puts "7) Type: rails s        to launch your rails server"
puts "8) Open your browser and visit http://localhost:3000 to begin using site"
