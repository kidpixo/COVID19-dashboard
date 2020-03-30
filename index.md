## Links

### Italy covid19 logistic regression model

[Italy covid19 logistic regression model](italy_covid19_logistic.html)

Based on [Covid-19 infection in Italy. Mathematical models and predictions](https://towardsdatascience.com/covid-19-infection-in-italy-mathematical-models-and-predictions-7784b4d7dd8d)

Data from [CSSEGISandData/COVID-19](https://github.com/CSSEGISandData/COVID-19) / Dashboard [Coronavirus COVID-19 (2019-nCoV)](https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html?fbclid=IwAR3prf7gRuznOnGiv_wZpjhVQ-YZAtQcVJYorx1Yfu3Tutt4nn2dUQaGbyo#/bda7594740fd40299423467b48e9ecf6)

## The logistic model

(Text from [Covid-19 infection in Italy. Mathematical models and predictions](https://towardsdatascience.com/covid-19-infection-in-italy-mathematical-models-and-predictions-7784b4d7dd8d))

The logistic model has been widely used to describe the growth of a population. An infection can be described as the growth of the population of a pathogen agent, so a logistic model seems reasonable.

i
This formula is very known among data scientists because it’s used in the logistic regression classifier and as an activation function of neural networks.


The most generic expression of a logistic function is:

![logistic formula](https://miro.medium.com/max/546/1*bnVnrdWrWxvZfqJ_1bgrUQ.png)

In this formula, we have the variable x that is the time and three parameters: a,b,c.

- a refers to the infection speed
- b is the day with the maximum infections occurred
- c is the total number of recorded infected people at the infection’s end

At high time values, the number of infected people gets closer and closer to c and that’s the point at which we can say that the infection has ended.

This function has also an inflection point at b, that is the point at which the first derivative starts to decrease (i.e. the peak after which the infection starts to become less aggressive and decreases).

## python requirements to run the notbooks

    numpy
    pandas
    sklearn
    scipy
    hvplot
    holoviews
