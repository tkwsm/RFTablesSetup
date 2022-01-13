

project_id=4
ruby  ~/bin/factory/create_genes_table_for_ensembl.rb        $project_id ~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.gff3 >~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.4genes.txt

ruby  ~/bin/factory/create_attributes_table_for_ensembl.rb $project_id ~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.gff3 >~/db/oryzias_latipes_hni/Oryzias_latipes_hni.ASM223471v1.104.4attributes.txt
