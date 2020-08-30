b=c(1,0,1,0,0,1,0,0)

# function for construct sets according to the history of x
construct_set = function(x){
  m=data.frame(matrix(NA,nrow=length(x),ncol=length(x)))
  for(i in 3:length(x))
  {
    if(x[i]==1)
    {
      n=1
      for(k in 4:length(x))
      {
        if(x[k]==0&&x[k-1]==x[i-1]&&x[k-2]==x[i-2])
        {
          m[i,n] = k
        }
        else
        {
          m[i,n] = NA
        }
        n=n+1
      }
    }
  }
  return(m)
}

construct_set(b)