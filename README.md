# WESTWINGNOW
What is the Project about?
   
   Westwing is an eCommerce based application which sells  products that are required to set up a home.
   This project is intented to automate this eCommerce application which reduces the manual work. The main
   motto of this project is to add a suitable product to the wishlist and later removing it.

What is the structure of the framework?

    Page Object Model is used as a framework to test the required test case. It contains User defined keywords,
    Object Repository and the Test directories.

How to test this script?

    Move to the "Test" directory by using command "cd /westwingnow/Tests"  and run a command
    robot addCart.robot. Here addCart is the name of the our Test project.

    There is another way to test by running below command

docker run --rm -v ${pwd}:/robot robottest  /robot/Tests/addCart.robot


Here ${pwd} is the path of the robot project 
