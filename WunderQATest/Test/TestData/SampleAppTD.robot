*** Settings ***
Documentation    This robot file consists Test data necessary for Test Suite execution
...              Both Common Test data and Test case specific test data will be listed here

*** Variables ***

## Test Case 01 : Addition of Integer values ##
${TC_01_Left_Value}     51
${TC_01_Right_Value}     49

## Test Case 02 : Addition of Floating values ##
${TC_02_Left_Value}     51.78
${TC_02_Right_Value}     49.56

## Test Case 03 : subtraction with positive result ##
${TC_03_Left_Value}     51
${TC_03_Right_Value}     41

## Test Case 04 : Subtraction with negative result ##
${TC_04_Left_Value}     41
${TC_04_Right_Value}     51

## Test Case 05 : Multiplication of two integers ##
${TC_05_Left_Value}     51
${TC_05_Right_Value}     41

## Test Case 06 : Multiplication of floating numbers ##
${TC_06_Left_Value}     51.12
${TC_06_Right_Value}     41.45

## Test Case 07 : Multiplication of floating and integer ##
${TC_07_Left_Value}     51
${TC_07_Right_Value}     41.45

## Test Case 08 : Division of two numbers resulting in interger value ##
${TC_08_Left_Value}     50
${TC_08_Right_Value}     10

## Test Case 09 : Division of two numbers resulting in floating value ##
${TC_09_Left_Value}     50
${TC_09_Right_Value}     11

## Test Case 10 : Division of two floating numbers ##
${TC_10_Left_Value}     50.12
${TC_10_Right_Value}     41.21

