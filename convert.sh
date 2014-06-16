cp title.html index.html
find */*.html -exec sh -c "iconv -f CP932 -t UTF-8 {} |sed 's/charset=Shift_JIS/charset=UTF-8/' > {}.utf8" \;
find *.html -exec sh -c "iconv -f CP932 -t UTF-8 {} |sed 's/charset=Shift_JIS/charset=UTF-8/' > {}.utf8" \;
rm -r */*.html
rm -r *.html
rename 's/.utf8//' *
rename 's/.utf8//' */*
