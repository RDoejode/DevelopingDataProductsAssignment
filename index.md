---
title       : Developing Data Products Assignment
subtitle    : Slidify Deck
author      : Ravishankar Doejode
job         : Developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

## Developing Data Products - Shinyapp Assignment
> 1. Shiny App with three different actionButtons
> 2. Datasets that come with R used
> 3. MTCars, Faithful and Iris datasets used
> 4. Linear Regression on MTCars and Faithful dataset
> 5. K-Means Clustering on Iris
> 6. ShinyApp url - https://rdoejode.shinyapps.io/shinyapp/

---
## Linear Regression on MTCars
1. MPG is the response variable
2. AM, CYL, DISP, HP and WT are predictor variables
3. Radio button to select the combination of predictor variables
4. Action button to trigger linear regression
5. Output to show coefficients



```r
lm(mpg ~ am + cyl + disp + hp + wt, data=mtcars)$coefficients
```

```
## (Intercept)          am         cyl        disp          hp          wt 
## 38.20279869  1.55649163 -1.10637984  0.01225708 -0.02796002 -3.30262301
```

---
## Linear Regression on Faithful
1. Eruptions is the response variable
2. Waiting is the predictor variable
3. Action button to trigger linear regression
4. Output to show coefficients

```r
lm(eruptions~waiting, data=faithful)$coefficients
```

```
## (Intercept)     waiting 
## -1.87401599  0.07562795
```

---

## K-Means Clustering on Iris
1. Species is the response variable
2. Sepal.Length Sepal.Width Petal.Length Petal.Width are predictor variables
3. Output to show the prediction quality in the form of a table


```r
newiris<-iris
newiris$Species <-NULL
kc<-kmeans(newiris,3)
table(iris$Species,kc$cluster)
```

```
##             
##               1  2  3
##   setosa     50  0  0
##   versicolor  0 48  2
##   virginica   0 14 36
```

###Thank You
