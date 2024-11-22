# Filter the data for Adelie penguins with complete information
adelie_penguins <- subset(penguins, species == "Adelie" & complete.cases(penguins))

# Fit the linear regression model
penguinModel <- lm(
  formula = body_mass_g ~ bill_length_mm + bill_depth_mm + flipper_length_mm + sex + island,
  data = adelie_penguins
)

# Summarize the model to get coefficients, p-values, and model statistics
summary(penguinModel)
