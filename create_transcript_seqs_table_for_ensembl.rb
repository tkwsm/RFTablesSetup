
require 'bio'
include Bio

start_id = ( ARGV.shift ).to_i
project_id = ARGV.shift
ff = FlatFile.new( FastaFormat, ARGF )

id = start_id
ff.each do |f|
  id += 1
  print [ project_id, f.definition, f.seq ].join("\t"), "\t", "#{Time.new.to_s.slice(/(.+)\s\S+$/, 1)}\t#{Time.new.to_s.slice(/(.+)\s\S+$/, 1)}\n"
end

