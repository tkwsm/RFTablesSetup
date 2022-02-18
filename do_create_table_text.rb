

# do_create_table_text.rb
project_id = ARGV.shift
gff        = ARGV.shift
sid4genes  = ARGV.shift
sid4attr   = ARGV.shift
sid4transc = ARGV.shift
sid4tattr  = ARGV.shift

outf4prefix = gff.slice(./^(\S+)\.[^\.]+/)

# create a text file for loading into genes table

`ruby create_genes_table_for_ensembl.rb #{sid4genes} #{project_id} #{gff} > #{outf4prefix}.4genes.txt`

# create a text file for loading into attributes table

`ruby create_attributes_table_for_ensembl.rb #{sid4attr} #{project_id} #{gff} > #{outf4prefix}.4attr.txt`

# create a text file for loading into genes table

`ruby create_transcript_table_for_ensembl.rb #{sid4transc} #{project_id} #{gff} > #{outf4prefix}.4transcripts.txt`

# create a text file for loading into genes table

`ruby create_tattr_table_for_ensembl.rb #{sid4tattr} #{project_id} #{gff} > #{outf4prefix}.4tattributes.txt`

`sudo cp #{out4prefix}.4genes.txt      /var/lib/mysql `
`sudo cp #{out4prefix}.4attr.txt       /var/lib/mysql `
`sudo cp #{out4prefix}.4attr.txt       /var/lib/mysql `
`sudo cp #{out4prefix}.4attributes.txt /var/lib/mysql `

