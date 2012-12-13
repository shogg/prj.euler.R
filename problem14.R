N <- 1000000
cache <- vector('integer', N)

collatz <- function(i, use.cache=T) {
	num <- 1
	while(i > 1) {
		if(use.cache && i < N && cache[i] != 0) {
			num <- num + cache[i] - 1
			break
		}

		if(i %% 2 == 0) i <- i/2 else i <- i*3+1
		num <- num + 1
	}

	num
}

result <- 0; max <- 0
for(i in 1:N) {
	cache[i] <- collatz(i)
	if(cache[i] > max) {
		max <- cache[i]; result = i
		print(c(i, max))
	}
}

result
