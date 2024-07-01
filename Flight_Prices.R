#view our two main data sets
View(NYC_PAR)
View(NYC_SVO)

#remove X columns from the data frames, ONLY RUN THIS ONCE
NYC_PAR = subset(NYC_PAR, select = -c(X))
NYC_SVO = subset(NYC_SVO, select = -c(X))

#create data frames for the different months (NYC --> PAR)
PAR_feb_data = subset(NYC_PAR, Month == 2)
PAR_march_data = subset(NYC_PAR, Month == 3)
PAR_april_data = subset(NYC_PAR, Month == 4)

#create data frames for the different months (NYC --> SVO)
SVO_feb_data = subset(NYC_SVO, Month == 2)
SVO_march_data = subset(NYC_SVO, Month == 3)
SVO_april_data = subset(NYC_SVO, Month == 4)

#create data frames for the different airlines (NYC --> PAR)
PAR_AA_data = subset(NYC_PAR, Airline == "American Airlines")
PAR_UA_data = subset(NYC_PAR, Airline == "United Airlines")

#create data frames for the different airlines (NYC --> SVO)
SVO_AA_data = subset(NYC_SVO, Airline == "American Airlines, Finnair")
SVO_UA_data = subset(NYC_SVO, Airline == "United Airlines, Aeroflot" 
                     | Airline == "United Airlines, airBaltic"
                     | Airline == "United Airlines, Air France" 
                     | Airline == "United Airlines, Brussels Airlines"
                     | Airline == "United Airlines, LOT" 
                     | Airline == "United Airlines, Finnair")

#create box plot (NYC to PAR price versus NYC to SVO price)
boxplot(NYC_PAR$Price, NYC_SVO$Price,
        main = "Flight Prices - Destinations (without outliers)",
        ylab = "Price (USD)",
        names = c("NYC to PAR", "NYC to SVO"),
        outline = FALSE)

#create box plot for NYC to PAR (February versus March versus April)
boxplot(PAR_feb_data$Price, PAR_march_data$Price, PAR_april_data$Price, 
        main = "Flight Prices - PAR - Months (without outliers)",
        ylab = "Price (USD)",
        names = c("Feb.", "March", "April"),
        outline = FALSE)

#create box plot for NYC to SVO (February versus March versus April)
boxplot(SVO_feb_data$Price, SVO_march_data$Price, SVO_april_data$Price, 
        main = "Flight Prices - SVO - Months (without outliers)",
        ylab = "Price (USD)",
        names = c("Feb.", "March", "April"),
        outline = FALSE)

#create box plot for NYC to PAR (American Airlines versus United Airlines)
boxplot(PAR_AA_data$Price, PAR_UA_data$Price, 
        main = "Flight Prices - PAR - Airline (without outliers)",
        ylab = "Price (USD)",
        names = c("American", "United"),
        outline = FALSE)

#create box plot for NYC to SVO (American Airlines versus United Airlines)
boxplot(SVO_AA_data$Price, SVO_UA_data$Price, 
        main = "Flight Prices - SVO - Airline (without outliers)",
        ylab = "Price (USD)",
        names = c("American", "United"),
        outline = FALSE)

#calculate standard deviation for the different months (NYC --> PAR)
sd(PAR_feb_data$Price)
sd(PAR_march_data$Price)
sd(PAR_april_data$Price)

#run T-tests comparing the different months (NYC --> PAR)
t.test(PAR_feb_data$Price, PAR_march_data$Price, var.equal = TRUE, alternative = "less")
t.test(PAR_march_data$Price, PAR_april_data$Price, var.equal = TRUE, alternative = "less")
t.test(PAR_feb_data$Price, PAR_april_data$Price, var.equal = TRUE, alternative = "less")

#calculate standard deviation for the different months (NYC --> SVO)
sd(SVO_feb_data$Price)
sd(SVO_march_data$Price)
sd(SVO_april_data$Price)

#run T-tests comparing the different months (NYC --> SVO)
t.test(SVO_feb_data$Price, SVO_march_data$Price, var.equal = TRUE, alternative = "less")
t.test(SVO_march_data$Price, SVO_april_data$Price, var.equal = TRUE, alternative = "less")
t.test(SVO_feb_data$Price, SVO_april_data$Price, var.equal = TRUE, alternative = "less")

#calculate standard deviation for the different destinations (PAR and SVO)
sd(NYC_PAR$Price)
sd(NYC_SVO$Price)

#run a T-test comparing the different destinations (PAR and SVO)
t.test(NYC_PAR$Price, NYC_SVO$Price, var.equal = TRUE, alternative = "less")

#calculate standard deviation for the different airlines (NYC --> PAR)
sd(PAR_AA_data$Price)
sd(PAR_UA_data$Price)

#run a T-test comparing the different airlines (NYC --> PAR)
t.test(PAR_AA_data$Price, PAR_UA_data$Price, var.equal = FALSE, alternative = "less" )

#calculate standard deviation for the different airlines (NYC --> SVO)
sd(SVO_AA_data$Price)
sd(SVO_UA_data$Price)

#run a T-test comparing the different airlines (NYC --> SVO)
t.test(SVO_AA_data$Price, SVO_UA_data$Price, var.equal = FALSE, alternative = "less" )

#create data frame for our recommended flight month, destination, and airline
recommended_flight = subset(NYC_PAR, Airline == "American Airlines" & Month == 2)

#run a T-test on our recommendation in order to generate a confidence interval
t.test(recommended_flight$Price)