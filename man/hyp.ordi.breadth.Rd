\name{hyp.ordi.breadth}
\alias{hyp.ordi.breadth}
\title{
hyp.ordi.breadth
}
\description{
Calculates the diet breadth of a hypothetical herbivore placed in ordination space.
}
\usage{
hyp.ordi.breadth(dat, grouping, dist.method = "jaccard", distance = FALSE)
}
\arguments{
  \item{dat}{
A matrix of diet associations. Rows are herbivores and columns are diet items.
}
  \item{grouping}{
a vector of ones and zeros or TRUE and FALSE indicting diet items of hypothetical herbivore
}
  \item{dist.method}{
Dissimilarity index passed on to vegdist in the vegan package
}
  \item{distance}{
a logical indicating whether to return distance of hypothetical herbivore centroid to plants used in PCoA space and the coordinates of the centroid in PCoA space
}
}
\value{
\item{tot.breadth}{Ordinated host breadth of hypothetical herbivore}
\item{distances}{Distance from centroid to diet items in PCoA space}
\item{centroid}{Coordinates of the centroid of hypothetical herbivore}
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

group<-c(TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE)
hyp.ordi.breadth(dat,group)
hyp.ordi.breadth(dat,group,distance=TRUE)

group<-c(1,1,1,1,1,1,1,1,1,1)
hyp.ordi.breadth(dat,group)#extreme generalist
hyp.ordi.breadth(dat,group,distance=TRUE)

}

