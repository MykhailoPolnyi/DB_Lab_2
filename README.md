# DB_Lab_2

## My task: V 41

1. DB *"Computer firm"*. Find the **model**, **CPU frequency**, and 
   **hard drive volume** for those computers that come 
   with **10** or **20** GB drives and are created by manufacturer **A**.  
   **Output**: `model`, `speed`, `hd`. 
   The initial data are filled in ascending order by `speed` column.

2. DB *"Firm receiving recyclables"*. From the table `Outcome_o` 
   display all information for the 14th of any month.

3. DB *"Computer firm"*. Find **PC manufacturers** that 
   produce PCs with **processor speed more than 600 MHz**.  
   **Output**: `maker`.  
   
4. DB *"Comp. firm"*. Find **PC manufacturers** that 
   **do not have models in sales** (ie missing in the PC table).  
   **Output**: `maker`.
   
5. DB *"Comp. firm"*. Find those **PC manufacturers** that 
   have **all** PC models available in the PC table 
   (using the EXISTS operation).  
   **Output**: `maker`.
   
6. DB *"Ships"*. Display the values of the **Ships** table 
   with comments, for example: 'name: California', 
   'class: Tennessee', 'launched: 1921'.
   
7. DB *"Comp. firm"*. Find **PC manufacturers** for whom not 
   all models of the PC is available in the PC table 
   (use group tools statistics).  
   **Output**: `maker`.
  
8. DB *"Ships"*. Enter the **name** and **country** of 
   the ships that were sunk in battles, 
   but only for those ships for which this information is known.
   **Output**: `ship`, `country`.
   
9. DB *"Comp. firm"*. For the **Product** table, get the final set in the 
   form of a table with columns **maker**, **pc**, in which for each manufacturer 
   you must specify whether it produces ('yes') or not ('no') the appropriate product type. 
   In the first case ('yes') additionally specify next to 
   parentheses the total amount available (ie, what is in PC tables) 
   products, such as 'yes (2)'.
   
10. DB *"Comp. firm"*. For **each** product model from the entire database 
    print model its highest price.  
    **Output**: `type`, `model`, `maximum price`.