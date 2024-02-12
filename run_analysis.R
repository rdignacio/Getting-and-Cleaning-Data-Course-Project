# Load necessary libraries
library(dplyr)

# Step 1: Merge the training and test sets to create one data set
train_x <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/train/Y_train.txt")
train_subjects <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/train/subject_train.txt")


test_x <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/test/Y_test.txt")
test_subjects <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/test/subject_test.txt")


# Combine training and test sets
merged_data <- rbind(train_x, test_x)
merged_labels <- rbind(train_y, test_y)
merged_subjects <- rbind(train_subjects, test_subjects)

str(merged_subjects)
str(merged_labels)
str(merged_data)

features <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature_name"))
selected_features <- grep("mean\\(\\)|std\\(\\)", features$feature_name)
selected_data <- merged_data[, selected_features]

activity_labels <- read.table("C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name"))
merged_labels$activity_name <- activity_labels$activity_name[merged_labels$V1]

colnames(selected_data) <- features$feature_name[selected_features]
final_data <- cbind(merged_subjects, merged_labels, selected_data)
column_names <- names(final_data)
new_column_names <- make.unique(column_names,sep = "_")

names(final_data) <- new_column_names

tidy_data <- final_data %>%
  group_by(V1, activity_name) %>%
  summarise_all(mean)

write.table(tidy_data, "C:/Users/roros/Documents/Cursos y Capacitaciones/R/Curso Data Science R/Curso 3 Proyecto/UCI HAR Dataset/tidy_data.txt", row.names = FALSE)
