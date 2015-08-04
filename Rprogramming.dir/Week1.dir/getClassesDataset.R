getClassesDataset <- function(filepath,nr)
{
initial <- read.table(filepath,header = T,nrows = nr)
classes <- sapply(initial,class)
#If the end of the function is reached w/o return, last expression is returned
#return classes
}

readBigTable <- function(filepath)
{
  cl <- getClassesDataset(filepath,100)
  tabAll <- read.table(filepath,colClasses = cl)
}

expleDGet <- funtcion()
{
y <- data.frame(a = 1, b ="a")
dput(y)
#structure(list(a = 1, b = structure(1L, .Label = "a", class = "factor")), 
#.Names = c("a", "b"), row.names = c(NA, -1L), class = "data.frame")
dput(y,file="y.R")
new.y = dget("y.R")
}

expleDump <- function()
{
  x <- "foo"
  y <- data.frame(a=1,b="hello")
  dump("x","y",file = "data.R")
  rm(x,y)
  source("data.R")
  x
  y
}