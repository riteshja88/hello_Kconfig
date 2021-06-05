# hello_Kconfig

##Lib1
```
#include <stdio.h>
void print_lib1_features(const char * const app)
{
	printf("app=%s lib=lib1 Hello World!\n", app);
#ifdef FEATURE_1
        printf("app=%s lib=lib1 Feature 1\n", app);
#endif

#ifdef FEATURE_1_1
                printf("app=%s lib=lib1 Feature 1.1\n", app);
#endif

#ifdef FEATURE_1_2
                printf("app=%s lib=lib1 Feature 1.2\n", app);
#endif

#ifdef FEATURE_2
                printf("app=%s lib=lib1 Feature 2\n", app);
#endif

#ifdef FEATURE_2_1
                printf("app=%s lib=lib1 Feature 2.1\n", app);
#endif
}
```


##App1
```
Hello World!! from App1
app=App1 lib=lib1 Hello World!
app=App1 lib=lib1 Feature 1
app=App1 lib=lib1 Feature 1.1
app=App1 lib=lib1 Feature 2
app=App1 lib=lib1 Feature 2.1
```

##App2
```
Hello World!! from App2
app=App2 lib=lib1 Hello World!
app=App2 lib=lib1 Feature 1
app=App2 lib=lib1 Feature 1.2
app=App2 lib=lib1 Feature 2
```
