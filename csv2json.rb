#!/usr/bin/env ruby

require "csv"
require "json"

csv_path = ARGV[0]

date = csv_path.scan(/\d{4}-\d{2}-\d{2}/).first

rows = []
CSV.foreach(csv_path, encoding: "Shift_JIS:UTF-8") do |row|
  code = row[0]
  rows << ["#{date}-#{code}", date, *row]
end

rows.shift
rows.shift
rows.unshift(%w(_key date code market name business start high low finish volume trading_value))

JSON.dump(rows, $stdout)
