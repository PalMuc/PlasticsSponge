#Raman spectroscopy efficient (hopefully) analysis 

#___________________________________________________________________________________
#1: concatenante all information for each sample

# plot 100 raman measurement particles  ----------------------------

#coralsand
pathcoralsand = "~/Downloads/R-analysis/Raman/Spectra/Coral-Sand" #put in your actual path where the text files are saved
setwd(pathcoralsand) #this is to indicate which directory to use
list_coralsand = list.files(path=pathcoralsand, pattern="*.txt", full.names=FALSE) #create list of text files
raman_coralsand <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:101) {                         #create a look to integrate all raman text files in the one dataframe
  raman_datacoralsand <- scan(list_coralsand[i])
  raman_coralsand <- cbind(raman_coralsand, raman_datacoralsand)
}
colnames(raman_coralsand) <- c("raman_shift", list_coralsand) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)
raman_coralsand_100 <- raman_coralsand

raman_coralsand_100melt <- melt(raman_coralsand_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_coralsand_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("coralsand")


#GW31000
pathGW31000 = "~/Downloads/R-analysis/Raman/Spectra/GW31000" #put in your actual path where the text files are saved
setwd(pathGW31000) #this is to indicate which directory to use
list_GW31000 = list.files(path=pathGW31000, pattern="*.txt", full.names=FALSE) #create list of text files
raman_GW31000 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:108) {                         #create a look to integrate all raman text files in the one dataframe
  raman_data00 <- scan(list_GW31000[i])
  raman_GW31000 <- cbind(raman_GW31000, raman_data00)
}
colnames(raman_GW31000) <- c("raman_shift", list_GW31000) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)
raman_GW31000_100 <- raman_GW31000
raman_GW31000_100[,2:9] <- NULL

raman_GW31000_100melt <- melt(raman_GW31000_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31000_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31000")


#GW31007
pathGW31007 = "~/Downloads/R-analysis/Raman/Spectra/GW31007"
setwd(pathGW31007)
list_GW31007 = list.files(path=pathGW31007, pattern="*.txt", full.names=FALSE)
raman_GW31007 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data07 <- scan(list_GW31007[i])
  raman_GW31007 <- cbind(raman_GW31007, raman_data07)
}
colnames(raman_GW31007) <- c("raman_shift", list_GW31007)

library(ggplot2)
library(reshape2)
raman_GW31007_100 <- raman_GW31007
raman_GW31007_100[,2:6] <- NULL

raman_GW31007_100melt <- melt(raman_GW31007_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31007_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31007")

#GW31010
pathGW31010 = "~/Downloads/R-analysis/Raman/Spectra/GW31010"
setwd(pathGW31010)
list_GW31010 = list.files(path=pathGW31010, pattern="*.txt", full.names=FALSE) 
raman_GW31010 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:104) {
  raman_data10 <- scan(list_GW31010[i])
  raman_GW31010 <- cbind(raman_GW31010, raman_data10)
}
colnames(raman_GW31010) <- c("raman_shift", list_GW31010)

library(ggplot2)
library(reshape2)
raman_GW31010_100 <- raman_GW31010
raman_GW31010_100[,2:5] <- NULL

raman_GW31010_100melt <- melt(raman_GW31010_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31010_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31010")


#GW31013
pathGW31013 = "~/Downloads/R-analysis/Raman/Spectra/GW31013"
setwd(pathGW31013)
list_GW31013 = list.files(path=pathGW31013, pattern="*.txt", full.names=FALSE) 
raman_GW31013 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:108) {
  raman_data13 <- scan(list_GW31013[i])
  raman_GW31013 <- cbind(raman_GW31013, raman_data13)
}
colnames(raman_GW31013) <- c("raman_shift", list_GW31013)

library(ggplot2)
library(reshape2)
raman_GW31013_100 <- raman_GW31013
raman_GW31013_100[,2:9] <- NULL

