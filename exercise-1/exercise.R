# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
points.for <- c(3, 31, 14, 17, 35, 24, 10)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points.against <- c(7, 3, 21, 14, 10, 17, 3)

# Combine your two vectors into a dataframe
seahawks <- data.frame(points.for, points.against)
seahawks
# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
difference <- points.for - points.against
seahawks$difference <- difference

# Create a new column "won" which is TRUE if the Seahawks won
won <- difference > 0
seahawks$won <- won

# Create a vector of the opponent names corresponding to the games played
opponents <- c("Panthers", "Packers", "49ers", "Raiders", "Chargers", "Tampa", "Patriots")

# Assign your dataframe rownames of their opponents
seahawks$opponents <- opponents

# View your data frame to see how it has changed!
seahawks
