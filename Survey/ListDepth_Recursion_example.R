## recursively find depth of a list
depth <- function(this,thisdepth=0){
  if(!is.list(this)){
    return(thisdepth)
  }else{
    return(max(unlist(lapply(this,depth,thisdepth=thisdepth+1))))    
  }
}

## recursively find depth of a list - alternate version 
depth <- function(this) ifelse(is.list(this), 1L + max(sapply(this, depth)), 0L)

## recursively find depth of a list - alternate version 
depth <- function(this) {
  if(is.list(this) && length(this) == 0){  # idiotproof for zero length
    return(0)
  }else{
    ifelse(is.list(this), 1L + max(sapply(this, depth)), 0L)
  }
}