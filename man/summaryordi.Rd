\name{summaryordi}
\alias{summaryordi}
\title{
summaryordi
}
\description{
Summarizes object provided by \code{ordi.focal.drop}
}
\usage{
summaryordi(ordi.out, round = 5)
}
\arguments{
  \item{ordi.out}{
Object provided by \code{ordi.focal.drop}.
}
  \item{round}{
The number of digits to round results.
}
}
\value{
A dataframe showing result summary
%%  \item{species}{Names of species}
%%  \item{ODB}{Ordinated diet breadth}
%%  \item{focal.breadth}{Ordinated diet breadth where focal species not included in ordination}
%%  \item{scaled.ODB}{Scaled ordinated diet breadth}
%%  \item{ODB}{Scaled focal ordinated diet breadth}
}
\references{
Fordyce, J.A., C.C. Nice, C.A. Hamm, & M.L. Forister. Quantifying diet breadth through ordination of host association. Ecology
}
\author{
James Fordyce
}
\examples{
testdata<-	
	c(		
			0,0,0,0,1,0,0,0,0,0,
			0,0,0,0,0,0,1,1,0,0,
			1,1,1,0,0,0,0,0,0,0,
			0,0,0,0,1,1,0,1,0,1,
			1,1,1,0,0,0,1,0,0,0,
			1,1,0,0,1,0,1,0,0,0,
			0,0,0,1,0,0,1,0,1,1,
			1,0,1,0,1,1,0,0,0,1, 
			1,1,0,0,1,0,0,1,1,1,
			1,1,1,0,1,1,0,1,1,1) 


dat<-array(dim=c(10,10),data=testdata)
dat<-t(dat)
colnames(dat)<-paste("",LETTERS[1:10],sep="")
rownames(dat)<-paste("bug",1:10,sep="")

x<-ordi.focal.drop(dat)
summaryordi(x)
}
