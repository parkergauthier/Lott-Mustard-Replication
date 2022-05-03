Lott and Mustard Replication Excercise
======================================

Introduction
------------

For years the relationship between crime and gun laws has been a topic
of significant contention in the United States. Some argue that
restricting gun ownership will deter gun violence, while those on the
other end of the aisle believe in quite the opposite. Researchers John
Lott and David Mustard aimed to clear up this argument in their paper,
“Crime, Deterrence, and Right-to-Carry Concealed Handguns.” The authors
attempt to tackle this problem by analyzing the effects of concealed
carry laws on various crime rates using econometric models aimed at
inferring causality. The authors conclude that when states give their
citizens the right to carry a concealed firearm, violent crime rates
decline without a significant increase in accidental gun deaths. Their
findings are quite intriguing, but were their methods sound?

The goal of the analysis below will be to assess the models used by Lott
and Mustard and see how they stack up to contemporary causal inference
methods. We will look at the same data used by the researchers and first
attempt to replicate their results. We will then used other predictive
models to see if we see the same effects depicted by the researchers.
Ultimately, we will assess what methods are the most effective in
determining causal effects and highlight the implications of using a
faulty model.

Background and Economic Theory
------------------------------

<table>
<caption>
Table 1
</caption>
<thead>
<tr>
<th style="text-align:left;">
State Name
</th>
<th style="text-align:left;">
Year Treated
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
Connecticut
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
New Hampshire
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
North Dakota
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
South Dakota
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
Vermont
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
Washington
</td>
<td style="text-align:left;">
Treated Entire Period
</td>
</tr>
<tr>
<td style="text-align:left;">
Indiana
</td>
<td style="text-align:left;">
1981
</td>
</tr>
<tr>
<td style="text-align:left;">
Maine
</td>
<td style="text-align:left;">
1986
</td>
</tr>
<tr>
<td style="text-align:left;">
Florida
</td>
<td style="text-align:left;">
1988
</td>
</tr>
<tr>
<td style="text-align:left;">
Virginia
</td>
<td style="text-align:left;">
1989
</td>
</tr>
<tr>
<td style="text-align:left;">
Georgia
</td>
<td style="text-align:left;">
1990
</td>
</tr>
<tr>
<td style="text-align:left;">
Pennsylvania
</td>
<td style="text-align:left;">
1990
</td>
</tr>
<tr>
<td style="text-align:left;">
West Virginia
</td>
<td style="text-align:left;">
1990
</td>
</tr>
<tr>
<td style="text-align:left;">
Idaho
</td>
<td style="text-align:left;">
1991
</td>
</tr>
<tr>
<td style="text-align:left;">
Mississippi
</td>
<td style="text-align:left;">
1991
</td>
</tr>
<tr>
<td style="text-align:left;">
Oregon
</td>
<td style="text-align:left;">
1991
</td>
</tr>
<tr>
<td style="text-align:left;">
Montana
</td>
<td style="text-align:left;">
1992
</td>
</tr>
</tbody>
</table>

Data
----

<table>
<caption>
Summary Statistics
</caption>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">
Mean
</th>
<th style="text-align:right;">
Sd
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Arest Rates - Violent Crime
</td>
<td style="text-align:right;">
41.09
</td>
<td style="text-align:right;">
22.20
</td>
</tr>
<tr>
<td style="text-align:left;">
Property Crime
</td>
<td style="text-align:right;">
16.92
</td>
<td style="text-align:right;">
4.68
</td>
</tr>
<tr>
<td style="text-align:left;">
Murder
</td>
<td style="text-align:right;">
91.30
</td>
<td style="text-align:right;">
55.94
</td>
</tr>
<tr>
<td style="text-align:left;">
Rape
</td>
<td style="text-align:right;">
41.02
</td>
<td style="text-align:right;">
17.39
</td>
</tr>
<tr>
<td style="text-align:left;">
Robbery
</td>
<td style="text-align:right;">
31.46
</td>
<td style="text-align:right;">
13.59
</td>
</tr>
<tr>
<td style="text-align:left;">
Burglary
</td>
<td style="text-align:right;">
13.80
</td>
<td style="text-align:right;">
4.57
</td>
</tr>
<tr>
<td style="text-align:left;">
Larceny
</td>
<td style="text-align:right;">
18.54
</td>
<td style="text-align:right;">
5.20
</td>
</tr>
<tr>
<td style="text-align:left;">
Auto Theft
</td>
<td style="text-align:right;">
22.35
</td>
<td style="text-align:right;">
37.61
</td>
</tr>
<tr>
<td style="text-align:left;">
Crime Rates - Violent Crime
</td>
<td style="text-align:right;">
483.93
</td>
<td style="text-align:right;">
318.94
</td>
</tr>
<tr>
<td style="text-align:left;">
Property Crime
</td>
<td style="text-align:right;">
4618.34
</td>
<td style="text-align:right;">
1210.46
</td>
</tr>
<tr>
<td style="text-align:left;">
Murder
</td>
<td style="text-align:right;">
7.77
</td>
<td style="text-align:right;">
6.88
</td>
</tr>
<tr>
<td style="text-align:left;">
Rape
</td>
<td style="text-align:right;">
33.98
</td>
<td style="text-align:right;">
15.07
</td>
</tr>
<tr>
<td style="text-align:left;">
Agravated Assault
</td>
<td style="text-align:right;">
278.76
</td>
<td style="text-align:right;">
159.65
</td>
</tr>
<tr>
<td style="text-align:left;">
Robbery
</td>
<td style="text-align:right;">
163.42
</td>
<td style="text-align:right;">
176.25
</td>
</tr>
<tr>
<td style="text-align:left;">
Auto Theft
</td>
<td style="text-align:right;">
410.30
</td>
<td style="text-align:right;">
231.15
</td>
</tr>
<tr>
<td style="text-align:left;">
Burglary
</td>
<td style="text-align:right;">
1239.34
</td>
<td style="text-align:right;">
417.76
</td>
</tr>
<tr>
<td style="text-align:left;">
Larceny
</td>
<td style="text-align:right;">
2968.71
</td>
<td style="text-align:right;">
751.02
</td>
</tr>
</tbody>
</table>

Empircal Model and Estimation
-----------------------------

The first model we will look at will be similar to the model originally
used by Lott & Mustard in their paper. This model, ‘Twoway Fixed
Effects,’ is a type of difference-in-difference design where we compare
our observations to a fixed effect to identify whether a treated group
has a different trend than a control group.

    ## 
    ## ==========================================
    ## Target Variable   TWFE   Calloway_SantAnna
    ## ------------------------------------------
    ## lvio            -0.0572        -0.01      
    ##                 (0.0234)      (0.024)     
    ## lmur             0.0085       0.0129      
    ##                 (0.0137)     (0.0121)     
    ## laga            -0.0504       -0.0486     
    ##                 (0.0396)      (0.025)     
    ## lbur            -0.0494        0.02       
    ##                 (0.028)      (0.0305)     
    ## laut            -0.0509       0.0048      
    ##                 (0.0305)     (0.0426)     
    ## lpro            -0.0178       0.0388      
    ##                 (0.0313)     (0.0362)     
    ## lrap            -0.0243       -0.0158     
    ##                 (0.0194)     (0.0166)     
    ## lrob             0.014        0.0303      
    ##                 (0.013)      (0.0164)     
    ## llar             0.0345       0.0107      
    ##                 (0.0297)     (0.0416)     
    ## ------------------------------------------
