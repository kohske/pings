pings <- function(x, interval=0.25, countp=2, endp=8){
  require(dplyr)
  require(pingr)
  time <- substitute(x) %.% paste(collapse="") %.% gregexpr(pattern="%.%") %.% unlist() %.% length()
  i <- 0
  repeat {
    if (i < time){
      i <- i+1
      ping(countp)
      Sys.sleep(interval)
    }else{
      Sys.sleep(interval)
      ping(endp)
      Sys.sleep(interval)
      break
    }
  }
  cat(sprintf("\n\n!!!!! %s Hit Combo !!!!!\n\n", time))
  return(eval(x))
}