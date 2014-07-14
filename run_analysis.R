testx <- read.table("test/X_test.txt")
testy <- read.table("test/y_test.txt")
tests <- read.table("test/subject_test.txt")
trainx <- read.table("train/X_train.txt")
trainy <- read.table("train/y_train.txt")
trains <- read.table("train/subject_train.txt")

x <- rbind(testx, trainx)
y <- rbind(testy, trainy)
s <- rbind(tests, trains)

f <- read.table("features.txt")

names(x) <- f$V2
names(s) <- c("subject")

labs <- read.table("activity_labels.txt")
activity <- labs[y$V1,"V2"]

cols <- as.character(f$V2[grepl("mean\\(\\)|std\\(\\)", f$V2)])
xx <- subset(x, select=cols)
names(xx) <- sub("\\(\\)", "", names(xx))
data <- cbind(s, activity, xx)

tidy <- aggregate(. ~ subject + activity, data, mean)
write.table(tidy, "tidy_mean.txt")
