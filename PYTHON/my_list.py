#!/usr/bin/python3

my_list = []
my_list.append(10)
my_list.append(20)
my_list.append(30)
my_list.append(40)
my_list[1] = 15
# extend the list
my_list.extend([50, 60, 70])
# remove the last element
del (my_list[-1])
# sort in ascending order
my_list.sort()
# find and print the index of 30
print(my_list.index(30))