raman_GW31013_100melt <- melt(raman_GW31013_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31013_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31013")


#GW31034
pathGW31034 = "~/Downloads/R-analysis/Raman/Spectra/GW31034"
setwd(pathGW31034)
list_GW31034 = list.files(path=pathGW31034, pattern="*.txt", full.names=FALSE)
raman_GW31034 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:107) {
  raman_data34 <- scan(list_GW31034[i])
  raman_GW31034 <- cbind(raman_GW31034, raman_data34)
}
colnames(raman_GW31034) <- c("raman_shift", list_GW31034)

library(ggplot2)
library(reshape2)
raman_GW31034_100 <- raman_GW31034
raman_GW31034_100[,2:8] <- NULL

raman_GW31034_100melt <- melt(raman_GW31034_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31034_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31034")


#GW31035
pathGW31035 = "~/Downloads/R-analysis/Raman/Spectra/GW31035"
setwd(pathGW31035)
list_GW31035 = list.files(path=pathGW31035, pattern="*.txt", full.names=FALSE) 
raman_GW31035 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data35 <- scan(list_GW31035[i])
  raman_GW31035 <- cbind(raman_GW31035, raman_data35)
}
colnames(raman_GW31035) <- c("raman_shift", list_GW31035)

library(ggplot2)
library(reshape2)
raman_GW31035_100 <- raman_GW31035
raman_GW31035_100[,2:10] <- NULL

raman_GW31035_100melt <- melt(raman_GW31035_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31035_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31035")

#GW31037
pathGW31037 = "~/Downloads/R-analysis/Raman/Spectra/GW31037"
setwd(pathGW31037)
list_GW31037 = list.files(path=pathGW31037, pattern="*.txt", full.names=FALSE) 
raman_GW31037 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data37 <- scan(list_GW31037[i])
  raman_GW31037 <- cbind(raman_GW31037, raman_data37)
}
colnames(raman_GW31037) <- c("raman_shift", list_GW31037)

library(ggplot2)
library(reshape2)
raman_GW31037_100 <- raman_GW31037
raman_GW31037_100[,2:6] <- NULL

raman_GW31037_100melt <- melt(raman_GW31037_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31037_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31037")

#GW31038
pathGW31038 = "~/Downloads/R-analysis/Raman/Spectra/GW31038"
setwd(pathGW31038)
list_GW31038 = list.files(path=pathGW31038, pattern="*.txt", full.names=FALSE) 
raman_GW31038 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data38 <- scan(list_GW31038[i])
  raman_GW31038 <- cbind(raman_GW31038, raman_data38)
}
colnames(raman_GW31038) <- c("raman_shift", list_GW31038)

library(ggplot2)
library(reshape2)
raman_GW31038_100 <- raman_GW31038
raman_GW31038_100[,2:10] <- NULL

raman_GW31038_100melt <- melt(raman_GW31038_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31038_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31038")


#GW31039
pathGW31039 = "~/Downloads/R-analysis/Raman/Spectra/GW31039"
setwd(pathGW31039)
list_GW31039 = list.files(path=pathGW31039, pattern="*.txt", full.names=FALSE) 
raman_GW31039 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:110) {
  raman_data39 <- scan(list_GW31039[i])
  raman_GW31039 <- cbind(raman_GW31039, raman_data39)
}
colnames(raman_GW31039) <- c("raman_shift", list_GW31039)

library(ggplot2)
library(reshape2)
raman_GW31039_100 <- raman_GW31039
raman_GW31039_100[,2:11] <- NULL

raman_GW31039_100melt <- melt(raman_GW31039_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31039_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31039")


#GW31041
pathGW31041 = "~/Downloads/R-analysis/Raman/Spectra/GW31041"
setwd(pathGW31041)
list_GW31041 = list.files(path=pathGW31041, pattern="*.txt", full.names=FALSE)
raman_GW31041 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data41 <- scan(list_GW31041[i])
  raman_GW31041 <- cbind(raman_GW31041, raman_data41)
}
colnames(raman_GW31041) <- c("raman_shift", list_GW31041)

library(ggplot2)
library(reshape2)
raman_GW31041_100 <- raman_GW31041
raman_GW31041_100[,2:6] <- NULL

