
require 'bio'
include Bio

start_id = ( ARGV.shift ).to_i
project_id = ARGV.shift
ff = FlatFile.new( FastaFormat, ARGF )

id = start_id
ff.each do |f|
  id += 1
  transcript_id = f.definition
  if   transcripit_id =~ /^transcript:\S/
    transcript_id = "#{transcript_id.slice(/^(\S+)/, 1)}"
  else
    transcript_id = "transcript:#{transcript_id.slice(/^(\S+)/, 1)}"
  end
  if   transcripit_id =~ /^\S+\.\d+$/
    transcript_id = "#{transcript_id.slice(/^(\S+)\.\d+$/, 1)}"
  end

  print [ project_id, transcript_id, f.seq ].join("\t"), "\t", "#{Time.new.to_s.slice(/(.+)\s\S+$/, 1)}\t#{Time.new.to_s.slice(/(.+)\s\S+$/, 1)}\n"

end

