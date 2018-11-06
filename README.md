# Java programming

Table of contents

- [Program -> Suma.java (19-jun-2018)](#sumajava-19-jun-2018)
- [Program -> Mayor_10.java (20-jun-2018)](#mayor_10java-20-jun-2018)
- [Program -> Operaciones.java (22-jun-2018)](#operacionesjava-22-jun-2018)
- [Program -> Menu.java (25-jun-2018)](#menujava-25-jun-2018)
- [Program -> Vocales.java (25-jun-2018)](#vocalesjava-25-jun-2018)
- [Program -> Menu_2.java (2-jul-2018)](#menu_2java-2-jul-2018)
- [Program -> Arabigos_Romanos (2-jul-2018)](#arabigos_romanosjava-2-jul-2018)
- [Program -> Calculadora.java (6-jul-2018)](#calculadorajava-6-jul-2018)
- [Program -> CURP.java (6-jul-2018)](#curpjava-6-jul-2018)

## suma.java (19-jun-2018)

```java
import java.io.*;

public class SUMA

{
	//we have to declare the main class and inside of it the code will resides
	public static void main(String [] args) throws IOException
	{
		// we have to declared the buffer in order to storage user's data
		BufferedReader entrada=new BufferedReader(new InputStreamReader(System.in));
		int n1=0, n2=0, suma=0;
		System.out.println("Ingrese el primer numero entero  : ");
		// readLine() it is a function and it read the last data from a variable
		n1=Integer.parseInt(entrada.readLine());
		System.out.println("Ingrese el segundo numero entero : ");
		n2=Integer.parseInt(entrada.readLine());
		suma=n1+n2;
		System.out.println("El valor de la suma es : " + suma);
	}
}
```

## mayor_10.java (20-jun-2018)

```java
import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class mayor_10 {

	// we have to declare the main class and inside of it the code will resides
	public static void main(String [] args) throws IOException 
	{
		// we have to declared the buffer in order to storage user's data
		BufferedReader data_in=new BufferedReader(new InputStreamReader(System.in));
		// declaring the variables and initialize them
		int count=0, greater_data=0, max_value=10;
		// declaring a new array
		List<Integer> myList = new ArrayList<Integer>();

		// filling the list with the values given by the user
		for (int i=1; i <= max_value; i++) {
			System.out.print("Type a value [" + i + "/" + max_value + "] : ");
			try {
				myList.add(Integer.parseInt(data_in.readLine()));
			}
			catch(NumberFormatException n) {
				System.out.println("(err) : the value entered is not valid, leaving the program");
				// exiting with 1 as error
				System.exit(1);
			}
		}
		
		// getting the max value given by the user
		greater_data = Collections.max(myList);
		
		// checking if the greater value is duplicated in the list
		for (int i = 0; i < myList.size(); i++) {
			if (myList.get(i) == greater_data) {
				count = count + 1;
			}
		}
		
		/* logic: 
			- condition (greatest data)     : if the greatest data is NOT duplicate in the list
			- condition (not greatest data) : if the greatest data is duplicate in the list
		*/
		if (count > 1) {
			System.out.println("There is no greater data");
		}	
		else {
			System.out.println("The greatest data is: " + greater_data);
		}
	}
}
```

## Operaciones.java (22-jun-2018)

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class Operaciones {

	public static void main(String[] args) throws IOException
	{
		// declaring the buffer in order to storage user's data
		BufferedReader data_in=new BufferedReader(new InputStreamReader(System.in));
		// declaring the variables and initialize them
		int max_value=2, data_a=0, data_b=0, sum=0, res=0, div=0, mul=0, mod=0;
		// declaring a new array
		List<Integer> myList = new ArrayList<Integer>();
		
		// filling the list with the values given by the user
		for (int i=1; i <= max_value; i++) {
			System.out.print("Type a value [" + i + "/" + max_value + "] : ");
			try {
				myList.add(Integer.parseInt(data_in.readLine()));
			}
			catch(NumberFormatException n) {
				System.out.println("(err) : the value entered is not valid, leaving the program");
				// exiting with 1 as error
				System.exit(1);
			}
		}
		
		// assigned new values from the input user
		data_a=myList.get(0); data_b=myList.get(1);
		
		// performing the addition operation
		sum=data_a + data_b;
		
		// performing the subtraction operation
		res=data_a - data_b;
		
		// performing the division operation
		div=data_a / data_b;
		
		// performing the multiplication operation
		mul=data_a * data_b;
		
		// getting the module of two values
		mod=data_a % data_b;
		
		// showing the results
		System.out.format("%n%n----------------------------------------%n");
		System.out.format("The result of the addtion is        : %d %n", sum);
		System.out.format("The result of the subtracton is     : %d %n", res);
		System.out.format("The result of the division is       : %d %n", div);
		System.out.format("The result of the multiplication is : %d %n", mul);
		System.out.format("The result of the module is         : %d %n", mod);
	}
}
```

## Menu.java (25-jun-2018)

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author Humberto Israel Perez Rodriguez
 */

public class Menu {

	/**
	 * @param args
	 * @throws InterruptedException 
	 */
	public static void main(String[] args) throws IOException, InterruptedException
	{
		// declaring the buffer in order to storage user's data
		BufferedReader data_in=new BufferedReader(new InputStreamReader(System.in));
		// declaring the variables
		int input_user=0, validate=0;
		
		do {
			// showing the main menu
			System.out.println("1. Gasolina");
			System.out.println("2. Par/Impar");
			System.out.println("3. Primo/No primo");
			System.out.println("4. Seno");
			System.out.println("5. Coseno");
			System.out.println("6. Tangente");
			System.out.println("7. Potencia");
			System.out.println("8. Factorial");
			System.out.println("9. Exit");
			
			System.out.format("%nSelect an option: ");
			
			try {
				input_user=Integer.parseInt(data_in.readLine());
				
				// evaluating the range of numbers between 1-8
				if (input_user == 9) {
					System.out.format("\nLeaving the program ...\n");
					System.exit(0);
				}
				else if (input_user >= 1 && input_user <= 8) {
					// the user entered a valid option
					validate=1;
				}
				else {
					// the user does not entered a valid option
					System.out.format("%nOption [%d] out of range%n", input_user);
					// sleep the execution over 3 seconds
					Thread.sleep(3000);
				}
				
			}
			catch(NumberFormatException n) {
				System.out.println("Please, only numbers are allowed, try it again");
				// sleep the execution over 3 seconds
				Thread.sleep(3000);
			}
		
		} while (validate==0);
			
		// menu's options
		switch(input_user) {
		
			case 1:
				// GAS PROGRAM
				// declaring the variables
				int input_user_1=0, validate_1=0, magna=0, premium=0, liters=0, type_gas=0, cost=0;
				
				System.out.format("\nYou are select the option: %d", input_user);
				
				// getting "MAGNA" value
				do {
					// capturing the data in 4 loops
					System.out.format("%nPROGRAM: Gasolina%n");
					System.out.format("%nPlease give me a the cost per liter MAGNA: ");
					
					try {
						input_user_1=Integer.parseInt(data_in.readLine());
						// assigning the input user value to the variable 
						magna=input_user_1;
						break;
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);
					}
					
				} while(validate_1==0);
				
				// getting "PREMIUM" value
				do {
					try {
						// reverting to the default value the variable
						input_user_1=0;
						System.out.format("%nPlease give me a the cost per liter PREMIUM: ");
						input_user_1=Integer.parseInt(data_in.readLine());
						premium=input_user_1;
						break;
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);			
					}					
				} while(validate_1==0);
				
				
				//  getting "HOW MANY LITERS" value
				do {
					try {
						// reverting to the default value the variable
						input_user_1=0;
						System.out.format("%nHow many liters do you want to buy?: ");
						input_user_1=Integer.parseInt(data_in.readLine());
						liters=input_user_1;
						break;
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);									
					}
				} while(validate_1==0);

				// getting "TYPE OF GAS" value
				do {
					try {
						// reverting to the default value the variable
						input_user_1=0;
						System.out.format("%n1. MAGNA%n");
						System.out.format("2. PREMIUM%n");
						System.out.format("%nWhat kind of GAS do you want to buy?: ");
						input_user_1=Integer.parseInt(data_in.readLine());
						type_gas=input_user_1;				
						
						// validating the range
						if (type_gas>= 1 && type_gas<= 2) {
							// breaking the loops
							break;
						}
						else {
							// the user does not entered a valid option
							System.out.format("%nOption [%d] out of range%n", input_user_1);
							System.out.format("Please select \"MAGNA\" or \"PREMIUM\"%n");
							// sleep the execution over 3 seconds
							Thread.sleep(3000);										
						}
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);									
					}
				} while(validate_1==0);
				
				// calculating the total cost
				if (type_gas==1) {
					cost=liters*magna;
					System.out.format("The total cost for MAGNA's liters is: $%d%n", cost);
				}
				else {
					cost=liters*premium;
					System.out.format("The total cost for PREMIUM's liters is: $%d%n", cost);
				}
				
				break;
				
			case 2:
				// PAR/IMPAR PROGRAM
				// declaring the variables
				int input_user_2=0, validate_2=0;

				System.out.format("%nYou are select the option: %d", input_user_2);
				
				do {
					System.out.format("%nPROGRAM: Par/Impar%n");
					System.out.format("%nPlease give me a number: ");
					
					try {
						input_user_2=Integer.parseInt(data_in.readLine());
						
						// evaluating the number entered by the user
						if ((input_user_2 % 2) == 0) {
							System.out.format("The number [%d] is PAR", input_user_2);
						}
						else {
							System.out.format("The number [%d] is IMPAR", input_user_2);
						}
					
						System.out.format("%nLeaving the program ...%n");
						// leaving the loop
						System.exit(0);
					}
					catch(NumberFormatException n)
					{
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);
					}
				} while(validate_2==0);
				
				break;

			case 3:
				// PRIMO/NO PRIMO PROGRAM
				// declaring the variables
				int input_user_3=0, validate_3=0, count=0, i;
				
				System.out.format("\nYou are select the option: %d", input_user);
				
				do {
					System.out.format("\nProgram: Primo/No Primo\n");
					System.out.format("\nPlease give me a number: ");
					
					try {
						input_user_3=Integer.parseInt(data_in.readLine());
						
						/* logic : in order to know if a number is PRIME OR NOT, the number must
						 * be divisible between "1" and the number itself, otherwise the number is NOT PRIME.
						 */
						for (i=1; i <= input_user_3; i++) {
							if((input_user_3 % i) == 0) {
								count++;
							}
						}
						
						if (count == 2) {
							System.out.format("The number [%d] is PRIME", input_user_3);
						}
						else {
							System.out.format("The number [%d] is NOT PRIME", input_user_3);
						}
						
						// leaving the loop
						System.out.format("%nLeaving the program ...%n");
						System.exit(0);
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);
					}
					
					
				} while(validate_3==0);
				
				break;
				
			case 4:
				// PROGRAM : sin of a number
				// declaring the variables
				int validate_4=0, input_user_4;
				double sin;
				System.out.format("\nYou are select the option: %d", input_user);
				
				do {
					System.out.format("%nPlease type an angle from (0-360) degrees: ");
					try {
						// put the user input in a variable
						input_user_4=Integer.parseInt(data_in.readLine());
						// validating the range
						 if (input_user_4 >= 0 && input_user_4 <= 360) {
							// expecting radians by default
							sin=Math.sin(Math.toRadians(input_user_4));
							System.out.println("The sinus of [" + input_user_4 +  "] is : " + sin);
							// leaving the program
							System.exit(0);
						 }
						 else {
							 System.out.format("The number [%d] is out-of-range, try it again", input_user_4);
							// sleep the execution over 3 seconds
							Thread.sleep(3000);
						 }
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);
					}
					
				} while(validate_4==0);

				break;
				
			case 5:
				// PROGRAM : cosine of a number
				// declaring the variables
				int validate_5=0, input_user_5;
				double cos;
				System.out.format("\nYou are select the option: %d", input_user);
				
				do {
					System.out.format("%nPlease type an angle from (0-360) degrees: ");
					try {
						// put the user input in a variable
						input_user_5=Integer.parseInt(data_in.readLine());
						// validating the range
						 if (input_user_5 >= 0 && input_user_5 <= 360) {
							cos=Math.cos(Math.toRadians(input_user_5));
							System.out.println("The cosine of [" + input_user_5 +  "] is : " + cos);
							// leaving the program
							System.exit(0);
						 }
						 else {
							 System.out.format("The number [%d] is out-of-range, try it again", input_user_5);
							// sleep the execution over 3 seconds
							Thread.sleep(3000);
						 }
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);
					}
					
				} while(validate_5==0);
				
				break;
				
			case 6:
				// PROGRAM : tangent of a number
				// declaring the variables
				int validate_6=0, input_user_6;
				double tan;
				System.out.format("\nYou are select the option: %d", input_user);
				
				do {
					System.out.format("%nPlease type an angle from (0-360) degrees: ");
					try {
						// put the user input in a variable
						input_user_6=Integer.parseInt(data_in.readLine());
						// validating the range
						 if (input_user_6 >= 0 && input_user_6 <= 360) {
							tan=Math.tan(Math.toRadians(input_user_6));
							System.out.println("The tangent of [" + input_user_6 +  "] is : " + tan);
							// leaving the program
							System.exit(0);
						 }
						 else {
							 System.out.format("The number [%d] is out-of-range, try it again", input_user_6);
							// sleep the execution over 3 seconds
							Thread.sleep(3000);
						 }
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);
					}
					
				} while(validate_6==0);
				
				break;
				
			case 7:
				// get the power of a number
				// declaring the variables
				int number=0, validate_7=0, validate_7_1=0, power_number=0, result=0;
				System.out.format("\nYou are select the option: %d", input_user);
				
				do {
					// first loop to find the number given by the user
					System.out.format("\nProgram: Power of a number\n");
					System.out.format("\nPlease give me a number: ");
					
					try {
						number=Integer.parseInt(data_in.readLine());
						do {
							// second loop to find the power number given by the user
							System.out.format("\nPlease give me the power of the number: ");
							
							try {
								power_number=Integer.parseInt(data_in.readLine());
								result=(int) Math.pow(number, power_number);
								System.out.format("The power of [%d] is [%d]%n", number, result);
								// leaving the loop
								System.exit(0);
							}
							catch(NumberFormatException n) {
								System.out.println("Please, only numbers are allowed, try it again");
								// sleep the execution over 3 seconds
								Thread.sleep(3000);	
							}
							
						} while(validate_7_1==0);
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);					
					}
				} while(validate_7==0);
						
				break;
				
			case 8:
				// Factorial program
				System.out.format("\nYou are select the option: %d", input_user);
				// declaring the variables
				int validate_8=0, fact=1;
				
				do {
					System.out.format("%nPlease give me a number to calculate the factorial: ");
					
					try {
						number=Integer.parseInt(data_in.readLine());
						
						// calculating the factorial
						 for(i=1; i<=number; i++){    
						      fact=fact*i;    
						  }
						 
						 System.out.format("Factorial of [%d] is [%d]%n", number, fact);
						 System.exit(0);
					}
					catch(NumberFormatException n) {
						System.out.println("Please, only numbers are allowed, try it again");
						// sleep the execution over 3 seconds
						Thread.sleep(3000);							
					}
					
				} while(validate_8==0);
				
				break;
		}
	}
}
```

## Vocales.java (25-jun-2018)

```java
import java.io.*;

/**
 * @author Humberto Israel Perez Rodriguez
 *
 */
public class Vocales {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws IOException, InterruptedException
	{
		// declaring the buffer in order to storage user's data
		BufferedReader data_in=new BufferedReader(new InputStreamReader(System.in));
		// declaring the variables
		String name = " "; 
		System.out.format("Please insert your name: ");
		name = data_in.readLine();
		
		// declaring the counter
		int count=0;
		char letter = ' ';
		// converting all the letters inside of name to upper case
		name = name.toUpperCase();
		// iterating over the variable where the string resides
		// declaring x as integer inside the for loop saves memory, x will disappears when the loop finished
		for (int x=0; x < name.length(); x++) {
			// checking if the letter is a vowel
			letter = name.charAt(x);
			if (letter == 'A' || letter == 'E' || letter == 'I' || letter ==  'O' || letter == 'U') {
				// increasing the count
				count++;
			}
		}
		// showing the numbers of vowels
		System.out.format("The number of vowels is : %d %n", count);
	}
}
```

## Menu_2.java (2-jul-2018)

```java
import java.awt.event.KeyEvent;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


/**
 * @author Humberto Israel Perez Rodriguez
 *
 */

public class MENU_2 {

	public static void main(String[] args) throws IOException, InterruptedException
	{
		// declaring the buffer in order to storage user's data
		BufferedReader data_in=new BufferedReader(new InputStreamReader(System.in));
		int input_user=0, validate=0;
		
		do {
			// showing the main menu
			System.out.println("1. Vowels");
			System.out.println("2. Palindrome");
			System.out.println("3. Morse Code");
			System.out.println("Press ESC to exit");
			System.out.format("%nSelect an option: ");

			try {
				input_user=Integer.parseInt(data_in.readLine());
				
				// evaluating the range of numbers between 1-3
				if (input_user == 4) {
					System.out.format("\nLeaving the program ...\n");
					System.exit(0);
				}
				else if (input_user >= 1 && input_user <= 3) {
					// the user entered a valid option
					break;
				}
				else {
					// the user does not entered a valid option
					System.out.format("%nOption [%d] out of range%n", input_user);
					// sleep the execution over 3 seconds
					Thread.sleep(3000);
				}
				
			}
			catch(NumberFormatException n) {
				System.out.println("Please, only numbers are allowed, try it again");
				// sleep the execution over 3 seconds
				Thread.sleep(3000);
			}
		
		} while (validate==0);
		
		
		// menu's options
		switch(input_user) {
		
			case 1:
				// PROGRAM: VOWELS
				System.out.format("%nEntering to vowels program%n%n");
				
				do {
									
					// declaring the variables
					String input_user_2 = " ", phrase_to_analize= " ";
					int total_count=0, a_count=0, A_count=0, e_count=0, E_count=0, i_count=0, I_count=0,
							o_count=0, O_count=0, u_count=0, U_count=0;
					System.out.print("Type the phrase: ");
					// getting the user input and deleting the initial and ending spaces with trim function
					input_user_2=(data_in.readLine().trim());
					
					if (input_user_2.isEmpty()) {
						// if the variable is empty the loop will continue
						continue;
					}
					else {
						// this mean that the user entered a phase
						// converting the phrase to lower case
						//phrase_to_analize = input_user_2.toLowerCase();
						phrase_to_analize = input_user_2;
						
						for (int i=0; i < phrase_to_analize.length(); i++) {
							// if a letter meet with the conditions in the if statement the count
							// will increase in order to know how many vowels the phrase has
							if (phrase_to_analize.charAt(i) == 'a') {
								a_count++;
							} 
							else if	(phrase_to_analize.charAt(i) == 'A') {
								A_count++;
							}
							else if	(phrase_to_analize.charAt(i) == 'e') {
								e_count++;
							}
							else if	(phrase_to_analize.charAt(i) == 'E') {
								E_count++;
							}
							else if (phrase_to_analize.charAt(i) == 'i') {
								i_count++;
							}
							else if	(phrase_to_analize.charAt(i) == 'I') {
								I_count++;
							}
							else if (phrase_to_analize.charAt(i) == 'o') {
								o_count++;
							}
							else if	(phrase_to_analize.charAt(i) == 'O') {
								O_count++;
							}
							else if (phrase_to_analize.charAt(i) == 'u') {
								u_count++;
							}
							else if	(phrase_to_analize.charAt(i) == 'U') {
								U_count++;
							}
						}
						
						total_count = a_count + e_count + i_count + o_count + u_count;
						// showing how many vowels are in the phrase given
						
						if (total_count >= 1) {
							System.out.format("%nThe phrase given contains a total of (%d) vowels%n", total_count);
							System.out.format("%nThe vowels that contains are%n%n");
							if (a_count >=1) 
								System.out.format("Vowel \"a\" : #%d%n", a_count);
							if (A_count >=1) 
								System.out.format("Vowel \"A\" : #%d%n", A_count);
							if (e_count >=1) 
								System.out.format("Vowel \"e\" : #%d%n", e_count);
							if (E_count >=1) 
								System.out.format("Vowel \"E\" : #%d%n", E_count);
							if (i_count >=1) 
								System.out.format("Vowel \"i\" : #%d%n", i_count);
							if (I_count >=1) 
								System.out.format("Vowel \"I\" : #%d%n", I_count);
							if (o_count >=1) 
								System.out.format("Vowel \"o\" : #%d%n", o_count);
							if (O_count >=1) 
								System.out.format("Vowel \"O\" : #%d%n", O_count);
							if (u_count >=1) 
								System.out.format("Vowel \"u\" : #%d%n", u_count);
							if (U_count >=1) 
								System.out.format("Vowel \"U\" : #%d%n", U_count);
							System.out.format("%n%nleaving the program%n");
						}
						
						else {
							System.out.format("%nThe given phrase does not contains any vowel%n");
							System.out.println("leaving the program");
						}
						
						// leaving the program
						break;
					}
				
				} while (validate==0);
				
				// default break statement for case
				break;
				
			case 2:
				// PROGRAM : PALINDROME
				
				do {
					// declaring/initializing the variables
					String original_phrase="", reverse_phrase="";
					System.out.format("Type a phrase to check if it is a palindrome: ");
	
					// getting the user input and deleting anything that is a space character
					// (including space, tab characters etc) (\s)
					original_phrase=(data_in.readLine().replaceAll("\\s",""));
					
					if (original_phrase.isEmpty())
						// if the variable is empty the loop will continue
						continue;
					else {
						int length = original_phrase.length();
						// creating the reverse phrase in order to compare then
						for (int i = length -1; i >= 0; i--) {
							reverse_phrase = reverse_phrase + original_phrase.charAt(i);
						}
						// debug prints
						// System.out.println("original_phrase: " + original_phrase);
						// System.out.println("reverse_phrase: " + reverse_phrase);
						if (original_phrase.equals(reverse_phrase))
						{
							System.out.format("%nEntered phrase is a palindrome%n");
							System.out.println("leaving the program");
						
						}
						else
						{
							System.out.format("%nEntered phrase is NOT a palindrome%n");
							System.out.println("leaving the program");
						}
						
						// leaving the program
						break;
						
					}
				
				} while(validate==0);
				
				// default break statement for case
				break;
				
			case 3:
				// PROGRAM : MORSE CODE
				
				do {
					// declaring/initializing the variables
					String input_user_3="", textToMorseCode="";
					
					System.out.format("Type a phrase to convert it in morse code: ");
					input_user_3=(data_in.readLine());
					
					if (input_user_3.isEmpty())
						continue;
					else {
						
						// converting the phrase given for the user to lower case
						input_user_3 = input_user_3.toLowerCase();
						
						// declaring the letters and morseLetters
						// char data is for only one string
					    char[] letters = {
					    		' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
					    		'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '1',
					    		'2', '3', '4', '5', '6', '7', '8', '9', '0' 
					    		};
					    // String data if for more than one string
					    String[] morseLetters = {
					    		"    ", ". ___", "___ . . .", "___ . ___ .", "___ . .", ".", ". . ___ .",
					    		"___ ___ .", ". . . .", ". .", ". ___ ___ ___", "___ . ___", ". ___ . .",
					    		"___ ___", "___ .", "___ ___ ___", ". ___ ___ .", "___ ___ . ___", ". ___ .",
					    		". . .", "_", ". . ___", ". . . ___", ". ___ ___", "___ . . ___",
					    		"___ . ___ ___", "___ ___ . .", ". ___ ___ ___ ___", ". . ___ ___ ___",
					    		". . . ___ ___", ". . . . ___", ". . . . .", "___ . . . .", "___ ___ . . .",
					    		"___ ___ ___ . .", "___ ___ ___ ___ .", "___ ___ ___ ___ ___"
					    		};
						
					    for (int i = 0; i < input_user_3.length(); i++) 
					    {
					        for (short j = 0; j < 37; j++) 
					        {
					          if (input_user_3.charAt(i) == letters[j]) 
					          {
					        	  // this mean that the word is on letters String
					        	  // adding the corresponding morse code
					        	  textToMorseCode += morseLetters[j];
					        	  // adding an empty space
					        	  textToMorseCode += "   ";
					        	  // exiting from the loop in order to analyze the next word
					        	  break;
					          }    
					        }
					      }
					    
					    System.out.format("%nText in Morse Code is: %n");
					    System.out.println(textToMorseCode);
					    System.out.format("%nleaving the program%n");
					    // exiting from the do-while loop
					    break;
					}

				} while(validate==0);				
				
				// default break statement for case
				break;
		}
		
	}
}

```

## Arabigos_Romanos.java (2-jul-2018)

```java
//Programa Java que lee un número y lo convierte a números romanos
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class ARABIGOS_ROMANOS {

  public static void main(String[] args) throws IOException, InterruptedException
  {
      // declaring the buffer in order to storage user's data
      BufferedReader data_in=new BufferedReader(new InputStreamReader(System.in));
      int user_number=0;
      do {
             System.out.format("Please type a number between 1 & 3999: ");
             
             try {
            	 user_number=Integer.parseInt(data_in.readLine());
             }
             catch(NumberFormatException n) {
            	 
             }
             
      } while (user_number < 1 || user_number > 3999);
      System.out.println("[" + user_number + "] en numeros romanos es:  " + convertirANumerosRomanos(user_number));
  }

  // function to convert integers to Romans numbers
  public static String convertirANumerosRomanos(int numero) {
      int i, miles, centenas, decenas, unidades;
      String romano = "";
     //obtenemos cada cifra del número
      miles = numero / 1000;
      centenas = numero / 100 % 10;
      decenas = numero / 10 % 10;
      unidades = numero % 10;

     //millar
      for (i = 1; i <= miles; i++) {
             romano = romano + "M";
      }

     //centenas
      if (centenas == 9) {
          romano = romano + "CM";
      } else if (centenas >= 5) {
                     romano = romano + "D";
                     for (i = 6; i <= centenas; i++) {
                            romano = romano + "C";
                     }
      } else if (centenas == 4) {
                      romano = romano + "CD";
      } else {
                  for (i = 1; i <= centenas; i++) {
                         romano = romano + "C";
                  }
      }

     //decenas
      if (decenas == 9) {
           romano = romano + "XC";
      } else if (decenas >= 5) {
                      romano = romano + "L";
                      for (i = 6; i <= decenas; i++) {
                            romano = romano + "X";
                      }
      } else if (decenas == 4) {
                      romano = romano + "XL";
      } else {
                    for (i = 1; i <= decenas; i++) {
                           romano = romano + "X";
                    }
      }

     //unidades
      if (unidades == 9) {
           romano = romano + "IX";
      } else if (unidades >= 5) {
                      romano = romano + "V";
                      for (i = 6; i <= unidades; i++) {
                             romano = romano + "I";
                      }
      } else if (unidades == 4) {
                      romano = romano + "IV";
      } else {
                  for (i = 1; i <= unidades; i++) {
                         romano = romano + "I";
                  }
      }
      return romano;
  }
}
```

## Calculadora.java (6-jul-2018)

````java
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.math.*;

class CALCULADORA extends JFrame {
	private JTextField pantalla; // La "J" se pone cuando esta "swing"
private JButton zero, one, two, three, four, five, six, seven, eight, nine, sin, cos, tan, add, 
	subtract, multiplication, division, module, result, period, clear, bCE, square, get_double, pow;
private int ultima=0;
private boolean puntodecimal;
private byte numoperandos;
private double operando1, operando2;
private char op=0;

CALCULADORA() // This is the class constructor and has to be named same as the class
{
	setTitle("Calculator in Java");
	setSize(400,480);
	setResizable(false);
	iniciar();
}

private void iniciar()
{
	// adding the calculator buttons
	getContentPane().setLayout(null);
	pantalla=new JTextField("");
	pantalla.setFont(new Font("Arial ", 1,16));
	pantalla.setHorizontalAlignment(SwingConstants.RIGHT);
	pantalla.setBounds(20,30,345,40);
	pantalla.setText("0");
	pantalla.setEditable(false);
	pantalla.setBackground(new Color (255,255,255));
	getContentPane().add(pantalla);
	
	zero=new JButton("0");
	zero.setToolTipText("Press here to appear the number 0");
	zero.setBounds(20,300,60,45);
	zero.setMnemonic(KeyEvent.VK_0);
	getContentPane().add(zero);
	
	one=new JButton("1");
	one.setToolTipText("Press here to appear the number 1");
	one.setBounds(20,250,60,45);
	one.setMnemonic(KeyEvent.VK_1);
	getContentPane().add(one);
		
	two=new JButton("2");
	two.setToolTipText("Press here to appear the number 2");
	two.setBounds(90,250,60,45);
	two.setMnemonic(KeyEvent.VK_2);
	getContentPane().add(two);
	
	three=new JButton("3");
	three.setToolTipText("Press here to appear the number 3");
	three.setBounds(160,250,60,45);
	three.setMnemonic(KeyEvent.VK_3);
	getContentPane().add(three);
	
	four=new JButton("4");
	four.setToolTipText("Press here to appear the number 4");
	four.setBounds(20,200,60,45);
	four.setMnemonic(KeyEvent.VK_4);
	getContentPane().add(four);

	five=new JButton("5");
	five.setToolTipText("Press here to appear the number 5");
	five.setBounds(90,200,60,45);
	five.setMnemonic(KeyEvent.VK_5);
	getContentPane().add(five);

	six=new JButton("6");
	six.setToolTipText("Press here to appear the number 6");
	six.setBounds(160,200,60,45);
	six.setMnemonic(KeyEvent.VK_6);
	getContentPane().add(six);
	
	seven=new JButton("7");
	seven.setToolTipText("Press here to appear the number 7");
	seven.setBounds(20,150,60,45);
	seven.setMnemonic(KeyEvent.VK_7);
	getContentPane().add(seven);

	eight=new JButton("8");
	eight.setToolTipText("Press here to appear the number 8");
	eight.setBounds(90,150,60,45);
	eight.setMnemonic(KeyEvent.VK_8);
	getContentPane().add(eight);
	
	nine=new JButton("9");
	nine.setToolTipText("Press here to appear the number 9");
	nine.setBounds(160,150,60,45);
	nine.setMnemonic(KeyEvent.VK_9);
	getContentPane().add(nine);
	
	sin=new JButton("sin");
	sin.setToolTipText("Press here to calculate the sin");
	sin.setBounds(20,100,60,45);
	getContentPane().add(sin);

	cos=new JButton("cos");
	cos.setToolTipText("Press here to calculate the cos");
	cos.setBounds(90,100,60,45);
	getContentPane().add(cos);	
	
	tan=new JButton("tan");
	tan.setToolTipText("Press here to calculate the tag");
	tan.setBounds(160,100,60,45);
	getContentPane().add(tan);
	
	period=new JButton(".");
	period.setToolTipText("Press here to appear a period");
	period.setBounds(90,300,60,45);
	period.setMnemonic('.');
	getContentPane().add(period);
	
	clear=new JButton("C");
	clear.setToolTipText("Press here to clear content");
	clear.setBounds(300,100,60,90);
	clear.setMnemonic('C');
	getContentPane().add(clear);
	
	add=new JButton("+");
	add.setToolTipText("Press here to add");
	add.setBounds(230,250,60,45);
	add.setMnemonic('+');
	getContentPane().add(add);
	
	subtract=new JButton("-");
	subtract.setToolTipText("Press here to subtract");
	subtract.setBounds(230,200,60,45);
	subtract.setMnemonic('-');
	getContentPane().add(subtract);
	
	multiplication=new JButton("*");
	multiplication.setToolTipText("Press here to multiply");
	multiplication.setBounds(300,250,60,45);
	multiplication.setMnemonic('*');
	getContentPane().add(multiplication);
	
	division=new JButton("/");
	division.setToolTipText("Press here to divide");
	division.setBounds(300,200,60,45);
	division.setMnemonic('/');
	getContentPane().add(division);
	
	module=new JButton("%");
	module.setToolTipText("Press here to get the module");
	module.setBounds(230,150,60,45);
	module.setMnemonic('%');
	getContentPane().add(module);
	
	result=new JButton("=");
	result.setToolTipText("Press here to get the result");
	result.setBounds(230,300,130,45);
	result.setMnemonic('=');
	getContentPane().add(result);
	
	square=new JButton("square");
	square.setToolTipText("Press here to get the square");
	square.setBounds(230,100,60,45);
	getContentPane().add(square);
	
	get_double=new JButton("x^2");
	get_double.setToolTipText("Press here to get the double of a number");
	get_double.setBounds(160,300,60,45);
	getContentPane().add(get_double);
	
	
	pow=new JButton("p");
	pow.setToolTipText("Press here to calculate the pow");
	pow.setBounds(200,350,60,45);
	getContentPane().add(pow);
	
	
	
	addWindowListener(new WindowAdapter(){
		public void windowClosing(WindowEvent evt)
		{
			System.exit(0);
		}
	
	public void windowOpened(WindowEvent evt)
	{
		foco(evt); 
		}
	});
	
	  pow.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent evt){
				OperacionAction(evt); 
			} 
		} );
	
    zero.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );
	
	one.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	two.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	three.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );
	
	four.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	five.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	six.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	seven.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	eight.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );

	nine.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonAction(evt); 
		} 
	} );
	
	
	// clear action
	clear.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			botonC(evt); 
		} 
	} );
	
	
	
	// operations
	add.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			OperacionAction(evt);
		} 
	} );

	subtract.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			OperacionAction(evt); 
			} 
	} );

	multiplication.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			OperacionAction(evt); 
			} 
	} );
	
	division.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			OperacionAction(evt); 
			} 
	} );
	
	
	module.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			OperacionAction(evt); 
			} 
	} );
	
	sin.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			sin_operation(evt); 
			} 
	} );	
	
	cos.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			cos_operation(evt); 
			} 
	} );	
	
	tan.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			tan_operation(evt); 
			} 
	} );	
	
	
	result.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			OperacionAction(evt); 
		} 
	} );

	
	
	period.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			puntoDecAction(evt); 
		} 
	} );

	get_double.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			potencia(evt); 
		} 
	} );
	
	square.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent evt){
			raiz_cuadrada(evt); 
		} 
	} );
		
	getRootPane().setDefaultButton(clear);
}
		