raman_GW31041_100melt <- melt(raman_GW31041_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31041_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31041")


#GW31043
pathGW31043 = "~/Downloads/R-analysis/Raman/Spectra/GW31043"
setwd(pathGW31043)
list_GW31043 = list.files(path=pathGW31043, pattern="*.txt", full.names=FALSE)
raman_GW31043 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data43 <- scan(list_GW31043[i])
  raman_GW31043<- cbind(raman_GW31043, raman_data43)
}
colnames(raman_GW31043) <- c("raman_shift", list_GW31043)

library(ggplot2)
library(reshape2)
raman_GW31043_100 <- raman_GW31043
raman_GW31043_100[,2:6] <- NULL

raman_GW31043_100melt <- melt(raman_GW31043_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31043_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31043")

#GW31044
pathGW31044 = "~/Downloads/R-analysis/Raman/Spectra/GW31044"
setwd(pathGW31044)
list_GW31044 = list.files(path=pathGW31044, pattern="*.txt", full.names=FALSE)
raman_GW31044 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data44 <- scan(list_GW31044[i])
  raman_GW31044 <- cbind(raman_GW31044, raman_data44)
}
colnames(raman_GW31044) <- c("raman_shift", list_GW31044)

library(ggplot2)
library(reshape2)
raman_GW31044_100 <- raman_GW31044
raman_GW31044_100[,2:6] <- NULL

raman_GW31044_100melt <- melt(raman_GW31044_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31044_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31044")


#GW31059
pathGW31059 = "~/Downloads/R-analysis/Raman/Spectra/GW31059"
setwd(pathGW31059)
list_GW31059 = list.files(path=pathGW31059, pattern="*.txt", full.names=FALSE)
raman_GW31059 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data59 <- scan(list_GW31059[i])
  raman_GW31059 <- cbind(raman_GW31059, raman_data59)
}
colnames(raman_GW31059) <- c("raman_shift", list_GW31059)

library(ggplot2)
library(reshape2)
raman_GW31059_100 <- raman_GW31059
raman_GW31059_100[,2:10] <- NULL

raman_GW31059_100melt <- melt(raman_GW31059_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31059_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31059")


#GW31073
pathGW31073 = "~/Downloads/R-analysis/Raman/Spectra/GW31073"
setwd(pathGW31073)
list_GW31073 = list.files(path=pathGW31073, pattern="*.txt", full.names=FALSE)
raman_GW31073 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data73 <- scan(list_GW31073[i])
  raman_GW31073 <- cbind(raman_GW31073, raman_data73)
}
colnames(raman_GW31073) <- c("raman_shift", list_GW31073)

library(ggplot2)
library(reshape2)
raman_GW31073_100 <- raman_GW31073
raman_GW31073_100[,2:10] <- NULL

raman_GW31073_100melt <- melt(raman_GW31073_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31073_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31073")


#GW31076
pathGW31076 = "~/Downloads/R-analysis/Raman/Spectra/GW31076"
setwd(pathGW31076)
list_GW31076 = list.files(path=pathGW31076, pattern="*.txt", full.names=FALSE)
raman_GW31076 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) 
for (i in 1:107) {
  raman_data76 <- scan(list_GW31076[i])
  raman_GW31076 <- cbind(raman_GW31076, raman_data76)
}
colnames(raman_GW31076) <- c("raman_shift", list_GW31076)

library(ggplot2)
library(reshape2)
raman_GW31076_100 <- raman_GW31076
raman_GW31076_100[,2:8] <- NULL

raman_GW31076_100melt <- melt(raman_GW31076_100,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31076_100melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  theme(legend.position="none") + ggtitle("GW31076")



# Tubipora white and red sclerite Raman plots ----------------------------------------


#To plot full length (50-2000) with single text files
raman_sclerite <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
raman_sclerite_red <- scan("~/Downloads/R-analysis/Raman/Spectra/GW1858-Tubipora-red-sclerite.txt")
raman_sclerite <- cbind(raman_sclerite, raman_sclerite_red)
library(ggplot2)
ggplot(data = raman_sclerite, aes (x=raman_shift, y=raman_sclerite_red)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 500)) +
  theme_bw()


