#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output.
#ans. The output displays numbers from -5 to 5.
seq5to5 <- seq(-5,5)
seq5to5

#b. Sequence from -5 to 5. Write the R code and its output.
x <- 1:7
x
# the value of x: 1 2 3 4 5 6 7

#----------------------------------------------------

#2. Create a vector using seq() function
#a.seq(1, 3, by=0.2) # specify step size
seqVector <- seq(1,3, by=0.2)
seqVector

#----------------------------------------------------

#3. A factory has a census of its workers. There are 50 workers in total.
#a. Access 3rd element, what is the value?

ageVector <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
               22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
               24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
               18)
workerAge <- ageVector[3]
workerAge

#b. Access 2nd and 4th element, what are the values?
ageElement_2 <- ageVector[c(2,4)]
ageElement_2


#c. Access all but the 4th and 12th element is not included.
ageElement_3 <- ageVector[c(-4,-12)]
ageElement_3

#----------------------------------------------------

#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
#a. Print the results. Then access x[c("first", "third")].
#b. Write the code and its output.
x <- c("first"=3,"second"=0,"third"=9)
x
x[c("first","third")]

# the output of the code is a vector
# containing the elements with the names
# "first" and "third" with values 3 and 9

#----------------------------------------------------

#5. Create a sequence x from -3:2.
#a. Modify 2nd element and change it to 0;
#x[2] <- 0
#x
x <- -3:2
x[2]<-0
x

#----------------------------------------------------

#6. a) Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the R scripts and its output.
months <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)
fuel_data <- data.frame(Month = months, Price_per_liter_PHP = price_per_liter, Purchase_quantity_liters = purchase_quantity)
fuel_data

#b.
w_mean <-weighted.mean(fuel_data$Price_per_liter_PHP,fuel_data$Purchase_quantity_liters)
w_mean


#----------------------------------------------------

#7.
data(rivers)
data <- c(
  length(rivers),  
  sum(rivers),      
  mean(rivers),    
  median(rivers),  
  var(rivers),      
  sd(rivers),      
  min(rivers),      
  max(rivers)      
)
data
# The results shows the built in datasets of rivers in north america and
# shows that length,sum,mean,median,var,sd,min,max of rivers

#----------------------------------------------------

# 8.a

powerRanking <- c(1,2,3,4,5,6,7,8,9,10,
                  11,12,13,14,15,16,17,18,19,20,
                  21,22,23,24,25)

celebrityName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey",
                   
                   "U2", "Tiger Woods", "Steven Spielberg",
                   "Howard Stern", "50 Cent", "Cast of the Sopranos",
                   "Dan Brown", "Bruce Springsteen", "Donald Trump",
                   "Muhammad Ali", "Paul McCartney", "George Lucas",
                   "Elton John", "David Letterman", "Phil Mickelson",
                   "J.K Rowling", "Bradd Pitt", "Peter Jackson",
                   "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

celeb_pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55,
               44, 55, 40, 244, 34, 40, 47, 75, 25, 39, 35, 32, 40, 31)


celebrity <- data.frame(
  power_ranking = powerRanking,
  celebrity_name = celebrityName,
  pay = celeb_pay
)

View(celebrity)

# 8.b
celebrity$power_ranking[celebrity$celebrity_name == "J.K Rowling"] <- 15
celebrity$pay[celebrity$celebrity_name == "J.K Rowling"] <- 90
celebrity

View(celebrity)

# 8.c

write.csv(celebrity, "/cloud/project/PowerRanking.csv")

PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking

# 8.d

new_rows <- celebrity[10:20,]
save(new_rows, file="Ranks.RData")
View(new_rows)

# 8.e

# selects rows 10 to 20 from the original data frame,
# saves the selected rows as Ranks.RData, and then prints the selected rows as the output.

#----------------------------------------------------

#9.
#a.
# install.packages("readxl")
library(readxl)
excel_file <- read_excel("hotels-vienna.xlsx")
View(excel_file)
#b.

dim_hotel_vienna <- dim(excel_file)
dim_hotel_vienna
# the output is 428 rows and 24 columns

#c.
colnames(excel_file)
hotel<-hotels_vienna[c("country","neighbourhood","price","stars","accommodation_type","rating")]
View(hotel)

#d.

save(hotel, file = "new.RData")
View(hotel)

#e.

load("new.RData")
hotel

firstSix <- head(hotel)
lastSix <- tail(hotel)

#----------------------------------------------------

#10.
vegetables_list <-c("Pumpkin", "Eggplant","Sweet Potatoes", "Bell Peppers", "Tomatoes",
                    "Cucumbers", "Radish", "Green Beans", "Cauliflowers", "Onions")
vegetables_list


#b.
vegetables_list <- append(vegetables_list, c("Carrots","Papaya"))
vegetables_list
#c.

vegetables_list <- append(vegetables_list, c( "Mushrooms","Peas","Garlic","Asparagus"),after = 5)
vegetables_list

#d.
new_vegetables <- vegetables_list[-c(5,10,15)]
new_vegetables
