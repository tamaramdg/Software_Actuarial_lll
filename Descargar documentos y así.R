if (!dir.exists("data")){dir.create("data")}
url<- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(url,"./data/restaurantes.csv")
data<- read.csv("./data/restaurantes.csv")

head(data)
head(data,n=3)

tail(data)

summary(data)

str(data)


quantile(data$councilDistrict, na.rm=T)

quantile(data$councilDistrict, PROBS=C(0.5,0.75,0.9))

table(data$zipCode, useNA= "ifany")

table(data$councilDistrict, data$zipCode)

##TABLA CONTINGENTE ^|


##VALORES FALTANTES

sum(is.na(data$councilDistrict))
any(is.na(data$councilDistrict))
all(!is.na(data$councilDistrict))
all(data$zipcode>0)
colSums(is.na(data))
all(colSums(is.na(data))==0)

##VALORES CON CARACTERÍSTICAS ESPECIALES

table(data$zipCode %in% c("21212"))
table(data$zipCode %in% c("21212", "21213"))
data[data$zipCode %in% c("21212", "21213"),]


##
data(UCBAdmissions)
DF=as.data.frame(UCBAdmissions)
summary(DF)
xt<- xtabs(Freq ~ Gender + Admit, data=DF)
xt


warpbreaks$replicate<- rep(1:9, len=54)
xt= xtabs(breaks ~., data=warpbreaks)
xt

##TABLAS PLANAS

ftable(xt)


##TAMAÑO DE UNA TABLA

fakeData=rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData), units="Mb")

