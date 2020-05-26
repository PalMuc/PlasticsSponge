#what is the diversity of particles found on the filters?

#load csv file
all_particle <- read.csv("~/Downloads/R-analysis/Raman-counts-all.csv")


#subset a new data frame from a general one
gross_counts <- subset(all_particle[30:35,-2])
detailed_counts <- subset(all_particle[1:29,-2])

sum_100_counts <- subset(all_particle[30:35,-2])
total_counts <- subset(all_particle[c(1:29, 37:71),])
countsRANDOM <- subset(all_particle[1:29,-2])
countsTARGET <- subset(all_particle[37:71,-2])

# Barchart separate with error bars ---------------------------------------


#subset per triplicate
carteriospongia <- subset(sum_100_counts[,c(1, 2:4)])
ircinia_I <- subset(sum_100_counts[,c(1, 5:7)])
ircinia_II <- subset(sum_100_counts[,c(1, 8:10)])
tethyid_I <- subset(sum_100_counts[,c(1, 11:13)])
tethyid_II <- subset(sum_100_counts[,c(1, 14:16)])
coralsand <- subset(sum_100_counts[,c(1, 17)])

#sum rows, subset and remove zero's categories
library(matrixStats)
carteriospongia$mean <- rowMeans(carteriospongia[2:4])
#carteriospongia <- subset(carteriospongia, mean>=1)
carteriospongia$sd <- rowSds(as.matrix(carteriospongia[2:4]), na.rm=TRUE)

ircinia_I$mean <- rowMeans(ircinia_I[2:4])
#ircinia_I <- subset(ircinia_I, mean>=1)
ircinia_I$sd <- rowSds(as.matrix(ircinia_I[2:4]), na.rm=TRUE)

ircinia_II$mean <- rowMeans(ircinia_II[2:4])
#ircinia_II <- subset(ircinia_II, mean>=1)
ircinia_II$sd <- rowSds(as.matrix(ircinia_II[2:4]), na.rm=TRUE)

tethyid_I$mean <- rowMeans(tethyid_I[2:4])
#tethyid_I <- subset(tethyid_I, mean>=1)
tethyid_I$sd <- rowSds(as.matrix(tethyid_I[2:4]), na.rm=TRUE)

tethyid_II$mean <- rowMeans(tethyid_II[2:4])
#tethyid_II <- subset(tethyid_II, mean>=1)
tethyid_II$sd <- rowSds(as.matrix(tethyid_II[2:4]), na.rm=TRUE)


#barplot with error bars (geom_...range)
library(ggplot2)
require(gridExtra)

a <- ggplot(carteriospongia) +
  geom_bar( aes(x=Particle_type, y=mean), stat="identity", 
            fill="skyblue", alpha=0.5) +
  geom_pointrange( aes(x=Particle_type,y=mean, ymin=mean-sd, ymax=mean+sd), 
                  colour="black", alpha=1, size=0.2) + ggtitle("Carteriospongia") +
  ylim(-5, 80)
b <- ggplot(ircinia_I) +
  geom_bar( aes(x=Particle_type, y=mean), stat="identity", 
            fill="skyblue", alpha=0.5) +
  geom_pointrange( aes(x=Particle_type,y=mean, ymin=mean-sd, ymax=mean+sd), 
                   colour="black", alpha=1, size=0.2) + ggtitle("Ircinia I") +
  ylim(-5, 80)
c <- ggplot(ircinia_II) +
  geom_bar( aes(x=Particle_type, y=mean), stat="identity", 
            fill="skyblue", alpha=0.5) +
  geom_pointrange( aes(x=Particle_type,y=mean, ymin=mean-sd, ymax=mean+sd), 
                   colour="black", alpha=1, size=0.2) + ggtitle("Ircinia II") +
  ylim(-5, 80)
d <- ggplot(tethyid_I) +
  geom_bar( aes(x=Particle_type, y=mean), stat="identity", 
            fill="skyblue", alpha=0.5) +
  geom_pointrange( aes(x=Particle_type,y=mean, ymin=mean-sd, ymax=mean+sd), 
                   colour="black", alpha=1, size=0.2) + ggtitle("Tethyid I") +
  ylim(-5, 80)
