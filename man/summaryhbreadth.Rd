\name{summaryhbreadth}
\alias{summaryhbreadth}
\title{
summaryhbreadth
}
\description{
This function summarizes the ordinated host breadth from the object created by \code{ordi.breadth}.
}
\usage{
summaryhbreadth(specialization, round = 5, do.order = FALSE, by = "Richness")
}
\arguments{
  \item{specialization}{
The object created by the function \code{ordi.breadth}.
}
  \item{round}{
The number of digits to round results
}
  \item{do.order}{
Logical indicating whether to sort results
}
  \item{by}{
Indicate which column to sort results by. Can be "Herbivore","Richness","Breadth", or "ScaledBreadth"
}
}
\value{
A dataframe showing result summary}
\references{
Fordyce, J.A., C.C. Nice, C.A. Hamm, & M.L. Forister. Quantifying diet breadth through ordination of host association. Ecology
}
\author{
James Fordyce
}
\seealso{
\code{ordi.breadth}
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

x<-ordi.breadth(dat)
summaryhbreadth(x)
}
