\name{ordi.focal.drop}
\alias{ordi.focal.drop}
\title{
ordi.focal.drop
}
\description{
This function computes the ordinated host breadth based on ordination where each herbivore is excluded from the ordination.
}
\usage{
ordi.focal.drop(dat, dist.method = "jaccard")
}
\arguments{
  \item{dat}{
A matrix of diet associations. Rows are herbivores and columns are diet items.
}
  \item{dist.method}{
Dissimilarity index passed on to vegdist in the vegan package.
}
}
\value{
A list containing the following:
\item{species}{Name of herbivore species (row name of \code{dat}}
\item{ODB}{Ordinated diet breadth}
\item{ODB.scaled}{Scaled ordinated diet breadth}
\item{focal.distances}{Distance to each diet item from herbivore centroid based on ordination excluding focal herbivore}
\item{focal.breadth}{Ordinated diet breadth of herbivore based on ordination where focal herbivore is excluded}
\item{focal.scale.factor}{The ordinated diet breadth of an extreme generalist in the ordinated space when focal herbivore is excluded from the ordination}
\item{focal.scale.breadth}{Scaled ordinated diet breadth of herbivore based on ordination where focal herbivore is excluded}
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


ordi.focal.drop(dat)
}
