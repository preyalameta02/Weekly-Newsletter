#!/bin/bash

curl https://www.wattpad.com/954826546-my-perfect-female-boss-chapter-1-she-ruined-my | html2text | sed -n '/YOU ARE READING/,$p' | sed -n '/Continue_to_next_part/q;p' | tail -n+2 > output.txt

mail -s "Web scraping test" "preyal10313@gmail.com,btech10313.20@bitmesra.ac.in" < output.txt
