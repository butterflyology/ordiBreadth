\name{null.breadth.focal.summary}
\alias{null.breadth.focal.summary}
\title{
null.breadth.focal.summary
}
\description{
Summarizes results contained in object created by \code{null.breadth.focal}
}
\usage{
null.breadth.focal.summary(null.breadth.focal.out, quantiles = c(0.025, 0.975), 
round = 5, scaled = FALSE)
}
\arguments{
  \item{null.breadth.focal.out}{
Object created by \code{null.breadth.focal}
}
  \item{quantiles}{
A vector length of two indicating the lower and upper quantiles to report for the null distribution.
}
  \item{round}{
A value indicating the number of digits to round results
}
  \item{scaled}{
Logical indicating whether to return scaled ordinated host breadth.
}
}
\value{
Returns a dataframe of summarized results.
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
			0,0,0,0,1,0,0,0,0,0,#1
			0,0,0,0,0,0,1,1,0,0,#2
			1,1,1,0,0,0,0,0,0,0,#3
			0,0,0,0,1,1,0,1,0,1,#4
			1,1,1,0,0,0,1,0,0,0,#4
			1,1,0,0,1,0,1,0,0,0,#4
			0,0,0,1,0,0,1,0,1,1,#4
			1,0,1,0,1,1,0,0,0,1, #5
			1,1,0,0,1,0,0,1,1,1,#6
			1,1,1,0,1,1,0,1,1,1) #8


dat<-array(dim=c(10,10),data=testdata)
dat<-t(dat)
colnames(dat)<-paste("",LETTERS[1:10],sep="")
rownames(dat)<-paste("bug",1:10,sep="")

x<-null.breadth.focal(dat)
null.breadth.focal.summary(x)
}