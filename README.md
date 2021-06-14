# Bubble-Sort-with-Assembly-intel

bubble sort with assembly x86 
converted from this c++ code:
----------------------------------------
int[] arr= {5,8,7,4,1,9}
int n =6;
for (i = 0; i < n-1; i++)
{   
       for (j = 0; j < n-i-1; j++)
       {
         if (arr[j] > arr[j+1])
         {
            int x=arr[j];
            arr[j] = arra[j+1];
              arr[j+1] = x;
      } } }
 

For (int i=0; I < n ;i++)
{
Cout << “  ”+arr[i]+ “  ” ;
}
