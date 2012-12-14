N <- 600851475143;
i <- 2
while(i < N) {
	while(i <= N) {
		if(N %% i == 0) {
			N <- N / i; break
		}
		i <- i + 1
	}
	print(i)
	i <- 2
}
