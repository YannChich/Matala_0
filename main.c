#include <stdio.h>
#include "NumClass.h"

 
int main(){
    int n = 0;
    int n1 = 0;
    scanf("%d",&n);
    scanf("%d",&n1);
    printf("The Armstrong numbers are:");
    for (int i = n; i <=n1; i++)
    {
        if(isArmstrong(i)){
            printf(" %d",i);
        }
    }
    putchar('\n');
    printf("The Palindromes are:");
    for (int i = n; i <=n1; i++)
    {
        
        if(isPalindrom(i)){
            printf(" %d",i);
        }
    }
    putchar('\n');
    printf("The Prime numbers are:");
    for (int i = n; i <=n1; i++)
    {   
        if(isPrime(i)){
            printf(" %d",i);
        }
    }
    putchar('\n');
    printf("The Strong numbers are:");
    for (int i = n; i <=n1; i++)
    {
        if(isStrong(i)){
            printf(" %d",i);
        }
    }
    putchar('\n');
    
    

}
