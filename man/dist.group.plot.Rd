\name{dist.group.plot}
\alias{dist.group.plot}
\title{
dist.group.plot
}
\description{
This function plots the ordination and shows the centroid for a focal herbivore
}
\usage{
dist.group.plot(specialization, id, cex = 1, PCoA = c(1, 2), seg.col = "pink", seg.wd = 2,
seg.lty = 1, pt.col = "red", pt.pch = 19, pt.cex = 1.5, x.lim = NULL, y.lim = NULL, 
plant.plot = "all.names", rel.pch = 19, rel.cex = 1.5, rel.col = "red", nrel.pch = 19, 
nrel.cex = 1.5, nrel.col = "red", verbose = TRUE, scaled = TRUE)
}

\arguments{
  \item{specialization}{
The object created by the function \code{ordi.breadth}.
}
  \item{id}{
A numeric indicating which species of herbivore to plot from list \code{specialization}.
}
  \item{cex}{
A numeric indicating the font size for diet item names.
}
  \item{PCoA}{
A vector length two indicated which two PCo axes to plot.
}
  \item{seg.col}{
The color of segments joining diet items to centroid.
}
  \item{seg.wd}{
A value indicating the line width of segments joining diet items to centroid.
}
  \item{seg.lty}{
A value indicating the line type of segments joining diet items to centroid.
}
  \item{pt.col}{
The color of centroid plotting character.
}
  \item{pt.pch}{
A value indicating the plotting character for centroid.
}
  \item{pt.cex}{
A value indicating the character expansion for centroid plotting character.
}
  \item{x.lim}{
A vector length two indicating the min and max of x axis.
}
  \item{y.lim}{
A vector length two indicating the min and max of y axis.
}
  \item{plant.plot}{
A value taking on "all.names", "relevent", or "points". 'all.names' plots the names of host plants, 'relevent' plots only the names of host plants used by focale herbivore (indicated by argument id), 'points' points all host plants as points.
}
  \item{rel.pch}{
A value indicating the plotting character for host plants used by herbivore.
}
  \item{rel.cex}{
A value indicating the character expansion for host plants used by herbivore.
}
  \item{rel.col}{
A value indicating the color for host plants used by herbivore.
}
  \item{nrel.pch}{
A value indicating the plotting character for host plants not used by herbivore.
}
  \item{nrel.cex}{
A value indicating the character expansion for host plants not used by herbivore.
}
  \item{nrel.col}{
A value indicating the color for host plants not used by herbivore.
}
  \item{verbose}{
A logical indicating whether information on taxonomic and ordinated host breadth is included in plot.
}
  \item{scaled}{
A logical indicating whether to return scaled ordinated host breadth.
}
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
x<-ordi.breadth(dat)

dist.group.plot(specialization=x,id=7,cex=1)
dist.group.plot(specialization=x,id=10,cex=1,pt.cex=0.75,plant.plot="points",nrel.pch=1,
nrel.col="black",nrel.cex=0.75)
}

