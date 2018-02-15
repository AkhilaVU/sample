test <- strsplit("greg", NULL)[[1]]
temp<-test
test_rev <- rev(test)
ifelse(temp==test_rev,"p","n")


