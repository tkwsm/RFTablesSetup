
# project_id=4
# ruby  ~/bin/factory/create_genes_table_for_ensembl.rb        $project_id ~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.gff3 >~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.4genes.txt
# 
# ruby  ~/bin/factory/create_attributes_table_for_ensembl.rb $project_id ~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.gff3 >~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.4attributes.txt

############

project_id=7

start_id=112235
ruby /home/rf/bin/factory/RFTablesSetup/create_genes_table_for_ensembl.rb $start_id $project_id /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.gff3 > /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.4genes.txt

start_id=807143
# ruby /home/rf/bin/factory/RFTablesSetup/create_attributes_table_for_ensembl.rb $start_id $project_id /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.gff3 > /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.4attr.txt

start_id=232710
ruby /home/rf/bin/factory/RFTablesSetup/create_transcript_table_for_ensembl.rb $start_id $project_id /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.gff3 > /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.4transcripts.txt

start_id=1396095
ruby /home/rf/bin/factory/RFTablesSetup/create_tattributes_table_for_ensembl.rb $start_id $project_id /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.gff3 > /home/rf/db/GenomicDataAcquisition/dicentrarchus_labrax/Dicentrarchus_labrax.seabass_V1.0.104.4tattr.txt


