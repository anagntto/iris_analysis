# Carregar o dataset iris
data(iris)
summary(iris)

# Teste de Hipótese 1: Comparar a média do comprimento da sépala entre duas espécies
species1 <- iris[iris$Species == "setosa", "Sepal.Length"]
species2 <- iris[iris$Species == "versicolor", "Sepal.Length"]

# Teste t para igualdade das médias
t_test_result1 <- t.test(species1, species2)
print("Teste de Hipótese 1: Comparar a média do comprimento da sépala entre setosa e versicolor")
print(t_test_result1)

# Teste de Hipótese 2: Verificar se a média da largura da pétala é igual a 1.3
petal_width <- iris$Petal.Width
mean_petal_width <- mean(petal_width)
hypothesized_mean <- 1.3

# Teste t para uma amostra
t_test_result2 <- t.test(petal_width, mu = hypothesized_mean)
print("Teste de Hipótese 2: Verificar se a média da largura da pétala é igual a 1.3")
print(t_test_result2)

# Teste de Hipótese 3: Comparar a variância do comprimento da pétala entre duas espécies
species1_petal <- iris[iris$Species == "setosa", "Petal.Length"]
species2_petal <- iris[iris$Species == "virginica", "Petal.Length"]

# Teste F para igualdade das variâncias
var_test_result3 <- var.test(species1_petal, species2_petal)
print("Teste de Hipótese 3: Comparar a variância do comprimento da pétala entre setosa e virginica")
print(var_test_result3)
