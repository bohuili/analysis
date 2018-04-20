switch_method<-function(type){
  switch(type,
         "1"="one",
         "2"="two",
         "banana"
  )
}
if_else_method<-function(type){
  if(type=="1"){
    "one"
  }else if(type=="2"){
    "two"
  }else{
    "banana"
  }
}

set.seed(1234)
x<-sample(c(1,2,3),size=1e5,replace=TRUE)
microbenchmark(
  lapply(x,switch_method),
  lapply(x,if_else_method)
)



