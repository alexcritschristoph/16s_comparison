library(ggplot2)
angelo = read.csv('angelo_750bp.align.report', sep="\t")

pdf(file='angelo_mothur_rdp.pdf', width=5, height=3)
ggplot(data=angelo, aes(SimBtwnQuery.Template)) + geom_histogram(bins=40) + theme_bw() + xlab("Percent Sequence Identity (%) - RDP") + 
scale_x_continuous(breaks=c(50,55,60,65,70,75,80,85,90,95,97,100), limits=c(50,100)) + ggtitle("Diamond et al. 2018 (Soil WGS, n=9897)") + 
geom_vline(xintercept=median(angelo$SimBtwnQuery.Template), color='red', size=0.5)
dev.off()

j = read.csv('Jangid2011_750bp.align.report', sep="\t")

pdf(file='Jangid2011_mothur_rdp.pdf', width=5, height=3)
ggplot(data=j, aes(SimBtwnQuery.Template)) + geom_histogram(bins=40) + theme_bw() + xlab("Percent Sequence Identity (%) - RDP") + 
scale_x_continuous(breaks=c(50,55,60,65,70,75,80,85,90,95,97,100), limits=c(50,100)) + ggtitle("Jangid et al. 2011 (Soil PCR) (Soil PCR, n=3703)") + 
geom_vline(xintercept=median(j$SimBtwnQuery.Template), color='red', size=0.5)
dev.off()

san = read.csv('Santelli2008_750bp.align.report', sep="\t")

pdf(file='santelli_mothur_rdp.pdf', width=5, height=3)
ggplot(data=san, aes(SimBtwnQuery.Template)) + geom_histogram(bins=40) + theme_bw() + xlab("Percent Sequence Identity (%) - RDP") + 
scale_x_continuous(breaks=c(50,55,60,65,70,75,80,85,90,95,97,100), limits=c(50,100)) + ggtitle("Santelli et al. 2008 (Ocean Sediment PCR, n=904) ") + 
geom_vline(xintercept=median(san$SimBtwnQuery.Template), color='red', size=0.5)
dev.off() 

karst = read.csv('OBAT01.align.report', sep="\t")

pdf(file='karst_OTU_mothur_rdp.pdf', width=5, height=3)
ggplot(data=karst, aes(SimBtwnQuery.Template)) + geom_histogram(bins=40) + theme_bw() + xlab("Percent Sequence Identity (%) - RDP") + 
scale_x_continuous(breaks=c(50,55,60,65,70,75,80,85,90,95,97,100), limits=c(50,100)) + ggtitle("Karst et al. 2018 97% OTU (Cross-environment, PCR-free, n=48,836)") + 
geom_vline(xintercept=median(karst$SimBtwnQuery.Template), color='red', size=0.5)
dev.off() 

