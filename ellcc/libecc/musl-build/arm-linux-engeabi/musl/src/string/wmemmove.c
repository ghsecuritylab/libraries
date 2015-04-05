#include <wchar.h>

wchar_t *wmemmove(wchar_t *d, const wchar_t *s, size_t n)
{
	wchar_t *d0 = d;
	if ((size_t)(d-s) < n)
		while (n--) d[n] = s[n];
	else {
                wchar_t *dest = d;
		while (n--) *dest++ = *s++;
        }
	return d0;
}
