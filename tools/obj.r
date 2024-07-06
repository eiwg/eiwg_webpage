obj <- function(subteam){
  l1 <- (objectives %>% filter(subteams == subteam))[, 2]
  return(l1)
}