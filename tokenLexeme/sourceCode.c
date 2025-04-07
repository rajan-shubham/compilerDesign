int main(){
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
  
    if(n > 0){
      printf("Positive\n");
    } else if(n < 0){
      printf("Negative\n");
    } else {
      printf("Zero\n");
    }
    return 0;
    // This is a simple program that checks if a number is positive, negative, or zero.
  }