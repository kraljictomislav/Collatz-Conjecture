is.even <- function(x) {
  if (x %% 2 == 0) TRUE
  else FALSE
}

collatz <- function(n) {
  if (is.even(n)) n/2
  else 3 * n + 1
}


n_total <- n <- 1000
while (n != 1) {
  n <- collatz(n)
  n_total <- c(n_total, n)
}

n_total

par(bg="grey")
plot(n_total, main= "Collatz Conjecture", type = "o", col = "black", xlab = "Steps", ylab = "Natural Number")

