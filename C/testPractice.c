#define SWAP(v1,v2) { int temp=v1; v1=v2; v2=temp; }

int main(int argc, char *argv[])
{
    int a = 5;
    int b = 6;

    printf("a: %d; b: %d\n", a, b);
    SWAP(a,b);
    printf("a: %d; b: %d\n", a, b);

    int temp=10;

    printf("a: %d; temp: %d\n", a, temp);

    //free variables a and temp
    SWAP(a,temp);
    printf("a: %d; temp: %d\n", a, temp);


    return 0;
}
