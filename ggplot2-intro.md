Introduction to ggplot2
========================================================
author: Jens Preussner
date: 2016-01-29

7 Basic Concepts
========================================================

- Mapping
- Scale
- **Geom**etric
- **Stat**istics
- **Coord**inates
- Layer
- Facet


Mapping: relations between variables
========================================================

length | width | depth | trt
------ | ----- | ----- | ---
2 | 3 | 4 | a
1 | 2 | 1 | a
4 | 5 | 15 | b
9 | 10 | 80 | b

***

x-axis | y-axis | colour
--- | --- | ------
2 | 3 | a
1 | 2 | a
4 | 5 | b
9 | 10 | b

Scale
========================================================

- Scale will present mapping on coordinate scales

x-axis | y-axis | colour
--- | --- | ------
2 | 3 | a
1 | 2 | a
4 | 5 | b
9 | 10 | b

***

- Scale and Mapping are closely related concepts

x-axis | y-axis | colour
--- | --- | ------
25 | 11 | red
0 | 0 | red
75 | 53 | blue
200 | 300 | blue

Geommetric
========================================================

- **Geom** means the graphical elements, such as points, lines and polygons.

![plot of chunk unnamed-chunk-1](ggplot2-intro-figure/unnamed-chunk-1-1.png)

Statistic
========================================================

- **Stat** enables us to calculate and do statistical analysis based on data

![plot of chunk unnamed-chunk-2](ggplot2-intro-figure/unnamed-chunk-2-1.png)

*** 

- e.g. adding regression lines or calculating means

![plot of chunk unnamed-chunk-3](ggplot2-intro-figure/unnamed-chunk-3-1.png)

Coordinates and Layers
========================================================

![plot of chunk unnamed-chunk-4](ggplot2-intro-figure/unnamed-chunk-4-1.png)

***

- **Coord** will affect how we observe graphical elements. We could transform the coordinate system to log space or even polar coordinates.

- Since ggplot2 is based on layers, we can build up the plot step by step, adding one detail by another

Facet
========================================================

- Faceting allows us to split data into groups and draw each group separately.

![plot of chunk unnamed-chunk-5](ggplot2-intro-figure/unnamed-chunk-5-1.png)

Let's start
========================================================

- Open RStudio and type


```r
data("Theoph")
```

- The command above will load data from an experiment on the pharmacokinetics of theophylline.
- The dataframe has the following format:

Subject | Wt | Dose | Time | conc 
--------|----|------|------|-----
1 | 79.6 | 4.02 | 0.00 | 0.74
1 | 79.6 | 4.02 | 0.25 | 2.84
1 | 79.6 | 4.02 | 0.57 | 6.57

- Need help? Type `?Theoph`
