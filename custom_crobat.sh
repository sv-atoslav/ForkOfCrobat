# Author: Sviatoslav Sudilovskiy ( https://github.com/sv-atoslav )
# license: free for not uncommerce

now=$(date +"%T")
echo "\"start scan of $1 at $now\"" >> crobat_log.json
echo "\"subdomains:\"" >> crobat_log.json
http https://sonar.omnisint.io/subdomains/$1 >> crobat_log.json
echo "\"tlds:\"" >> crobat_log.json
http https://sonar.omnisint.io/tlds/$1 >> crobat_log.json
echo "\"all:\"" >> crobat_log.json
http https://sonar.omnisint.io/all/$1 >> crobat_log.json
echo "\"end scan of $1 at $now\"" >> crobat_log.json