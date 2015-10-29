
protocol <- readline(prompt = "Enter the protocol step: ")
m1 <- readline(prompt = "West conformed: ")
m1 <- strtoi(m1)
m2 <- readline(prompt = "West non-conformed: ")
m2 <- strtoi(m2)
m3 <- readline(prompt = "East conformed: ")
m3 <- strtoi(m3)
m4 <- readline(prompt = "East non-conformed: ")
m4 <- strtoi(m4)

protocol_matrix <- matrix(c(m1, m2, m3, m4), nrow = 2, byrow = TRUE)
dimnames(protocol_matrix) <- list(Location = c("Leeds West", "Leeds East"), Conformed = c("Yes", "No"))
print(protocol)
print(protocol_matrix)

protocol_matrix_fisher <- fisher.test(protocol_matrix)

print (protocol_matrix_fisher)
