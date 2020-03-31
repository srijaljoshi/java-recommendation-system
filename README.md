# Project: Recommendation in an e-Commerce system in Java 

## Instructions:

### **Prelude**

Begin by using `git clone` to clone this repo into your local machine.

Things to do before you can run the program:
1. Setup database called `recommendation` either in your local machine or use docker.
2. Create root user
3. Install Intellij Idea and import this project as a maven project.
4. Press play


**A. Database** 
___
To run the webapp, you will need to have a database named `recommendation` in created in your mysql server. The username should be `groot` and password is `iamgroot` for development purposes. That's all you will need to do (no need to create tables manually). The program uses code-first approach to create all the tables and populate data automatically using Hibernate annotations and model classes inside src/.../model/

Observe that there is a `data.sql` file inside the `resources` folder. This contains the initial dummy data to be populated in the database. If you want additional data to be inserted in the tables, please write the `insert` statements in here and also be careful about the dependencies between tables caused by foreign key.

**B. Code**
____
Once you are done running the code successfully, please contribute to the code. We will write JSP code for the view layer (frontend) and Java code for the backend.
