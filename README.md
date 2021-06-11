# hello_Kconfig

## Lib1
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


## App1
```
#cc -DFEATURE_1 -DFEATURE_1_1 -DFEATURE_2 -DFEATURE_2_1 -c src/somelib.c -o obj/somelib.o
Hello World!! from App1
app=App1 lib=lib1 Hello World!
app=App1 lib=lib1 Feature 1
app=App1 lib=lib1 Feature 1.1
app=App1 lib=lib1 Feature 2
app=App1 lib=lib1 Feature 2.1
```

## App2
```
#cc -DFEATURE_1 -DFEATURE_1_2 -DFEATURE_2 -c src/somelib.c -o obj/somelib.o
Hello World!! from App2
app=App2 lib=lib1 Hello World!
app=App2 lib=lib1 Feature 1
app=App2 lib=lib1 Feature 1.2
app=App2 lib=lib1 Feature 2
```

## Lib1
```
cd lib1 && make menuconfig
```
<img width="946" alt="image" src="https://user-images.githubusercontent.com/2250378/121670605-3fa6cd00-cacb-11eb-938c-4577c655c0fa.png">

```

<img width="943" alt="image" src="https://user-images.githubusercontent.com/2250378/121670847-84caff00-cacb-11eb-9520-b7b186e0126c.png">
