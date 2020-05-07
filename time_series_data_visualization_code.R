# TIMETK IN VISUALIZATION IN 3-MINUTES -----

# INSTALL ----
devtools::install_github("business-science/timetk")

# LIBRARIES ----
library(tidyverse)
library(timetk)
library(lubridate)

# DATA ----

bike_sharing_daily

walmart_sales_weekly


# TIME SERIES PLOTTING ----

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

# ANOMALY DETECTION ----

bike_sharing_daily %>%
    plot_anomaly_diagnostics(
        dteday, 
        log(cnt)
    )

# GROUPS OF TIME SERIES ----

walmart_sales_weekly %>%
    group_by(id) %>%
    plot_time_series(Date, Weekly_Sales, .facet_ncol = 3)

walmart_sales_weekly %>%
    group_by(id) %>%
    plot_anomaly_diagnostics(Date, Weekly_Sales, .facet_ncol = 3)


# A LOT MORE TO LEARN!!
# - Docs: https://business-science.github.io/timetk/index.html
# - Functions: https://business-science.github.io/timetk/reference/index.html
# - News: https://business-science.github.io/timetk/news/index.html
# - TIME SERIES COURSE: https://mailchi.mp/business-science/time-series-forecasting-course-coming-soon

