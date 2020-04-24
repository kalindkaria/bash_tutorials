# 02_variables

### Explanation



Shell variables are created once they are assigned a value. A variable can contain a number, a character, or a string of characters.

Variable name is case sensitive and can consists of a combination of letters and the underscore "**_**".

Variable assignment is done using the "**=**" sign. Note that **no space** permitted on either side of **=** sign when initialising variables.

```bash
PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello       world  !'
```



Referencing the variables is done using the **$** with the variable name.

A backslash "**\\**" is used to escape special character meaning

```bash
PRICE_PER_APPLE=5
echo "The price of an Apple today is: \$ $PRICE_PER_APPLE."

>> The price of an Apple today is: $ 5.
```



Encapsulating the variable name with **${}** is used to avoid ambiguity.

```bash
MyFirstLetters=ABC
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ."

>> The first 10 letters in the alphabet are: ABCDEFGHIJ.
```



Encapsulating the variable name with **""** will preserve any white space values.

```bash
greeting='Hello       world  !'
echo $greeting" and now with spaces: $greeting"

>> Hello world ! and now with spaces: Hello       world  !
```



Variables can be assigned with the value of a command output. This is referred to as **substitution**.

Substitution can be done by encapsulating the command with **``** (known as back-ticks) or with **$()**.

Note that when the script runs, it will run the command inside the **$()** parentheses and capture its output.

```bash
CURR_DIR=$(pwd)
echo "The path of current working directory is: ${CURR_DIR}"

FILELIST=`ls`
echo "The list of files in directory are: "${FILELIST}

>> The path of current working directory is: /home/erts-09/Documents/GitHub/bash_tutorials/02_variables
>> The list of files in directory are: README.md test_variables.py variables_examples.sh variables.sh
```



**Examples:** [variables_examples.sh](./variables_examples.sh)



---

### Exercise

The target of this exercise is to create a string, an integer, and a complex variable using command substitution.

The string should be named **BIRTHDATE** and should contain the text "**Jan 1, 2020**".

The integer should be named **Presents** and should contain the number **10**.

The complex variable should be named **BIRTHDAY** and should contain full weekday name of the day matching the date in the variable **BIRTHDATE** e.g. **Wednesday**.

Note that the **'date'** command can be used to convert a date format into a different date format. For example, to convert date value, **$date1**, to day of the week of date1, use:

```bash
date -d "$date1" +%A

>> Wednesday
```



---

### Expected Output

```bash
./variables.sh

>> BIRTHDATE is correct, it is Jan 1, 2020
>> I have received 10 presents
>> I was born on a Wednesday
```



---

### Solution

Check code: [variables.sh](./variables.sh)

```bash
#!/bin/bash

BIRTHDATE="Jan 1, 2020"
Presents=10
BIRTHDAY=$(date -d "$BIRTHDATE" +%A)

# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2020" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Wednesday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi
```