private void foco(WindowEvent evt){
	// closing the calculator
	bCE.requestFocus();
}

// perform the basic operations
private void OperacionAction(ActionEvent evt){
	JButton obj=(JButton)evt.getSource();
	String texto=obj.getText();
	if(ultima==1)
		numoperandos++;
	if(numoperandos==1)
	{
		operando1=Double.parseDouble(pantalla.getText());
	}
	else if(numoperandos==2)
	{
		operando2=Double.parseDouble(pantalla.getText());

		switch(op){
			case'+':
				operando1+=operando2;
				break;
			case'-':
				operando1-=operando2;
				break;
			case'*':
				operando1*=operando2;
				break;
			case'/':
				operando1/=operando2;
				break;
			case'=':
				operando1=operando2;
				break;
			case'%':
				operando1%=(operando2%100);
				break;
			case'p':
				operando1=Math.pow(operando1, operando2);
				break;
		}
		
		pantalla.setText(Double.toString(operando1));
		numoperandos=1;
	}
	
	op=texto.charAt(0);
	ultima=2;
}

// function for the numbers
private void botonAction(ActionEvent evt){
	JButton aux=(JButton)evt.getSource();
	String texto=aux.getText();
	if(ultima!=1)
	{
		// this avoid to keep the initial zero in the screen
		// NaN = Not a number
		// infinity = Math ERROR / exceed of the maximum value allow by Java
		String T=pantalla.getText();
		if(texto.compareTo("0")==0)
		{
			if(T.compareTo("0")==0)
			return;
		}
		pantalla.setText("");
		ultima=1;
		puntodecimal=false;
	}
	pantalla.setText(pantalla.getText()+texto);
}


