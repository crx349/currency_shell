#! /bin/bash
# author:Crx349
# url:www.xmspace.net
mkdir utf8
find $1 -type d -exec mkdir utf8/{} \; 
find $1 -type f -name '*.php' -exec iconv -f GBK -t UTF-8 {} -o utf8/{} \; 
find $1 -type f -name '*.htm' -exec iconv -f GBK -t UTF-8 {} -o utf8/{} \; 
find $1 -type f -name '*.html' -exec iconv -f GBK -t UTF-8 {} -o utf8/{} \; 
find $1 -type f -name '*.css' -exec iconv -f GBK -t UTF-8 {} -o utf8/{} \; 
