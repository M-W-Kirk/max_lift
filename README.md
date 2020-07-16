# max_lift()
A function, coded in R, for Evans Day weight lifting project.

It is a function that calculates the maximum amount of weight for a specified goal. The weight argument is the amount of weight an individual may lift between 4 to 6 reps. That amount is input through the **weight** argument. The additional arguments are **mass** and **goal**.  The function outputs a dataframe with the integer weight features `upper_body` and `lower_body` as well as character objects for repitions as feature `reps`.

The **mass** argument has two charcter objects (string values) from which to choose:

1.  `"lb"`  *set as default*
2.  `"kg"`

The **goal** argument has several character objects from which to choose:

1.  `"max"`  *set as default*
2.  `"explosive_power"`
3.  `"endurance"`
4.  `"muscle"`
5.  `"power"`
6.  `"strength"`

The reference used to derive the algorithm:

*Brzycki, M. (1993). Strength testing: Predicting a one-rep max from reps to fatigue. Journal of Physical Education, Recreation, and Dance, 64, 1, 88–90.*
