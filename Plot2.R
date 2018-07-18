> NEI <- readRDS("\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/summarySCC_PM25.rds")
> SCC <- readRDS("\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/Source_Classification_Code.rds")
> graph <- NEI[NEI$fips == "24510",]
> graph <- aggregate(Emissions ~ year, graph, sum)
> png(filename = "\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/plot2.png", width = 480, height = 480, units = "px", bg = "white")
> par(mfrow = c(1,1), mar = c(4,5,2.5,2))
> barplot(height=graph$Emissions, col = 'red', xlab = "Year", ylab = "Total PM2.5 Emission in Baltimore City, Maryland", main = "Variation in PM2.5 Emission in Baltimore City, Maryland over the years")
> dev.off()
