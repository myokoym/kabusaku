#!/usr/bin/env ruby

require "tempfile"

db_path = File.expand_path("tmp/db/kabusaku.db", File.dirname(__FILE__))

command = "load --table Stocks\n"

ARGF.each do |line|
  command << line
end

Tempfile.open("kabusaku") do |tempfile|
  File.write(tempfile, command)
  tempfile.flush
  system("groonga #{db_path} < #{tempfile.path}")
end
