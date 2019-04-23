from Bio import SeqIO

for record in SeqIO.parse('current_Bacteria_aligned.fa', 'fasta'):
	if 'uncultured' not in record.description and 'uncultivated' not in record.description and 'unidentified' not in record.description and ' clone' not in record.description and 'SCGC' not in record.description and 'S-YY' not in record.description:
		print(">" + record.id + " " + record.description)
		print(record.seq)
