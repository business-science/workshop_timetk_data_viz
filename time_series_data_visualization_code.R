# TIMETK IN VISUALIZATION IN 3-MINUTES -----
# Business Science Workshops

# INSTALL ----
# devtools::install_github("business-science/timetk")
# install.packages("tidyverse")
# install.packages("lubridate")

# LIBRARIES ----
library(tidyverse)
library(timetk)
library(lubridate)

# DATA ----

bike_sharing_daily

walmart_sales_weekly


# 1.0 TIME SERIES PLOTTING ----

bike_sharing_daily %>%
    plot_time_series(dteday, cnt)

bike_sharing_daily %>%
    plot_time_series(
        dteday, cnt, 
        .color_var = quarter(dteday, with_year = TRUE)
    )

bike_sharing_daily %>%
    plot_time_series(
        dteday, 
        log(cnt), 
        .color_var = quarter(dteday, with_year = TRUE)
    )

# 2.0 ANOMALY DETECTION ----

bike_sharing_daily %>%
    plot_anomaly_diagnostics(
        dteday, 
        log(cnt)
    )

# 3.0 GROUPS OF TIME SERIES ----

walmart_sales_weekly %>%
    group_by(id) %>%
    plot_time_series(Date, Weekly_Sales, .facet_ncol = 3)

walmart_sales_weekly %>%
    group_by(id) %>%
    plot_anomaly_diagnostics(Date, Weekly_Sales, .facet_ncol = 3)

# KEY RESOURCES ----
# A LOT MORE TO LEARN!!
# - Docs: https://business-science.github.io/timetk/index.html
# - Functions: https://business-science.github.io/timetk/reference/index.html
# - News: https://business-science.github.io/timetk/news/index.html
# - TIME SERIES COURSE WAITLIST: https://mailchi.mp/business-science/time-series-forecasting-course-coming-soon
# - 4-COURSE R-TRACK (15% OFF): https://university.business-science.io/p/4-course-bundle-machine-learning-and-web-applications-r-track-101-102-201-202a/?coupon_code=ds4b15