private void puntoDecAction(ActionEvent evt)
 {
	 if(ultima!=1)
	 {
		pantalla.setText("0.");
		ultima=1;
	 }
 
	 else if(puntodecimal==false)
		 pantalla.setText(pantalla.getText()+".");
	 puntodecimal=true;	 
 }

private void powAction(Action evt)
 {

	// pantalla.setText("");
 }
 
private void botonC(ActionEvent evt)
{
	// reseting to the default values
	 pantalla.setText("0");
	 ultima=0;
	 puntodecimal=false;
	 op=0;
	 numoperandos=0;
	 operando1=0;
	 operando2=0;
}
 
private void potencia(ActionEvent evt)
{
	 double respot;
	 respot=Double.parseDouble(pantalla.getText());
	 respot=respot*respot;
	 pantalla.setText(""+respot);
}
 
 private void raiz_cuadrada(ActionEvent evt){
	 double resraiz;
	 resraiz=Double.parseDouble(pantalla.getText());
	 if(resraiz<0)
		 pantalla.setText("Error");
	 else if (resraiz>0)
		 resraiz=Math.sqrt(resraiz);
	 pantalla.setText(""+resraiz);
 }

 
 private void sin_operation(ActionEvent evt)
 {
	 double number_sin;
	 number_sin=Double.parseDouble(pantalla.getText());
	 number_sin=Math.sin(Math.toRadians(number_sin));
	 pantalla.setText(""+number_sin);
 }

 private void cos_operation(ActionEvent evt)
 {
	 double number_cos;
	 number_cos=Double.parseDouble(pantalla.getText());
	 number_cos=Math.cos(Math.toRadians(number_cos));
	 pantalla.setText(""+number_cos);
 }
 
 private void tan_operation(ActionEvent evt)
 {
	 double number_tan;
	 number_tan=Double.parseDouble(pantalla.getText());
	 number_tan=Math.tan(Math.toRadians(number_tan));
	 pantalla.setText(""+number_tan);
 }
 
