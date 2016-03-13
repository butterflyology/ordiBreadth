\name{profPlot}
\alias{profPlot}
\title{
profPlot
}
\description{
Plots the profile plot of distance from herbivore centroid to host plants. Useful for exploratory data analysis.
}
\usage{
profPlot(specialization, id, col = c("black", "red"))
}
\arguments{
  \item{specialization}{
The object created by the function \code{ordi.breadth}.
}
  \item{id}{
A numeric identifying which species of herbivore to plot from list \code{specialization}.
}
  \item{col}{
A vector length 2 indicating colors for plotting. First color is for non-diet items, second color is for diet items.
}
}
\value{
A profile plot}
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

x<-ordi.breadth(dat)
profPlot(x,5)#profile plot for species 5
}
