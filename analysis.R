install.packages("renv")
renv::init()
install.packages(c("dplyr", "ggplot2"))
library(dplyr)
library(ggplot2)
df <- data.frame(
  group = c("A", "A", "B", "B"),
  value = c(10, 15, 20, 25)
)
summary_df <- df %>%
  group_by(group) %>%
  summarise(mean_value = mean(value))
print(summary_df)
ggplot(df, aes(x = group, y = value)) +
  geom_boxplot()
renv::snapshot()
install.packages("tidyr")
library(tidyr)
renv::snapshot()
renv::restore()
install.packages("usethis")
usethis::create_github_token()
gitcreds::gitcreds_set()
