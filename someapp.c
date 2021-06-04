#include <stdio.h>
int main()
{
        printf("Hello World!\n");
#ifdef FEATURE_A
        printf("Feature A\n");
#endif

#ifdef FEATURE_B
                printf("Feature B\n");
#endif

#ifdef FEATURE_C
                printf("Feature C\n");
#endif

#ifdef FEATURE_D
                printf("Feature D\n");
#endif

#ifdef FEATURE_E
                printf("Feature E\n");
#endif
}
