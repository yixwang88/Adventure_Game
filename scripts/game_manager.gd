extends Node

var score = 0


func add_point():
	score += 1
	print("score: ", score)
	$ScoreLabel.text = "You collected " + str(score) + " coins."
	
