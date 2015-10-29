
protocol <- readline(prompt = "Enter the protocol step: ")
m1 <- readline(prompt = "Paed conformed: ")
m1 <- strtoi(m1)
m2 <- readline(prompt = "Paed non-conformed: ")
m2 <- strtoi(m2)
m3 <- readline(prompt = "Psych conformed: ")
m3 <- strtoi(m3)
m4 <- readline(prompt = "Psych non-conformed: ")
m4 <- strtoi(m4)

protocol_matrix <- matrix(c(m1, m2, m3, m4), nrow = 2, byrow = TRUE)
dimnames(protocol_matrix) <- list(Speciality = c("Paed", "Psych"), Conformed = c("Yes", "No"))
print(protocol)
print(protocol_matrix)

protocol_matrix_fisher <- fisher.test(protocol_matrix)

print (protocol_matrix_fisher)
