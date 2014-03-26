titanic.knn.tester <- function(out_file, k) {
  titanic.knn2.test <- knn(train.gac, test.gac, train.gac.labels, k=3)
  titanic.prediction <- titanic.test
  titanic.prediction$Survived <- titanic.knn2.test
  titanic.predict.knn2 <- titanic.prediction[, c("PassengerId", "Survived")]
  write.csv(titanic.predict.knn2, file = str_join(k,out_file), row.names = FALSE)
}

#knn2 gave 70
#knn3 gave 70
#knn4 gave 71.2
#knn5 gave 71.7
#knn6 gave 70.8
#knn7 gave 70.8
#knn8 gave 71.29