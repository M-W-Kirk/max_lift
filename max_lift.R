#!/usr/local/bin/R
# mwkirk

# max_lift is a function that calculates the maximum amount of weight for a specified goal.
# The weight argument is the amount of weight an individual may lift between 4 to 6 reps.

#---START----------------------------------------
max_lift <- function(weight, mass = "lb", goal = "max") {

#---MASS METRIC CONTROL FLOW---------------------
    if(mass == "kg") {
    upper_body <- (weight * 1.1307) + 0.6998
    lower_body <- (weight * 1.09703) + 14.2546
    reps <- "1"
  } else if(mass == "lb"){
    upper_body <- (weight * 1.15)
    lower_body <- (weight * 1.2)
    reps <- "1"
  }
  
#---GOAL CONTROL FLOW----------------------------  
  if(goal == "max") {
    output <- data.frame(upper_body, lower_body, reps)
  }  else if(goal == "explosive_power") {
    upper_body <- upper_body * 0.5 
    lower_body <- lower_body * 0.5 
    reps <- "3 to 4"
    output <- data.frame(upper_body, lower_body, reps)
  } else if(goal == "endurance") {
    upper_body <- upper_body * 0.7 
    lower_body <- lower_body * 0.7 
    reps <- "12 to 20"
    output <- data.frame(upper_body, lower_body, reps)
  } else if(goal == "muscle") {
    upper_body <- upper_body * 0.8 
    lower_body <- lower_body * 0.8 
    reps <- "7 to 12"
    output <- data.frame(upper_body, lower_body, reps)
  } else if(goal == "power") {
    upper_body <- upper_body * 0.9 
    lower_body <- lower_body * 0.9 
    reps <- "3 to 4"
    output <- data.frame(upper_body, lower_body, reps)
  } else if(goal == "strength") {
    upper_body <- upper_body * 0.95 
    lower_body <- lower_body * 0.95 
    reps <- "1 to 3"
    output <- data.frame(upper_body, lower_body, reps)
  }
  
#---OUTPUT DATAFRAME-----------------------------  
  output
  
}

#---END------------------------------------------