raman_sclerite <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
raman_sclerite_red <- scan("~/Downloads/R-analysis/Raman/Spectra/GW1858-Tubipora-white-sclerite-full-length.txt")
raman_sclerite <- cbind(raman_sclerite, raman_sclerite_red)
library(ggplot2)
ggplot(data = raman_sclerite, aes (x=raman_shift, y=raman_sclerite_red)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 500)) +
  theme_bw()


# Particle diversity (which are not the 100 particles) ------------------------------------------------------


#GW31000
pathGW31000 = "~/Downloads/R-analysis/Raman/Spectra/GW31000" #put in your actual path where the text files are saved
setwd(pathGW31000) #this is to indicate which directory to use
list_GW31000 = list.files(path=pathGW31000, pattern="*.txt", full.names=FALSE) #create list of text files
raman_GW31000 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:108) {                         #create a look to integrate all raman text files in the one dataframe
  raman_data00 <- scan(list_GW31000[i])
  raman_GW31000 <- cbind(raman_GW31000, raman_data00)
}
colnames(raman_GW31000) <- c("raman_shift", list_GW31000) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)
raman_GW31000_diversity <- raman_GW31000
raman_GW31000_diversity[,c(2,10:109)] <- NULL

raman_GW31000_diversitymelt <- melt(raman_GW31000_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31000_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) + ggtitle("GW31000-diversity")


#GW31007
pathGW31007 = "~/Downloads/R-analysis/Raman/Spectra/GW31007"
setwd(pathGW31007)
list_GW31007 = list.files(path=pathGW31007, pattern="*.txt", full.names=FALSE)
raman_GW31007 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data07 <- scan(list_GW31007[i])
  raman_GW31007 <- cbind(raman_GW31007, raman_data07)
}
colnames(raman_GW31007) <- c("raman_shift", list_GW31007)

library(ggplot2)
library(reshape2)
raman_GW31007_diversity <- raman_GW31007
raman_GW31007_diversity[,c(2,7:106)] <- NULL

raman_GW31007_diversitymelt <- melt(raman_GW31007_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31007_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) + ggtitle("GW31007-diversity")

#GW31010
pathGW31010 = "~/Downloads/R-analysis/Raman/Spectra/GW31010"
setwd(pathGW31010)
list_GW31010 = list.files(path=pathGW31010, pattern="*.txt", full.names=FALSE) 
raman_GW31010 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:104) {
  raman_data10 <- scan(list_GW31010[i])
  raman_GW31010 <- cbind(raman_GW31010, raman_data10)
}
colnames(raman_GW31010) <- c("raman_shift", list_GW31010)

library(ggplot2)
library(reshape2)
raman_GW31010_diveristy <- raman_GW31010
raman_GW31010_diveristy[,c(2,6:105)] <- NULL

raman_GW31010_diveristymelt <- melt(raman_GW31010_diveristy,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31010_diveristymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31010-diversity")


#GW31013
pathGW31013 = "~/Downloads/R-analysis/Raman/Spectra/GW31013"
setwd(pathGW31013)
list_GW31013 = list.files(path=pathGW31013, pattern="*.txt", full.names=FALSE) 
raman_GW31013 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:108) {
  raman_data13 <- scan(list_GW31013[i])
  raman_GW31013 <- cbind(raman_GW31013, raman_data13)
}
colnames(raman_GW31013) <- c("raman_shift", list_GW31013)

library(ggplot2)
library(reshape2)
raman_GW31013_diversity <- raman_GW31013
raman_GW31013_diversity[,c(2,10:109)] <- NULL

raman_GW31013_diversitymelt <- melt(raman_GW31013_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31013_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31013-diversity")


#GW31034
pathGW31034 = "~/Downloads/R-analysis/Raman/Spectra/GW31034"
setwd(pathGW31034)
list_GW31034 = list.files(path=pathGW31034, pattern="*.txt", full.names=FALSE)
raman_GW31034 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:107) {
  raman_data34 <- scan(list_GW31034[i])
  raman_GW31034 <- cbind(raman_GW31034, raman_data34)
}
colnames(raman_GW31034) <- c("raman_shift", list_GW31034)

