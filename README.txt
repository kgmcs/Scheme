~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       Name: Kyla Garcia McShane
   Course Info: CSC153 - Spring 2021
   Description: Final Project Reflection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Brief Introduction and Overview:
To begin, I want to state that this is my first time teaching myself a programming language. 
I have in the past explored and toyed around with the basics of programming languages like 
Python, Java, and C, but I had never really sat down and taught myself the basic concepts of 
a language I had no prior knowledge on. Much like the study of Computer Science itself, this
project was a completely new experience for me. One that, if it happens to be a simpler 
language I may enjoy even more. That is not to say I did not enjoy learning about Scheme. 
Quite the contrary, I find its simplicity and attempts to reduce syntax interesting, and 
because of these I can see why programming language developers use it. Regardless, the lack
of resources and constant trial and error did make for some confusing and frustrating days 
(and nights... that seems to be when most of my programming skills decide to work). Overall, 
I am incredibly fascinated by everything that seems to be possible through Scheme and I can
only wish to further explore it in the future (free of time constraints). 

A disclaimer I will ake is that, although I did explore other online Scheme interpreters such 
as CHICKEN Scheme,  found that programming, coding, and running Scheme through Replit was the 
simplest. This was mainly due to Replit's use of BiwaScheme Interpreter version 0.6.4 which 
allowed for many of the general Scheme concepts I read and learned about in textbooks and 
tutorials to carry over. As result, I would prefer/recommend/require that the programs I created 
be run through Replit, specifically the magic8ball.scm program I created since it is dependant on
BiwaScheme's built-in random-integer function. All of the files in the zip contain the links to 
the Replits on which you can properly run the designated program. With my thoughts and the 
disclaimer written, I can begin discussing my explorations in further detail.

Link to run Hello World program on replit: https://replit.com/@KylaGarcia/Hello-World
Link to run on Magic 8-Ball program replit: https://replit.com/@KylaGarcia/Magic-8-Ball#main.scm
Link to run on Most Important Functions program replit: https://replit.com/@KylaGarcia/Most-Important-Functions#main.scm
Link to run on More Scheme Basics program replit: https://replit.com/@KylaGarcia/More-Scheme-Basics#main.scm

Milestones!
I think by far my biggest milestone was managing to make a working (semi-working?) program in
a language that 2 weeks ago I knew nothing about! Although there were many stumbling points
which I will talk about later, I think my biggest milestone was able to compile and interpret
the resources that there are on Scheme to create a creative magic 8-ball program. Many of the
tutorials and textbooks I read heavily focused on the mathematic applicatons of Scheme and only
focused some miniscule sections on strings and how to manipulate them. In the resources I did 
find though, Scheme's string and list implementation and manipulation is very straightforward
and when I was finally able to understand the basics of them it was a huge milestone in the 
completion of my project. Furthermore, another big milestone for me was understanding Scheme's 
cons, cdr, car, cadr, and cddr functions. I had never interacted with built in functions such 
as these and they felt really unique to this language. Learning about them through my in-depth
exploration and examples also helped me better understand and code my magic 8-ball program!
Finally, being able to teach myself basic concepts such as the aforementioned cons, cdr, car,
cadr, cddr, booleans, null?, and mathematics were also all great milestones. Taking my time to 
explain and test every concept really helped cement their functions. Furthermore, the method I 
went about to learn and test them (i.e. making large tutorials of my own where I tried to explain
to myself what exactly every concept was) really showed me that in the future I will most likely
be learning more programming languages like so on my own. 

As for my journaling of this exploration, it is not in chronological order. I began sometime 
late last week while compiling information for the poster. I started by reading as much as I 
could from the textbooks my classmates and I had found. I also found various YouTube tutorials
that I followed along to in order to get the hang of coding in Scheme (particularly in Replit).
Over the last weekend, I had started my attempts to recreate the one-time pad program I had
previously recreated in multiple different languages in this course. Although I found myself
halfway to a semi-functioning program, I decided to regorup my efforts since there were many
concepts I was lacking knowledge in when it came to Scheme. I went back to the books at the 
beginning of the week to regroup and gain more insight. I created the two tutorials/lessons
for myself regarding some of the most basic Scheme concepts and decide to work with what I knew.
This led me to creating the magic 8-ball program that I am very proud of despite the shortcomings
it possesses regarding the behavior of random-integer selection in BiwaScheme. Although I am
turning the program in as is (don't worry, it functions!), I would love to consult online with
some Scheme programmers (Schemers) to gain some insight on what I could do differently or which
Scheme interpreter and dialect would allow me to carry out all the desired actions I had envisioned.

Stumblings
First and foremost, this is not to blame the programming language itself, but there is a significant
lack of up-to-date resources for Scheme. Many of the textbooks and resources were at least 5 to 10 
years old. As mentioned before, a lot of these also primarily focused on the mathematic implementations
of Scheme. Out of all, my biggest stumble wa my decision begin my Scheme language explorations by 
attempting to program a one-time pad with very limited knowledge. After completely failing and 
abandoning that project, my other stumblings came in the form of trial and error when it came to learning
more of the basics of Scheme. It was a lot of reading, coding, deleting, reading error messages, and
starting over. Another major stumble and bug that originated when attempting to program my magic 8-ball
was figuring out which random implementation worked the best with BiwaScheme. After a very helpful 
correspondence with Professor Howe, he figured out that random-integer was the correct random implementation.
Sadly, this did come with somewhat of a behaviour issue where random-integer would select a single 
random response and maintain it throughout the whole loop despite the user asking different questions.
Ultimately, although there were many little stumblings and one major failure, I am content with the 
work I have created and I can only hope it is good enough.

