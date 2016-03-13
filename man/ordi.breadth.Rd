\name{ordi.breadth}
\alias{ordi.breadth}
\title{
ordi.breadth
}
\description{
This function calculates ordinated diet breadth
}
\usage{
ordi.breadth(dat, dist.method = "jaccard")
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
A list containing the following
\item{species}{A vector of the herbivore species names (row names of \code{dat})}
\item{eig}{The eigen values for each of the PCo axes}
\item{tot.breadth}{A vector of the raw ordinated host breadth for each species}
\item{scaled.breadth}{A vector of the scaled ordinated host breadth for each species}
\item{distances}{A list of vectors giving the distance of each diet item from the centroid of each herbivore}
\item{group.vectors}{A matrix of logicals indicating diet items (columns) for each herbivore (rows)}
\item{centroids.group}{A matrix giving the centroid on PCo (columns) for each herbivore (rows)}
\item{plants.ord}{A matrix of the coordinates for each plant in PCoA space}
\item{dist.method}{Dissimilarity index used for PCoA}
}
\references{
Fordyce, J.A., C.C. Nice, C.A. Hamm, & M.L. Forister. Quantifying diet breadth through ordination of host association. Ecology
}
\author{
James Fordyce
}

\seealso{
\code{summaryhbreadth}

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


ordi.breadth(dat)
}