library(ggplot2)
library(reshape2)
raman_GW31034_diversity <- raman_GW31034
raman_GW31034_diversity[,c(2,9:108)] <- NULL

raman_GW31034_diversitymelt <- melt(raman_GW31034_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31034_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31034-diversity")


#GW31035
pathGW31035 = "~/Downloads/R-analysis/Raman/Spectra/GW31035"
setwd(pathGW31035)
list_GW31035 = list.files(path=pathGW31035, pattern="*.txt", full.names=FALSE) 
raman_GW31035 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data35 <- scan(list_GW31035[i])
  raman_GW31035 <- cbind(raman_GW31035, raman_data35)
}
colnames(raman_GW31035) <- c("raman_shift", list_GW31035)

library(ggplot2)
library(reshape2)
raman_GW31035_diversity <- raman_GW31035
raman_GW31035_diversity[,c(2,11:110)] <- NULL

raman_GW31035_diversitymelt <- melt(raman_GW31035_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31035_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31035-diversity")

#GW31037
pathGW31037 = "~/Downloads/R-analysis/Raman/Spectra/GW31037"
setwd(pathGW31037)
list_GW31037 = list.files(path=pathGW31037, pattern="*.txt", full.names=FALSE) 
raman_GW31037 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data37 <- scan(list_GW31037[i])
  raman_GW31037 <- cbind(raman_GW31037, raman_data37)
}
colnames(raman_GW31037) <- c("raman_shift", list_GW31037)

library(ggplot2)
library(reshape2)
raman_GW31037_diversity <- raman_GW31037
raman_GW31037_diversity[,c(2,7:106)] <- NULL

raman_GW31037_diversitymelt <- melt(raman_GW31037_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31037_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31037-diversity")

#GW31038
pathGW31038 = "~/Downloads/R-analysis/Raman/Spectra/GW31038"
setwd(pathGW31038)
list_GW31038 = list.files(path=pathGW31038, pattern="*.txt", full.names=FALSE) 
raman_GW31038 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data38 <- scan(list_GW31038[i])
  raman_GW31038 <- cbind(raman_GW31038, raman_data38)
}
colnames(raman_GW31038) <- c("raman_shift", list_GW31038)

library(ggplot2)
library(reshape2)
raman_GW31038_diversity <- raman_GW31038
raman_GW31038_diversity[,c(2,11:110)] <- NULL

raman_GW31038_diversitymelt <- melt(raman_GW31038_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31038_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31038-diversity")


#GW31039
pathGW31039 = "~/Downloads/R-analysis/Raman/Spectra/GW31039"
setwd(pathGW31039)
list_GW31039 = list.files(path=pathGW31039, pattern="*.txt", full.names=FALSE) 
raman_GW31039 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:110) {
  raman_data39 <- scan(list_GW31039[i])
  raman_GW31039 <- cbind(raman_GW31039, raman_data39)
}
colnames(raman_GW31039) <- c("raman_shift", list_GW31039)

library(ggplot2)
library(reshape2)
raman_GW31039_diversity <- raman_GW31039
raman_GW31039_diversity[,c(2,12:111)] <- NULL

raman_GW31039_diversitymelt <- melt(raman_GW31039_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31039_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31039-diversity")


#GW31041
pathGW31041 = "~/Downloads/R-analysis/Raman/Spectra/GW31041"
setwd(pathGW31041)
list_GW31041 = list.files(path=pathGW31041, pattern="*.txt", full.names=FALSE)
raman_GW31041 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data41 <- scan(list_GW31041[i])
  raman_GW31041 <- cbind(raman_GW31041, raman_data41)
}
colnames(raman_GW31041) <- c("raman_shift", list_GW31041)

library(ggplot2)
library(reshape2)
raman_GW31041_diversity <- raman_GW31041
raman_GW31041_diversity[,c(2,7:106)] <- NULL

raman_GW31041_diversitymelt <- melt(raman_GW31041_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31041_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31041-diversity")


#GW31043
pathGW31043 = "~/Downloads/R-analysis/Raman/Spectra/GW31043"
setwd(pathGW31043)
list_GW31043 = list.files(path=pathGW31043, pattern="*.txt", full.names=FALSE)
raman_GW31043 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data43 <- scan(list_GW31043[i])
  raman_GW31043<- cbind(raman_GW31043, raman_data43)
}
colnames(raman_GW31043) <- c("raman_shift", list_GW31043)

