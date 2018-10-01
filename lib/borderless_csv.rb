require "borderless_csv/version"
require 'csv'
module BorderlessCsv
  class <<self
    def run
      file = ARGV[0]
      unless file
        puts "usage: bordless_csv in.csv >> out.csv"
        exit(1)
      end
      write(process(CSV.read(file, headers: true)))
    end

    def process(data)
      rows = data.map do |row|
        [
          row['Date'].split('-').join('/'),
          row['Amount'],
          row['Description']
        ]
      end
      rows
    end

    def write(output)
      str = CSV.generate do |csv|
        output.each do |row|
          csv << row
        end
      end
      puts str
    end
  end
end
