\name{focal.profPlot}
\alias{focal.profPlot}
\title{
focal.profPlot
}
\description{
Plots the profile plot of distance from herbivore centroid to host plants calculated by excluding the focal herbivore. Useful for exploratory data analysis.
}
\usage{
focal.profPlot(dat, focal.bug, dist.method = "jaccard", col = c("black", "red"))
}
\arguments{
  \item{dat}{
A matrix of diet associations. Rows are herbivores and columns are diet items.
}
  \item{focal.bug}{
A value indicating which herbivore is the focal herbivore.
}
  \item{dist.method}{
Dissimilarity index passed on to vegdist in the vegan package.
}
  \item{col}{
A vector length 2 indicating colors for plotting. First color is for non-diet items, second color is for diet items.
}
}
\value{
A profile plot
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

focal.profPlot(dat,4)
}