library(ggplot2)
library(reshape2)
raman_GW31043_diversity <- raman_GW31043
raman_GW31043_diversity[,c(2,7:106)] <- NULL

raman_GW31043_diversitymelt <- melt(raman_GW31043_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31043_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31043-diversity")

#GW31044
pathGW31044 = "~/Downloads/R-analysis/Raman/Spectra/GW31044"
setwd(pathGW31044)
list_GW31044 = list.files(path=pathGW31044, pattern="*.txt", full.names=FALSE)
raman_GW31044 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:105) {
  raman_data44 <- scan(list_GW31044[i])
  raman_GW31044 <- cbind(raman_GW31044, raman_data44)
}
colnames(raman_GW31044) <- c("raman_shift", list_GW31044)

library(ggplot2)
library(reshape2)
raman_GW31044_diversity <- raman_GW31044
raman_GW31044_diversity[,c(2,7:106)] <- NULL

raman_GW31044_diversitymelt <- melt(raman_GW31044_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31044_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31044-diversity")


#GW31059
pathGW31059 = "~/Downloads/R-analysis/Raman/Spectra/GW31059"
setwd(pathGW31059)
list_GW31059 = list.files(path=pathGW31059, pattern="*.txt", full.names=FALSE)
raman_GW31059 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data59 <- scan(list_GW31059[i])
  raman_GW31059 <- cbind(raman_GW31059, raman_data59)
}
colnames(raman_GW31059) <- c("raman_shift", list_GW31059)

library(ggplot2)
library(reshape2)
raman_GW31059_diversity <- raman_GW31059
raman_GW31059_diversity[,c(2,11:110)] <- NULL

raman_GW31059_diversitymelt <- melt(raman_GW31059_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31059_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31059-diversity")


#GW31073
pathGW31073 = "~/Downloads/R-analysis/Raman/Spectra/GW31073"
setwd(pathGW31073)
list_GW31073 = list.files(path=pathGW31073, pattern="*.txt", full.names=FALSE)
raman_GW31073 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203))
for (i in 1:109) {
  raman_data73 <- scan(list_GW31073[i])
  raman_GW31073 <- cbind(raman_GW31073, raman_data73)
}
colnames(raman_GW31073) <- c("raman_shift", list_GW31073)

library(ggplot2)
library(reshape2)
raman_GW31073_diversity <- raman_GW31073
raman_GW31073_diversity[,c(2,11:110)] <- NULL

raman_GW31073_diversitymelt <- melt(raman_GW31073_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31073_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31073-diversity")


#GW31076
pathGW31076 = "~/Downloads/R-analysis/Raman/Spectra/GW31076"
setwd(pathGW31076)
list_GW31076 = list.files(path=pathGW31076, pattern="*.txt", full.names=FALSE)
raman_GW31076 <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) 
for (i in 1:107) {
  raman_data76 <- scan(list_GW31076[i])
  raman_GW31076 <- cbind(raman_GW31076, raman_data76)
}
colnames(raman_GW31076) <- c("raman_shift", list_GW31076)

library(ggplot2)
library(reshape2)
raman_GW31076_diversity <- raman_GW31076
raman_GW31076_diversity[,c(2,9:108)] <- NULL

raman_GW31076_diversitymelt <- melt(raman_GW31076_diversity,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31076_diversitymelt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) +
  ggtitle("GW31076-diversity")





# Raman spectrum Plot for situ particles --------------------------------------------------


#GW31035 insitu fibre
pathGW31035fibreinsitu = "~/Downloads/R-analysis/Raman/Spectra/GW31035Fibre" #put in your actual path where the text files are saved
setwd(pathGW31035fibreinsitu) #this is to indicate which directory to use
list_GW31035fibreinsitu = list.files(path=pathGW31035fibreinsitu, pattern="*.txt", full.names=FALSE) #create list of text files
raman_GW31035fibreinsitu <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:6) {                         #create a look to integrate all raman text files in the one dataframe
  raman_data35 <- scan(list_GW31035fibreinsitu[i])
  raman_GW31035fibreinsitu <- cbind(raman_GW31035fibreinsitu, raman_data35)
}
colnames(raman_GW31035fibreinsitu) <- c("raman_shift", list_GW31035fibreinsitu) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)

