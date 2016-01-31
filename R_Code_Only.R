require(dplyr)
set.seed(12345) #that's amazing, I've got the same combination on my luggage!
x <- data.frame(key= LETTERS[c(1:3, 5)], value1 = sample(1:10, 4), stringsAsFactors = FALSE)
y <- data.frame(key= LETTERS[c(1:4)], value2 = sample(1:10, 4), stringsAsFactors = FALSE)

x
y

# "Joining" joins
inner_join(x, y, by = "key")
left_join(x, y, by = "key")
right_join(x, y, by = "key")
full_join(x, y, by = "key")

# filtering "joins"
semi_join(x, y, by = "key")
anti_join(x, y, by = "key")


# keys with different names?
x <- data.frame(keyX= LETTERS[c(1:3, 5)], value1 = sample(1:10, 4), stringsAsFactors = FALSE)
y <- data.frame(keyY= LETTERS[c(1:4)], value2 = sample(1:10, 4), stringsAsFactors = FALSE)

full_join(x, y) #should error out
full_join(x, y, by=c("keyX" = "keyY"))

# Set Operations
df1 <- data_frame(x = LETTERS[1:2], y = c(1L, 1L))
df2 <- data_frame(x = LETTERS[1:2], y = 1:2)

df1

df2

#Which rows are common in both datasets?
dplyr::intersect(df1, df2)

#Want all unique rows between both datasets?
dplyr::union(df1, df2)

#What's unique to df1?
dplyr::setdiff(df1, df2)

#What's unique to df2?
dplyr::setdiff(df2, df1)