pnn <- learn(cd)
pnn <- smooth(pnn, sigma =15 )
pnn$sigma


## Checking out the constructed PNN
pnn$model
pnn$category.column
pnn$k
pnn$n
perf(pnn)

## install package rgenoud to automatically take the values of sigma
pnn
