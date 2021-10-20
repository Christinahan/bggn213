
#Class 05: Data visualization

#load the package
library(ggplot2)
ggplot(cars)
head(cars)
summary(cars)
hist(cars$speed)
boxplot(cars)
ggplot(data=cars) +
  aes(x=speed, y=dist)+
  geom_point() +
  labs(title="Stopping Distance of Old Cars",
       x="Speed(MPH)",y="Stopping Distance(ft)")

#side-note:ggplot is not the only graphics system
plot(cars$speed,cars$dis)
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
nrow(genes)
colnames(genes)
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
#How many genes 
nrow(genes)
table(genes$State)
round(table(genes$State)/nrow(genes) * 100,3)

#let's make a figure 
p<-ggplot(genes)+
  aes(x=Condition1,y=Condition2,col=State)+
  geom_point()

p+ geom_point(col="blue")
p+aes(col=State) + geom_point()
#changing color of the dots 
p+scale_color_manual(values=c("blue","gray","red")) 
p+geom_smooth()

#install gapminder
#install.packages("gapminder")
library(gapminder)
head(gapminder)
#visualizing gapminder
 ggplot(gapminder) + 
  aes(x=year,y=lifeExp,col=continent)+
  geom_point(alpha=0.3)+
  geom_jitter(width=0.2,alpha=0.4)+
 # geom_boxplot(aes(group=year),alpha=0.2)+
   geom_violin(aes(group=year),alpha=0.2,draw_quantiles = 0.5)

#install the plotly
#install.packages("plotly")
# library(plotly)
# ggplotly()
#install.packages("tinytex")
#tinytex::install_tinytex()
 

