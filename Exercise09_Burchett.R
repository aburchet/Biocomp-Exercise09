# Alice Burchett
# Exercise 09
# 11/18/21




# write function that takes argument dir (directory name), 
# read data from each file in a directory, calculate the ceff of var.  std/mean for a 
# user-specified col, return a vector
# should report an error if less than 50 observations, but user can override
# more stuff for ec.


# hmm.. should think about the file type....


variation<- function(dir, column){
  files<-list.files(path=dir) # shouldnthis be absolute path?
  result<-numeric(length(files))# empty vector to hold variance
  for (i in 1:length(result)){
    file<-read.table(paste(dir,"/",files[i], sep=""))
    
    if (length(file[,column])<50){
      print("Error! >:( fewer than 50 rows!")
      print("I guess I'll proceed anyways....")
    }
    
    var<- sd(file[,column])/mean(file[,column])
    result[i]<-var
  } # End i loop
  
  return(result)
}

variation("testdir", 1)



dir<-"testdir"
file<-"file1"
read.table(paste(dir,"/",file, sep=""))


