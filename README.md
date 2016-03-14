# *ordiBreadth*
## Repo for R package ordiBreadth (Fordyce et al. 2016 - Ecology) - a package to examine diet breadth through ordination.
### Maintained by James Fordyce (University of Tennessee) and Chris Hamm (University of Kansas) 

#### 13 March 2016 - Initial commit
1. Begun development of vignette for importing a list of host associations and creating the presence / absence table.
  * Added the Nymphalidae data set as part of the base pacakge.
  * Walking through how to start with a data.frame of associations and convert it to presence / absence matrix. 
  * We want to go from something like this:

| Plants  | Herbivore |
|:-------:|:---------:| 
| Apiaceae      | *Actinote*		|
| Asteraceae    | *Adelpha* 		|
| Cannabaceae   | *Apaturopsis*  |
| Cannabaceae   | *Euripus*		|

  * Into something like this:

|  | Apiaceae |	Asteraceae | Cannabaceae |
|:-------:|:---------:|:------:|:-------:| 
|*Actinote*| 1| 0| 0|
| *Adelpha*| 0| 1| 0|
|*Apaturopsis*| 0| 0| 1|
|*Euripus*| 0| 0| 1|

