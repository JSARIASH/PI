## Valor de Pi mediante simulación
n <- 902395
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)
z <- (x ^ 2 + y ^ 2) ^ (1 / 2)
r <- which(z > 1)
r1 <- which(z <= 1)

plot(x[r1], y[r1], pch = ".", col = "red", xlim = c(-1, 1), ylim = c(-1, 1), xlab = "", ylab ="" )
par(new = TRUE)
plot(x[r], y[r], pch = ".", col = "black", xlim = c(-1,1), ylim = c(-1, 1), xlab = "X", ylab = "Y", 
       main = expression(paste("Estimación de ", pi, " por Simulación")))
(length(r1) / n) * 4