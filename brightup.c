#include <stdlib.h>
#include <stdio.h>

int main() {
	int cur, max = 852;
	FILE *fp;

	fp = fopen ("/sys/class/backlight/intel_backlight/brightness", "w+");
	fscanf (fp, "%d", &cur);

	cur += 43;
	if (cur > max)
		cur = max;

	printf ("%d\n", cur * 100 / max);
	fprintf (fp, "%d", cur);

	fclose (fp);
	return 0;
}