raman_GW31035fibreinsitu_melt <- melt(raman_GW31035fibreinsitu,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31035fibreinsitu_melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) + ggtitle("GW31035_fibre_insitu")


#GW31043 insitu chamber
pathGW31043chamberinsitu = "~/Downloads/R-analysis/Raman/Spectra/GW31043Chamber" #put in your actual path where the text files are saved
setwd(pathGW31043chamberinsitu) #this is to indicate which directory to use
list_GW31043chamberinsitu = list.files(path=pathGW31043chamberinsitu, pattern="*.txt", full.names=FALSE) #create list of text files
raman_GW31043chamberinsitu <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:5) {                         #create a look to integrate all raman text files in the one dataframe
  raman_data43 <- scan(list_GW31043chamberinsitu[i])
  raman_GW31043chamberinsitu <- cbind(raman_GW31043chamberinsitu, raman_data43)
}
colnames(raman_GW31043chamberinsitu) <- c("raman_shift", list_GW31043chamberinsitu) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)

raman_GW31043chamberinsitu_melt <- melt(raman_GW31043chamberinsitu,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31043chamberinsitu_melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) + ggtitle("GW31043_chamber_insitu")

#GW31044 insitu outerlayer
pathGW31044outerlayerinsitu = "~/Downloads/R-analysis/Raman/Spectra/GW31044Outerlayer" #put in your actual path where the text files are saved
setwd(pathGW31044outerlayerinsitu) #this is to indicate which directory to use
list_GW31044outerlayerinsitu = list.files(path=pathGW31044outerlayerinsitu, pattern="*.txt", full.names=FALSE) #create list of text files
raman_GW31044outerlayerinsitu <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:6) {                         #create a look to integrate all raman text files in the one dataframe
  raman_data44 <- scan(list_GW31044outerlayerinsitu[i])
  raman_GW31044outerlayerinsitu <- cbind(raman_GW31044outerlayerinsitu, raman_data44)
}
colnames(raman_GW31044outerlayerinsitu) <- c("raman_shift", list_GW31044outerlayerinsitu) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)

raman_GW31044outerlayerinsitu_melt <- melt(raman_GW31044outerlayerinsitu,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31044outerlayerinsitu_melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) + ggtitle("GW31044_outerlayer_insitu")

#GW31059 insitu mesohyl
pathGW31059mesohylinsitu = "~/Downloads/R-analysis/Raman/Spectra/GW31059Mesohyl" #put in your actual path where the text files are saved
setwd(pathGW31059mesohylinsitu) #this is to indicate which directory to use
list_GW31059mesohylinsitu = list.files(path=pathGW31059mesohylinsitu, pattern="*.txt", full.names=FALSE) #create list of text files
raman_GW31059mesohylinsitu <- data.frame(raman_shift = seq(50, 2000, by=1950/1203)) #create dataframe with raman shift only
for (i in 1:6) {                         #create a look to integrate all raman text files in the one dataframe
  raman_data59 <- scan(list_GW31059mesohylinsitu[i])
  raman_GW31059mesohylinsitu <- cbind(raman_GW31059mesohylinsitu, raman_data59)
}
colnames(raman_GW31059mesohylinsitu) <- c("raman_shift", list_GW31059mesohylinsitu) #to give the respective text file name to all columns

library(ggplot2)
library(reshape2)

raman_GW31059mesohylinsitu_melt <- melt(raman_GW31059mesohylinsitu,  id.vars = 'raman_shift', variable.name = 'particle')

ggplot(raman_GW31059mesohylinsitu_melt, aes(x=raman_shift, y=value, color=particle)) +
  geom_line(size=0.2) + scale_x_continuous(breaks=seq(0, 2000, 100)) + ggtitle("GW31059_mesohyl_insitu")



