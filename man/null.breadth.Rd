\name{null.breadth}
\alias{null.breadth}
\title{
null.breadth
}
\description{
This function calculates the null expectation of host breadth if herbivores sample diet items randomly.
}
\usage{
null.breadth(dat, dist.method = "jaccard", rep = 100, quantiles = c(0.025, 0.975), 
scaled = FALSE)
}
\arguments{
  \item{dat}{
A matrix of diet associations. Rows are herbivores and columns are diet items.
}
  \item{dist.method}{
Dissimilarity index passed on to \code{vegdist} in the 'vegan' package.
}
  \item{rep}{
The number of permutations to generate a null distribution
}
  \item{quantiles}{
A vector length of two indicating the lower and upper quantiles to report for the null distribution.
}
  \item{scaled}{
A logical indicating whether to report the scaled ordinated host breadth.
}
}
\value{
An array show the lower and upper quantiles of the null distribution for each taxonomic richness
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

null.breadth(dat)
}