// making the object visible
 public static void main(String args[]){
	 CALCULADORA obj=new CALCULADORA();
	 obj.setVisible(true);
 }
}
````

## CURP.java (6-jul-2018)

````java
import java.awt.*;
import java.awt.List;
import java.awt.event.*;
import javax.swing.*;
import java.math.*;
import java.net.URL;
import java.security.acl.Group;
import java.util.*;

/* Created by : Humberto Israel Perez Rodriguez
 * doc references:
* http://geekologia.net/como-realizar-la-curp-manualmente
* http://laeconomia.com.mx/claves-entidades-federativas
* http://sistemas.uaeh.edu.mx/dce/admisiones/docs/guia_CURP.pdf
*/

// declaring the global variables
class CURP extends JFrame {
	private JTextField names, first_lastname, second_lastname, result_screen;
	private JLabel names_label, first_lastname_label, second_lastname_label, gender_label, birthday,
		federal_entity_of_birth;
	private JButton bCE, submit_button, clear_button, curp_calculation_method;
	private String day_value="", month_value="", year_value="", entity_value="", gender_letter="";


CURP() // This is the class constructor and has to be named same as the class
{
	setTitle("CURP by Humberto Israel Perez Rodriguez");
	setSize(670,420);
	setResizable(false);
	iniciar();
}

