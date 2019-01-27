library(data.table)

#part1
data = read.csv('Desktop/DataScience-JohnHopkins-Coursera/CleanData/quiz1.csv', header=TRUE,sep=',')
head(data)
names(data)
data[data$VAL=="24",]
nrow(data[data$VAL=="13",])
nrow(data)
data[,list(data$VAL)]
for (i in 1:24)
{print(i)
  print(nrow(subset(data,VAL==i)))}
data24=subset(data,VAL==24)
data24$FES

#part2
library('readxl')
data2=read_excel('Desktop/DataScience-JohnHopkins-Coursera/CleanData/getdata_data_DATA.gov_NGAP.xlsx')
head(data2)
data2=data.table(data2)
dat = data2[18:23,7:15]
sum(dat$Zip*dat$Ext,na.rm=T)

#part3 failed
library(xml2)
url='https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml'
doc=htmlTreeParse(url,useInternal=TRUE)
rootNode=xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[1]
xmlSApply(doc,xmlValue)
zipcode=xpathSApply(doc,"//zipcode",xmlValue)
zipcode
doc
