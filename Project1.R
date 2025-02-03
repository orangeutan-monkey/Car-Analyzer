library(tm)
library(data.table)
library(caret)
library(rpart) 
data = fread("C:/Users/User/Documents/Project1_Data101/train.csv", sep = ",", header = TRUE)

#creating a structure for the texts
corpus = Corpus(VectorSource(data$Description))
#processing and filtering the data in the structure
print(corpus)
corpus = tm_map(corpus, content_transformer(tolower))
corpus = tm_map(corpus, removePunctuation)
corpus = tm_map(corpus, removeNumbers)
corpus = tm_map(corpus, stripWhitespace)
corpus = tm_filter(corpus, function(x) length(unlist(strsplit(as.character(x), " "))) > 0)
#creating a matrix 
doc =  DocumentTermMatrix(corpus, control = list(weighting = function(x) weightTfIdf(x, normalize = FALSE)))
if (sum(rowSums(as.matrix(doc)) == 0) > 0) {
  print("There are empty documents.")
} else {
  print("No empty documents.")
}


print(summary(doc))
#dataframe 
df = as.data.frame(as.matrix(doc))
colnames(df) = make.names(colnames(df))
#target
df$label = as.factor(data$label)
#splitting into training and test 
set.seed(1223)
train = createDataPartition(df$label, p = 0.8, list = FALSE)
training = df[train,]
test = df[-train,]
#training the model 
treeModel = rpart(label ~ ., data = training, method = "class")
#prediction 
treeP = predict(treeModel, test, type = "class")
conMa = table(test$label, treeP)
print(conMa)
