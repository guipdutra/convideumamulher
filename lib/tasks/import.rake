require 'csv'

namespace :import do
  desc "Import names from file"
  task import_from_file: :environment do
    csv_text = File.read("convideumamulher.csv")
    csv = CSV.parse(csv_text, :headers => false)
    csv.each do |row|
      Woman.create(:name => row[0],
                   :area => row[1],
                   :current_position => row[2],
                   :linkedin => row[3])
    end
  end
end
