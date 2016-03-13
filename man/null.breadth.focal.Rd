\name{null.breadth.focal}
\alias{null.breadth.focal}
\title{
null.breadth.focal
}
\description{
This function calculates the null expectation of ordinated host breadth for each herbivore individually. The ordination for each herbivore is based on PCoA where the focal herbivore is not included.
}
\usage{
null.breadth.focal(dat, dis.method = "jaccard", reps = 100)
}
\arguments{
  \item{dat}{
A matrix of diet associations. Rows are herbivores and columns are diet items.
}
  \item{dis.method}{
Dissimilarity index passed on to vegdist in the vegan package.
}
  \item{reps}{
The number of permutations to generate a null distribution.
}
}
\details{
In situations where the focal herbivore is the only species using a particular diet item, that diet item is not included in the ordination. This is the modified plant richness.
}
\value{
A list containing the following:

\item{species}{Name of herbivore species (row name of \code{dat}})
\item{observed.breadth}{Ordinated diet breadth}
\item{scale.factor}{Ordinated diet breadth of most extreme generalist herbivore based on ordination}
\item{observed.breadth.scaled}{Scaled ordinated diet breadth}
\item{totalplantrichness}{Taxonomic diet richness of focal species}
\item{modplantrichness}{Modified taxonomic diet richness of focal species (see details)}
\item{null}{A vector of null ordinated diet values}

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

null.breadth.focal(dat)
}