	private void iniciar()
	{

		getContentPane().setLayout(null);
		
		// adding the TextLabels buttons
		names_label=new JLabel("Name(s)");
		names_label.setFont(new Font("Arial ", 1,16));
		names_label.setBounds(20,30,180,40);
		getContentPane().add(names_label);

		first_lastname_label=new JLabel("First Lastname");
		first_lastname_label.setFont(new Font("Arial ", 1,16));
		first_lastname_label.setBounds(20,70,180,40);
		getContentPane().add(first_lastname_label);
		
		second_lastname_label=new JLabel("Second Lastname");
		second_lastname_label.setFont(new Font("Arial ", 1,16));
		second_lastname_label.setBounds(20,110,180,40);
		getContentPane().add(second_lastname_label);
		
		gender_label=new JLabel("Gender");
		gender_label.setFont(new Font("Arial ", 1,16));
		gender_label.setBounds(20,150,180,40);
		getContentPane().add(gender_label);
		
		birthday=new JLabel("Birthday");
		birthday.setFont(new Font("Arial ", 1,16));
		birthday.setBounds(20,190,180,40);
		getContentPane().add(birthday);
		
		federal_entity_of_birth=new JLabel("Federal Entity of Birth");
		federal_entity_of_birth.setFont(new Font("Arial ", 1,16));
		federal_entity_of_birth.setBounds(20,230,180,40);
		getContentPane().add(federal_entity_of_birth);

		// adding the TextFields buttons
		result_screen=new JTextField("");
		result_screen.setFont(new Font("Arial ", 1,16));
		result_screen.setHorizontalAlignment(SwingConstants.CENTER);
		result_screen.setBounds(20,350,640,40);
		result_screen.setEditable(false);
		result_screen.setBackground(new Color (255,255,255));
		//getContentPane().add(result_screen);
		
		names=new JTextField("");
		names.setFont(new Font("Arial ", 1,16));
		names.setHorizontalAlignment(SwingConstants.LEFT);
		names.setBounds(220,30,345,40);
		//names.setText("Type your names here");
		names.setEditable(true);
		names.setBackground(new Color (255,255,255));
		getContentPane().add(names);
	
		first_lastname=new JTextField("");
		first_lastname.setFont(new Font("Arial ", 1,16));
		first_lastname.setHorizontalAlignment(SwingConstants.LEFT);
		first_lastname.setBounds(220,70,345,40);
		//first_lastname.setText("Type your first last name here");
		first_lastname.setEditable(true);
		first_lastname.setBackground(new Color (255,255,255));
		getContentPane().add(first_lastname);
		
		second_lastname=new JTextField("");
		second_lastname.setFont(new Font("Arial ", 1,16));
		second_lastname.setHorizontalAlignment(SwingConstants.LEFT);
		second_lastname.setBounds(220,110,345,40);
		//second_lastname.setText("Type your second last name here");
		second_lastname.setEditable(true);
		second_lastname.setBackground(new Color (255,255,255));
		getContentPane().add(second_lastname);
		
		// setting the radio buttons
		JRadioButton maleButton = new JRadioButton("Male");
		JRadioButton femaleButton = new JRadioButton("Female");
		ButtonGroup group = new ButtonGroup();
		group.add(maleButton);
		group.add(femaleButton);
		maleButton.setBounds(220, 150, 100, 40);
		femaleButton.setBounds(320, 150, 100, 40);
		maleButton.setSelected(true);
		//maleButton.setFocusable(isEnabled());
		getContentPane().add(maleButton);
		getContentPane().add(femaleButton);

		// creating the day list
		String[] days = new String[] {"01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16",
				"17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"};
		JComboBox<String> dayList = new JComboBox<>(days);
		dayList.setBounds(220,190,70,40);
		getContentPane().add(dayList);
		
		// creating the month list
		String [] months = new String[] {"Junuary","February","March","April","May","June","July","August",
				"September","October","November","December"};
		JComboBox<String> monthList = new JComboBox<>(months);
		monthList.setBounds(300,190,100,40);
		getContentPane().add(monthList);
		
		// creating the year list
		String [] years = new String[] {"1940","1941","1942","1943","1944","1945","1946","1947","1948","1949",
				"1950","1951","1952","1953","1954","1955","1956","1957","1958","1959","1960","1961","1962",
				"1963","1964","1965","1966","1967","1968","1969","1970","1971","1972","1973","1974","1975","1976","1977","1978","1979",
				"1980","1981","1982","1983","1984","1985","1986","1987","1988","1989","1990","1991","1992","1993",
				"1994","1995","1996","1997","1998","1999","2000","2001","2002","2003","2004","2005","2006","2007",
				"2008","2009","2010","2011","2012","2013","2014","2015","2016","2017","2018"};
		JComboBox<String> yearsList = new JComboBox<>(years);
		yearsList.setBounds(400,190,100,40);
		getContentPane().add(yearsList);
		
		// creating the Federal Entity of Birth list
		String [] entity = new String [] {"AGUASCALIENTES","BAJA CALIFORNIA","BAJA CALIFORNIA SUR","CAMPECHE",
				"COAHUILA DE ZARAGOZA","COLIMA","CHIAPAS","CHIHUAHUA","DISTRITO FEDERAL","DURANGO","GUANAJUATO",
				"GUERRERO","HIDALGO","JALISCO","MEXICO","MICHOACAN DE OCAMPO","MORELOS","NAYARIT","NUEVO LEON",
				"OAXACA","PUEBLA","QUERETARO DE ARTEAGA","QUINTANA ROO","SAN LUIS POTOSI","SINALOA","SONORA",
				"TABASCO","TAMAULIPAS","TLAXCALA","VERACRUZ","YUCATAN","ZACATECAS","BORN ABROAD"};
		JComboBox<String> entityList = new JComboBox<>(entity);
		entityList.setBounds(220,230,220,40);
		getContentPane().add(entityList);

		// creating the submit button
		submit_button=new JButton("CALCULATE CURP");
		submit_button.setToolTipText("Press here calculate the CURP");
		submit_button.setBounds(220,270,220,80);
		getContentPane().add(submit_button);
		
		// creating the clear button
		clear_button=new JButton("CLEAR FORM");
		clear_button.setToolTipText("Press here clear the form");
		clear_button.setBounds(440,270,220,80);
		getContentPane().add(clear_button);
		
		// creating the curp_calculation_method button
		curp_calculation_method=new JButton("CURP Calculation method");
		curp_calculation_method.setToolTipText("Press here to know the CURP calculation method online");
		curp_calculation_method.setBounds(20,270,200,80);
		getContentPane().add(curp_calculation_method);
		
		// creating the actions for the created buttons
		submit_button.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent evt){
				// validating if the fields are not empty
				int validate=0;
				if(names.getText().trim().isEmpty())
				{
					validate=1;
					JOptionPane.showMessageDialog(
							null, "Error: please fill the names field","Field Missing",
							JOptionPane.ERROR_MESSAGE);
				}
				else if(first_lastname.getText().trim().isEmpty())
				{
					validate=1;
					JOptionPane.showMessageDialog(
							null, "Error: please fill the first last name field","Field Missing",
							JOptionPane.ERROR_MESSAGE);
				}
				else if(second_lastname.getText().trim().isEmpty())
				{
					validate=1;
					JOptionPane.showMessageDialog(
							null, "Error: please fill the second last name field","Field Missing",
							JOptionPane.ERROR_MESSAGE);
				}
				
				
				// if the fields are not empty, this will proceed to call to calculateCURP function	
				if(validate==0)
				{
					// capturing the new value each time that the comboBox change it
					day_value = dayList.getSelectedItem().toString();
					month_value = monthList.getSelectedItem().toString();
					year_value = yearsList.getSelectedItem().toString();
					entity_value = entityList.getSelectedItem().toString();
					
			    	if (maleButton.isSelected())
			    		gender_letter = "H";
			    	else if (femaleButton.isSelected())
			    		gender_letter = "M";
					
					calculateCURP(evt); 
				}
			} 
		} );
		
		
		
		clear_button.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent evt){
				clearForm(evt); 
			} 
		} );
		
		curp_calculation_method.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent evt){
				openWebpage(evt); 
			} 
		} );
		
		
		// this allow to close the process once the program exits from the GUI
		addWindowListener(new WindowAdapter(){
			public void windowClosing(WindowEvent evt)
			{
				System.exit(0);
			}
		
		public void windowOpened(WindowEvent evt)
		{
			foco(evt); 
			}
		});
		

		
	}

	// main functions for the buttons
	private void calculateCURP(ActionEvent evt)
	{
		// initialization of the variables
		String user_name="", user_first_lastname="", user_second_lastname="", final_result="";
		// getting the text from the box
		user_name=names.getText().trim();
		user_first_lastname=first_lastname.getText().trim();
		user_second_lastname=second_lastname.getText().trim();
		// converting to upper case
		user_name=user_name.toUpperCase();
		user_first_lastname = user_first_lastname.toUpperCase();
		user_second_lastname = user_second_lastname.toUpperCase();
		
		
		/* Rules:
		 * 1. First letter and first vowel of the first last name
		 * 2. First letter of the second last name
		 * 3. First letter of the name, if the name is Jose/Maria it will takes the second name (if any)
		 * 4. Birth date: last two digits from year, month and day
		 * 5. Gender
		 * 6. Federal entity two digits
		 * 7. first non-initial internal consonant of the first last name
		 * 8. first non-initial internal consonant of the second last name
		 * 9. first non-initial internal consonant of the name
		 * 10. Two random digits in order to avoid duplicates
		 * */
		
		// declaring the variables for the CURP
		char rule_1_a=' ', rule_1_b=' ', rule_2=' ', rule_3=' ';
		
		// 1. Rule
		char letter_1 = ' ';
		
		for(int x=0; x < user_first_lastname.length(); x++)
		{
			letter_1 = user_first_lastname.charAt(x);
			if(x==0)
				rule_1_a=letter_1;
			if(letter_1=='A' | letter_1=='E' | letter_1=='I' | letter_1=='O' | letter_1=='U') {
				rule_1_b=letter_1;
				break;
			}
		}
		
		// converting char to string
		String tmp_string_1=Character.toString(rule_1_a);
		String tmp_string_2=Character.toString(rule_1_b);
		// updating final_result string variable
		final_result += tmp_string_1 + tmp_string_2;
		
		
		// 2. Rule
		try 
		{
			rule_2=user_second_lastname.charAt(0);
		} catch(StringIndexOutOfBoundsException n) {
			JOptionPane.showMessageDialog(
					null, "Error: please fill the second last name field","Field Missing",
					JOptionPane.ERROR_MESSAGE);
		}
		
		
		// converting char to string
		String tmp_string_3=Character.toString(rule_2);
		// updating final_result string variable
		final_result += tmp_string_3;
		
		// 3. Rule
		user_name = user_name.toUpperCase();
		String[] names = user_name.split(" ");
		// iterating over the names (if any)
		// for some reason this iterates starting in the second name
		
		int user_has_two_names=0;
		try {
			// this mean that the user entered two names
			String tmp_variable=names[1];
		} catch(ArrayIndexOutOfBoundsException n) {
			// this mean that the user entered only one name
			user_has_two_names=1;
		}
		
		// the user only entered one name
		rule_3=names[0].charAt(0);
		
		if(user_has_two_names==0)
		{
			// this mean that the user has two names
			if(names[0].equals("JOSE") || names[0].equals("MARIA"))
			{
				// grab the second name
				rule_3=names[1].charAt(0);
			}
		}
		
    	// converting char to string
    	String tmp_string_4=Character.toString(rule_3);
    	// updating final_result string variable
    	final_result += tmp_string_4;
		

    	// 4. Rule
    	// Getting the month number
    	String output_month="";
    	
    	switch(month_value) {
	    	case "Junuary":
	    		output_month="01";
	    		break;
	    	case "February":
	    		output_month="02";
	    		break;
	    	case "March":
	    		output_month="03";
	    		break;
	    	case "April":
	    		output_month="04";
	    		break;
	    	case "May":
	    		output_month="05";
	    		break;
	    	case "June":
	    		output_month="06";
	    		break;
	    	case "July":
	    		output_month="07";
	    		break;
	    	case "August":
	    		output_month="08";
	    		break;
	    	case "September":
	    		output_month="09";
	    		break;
	    	case "October":
	    		output_month="10";
	    		break;
	    	case "November":
	    		output_month="11";
	    		break;
	    	case "December":
	    		output_month="12";
	    		break;
    	}
    
    	// grab the last two digits of the year
    	String get_year = year_value.substring(year_value.length() - 2);
    	// updating final_result string variable
    	final_result += get_year + output_month + day_value;
		
    	
    	// 5. Rule
    	
    	// updating final_result string variable
    	final_result += gender_letter;
    	
    	// 6. Rule
    	String entity_code="";
    	if(entity_value=="AGUASCALIENTES")
    		entity_code="AS";
    	else if(entity_value=="BAJA CALIFORNIA")
    		entity_code="BC";
    	else if(entity_value=="BAJA CALIFORNIA SUR")
    		entity_code="BS";
    	else if(entity_value=="CAMPECHE")
    		entity_code="CC";
    	else if(entity_value=="COAHUILA DE ZARAGOZA")
    		entity_code="CL";
    	else if(entity_value=="COLIMA")
    		entity_code="CM";
    	else if(entity_value=="CHIAPAS")
    		entity_code="CS";
    	else if(entity_value=="CHIHUAHUA")
    		entity_code="CH";
    	else if(entity_value=="DISTRITO FEDERAL")
    		entity_code="DF";
    	else if(entity_value=="DURANGO")
    		entity_code="DG";
    	else if(entity_value=="GUANAJUATO")
    		entity_code="GT";
    	else if(entity_value=="GUERRERO")
    		entity_code="GR";
    	else if(entity_value=="HIDALGO")
    		entity_code="HG";
    	else if(entity_value=="JALISCO")
    		entity_code="JC";
    	else if(entity_value=="MEXICO")
    		entity_code="MC";
    	else if(entity_value=="MICHOACAN DE OCAMPO")
    		entity_code="MN";
    	else if(entity_value=="MORELOS")
    		entity_code="MS";
    	else if(entity_value=="NAYARIT")
    		entity_code="NT";
    	else if(entity_value=="NUEVO LEON")
    		entity_code="NL";
    	else if(entity_value=="OAXACA")
    		entity_code="OC";
    	else if(entity_value=="PUEBLA")
    		entity_code="PL";
    	else if(entity_value=="QUERETARO DE ARTEAGA")
    		entity_code="QT";
    	else if(entity_value=="QUINTANA ROO")
    		entity_code="QR";
    	else if(entity_value=="SAN LUIS POTOSI")
    		entity_code="SP";
    	else if(entity_value=="SINALOA")
    		entity_code="SL";
    	else if(entity_value=="SONORA")
    		entity_code="SR";
    	else if(entity_value=="TABASCO")
    		entity_code="TC";
    	else if(entity_value=="TAMAULIPAS")
    		entity_code="TS";
    	else if(entity_value=="TLAXCALA")
    		entity_code="TL";
    	else if(entity_value=="VERACRUZ")
    		entity_code="VZ";
    	else if(entity_value=="YUCATAN")
    		entity_code="YN";
    	else if(entity_value=="ZACATECAS")
    		entity_code="ZS";
    	else if(entity_value=="BORN ABROAD")
    		entity_code="NE";
    		
    	// updating final_result string variable
    	final_result += entity_code;
    		
    	
    	
    	// 7. Rule
    	
    	// defining the consonants
    	String[] consonants = new String[]{"B","C","D","F","G","H","J","K","L","M","N","Ñ","P","Q","R","S","T","V",
    			"W","X","Y","Z"};
    	
        // converting String Array to List
    	java.util.List<String> consonants_list = Arrays.asList(consonants);
    	
    	for(int i=0; i< user_first_lastname.length(); i++)
    	{
    		char letter=user_first_lastname.charAt(i);
    		// converting the char to string in order to find it in the consonants_list
    		String character_to_find=Character.toString(letter);
    		if(consonants_list.contains(character_to_find) && i==0)
    			// in order to avoid grabbing the first letter as consonant
    			continue;
    		else if(consonants_list.contains(character_to_find))
    		{
    			final_result += letter;
    			break;
    		}
    	}
    	
    	// 8. Rule
    	
    	for(int i=0; i< user_second_lastname.length(); i++)
    	{
    		char letter=user_second_lastname.charAt(i);
    		// converting the char to string in order to find it in the consonants_list
    		String character_to_find=Character.toString(letter);
    		if(consonants_list.contains(character_to_find) && i==0)
    			// in order to avoid grabbing the first letter as consonant
    			continue;
    		else if(consonants_list.contains(character_to_find))
    		{
    			final_result += letter;
    			break;
    		}
    	}
    	
    	// 9. Rule
    	
    	// the user only entered one name
    	String selected_name=names[0];
    	
    	
		if(user_has_two_names==0)
		{
			// this mean that the user has two names
			if(names[0].equals("JOSE") || names[0].equals("MARIA"))
			{
				// grab the second name
				selected_name=names[1];
			}
		}
    	
		System.out.print("selected_name is :"+selected_name);
    	
    	for(int i=0; i< selected_name.length(); i++)
    	{
    		char letter=selected_name.charAt(i);
    		// converting the char to string in order to find it in the consonants_list
    		String character_to_find=Character.toString(letter);
    		if(consonants_list.contains(character_to_find) && i==0)
    			// in order to avoid grabbing the first letter as consonant
    			continue;
    		else if(consonants_list.contains(character_to_find))
    		{
    			final_result += letter;
    			break;
    		}
    	}
    	
    	// 10. Rule
    	
    	Random rand = new Random();
    	int  random_number_1 = rand.nextInt(9) + 0;
    	int  random_number_2 = rand.nextInt(9) + 0;
    	final_result += random_number_1;
    	final_result += random_number_2;
    	
    	
		// showing the CURP
    	getContentPane().add(result_screen);
		result_screen.setText(final_result);
	}
	
	private void clearForm(ActionEvent evt) 
	{
		// clear the form content
		names.setText("");
		first_lastname.setText("");
		second_lastname.setText("");
		result_screen.setText("");
		// removing the result_screen
		getContentPane().remove(result_screen);
		// repaint the result screen
		getContentPane().repaint();
	}
	
	private void openWebpage(ActionEvent evt)
	{
		try {
			// opening a specific web page
		    Desktop.getDesktop().browse(new URL("http://sistemas.uaeh.edu.mx/dce/admisiones/docs/guia_CURP.pdf").toURI());
		} catch (Exception e) {
			// showing a message
			JOptionPane.showMessageDialog(
					null, "Error: could not open the URL","Unknow error",
					JOptionPane.ERROR_MESSAGE);
		}
	}
	
	
	private void foco(WindowEvent evt){
		// closing the calculator
		bCE.requestFocus();
	}
	

	// make the object visible
	 public static void main(String args[]){
		 CURP obj=new CURP();
		 obj.setVisible(true);
	 }
	
}
````