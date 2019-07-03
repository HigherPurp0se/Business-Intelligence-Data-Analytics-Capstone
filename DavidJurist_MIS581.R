# David P. Jurist (david.jurist@csuglobal.edu)
# MIS581-1: Capstone Data Analytics: Module 8: Portfolio Project

# Install and load dplyr package for R Gui
# Install dplyr
install.packages("dplyr")
# Load dplyr:
library("dplyr")

# UNTotal food commodity exports all regions and all countries.
# Declare and initialize variables in the UN list:
CountryCode = 1
CountryType = "A"
Country = "AA"
Year = 1
Period = 1
PeriodInDate = 01/01/2000
Flow = "X"
CommodityGroupCode = 1
CommodityGroup = "Total"
CountryImportCode = 1
CountryImport = "AA"
Value = 1
EstimationType = "C"
EstimationTypeDesc = "Calculate"

# Import raw data set into R Gui by creating a list of class data.frame:
# Assign data-frame to a variable name for convenience. Display its values and dimensions:
UNT <- data.frame(read.csv("C:\\R\\UNcommExportsFoodAllRegionsTotals.csv", header = T))
UND2U <- data.frame(read.csv("C:\\R\\UNcommExportsFoodAllRegionsDev2UndevTotals.csv", header = T))
UNU2D <- data.frame(read.csv("C:\\R\\UNcommExportsFoodAllRegionsUndev2DevTotals.csv", header = T))


# Verify the imports worked by reading the headers and datas in the 3 data-frames:
str(UNT)
head(UNT)
tail(UNT)
nrow(UNT)
ncol(UNT)
names(UNT)
str(UND2U)
head(UND2U)
tail(UND2U)
str(UNU2D)
head(UNU2D)
tail(UNU2D)
UNT
UNT[2,5]
UND2U
UNU2D

# UNT <- read.csv("C:\\R\\UNcommExportsFoodAllRegionsTotals.csv", header = T)
# UNT <- data.frame(read.csv("C:\\R\\UNcommExportsFoodAllRegionsTotals.csv", header = T))
# Run summary stat functions on the three data-frames: aggregate file, dev2undev, undev2dev.
# Possible functions in sapply include mean, sd, var, min, max, median, range, quantile.
# sapply(UNT$Value, mean, na.rm=TRUE)
# sapply(UNT$Value, median, na.rm=TRUE)
# sapply(UNT$Value, mode)
# sapply(UNT$Value, sd, na.rm=TRUE)
# sapply(UNT$Value, var, na.rm=TRUE)
# sapply(UNT$Value, min, na.rm=TRUE)
# sapply(UNT$Value, max, na.rm=TRUE)
# sapply(UNT$Value, range, na.rm=TRUE)
# sapply(UNT$Value, quantile, na.rm=TRUE)

MNEXPORTS1 <- mean(UNT$Value)
MNEXPORTS1
MDEXPORTS1 <- median(UNT$Value)
MDEXPORTS1
MOEXPORTS1 <- mode(UNT$Value)
MOEXPORTS1
SDEXPORTS1 <- sd(UNT$Value)
SDEXPORTS1
VREXPORTS1 <- var(UNT$Value)
VREXPORTS1
MIEXPORTS1 <- min(UNT$Value)
MIEXPORTS1
MXEXPORTS1 <- max(UNT$Value)
MXEXPORTS1
RAEXPORTS1 <- range(UNT$Value)
RAEXPORTS1
QAEXPORTS1 <- quantile(UNT$Value)
QAEXPORTS1
SUMEXPORTS1 <- sum(UNT$Value)
SUMEXPORTS1


MNEXPORTS2 <- mean(UND2U$Value)
MNEXPORTS2
MDEXPORTS2 <- median(UND2U$Value)
MDEXPORTS2
MOEXPORTS2 <- mode(UND2U$Value)
MOEXPORTS2
SDEXPORTS2 <- sd(UND2U$Value)
SDEXPORTS2
VREXPORTS2 <- var(UND2U$Value)
VREXPORTS2
MIEXPORTS2 <- min(UND2U$Value)
MIEXPORTS2
MXEXPORTS2 <- max(UND2U$Value)
MXEXPORTS2
RAEXPORTS2 <- range(UND2U$Value)
RAEXPORTS2
QAEXPORTS2 <- quantile(UND2U$Value)
QAEXPORTS2
SUMEXPORTS2 <- sum(UND2U$Value)
SUMEXPORTS2

MNEXPORTS3 <- mean(UNU2D$Value)
MNEXPORTS3
MDEXPORTS3 <- median(UNU2D$Value)
MDEXPORTS3
MOEXPORTS3 <- mode(UNU2D$Value)
MOEXPORTS3
SDEXPORTS3 <- sd(UNU2D$Value)
SDEXPORTS3
VREXPORTS3 <- var(UNU2D$Value)
VREXPORTS3
MIEXPORTS3 <- min(UNU2D$Value)
MIEXPORTS3
MXEXPORTS3 <- max(UNU2D$Value)
MXEXPORTS3
RAEXPORTS3 <- range(UNU2D$Value)
RAEXPORTS3
QAEXPORTS3 <- quantile(UNU2D$Value)
QAEXPORTS3
SUMEXPORTS3 <- sum(UNU2D$Value)
SUMEXPORTS3

# p-value test: probability of estimate is implicit in R standard-library t.test function.
t.test(UND2U$Value,UNU2D$Value)

# Generate a flat text file from the data.frame D to submit with assignment report:
write.table(x=UNT,file="C:\\R\\Module8R_outputUNTotals.txt",sep="|",na="XOKMX",quote=FALSE,row.names=FALSE)
write.table(x=UND2U,file="C:\\R\\Module8R_outputUNDevs.txt",sep="|",na="XOKMX",quote=FALSE,row.names=FALSE)
write.table(x=UNU2D,file="C:\\R\\Module8R_outputUNUndevs.txt",sep="|",na="XOKMX",quote=FALSE,row.names=FALSE)


