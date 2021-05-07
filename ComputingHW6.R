#Q1
matrix.1 = matrix(c(7, 9, 12, 2, 4, 13), nrow = 2, ncol = 3)
matrix.2 = matrix(c(1, 7, 12, 19, 2, 8, 13, 20, 3, 9, 14, 21), nrow= 3, ncol = 4)
matrix.1%*%matrix.2
# result is: [,1] [,2] [,3] [,4]
#            [1,]  139  189  343  315
#            [2,]  179  279  196  382

#Q2
  #a
datfram = data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("Peter", "Amy", "Ryan", "Gary", "Michelle"),
  salary = c(623.30, 515.20, 611.00, 729.00, 843.25)
)
datfram

  #b
datfram.department = cbind(datfram, Department = c("Sales", "Customer Service", "Janitor", "Chief Doing Things Officer", "Name Maker"))
datfram.department

  #c
datfram.ext = datfram.department[-c(2, 4), -c(1,4)]
datfram.ext

  #d
datfram.bar = datfram[-c(2, 3), -c(1,4)]
barplot(datfram.bar$salary, names.arg = datfram.bar$name)

  #e
sal = datfram[,3]
sal
MMM = c(median(sal), max(sal), min(sal))
MMM
labels = c("Median", "Highest Salary", "Lowest Salary")
pie(MMM, label = labels, main = "Comparitive Size of Highest, Median, and Lowest Salaries")

#Q3
  #if/else, "Results" function in project
user = "Rock"
computer = "Paper"

if (user == "Rock") {
  if (computer == "Rock"){
    print("It's a tie!")
  } else if (computer == "Paper") {
    print("Sorry, You lose!")
  } else {
    print("Congratulations, You win!")
  }
} else if (user == "Paper") {
  if (computer == "Rock") {
    print("Congratulations, You win!")
  } else if (computer == "Paper") {
    print("It's a tie!")
  } else {
    print("Sorry, You lose!")
  }
} else if (user == "Scissors") {
  if (computer == "Rock") {
    print("Sorry, You lose!")
  } else if (computer == "Paper") {
    print("Congratulations, You win!")
  } else {
    print("It's a tie!")
  }
} else{ 
  print ("There was an error, and the game could not be played.")
}

#Python Code for comparison:
#def results(self, user, computer):
 #       print("Computer chose:", computer)
  #      if user == "Rock": #Outputs the result if user chose rock
   #         if computer == "Rock":
    #            print("It's a tie!")
     #           self.ties += 1
      #      elif computer == "Paper":
       #         print("Sorry, You lose!")
  #              self.losses += 1
   #         else computer == "Scissors":
    #            print("Congratulations, You win!")
     #           self.wins += 1
      #  elif user == "Paper":
  #          if computer == "Rock":
   #             print("Congratulations, You win!")
    #            self.wins += 1
     #       elif computer == "Paper":
      #          print("It's a tie!")
       #         self.ties += 1
        #    else computer == "Scissors":
         #       print("Sorry, You lose!")
  #              self.losses += 1
   #     elif user == "Scissors":
    #        if computer == "Rock":
     #           print("Sorry, You lose!")
      #          self.losses += 1
       #     elif computer == "Paper":
        #        print("Congratulations, You win!")
         #       self.wins += 1
          #  else computer == "Scissors":
           #     print("It's a tie!")
            #    self.ties += 1
  #      else: 
   #         print ("There was an error, and the game could not be played.") #outputs if there was something wrong with user's input

 

 #While/For Loop, "RandomComp" in project:

#user selects number of games to be played, then that number of computer moves is generated
games = 10
moves = c("Rock", "Paper", "Scissors")
RandomComp <- c()
for (x in 1:games) {
  CompMove = sample(moves, size = 1)
  RandomComp <- append(RandomComp, CompMove)
}
RandomComp

#Python code for comparison:
#def randomcomp(self):
#        moves = ["Rock", "Paper", "Scissors"]
#        comp_move = random.choice(moves) #randomly chooses one of the 3 moves
#        return comp_move