e <- ggplot(tethyid_II) +
  geom_bar( aes(x=Particle_type, y=mean), stat="identity", 
            fill="skyblue", alpha=0.5) +
  geom_pointrange( aes(x=Particle_type,y=mean, ymin=mean-sd, ymax=mean+sd), 
                   colour="black", alpha=1, size=0.2) + ggtitle("Tethyid II") +
  ylim(-5, 80)
f <- ggplot(coralsand, aes(x=Particle_type, y=coralsand)) + 
  geom_bar( aes(x=Particle_type, y=coralsand), stat="identity", 
            fill="skyblue", alpha=0.5) + ggtitle("Coral sand") +
  ylim(-5, 80)


grid.arrange(a, b, c, d, e, f, ncol=6)



# Aragonite/Calcite ratio + ANOVA analysis ----------------------------------------------------------

#load csv file
all_particle <- read.csv("~/Downloads/R-analysis/Raman-counts-all.csv")


#subset a new data frame from a general one
gross_counts <- subset(all_particle[30:35,-2])
all_ratio <- data.frame(gross_counts)
all_ratio <- subset(all_ratio[c(1,2),c(1:17)])

ratio_vector <- c(NA)

#to make a ratio for each column together in one vector
for (i in 2:17) {
  
  ratio <- all_ratio[1,i]/all_ratio[2,i]
  ratio_vector <- c(ratio_vector, ratio)
}
#round the values to 3 digits
ratio_vector <- round(ratio_vector, digits = 3)
#combine ratio vector and data frame
all_ratio <- rbind(all_ratio, ratio_vector)

#1: ar-cal ratio

cal_ar_ratio <- subset(all_ratio[3,])
cal_ar_ratio[,1] <- c("ratio")
cal_ar_ratio[,17] <- NULL


library(reshape2)
ratio_melt <- melt(cal_ar_ratio, id.vars = "Particle_type", variable.name = c("sample"))
ratio_melt$species <- c("carteriospongia","carteriospongia","carteriospongia", 
                          "ircinia I", "ircinia I","ircinia I",
                          "ircinia II","ircinia II","ircinia II",
                          "tethyid I","tethyid I","tethyid I",
                          "tethyid II","tethyid II","tethyid II")
ratio_melt$location <- c("south","south","south", 
                         "south", "south","south",
                        "north","north","north",
                        "south","south","south",
                        "south","south","south")

sand <- all_ratio[1,17]/all_ratio[2,17]

#per species
library(ggplot2)
bp<- ggplot(ratio_melt, aes(x=species, y=value)) + 
  geom_boxplot() +
  geom_hline(aes(yintercept=sand),linetype="dotted") +
  theme_bw()

ggplot_build(bp)$data
library(plyr)
p_meds <- ddply(ratio_melt, .(species), summarise, med = median(value))

ggplot(ratio_melt,aes(x = species, y = value)) + 
  geom_boxplot() + 
  geom_text(data = p_meds, aes(x = species, y = med, label = med))

ano_ratio <- with(ratio_melt, anova(lm(value ~ species))) #anova
with(ratio_melt, TukeyHSD(aov(value ~ species), "species")) #Tukey test
with(ratio_melt, pairwise.t.test(value, species, p.adj = "none")) #pairwise t.test


#per location
library(ggplot2)
ggplot(ratio_melt, aes(x=location, y=value)) + 
  geom_boxplot() +
  geom_hline(aes(yintercept=sand),linetype="dotted") +
  theme_bw()

ano_ratio_loc <- with(ratio_melt, anova(lm(value ~ location))) #anova
with(ratio_melt, TukeyHSD(aov(value ~ location), "location")) #Tukey test
with(ratio_melt, pairwise.t.test(value, location, p.adj = "none")) #pairwise t.test

with(ratio_melt, aov(value ~ species))


# ANOSIM analysis ------------------------------------------------------------

