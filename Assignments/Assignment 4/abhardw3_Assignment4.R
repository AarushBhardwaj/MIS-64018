
# Question 1.

# Heart Start produces automated external defibrillators (AEDs) in each of two different 
# plants (A and B). The unit production costs and monthly production capacity of the two 
# plants are indicated in the table below. The AEDs are sold through three wholesalers. The 
# shipping cost from each plant to the warehouse of each wholesaler along with the 
# monthly demand from each wholesaler are also indicated in the table. How many AEDs 
# should be produced in each plant, and how should they be distributed to each of the three 
# wholesaler warehouses so as to minimize the combined cost of production and shipping?

## Setting the Working directory

setwd("D:/A_Sem_2/Quantative Management Modeling/Assignments/Assignment4/Quant_Assignment4")

getwd()
library(lpSolveAPI)

lprec <- make.lp(0,8)
lp.control(lprec, sense = 'min')

## Objective Function

set.objfn(lprec, c(622,614,630,0,641,645,649,0))

## Constraints

add.constraint(lprec, rep(1,4), "=", 100, indices = c(1,2,3,4))
add.constraint(lprec, rep(1,4), "=", 120, indices = c(5,6,7,8))
add.constraint(lprec, rep(1,2), "=", 80, indices = c(1,5))
add.constraint(lprec, rep(1,2), "=", 60, indices = c(2,6))
add.constraint(lprec, rep(1,2), "=", 70, indices = c(3,7))
add.constraint(lprec, rep(1,2), "=", 10, indices = c(4,8))

## To Solve

solve(lprec)
get.objective(lprec)
get.constraints(lprec)
get.variables(lprec)