#challenge:  make a numeber pyramid where 1 = 1, 2 = 22, 3 = 333 1-> 5

#loop from 1 to 5
#turn int into string
#print 2 by 2 times
#print 3 by 3 times

#outer loop shows the number of rows used
#inner loop shows the column used to print the pattern

for num in range(10):
    for i in range(num):
        print (num, end=" ") #print number
    # new line after each row to display pattern correctly
    print("\n")
