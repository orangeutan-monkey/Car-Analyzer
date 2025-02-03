data(mtcars)
head(mtcars)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(e1071)
summary(mtcars)
#plot to view relationships
pairs(mtcars[,c("mpg","disp","hp","wt")],main = "Pair Plot of key data")
#correlation matrix 
corr = cor(mtcars)
print(corr)
#plotting displacement v. mpg
ggplot(mtcars, aes(x = disp, y = mpg))+
  geom_point()+
  geom_smooth(method = "1m")+
  ggtitle("Displacement v. MPG")+
  xlab("Displacement in in^3")+
  ylab("Miles per Gallon")
#Linear regression analysis
fit = lm(mpg ~ wt + hp+qsec+am,data = mtcars)
summary(fit)
plot(fit$residuals, main = "Residual from Regression Model",xlab = "Fitted values", ylab = "Residual data")
abline(h = 0, col = "yellow")
#analysis using rpart
tree = rpart(mpg ~ ., data = mtcars, method = "anova")
summary(tree)
rpart.plot(tree, main = "Decision tree for MPG prediction")
#evaluating tree
predict = predict(tree,mtcars)
plot(mtcars$mpg, predict, main = "Actual v. Predicted MPG", xlab = "Actual MPG", ylab = "Predicted MPG", pch = 19)
abline(a = 0, b = 1, col = "orange")


