> NEI <- readRDS("~/Exploratory-Data-Analysis-Assignment-2/summarySCC_PM25.rds")
> SCC <- readRDS("~/Exploratory-Data-Analysis-Assignment-2/Source_Classification_Code.rds")

> library(ggplot2)
> graph <- NEI[NEI$fips == "24510" & NEI$type == "ON-ROAD",]
> graph <- aggregate(Emissions ~ year, graph, sum) 
> png(filename = "\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/plot5.png", width = 480, height = 480, units = "px", bg = "white")
> g <- ggplot(graph, aes(factor(year), Emissions))
> g <- g + geom_bar(stat = "identity") + xlab("Year") + ylab("Total Emissions from Motor Sources in Baltimore City") + ggtitle("Variation in Motor Source Related Emissions in Baltimore City over the years")
> print(g)
> dev.off()
