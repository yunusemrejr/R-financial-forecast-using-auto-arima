 library(forecast)
 library(ggplot2)
 net_sales_values <- c(2544443.24, 3545443.44, 4595443.41)
 net_sales <- ts(net_sales_values, start=2022, frequency=1)
 model <- auto.arima(net_sales)
 forecast_2025 <- forecast(model, h=1)
 
 autoplot(forecast_2025, PI=TRUE) +
   geom_line(size =1.2, color="black" )+
   geom_point(size=3, color="blue")+
   scale_x_continuous(breaks=seq(2022,2025,1))+
   labs(title="2025 financial forecast of net sales", 
        subtitle= "we based it on data from 2022 to 2024",
        x="year", y="net sales in USD")+
   theme_minimal(base_size=14)+
   theme(plot.title=element_text(face="bold", hjust=0.5),
         plot.subtitle =element_text(hjust=0.5),
         axis.text.x=element_text(angle = 45, hjust = 1))
   
 