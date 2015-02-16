################PNN Complete 2


## Read the training data, scaled training data

data <- read.csv('sctrain.csv',header=T)


data
head(data)

### Learn the samples and train NN

pnn <- learn(data)
pnn<- smooth(pnn, sigma =8.3)
pnn$sigma
perf(pnn)
## sucess- 0.7486034-8.3 sigma value has been calculated using rgenoud function

## 1 sr - 0.7318436
## 15 sr - 0.7467412


### Test the trained sample using the CV test data

## Read CV data set 
CVdata <- read.csv('scCV.csv',header=T)
## Remove the output/class variable
WCCVdata <- CVdata[2:9]

guess(pnn, as.matrix(WCCVdata[2,]))$category

pred<-0
for (i in 1:116)
{
  
  pred[i] <-guess(pnn, as.matrix(WCCVdata[i,]))$category
  
  
}
print(pred)

table(CVdata[1:116,1], pred)
