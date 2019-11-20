## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE----------------------------------------------------------
#  library("devtools")
#  install_github("qiuanzhu/remss")
#  

## ----eval=FALSE----------------------------------------------------------
#  library("remss")
#  head(Rdata)
#  

## ---- echo=FALSE, results='asis'-----------------------------------------
library(remss)
knitr::kable(head(Rdata))

## ----eval=FALSE----------------------------------------------------------
#  data(Rdata)
#  Scheme=c('Scheme.1','Scheme.2','Scheme.3')
#  Covar=c('Age','Treatment')
#  weight=c(1,1,0.5,0.5,1)
#  Order=list(c('I','II','III'),c('I','II','III','IV'),c('I','II','III','IV'))
#  table<-rank(os='OS',ostime='survmonth',groupvar='Basic_group', scheme=Scheme, order=Order, covariate=Covar,weight=weight,data=Rdata)

## ---- echo=FALSE, results='asis'-----------------------------------------
data(Rdata)
Scheme=c('Scheme.1','Scheme.2','Scheme.3')
Covar=c('Age','Treatment')
weight=c(1,1,0.5,0.5,1)
Order=list(c('I','II','III'),c('I','II','III','IV'),c('I','II','III','IV'))
table<-rank(os='OS',ostime='survmonth',groupvar='Basic_group', scheme=Scheme, order=Order, covariate=Covar,weight=weight,data=Rdata)

## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[1])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[2])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[3])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[4])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[5])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[6])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[7])


## ----echo=FALSE, results='asis'------------------------------------------
knitr::kable(table[8])


