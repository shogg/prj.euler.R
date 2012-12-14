N <- 110000
sieve <- 1:N
for(i in 2:N) {
	if(sieve[i] == 0) next
	sieve[sieve != i & sieve %% i == 0] <- 0
}
sieve <- sieve[sieve != 0 & sieve != 1]
sieve[10001]