all_particle <- read.csv("~/Downloads/R-analysis/Raman-counts-all.csv", header=T)

total_counts <- subset(all_particle[c(1:29, 37:71),-2])

#to sum the particle counts for the same material regardless of the search pattern
total_counts <- cbind(aggregate(GW31000 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31035 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31041 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31007 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31038 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31039 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31059 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31073 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31076 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31010 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31037 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31044 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31013 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31034 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(GW31043 ~ Particle_type, data=total_counts, FUN=sum),
                      aggregate(coralsand ~ Particle_type, data=total_counts, FUN=sum))


total_counts[,3] <- NULL
total_counts[,4] <- NULL
total_counts[,5] <- NULL
total_counts[,6] <- NULL
total_counts[,7] <- NULL
total_counts[,8] <- NULL
total_counts[,9] <- NULL
total_counts[,10] <- NULL
total_counts[,11] <- NULL
total_counts[,12] <- NULL
total_counts[,13] <- NULL
total_counts[,14] <- NULL
total_counts[,15] <- NULL
total_counts[,16] <- NULL
total_counts[,17] <- NULL

row.names(total_counts) <- total_counts$Particle_type
total_counts <- total_counts[,-1]

library("vegan")
#VERY IMPORTANT TO TRANSFORM BEFORE DOING DECOSTAND, it acts on rows and not columns.
total_counts_t <- t(total_counts)
total_counts_percent_t <- decostand(total_counts_t, "total") 

ord3<-metaMDS(total_counts_percent_t)
Species3 <- c("Carteriospongia","Carteriospongia","Carteriospongia",
             "IrciniaI","IrciniaI","IrciniaI",
             "IrciniaII","IrciniaII","IrciniaII",
             "TethyidI","TethyidI","TethyidI",
             "TethyidII","TethyidII","TethyidII","Sand")
Location3 <- c("South","South","South",
              "South","South","South",
              "North","North","North",
              "South","South","South",
              "South","South","South","Sand")
Subclass3 <- c("Keratosa","Keratosa","Keratosa",
              "Keratosa","Keratosa","Keratosa",
              "Keratosa","Keratosa","Keratosa",
              "Hetero","Hetero","Hetero",
              "Hetero","Hetero","Hetero","Sand")

par(mfrow = c(1,3))
#for plot Species3: 
plot(ord3, disp="sites", type = "n")
ordihull (ord3, Species3, col = "aquamarine")
ordispider(ord3, Species3, col="aquamarine", label = TRUE, size=8)
points(ord3, disp="sites", pch= c(19), bg=as.numeric(Species3), cex=1.3)
ordiellipse(ord3, Species3, kind = "se", lwd=0.5, conf = 0.99, col = "red") #for confidence interval: conf= 0.90 (or 0.95 or 0.99) - all three were performed
#for plot Subclass3: 
plot(ord3, disp="sites", type = "n")
ordihull (ord3, Subclass3, col = "aquamarine")
ordispider(ord3, Subclass3, col="aquamarine", label = TRUE, size=8)
points(ord3, disp="sites", pch= c(19), bg=as.numeric(Subclass3), cex=1.3)
ordiellipse(ord3, Subclass3, kind = "se", lwd=0.5, conf = 0.99, col = "red") #for confidence interval: conf= 0.90 (or 0.95 or 0.99) - all three were performed
#for plot Location3: 
plot(ord3, disp="sites", type = "n")
ordihull (ord3, Location3, col = "aquamarine")
ordispider(ord3, Location3, col="aquamarine", label = TRUE, size=8)
points(ord3, disp="sites", pch= c(19), bg=as.numeric(Location3), cex=1.3)
ordiellipse(ord3, Location3, kind = "se", lwd=0.5, conf = 0.99, col = "red") #for confidence interval: conf= 0.90 (or 0.95 or 0.99) - all three were performed

#Significance is the p value
anosim(total_counts_percent_t, Species) #analysis of similarity 
anosim(total_counts_percent_t, Subclass) #analysis of similarity 
anosim(total_counts_percent_t, Location) #analysis of similarity 
