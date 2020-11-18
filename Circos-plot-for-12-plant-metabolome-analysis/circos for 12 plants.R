
# package install
#source("https://bioconductor.org/biocLite.R")
#biocLite("OmicCircos")

# load libraries
options(stringsAsFactors = FALSE)
library(OmicCircos)

# load data
seg.f <- read.table("plant-seg.txt",header=T,sep="\t")
map <- read.table("plant-map.txt",header=T,sep="\t")
map.name <- read.table("plant-mapname.txt",header=T,sep="\t")
map.exp <- read.table("plant-exp.txt",header=T,sep="\t")

linkindole <- read.table("plant-link_indole.txt",header=T,sep="\t")
link_aminoacids <- read.table("plant-link_aminoacids.txt",header=T,sep="\t")
link_anthraquinones <- read.table("plant-link_anthraquinones.txt",header=T,sep="\t")
link_carbolines <- read.table("plant-link_carbolines.txt",header=T,sep="\t")
link_flavoneglycosides <- read.table("plant-link_flavoneglycosides.txt",header=T,sep="\t")
link_flavonolglycosides <- read.table("plant-link_flavonolglycosides.txt",header=T,sep="\t")
link_iridoidglycosides <- read.table("plant-link_iridoidglycosides.txt",header=T,sep="\t")
link_isoflavoneglycosides <- read.table("plant-link_isoflavoneglycosides.txt",header=T,sep="\t")
link_lipids <- read.table("plant-link_lipids.txt",header=T,sep="\t")
link_organicacids <- read.table("plant-link_organicacids.txt",header=T,sep="\t")
link_quinicacids <- read.table("plant-link_quinicacids.txt",header=T,sep="\t")
link_terpeneglycosides <- read.table("plant-link_terpeneglycosides.txt",header=T,sep="\t")

# for omics circos, we followed the tutorial.
seg.num <- length(unique(seg.f[,1]))
seg.name <- paste("",1:seg.num,sep = "")

db <- segAnglePo(seg.f, seg=seg.name)
colors <- rainbow(seg.num,alpha=0.5)

par(mar=c(2,2,2,2))
plot(c(1,800), c(1,800), type="n",axes=FALSE,xlab="",ylab="",main="")
circos(R=200,cir=db,W=100,mapping=map.exp,type="heatmap2", col="white")
circos(R=280, cir=db, type="chr", col=c("#000080", "#00FF00","#ffdab9", "#C0C0C0","#FFFF00", "#0000FF","#008080", "#800000","#808000", "#800080","#FF0000", "#FF00FF"), print.chr.lab=FALSE, W=40, scale=FALSE)

circos(R=190, cir=db,W=40,mapping = link_aminoacids,type="link",B=TRUE,col="#006600",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_anthraquinones,type="link",B=TRUE,col="#800080",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_carbolines,type="link",B=TRUE,col="#C0C0C0",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_flavoneglycosides,type="link",B=TRUE,col="#FF00FF",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_flavonolglycosides,type="link",B=TRUE,col="#FF00FF",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_iridoidglycosides,type="link",B=TRUE,col="#008080",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_isoflavoneglycosides,type="link",B=TRUE,col="#FF0000",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_lipids,type="link",B=TRUE,col="#3399ff",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_organicacids,type="link",B=TRUE,col="#0000FF",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_quinicacids,type="link",B=TRUE,col="#ff9933",lwd = 1)
circos(R=190, cir=db,W=40,mapping = link_terpeneglycosides,type="link",B=TRUE,col="#0000FF",lwd = 1)
circos(R=190, cir=db,W=40,mapping = linkindole,type="link",B=TRUE,col="#00FF00",lwd = 1)


circos(R=280, cir=db, W=20, type="label", mapping=map.name, col.v=3, col="black", side="out",cex=0.4)
