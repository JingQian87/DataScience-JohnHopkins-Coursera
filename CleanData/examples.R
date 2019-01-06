if (!file.exists("data")){dir.create('data')}
fileUrl = "https://data/baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = 'cameras.csv',method='curl')
dataDownloaded <- data()
head(data)
data = read.table('./data/cameras.csv', sep=",", header=TRUE)
#read.csv, defaultly have sep=',' and header = TRUE
#read.xlsx, similarly for excel, need to load the library

#access xml
library(XML)
fileUrl = "http://www.w3schools.com/xml/simple.xml"
doc = xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode=xmlRoot(doc)
xmlName(rootNode)
rootNode[[1]]
scores = xpathSApply(doc, '//score', xmlValue)

#json




