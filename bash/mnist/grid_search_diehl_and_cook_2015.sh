for seed in 1 2
do
	for n_neurons in 100 250 500 750 1000
	do 
		for n_train in 30000
		do
			for n_test in 10000
			do
				for excite in 17.5 20 22.5 25
				do
					for inhib in 17.5 20 22.5 25
					do
						for time in 350
						do
							sbatch submit_diehl_and_cook_2015.sh $seed $n_neurons $n_train $n_test $excite $inhib $time
						done
					done
				done
			done
		done
	done
done
