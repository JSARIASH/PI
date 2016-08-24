## Valor de Pi mediante simulación
n <- 902395
x <- runif(n,0,1)
y <- runif(n,0,1)
z <- x^2+y^2
r <- which(z > 1)
r1 <- which(z <= 1)

plot(x[r1],y[r1],pch=".",col="red",xlim = c(0,1),ylim = c(0,1),xlab = "",ylab ="" )
par(new = TRUE)
plot(x[r],y[r],pch=".",col="black",xlim = c(0,1),ylim = c(0,1),xlab = "X",ylab = "Y")

(length(r1)/n)*4