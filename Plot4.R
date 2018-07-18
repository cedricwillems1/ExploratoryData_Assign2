> NEI <- readRDS("\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/summarySCC_PM25.rds")
> SCC <- readRDS("\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/Source_Classification_Code.rds")

> library(ggplot2)graph <- merge(NEI, SCC, by = "SCC")
> index <- grep("coal", graph$Short.Name, ignore.case = TRUE)
> graph <- graph[index,]
> graph <- aggregate(Emissions ~ year, graph, sum) 
> png(filename = "\\\\fmecwm.local/user/home/15473/Documents/Data Science Coursera CW/Peergraded_course4/plot4.png", width = 480, height = 480, units = "px", bg = "white")
> g <- ggplot(graph, aes(factor(year), Emissions))
> g <- g + geom_bar(stat = "identity") + xlab("Year") + ylab("Total Emissions from Coal Combustion") + ggtitle("Variation in Coal Combustion Related Emissions over the years")
> print(g)
> dev.off()
