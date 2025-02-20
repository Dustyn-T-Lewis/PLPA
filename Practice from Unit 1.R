#### MODULE 1 scrap notes ####

2+2
2-1
2/2
2*2

x<-2
y<-3
x
y
x+y #Numeric variable

name<-"Dustyn"
name #Character variable
seven<-"7"
seven #think of this as a character variable because of quotes
seven<-7
seven #Now its numerical
x + seven

class(seven)
seven<-"7"
class(seven) #Class funtion tells us what type of variable an object is

vector <- c(1,2,3,4,5,6,7)
vec <- c(1:7) #We've created a string of values (aka a vector)
vec <- 1:7 #another way of concatinating numerical values
vec1 <- c(TRUE, FALSE) #Vector of logical values

vec[4] #If we want to return a specific value in a vector we use []
vec2<- c("dustyn", "jordyn", "hunter")
vec2[1]
vec + 4 #Returns our vector with 4 added to all values

mean(vec)
sd(vec)
sum(vec)
median(vec)
summary(vec)
abs(vec)
sqrt(vec)
sqrt(sum(vec))
sqrt(28)
sqrt(vec[3])
sqrt(3)
log(vec)
log10(vec)
exp(vec) #Basic functions in R

# > < / & = == != >= <= (greater than, less than, or, and, equal to, exactly equal to, not equal,greater than or equal to, less than or equal to)
1>2
1==1
one = 1
one == 1
two == 2
t <- 1:10
t[t>8] #Values of t, such that t >8 (t values > 8)
t[t>8 | t<9]
t[t>5 | t<2]
t[t>6 & t<8]
t[t>6 | t<8]
t[t != 5]
t[t != 2 & t != 10 & t > 0]

2 %in% t
32 %in% t #"%in%" Is a function that essentially queries a data set (our vector stored in 't') for some variable
"dustyn" %in% vec2 #We are also usig it to see if our categorical variable (name 'dustyn) is in our categorical vector

#Data frames are like excel workboks, matrices are simliar but only use one type of variable. Scalar objects (x <- 2), Vectors (vec <- 1:10; vec2 < c("dustyn", "jordyn", etc)

mat <- matrix(data = c(1:3), nrow = 3, ncol = 3) #Numeric matrix
mat1 <- matrix(data = c("dustyn", "jordyn", "hunter"), nrow = 3, ncol = 3)
mat[4]
mat[2,3]                 
mat1[3,3]
mat1[,2]
mat1[1,]
mat1[2,]
mat1[,2] #Gives 2nd column (row,column format)

df <- data.frame(mat[,1], mat1[,1])
colnames(df) <- c("#", "name")
df[1] #Rather than giving first value, return the first column
df[1,2] #First row second column
df[,"name"]
df[2]
df$name
df$name
df$name[1]
df$name[3]
df$`#`[2]
df$name[3]

df$`#`[df$name == "jordyn"] #data frame of "#" column such that the values are equal to the name jordyn
df$`#`[df$name %in% c("jordyn", "dustyn")] #Data frame value ('#') such that the values of 'name' column ("jordyn" & "dustyn") are used to extract # column
df$name[df$`#`[3]] #Retrieve name column data such that the # column is = to 3
df$name[df$`#` %in% c(2,3)] #Read %in% right to left; values 2,3 in '#" column that correspond to 'name' column
df$`#`[df$name %in% "dustyn"]
df$`#`[df$name %in% "dustyn"] #"dustyn" (categorical variable) in the 'name' column corresponds with $ (unknown) variable in '#' column
df$`#`[df$name %in% c("dustyn", "hunter")]
df$`#`[df$name != "dustyn"] #values in '#' column that correspond to all values in 'name' column not equal to "dustyn"
df$`#`[!df$name %in% c("dustyn", "jordyn")]  #Values in '#" column that are not equal to values in 'name' column "dustyn" & "jordyn"
df$`#`[df$name %in% c("dustyn", "jordyn")]       
df$name[!df$`#` %in% c(1,2)]
df$name[df$`#` %in% c(1,2)]
df$name[!df$`#` %in% 3] #"return variables of column 'name' such that they are not equal to corresponding column '#" values of '3'"

subset(df, name == "dustyn") #subset seems to return rows, while df$X[df$Y %in% c(#, #)] seem to return specific values in this case
subset(df, !name %in% c("hunter", "jordyn")) #return subset row from df such that "hunter" & "jordyn" are not included in 'name' column

df$height <- ((exp(-df$`#`))*17) #we added a new column

df$coolness <- c("cool", "fat", "dumb") #added a new column
subset(df, !coolness %in% c("fat", "dumb"))
df$logvalue <- (df$logvalue*.05)
subset(df, !logvalue %in% c(2:3))
df$phonk <- c("mango", "emo", "na")

install.packages("tidyverse") #cran repository for packages
install.packages("phyloseq") #in other repository, not cran
library(tidyverse)

read.csv("C:/Users/Dutal/OneDrive/Desktop/Projects/UL RT/Excel/Proteomics/Master Proteomics.csv")
