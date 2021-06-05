#include <stdio.h>
void print_lib1_features(const char * const app)
{
	printf("app=%s lib=lib1 Hello World!\n", app);
#ifdef FEATURE_1
        printf("app=%s lib=lib1 Feature 1\n", app);

#ifdef FEATURE_1_1
                printf("app=%s lib=lib1 Feature 1.1\n", app);
#endif /* FEATURE_1_1 */

#ifdef FEATURE_1_2
                printf("app=%s lib=lib1 Feature 1.2\n", app);
#endif /* FEATURE_1_2 */

#endif /* FEATURE_1 */


#ifdef FEATURE_2
                printf("app=%s lib=lib1 Feature 2\n", app);

#ifdef FEATURE_2_1
                printf("app=%s lib=lib1 Feature 2.1\n", app);
#endif /* FEATURE_2_1 */

#endif /* FEATURE_2 */

}
