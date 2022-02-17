
#!/usr/bin/ruby
#
# USAGE
# ./thisprogram.rb <start_id> <project_id> <ensembl.gff3> 

start_id = ( ARGV.shift ).to_i
project_id = ARGV.shift

seqid   = ""  ; 
gsource = ""  ; 
gtype   = ""  ; 
gstart  = 0   ; 
gend    = 0   ; 
gscore  = 0.0 ; 
gstrand = ""  ; 
gphase  = "."  ; 
transcriptid  = ""  ; 
gattributes = {} ;


id = start_id
a = []
ARGF.each do |x|
  next if x !~ /\S/
  next if x =~ /^\#/
  a = x.chomp.split("\t")
  seqid   = a[0]  ; 
  gsource = a[1]  ; 
  gtype   = a[2]  ; 
  next unless ["mRNA", "rRNA", "lnc_RNA", "snRNA", "miRNA", "snoRNA", "ncRNA", "J_gene_segment", "V_gene_segment"].include?( gtype )
  gstart  = a[3]  ; 
  gstart  = gstart.to_i if gstart =~ /^\d+/
  gend    = a[4]  ; 
  gend    = gend.to_i   if gend   =~ /^\d+/
  gscore  = a[5]        ; 
  gscore  = gscore.to_f if gscore =~ /^\d+/
  gstrand = a[6]  ; 
  gphase  = a[7]  ; 
  gphase  = gphase.to_i if gphase =~ /^\d+/
  a[8].split("\;").each do |tag2val|
    tag = tag2val.split("=")[0]
    val = tag2val.split("=")[1]
    gattributes[ tag ] = val
  end
#  p gattributes
  transcriptid = gattributes["ID"]
  gattributes.each_key do |tag|
    id     += 1
    val = gattributes[ tag ]
    print "#{id}\t#{project_id}\t#{transcriptid}\t#{tag}\t#{val}\t#{Time.new.to_s.slice(/(.+)\s\S+$/, 1)}\t#{Time.new.to_s.slice(/(.+)\s\S+$/, 1)}\n"
    
  end
  if transcriptid == nil
    STDERR.puts "Something Error"
    STDERR.puts a
    exit
  end
end



