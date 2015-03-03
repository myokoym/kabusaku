#!/usr/bin/env ruby

require "csv"
require "json"

csv_path = ARGV[0]

rows = []
CSV.foreach(csv_path, encoding: "Shift_JIS:UTF-8") do |row|
  rows << row
end

rows.shift
rows.shift
rows.unshift(%w(_key market name business start high low finish volume trading_value))

p rows
exit

JSON.dump(rows, $stdout)
