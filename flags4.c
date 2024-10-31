/******************************************************************************
                        Flags example - 

*******************************************************************************/

#include <stdio.h>
#include <limits.h>

int main()
{ unsigned long a, b , c ;
           long x, y, r;

    a = ULONG_MAX;
    b = a + 1;
    // Carry flag will be set (unsigned numbers) (set to 1 if there is Carry out of binary operation, set to 0 otherwise)
    
    
    b = a;
    c = a - b;
   // Zero flag will be set     (set to 1 if result of the operation = 0 - set to 0 otherwise)
   
    
   
    x=  LONG_MAX;
    y =  100;
    r = y - x;
   // sign flag will be set      (set to 1 if result of the operation < 0 -set to 0 otherwise)
   
   
    x= LONG_MAX;
    y = LONG_MAX;
    r = x + y;
               // Negative overflow  (signed numbers)
               
    x= -LONG_MAX;
    y = -LONG_MAX;
    r = x + y;
               // positive overflow   (signed numbers)
    
    return 0;
}

