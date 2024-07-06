lead <- function(subteam, type = 1, active = 1){
  l1 <- (email %>% filter(Lead == subteam))
  
  l2 <- as.data.frame(l1 %>% select(Name, Company))
  
  if (type == 1){
    for (k in 1:nrow(l2)){l2[k, 3] <- paste(paste(l2[k, 1], collapse = " "), " (", l2[k, 2], ")", sep = "")}}

  if (type == 2){
    for (k in 1:nrow(l2)){l2[k, 3] <- paste(paste(l2[k, 1], collapse = " "), ", ", l2[k, 2], sep = "")}}
  
  return(l2[, 3])
}
