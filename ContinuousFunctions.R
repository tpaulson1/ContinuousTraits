library(ape) #utility fns
library(geiger) #utilty fns
library(OUwie)

#You can use code you wrote for the correlation exercise here.

VisualizeData <- function(phy, data) {  
	print(phy)
	plot(phy)
	print(data)
	names(data)
	str(data)
}

CleanData <- function(phy, data) { treedata(phy,data,sort=TRUE)
}


RunSingleOUwieModel<-function(model, phy, data) {
	print(paste("Now starting model",model))
	return(OUwie(phy, data, model, simmap.tree=FALSE, diagn=FALSE))	
}
