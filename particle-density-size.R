#what is the distribution of the particles in my samples - an overview

#load csv file
keratose_particle <- read.csv("~/Downloads/FINAL-ResultsImageJ-keratosa.csv")
spiculate_particle <- read.csv("~/Downloads/FINAL-ResultsImageJ-heteroscleromorph.csv")

#delete column in dataframe
keratose_particle$X0 <- NULL
spiculate_particle$X0 <- NULL

#create a new data frame without the unsuccessful data
spiculate_particle_successful <- subset(spiculate_particle, Genus!= "unsuccessful")


#plot
library(ggplot2)

ggplot(keratose_particle, aes(x=Location, y=Mean)) + 
  geom_boxplot() + 
  geom_jitter(aes(color=Particle.size, size=Particle.size ),shape=16 , position=position_jitter(0.2)) +
  scale_color_manual(values = c("white", "gray", "black")) +
  scale_size_manual(values = c(8, 4, 2)) + 
  guides(size = guide_legend(reverse = TRUE), color = guide_legend(reverse = TRUE)) + 
  facet_wrap(~Genus)

ggplot(spiculate_particle_successful, aes(x=Location, y=Mean)) + 
  geom_boxplot() + 
  geom_jitter(aes(size=Particle.size, color=Particle.size), shape=16,  position=position_jitter(0.2)) +
  scale_color_manual(values = c("gray", "black")) +
  scale_size_manual(values = c(4, 2)) + 
  guides(size = guide_legend(reverse = TRUE), color = guide_legend(reverse = TRUE)) + 
  facet_wrap(~Genus, nrow = 1)
