> NEI <- readRDS("\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/summarySCC_PM25.rds")
> SCC <- readRDS("\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/Source_Classification_Code.rds")
> library(ggplot2)
> graph <- NEI[NEI$fips == "24510",]
> graph <- aggregate(Emissions ~ year + type, graph, sum) 
> png(filename = "\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/plot3.png", width = 600, height = 480, units = "px", bg = "white")
> g <- ggplot(graph, aes(year, Emissions, col = type))
> g <- g + geom_line() + xlab("Year") + ylab("Total PM2.5 Emission in Baltimore City") + ggtitle("Variation in PM2.5 Emission in Baltimore City over the years")
> print(g)
> dev.off
