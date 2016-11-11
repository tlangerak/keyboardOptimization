The folder "Task_2_2_Kbd_optimization" in the additional material contains: 
	
	1.	bigram_frequencies.mat: 
	a MATLAB table. The value in the cell bigram_frequencies(i,j) gives you the probability that letter i is followed by letter j.
	
	2.	compute_avg_wpm.m: 
	a MATBLAB function that computes for a given layout the average typing performance achievable with that layout (think of it as a performance score). The performance is given in words per minute, where one word is defined to have 5 characters. The higher the better.
	Note: This is the objective function that you need to optimize.
	
	3.	predict_MT.m: 
	a MATBLAB function that takes two keys and predicts the time it takes to move from one key to the other, based on a Fitts’ Law model. The keys are specified by their linear index as described in the exercise. For example key number 5 and 14 would correspond to E and N in the given Alphabetical layout.

Your task is to implement your own search algorithm using the two provided methods. To evaluate for example the performance of the given Qwerty keyboard, you can run 
		AverageWPMCalculation('abcdefghijklmnopqrstuvwxyzAO____')
		
This is your baseline performance. You should find a layout that is better than that. 