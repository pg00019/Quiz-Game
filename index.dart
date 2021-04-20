/* Simple Hello, World! program */

import 'dart:io';

//function - to ask user if he/she is ready to start the quiz
ready() {
  print(" Are You ready? ");
  print(" Type 'Y/y' to start ");
  stdout.write(" Your answer: ");
  var decision_of_the_user = stdin.readLineSync();
  print(
      " ************************************************************************** ");
  if (decision_of_the_user == "Y" || decision_of_the_user == "y") {
    print(" Lets Start ");
    print(
        " ************************************************************************** ");
    return true;
  } else {
    return false;
  }
}

// main function
void main() {
  print(" Welcome to the JavaScript Quiz ");
  print(
      " ************************************************************************** ");
  print(
      " Rules : Type the option and you will get 1 point for the correct Answer ");
  print(
      " ************************************************************************** ");
  // assign the fuction with a variable flag
  //need of the flag ? if the user types the correct option then display further otherwise display the error message.
  var flag = ready();

  if (flag) {
    // ask the user to select the level of the question
    print(" Please select the Level of the Quiz ");
    print(
        " ************************************************************************** ");
    print(" 1. Easy  2. Medium   3. Hard ");
    print(
        " ************************************************************************** ");
    stdout.write(" Your Answer : ");
    var level = stdin.readLineSync(); // take input from the user
    print(
        " ************************************************************************** ");
    level = LevelOfQuiz(level);
  } else {
    print(" Please type the correct option. Try Again ");
  }
}

//function - to display the set of 5 questions according to the user's choice
LevelOfQuiz(var level) {
  switch (level) {
    case "1":
      easy();
      break;
    case "2":
      medium();
      break;
    case "3":
      hard();
      break;
    default:
      print("Type the correct answer");
  }
}

//function - to check whether the user has given correct answer and calculate the score accordingly
int score = 0;
answer(var correct_answer) {
  stdout.write(" Your Answer : ");
  var user_answer = stdin.readLineSync(); //take input from the user
  if (user_answer == correct_answer) {
    print(" Correct option ");
    score++;
    print(" Your score : $score ");
  } else {
    print(" Sorry! wrong answer ");
    print(" Your score : $score ");
  }
  return score;
}

endofquestion() {
  print(
      " ###################################################################################################### ");
      print( " " );
}

// function - to display the total score with a message
total_score() {
  print(" Total score :$score/5 ");
  if(score == 0)
    print("No need to worry!! Learn the concepts and try again later. ");
  if (score > 0 && score <= 3)
    print(" Good Attempt . You can do better! ");
  else if (score >= 4) 
    print( " Well done! Keep it up "); 
}

//easy level question
easy() {
  //Q1
  print( " " );
  print(" (Q1) What is the extention of JS file? "); //b
  print(" (a) .jsx   (b)  .js ");
  print(" (c) .JS    (d)  None of the above.  ");
  answer("b");
  endofquestion();

//Q2
  print(
      " (Q2) Which built-in method returns the calling string value converted to lower case? "); //ans a
  print(" (a) toLowerCase()    (b) toLower() ");
  print(" (c) changeCase(case) (d) None of the above.");
  answer("a");
  endofquestion();

//Q3
  print(
      " (Q3) Which of the following is an advantage of using JavaScript? "); //ans d
  print(" (a) Less server interaction (b) Immediate feedback to the visitors ");
  print(" (c) Increased interactivity (d) All of the above. ");
  answer("d");
  endofquestion();

//Q4
  print(" (Q4) '===' operator is _______________. "); //ans b
  print(
      " (a) is equal to                                             (b) Is identical (is equal to and is of the same type) ");
  print(
      " (c) Is identical (is equal to and is of the different type) (d) None of the above. ");
  answer("b");
  endofquestion();

//Q5
  print(" (Q5) Variable can hold ________ value at a time "); //ans c
  print(" (a) Multiple (b) Double ");
  print(" (c) single   (d) None of the above.");
  answer("c");
  endofquestion();
  total_score();
}

//medium level questions
medium() {
  //Q1
  print( " " );
  print(" (Q1)What is the use of 'document.write'  in JS? "); // b
  print(" (a) To write inside a doc file   (b) To display the output ");
  print(" (c) To take input from the user  (d) None of the above ");
  answer("b");
  endofquestion();

//Q2
  print(" (Q2) Which type of JavaScript language is ___ ? "); // a
  print(" (a) Object-Oriented    (b) Object-Based ");
  print(" (c) Assembly-language  (d) High-level ");
  answer("a");
  endofquestion();

//Q3
  print(
      " (Q3) Which of the following function of Boolean object returns a string of either 'true' or 'false' depending upon the value of the object? ");
  print(" (a) toSource()   (b) valueOf() "); // ans c
  print(" (c) toString()   (d) None of the above. ");
  answer("c");
  endofquestion();

//Q4
  print(
      " (Q4) Which of the following function of Array object calls a function for each element in the array?"); //ans b
  print(" (a) concat()   (b) forEach() ");
  print(" (c) every()    (d) filter() ");
  answer("b");
  endofquestion();

//Q5
  print("(Q5) What is a block statement in JavaScript?"); // ans d
  print(
      " (a) block that contains a single statement         (b) conditional block ");
  print(
      " (c) both conditional block and a single statement  (d) block that combines multiple statements into a single compound statement");
  answer("d");
  endofquestion();

  total_score();
}

//hard level questions
hard() {
//Q1
  print( " " );
  print(" (Q1)Which of the following is correct about callbacks? "); //c
  print(
      " (a) A callback is a plain JavaScript function passed to some method as an argument or option. ");
  print(
      " (b)  Some callbacks are just events, called to give the user a chance to react when a certain state is triggered. ");
  print(" (c)Both of the above.   (d) None of the above. ");
  answer("c");
  endofquestion();

//Q2
  print(" (Q2) var a=5 , b=1 ");
  print("var obj = { a : 10 } ");
  print("with(obj) ");
  print(" { ");
  print("alert(b) ");
  print(" } "); // c

  print(" (a) 10  (b) error");
  print(" (c) 1   (d) 5");
  answer("c");
  endofquestion();

//Q3
  print(
      " (Q3) Which of the following is true about cookie handling in JavaScript? "); //ans c
  print(
      " (a) JavaScript can manipulate cookies using the cookie property of the Document object. ");
  print(
      " (b) JavaScript can read, create, modify, and delete the cookie or cookies that apply to the current web page. ");
  print(" (c) Both of the above.   (d) None of the above. ");
  answer("c");
  endofquestion();

//Q4
  print(
      " (Q4) What is the code snippet to go back to a history thrice? "); //ans b
  print(" (a) history(3)   (b) history.go(-3) ");
  print(" (c) history(-3)  (d) history.go(3) ");
  answer("b");
  endofquestion();

//Q5
  print(" (Q5) What will be the output of the following JavaScript code? ");
  print(" function myfun()");
  print("{ ");
  print(
      'document.getElementById ("demo").innerHTML = Boolean(15.00 === 15);'); //b
  print(" }");
  print(" (a) true       (b) false ");
  print(" (c) error      (d) 0");
  answer("b");
  endofquestion();
  total_score();
}
