#!/usr/bin/bash

cat analyze_discharge_20220718.2.txt \
    | awk \
    '{ if (\
    ($2 >=    7000) \
    && ($2 < 14400) \
    && ($3 >= 0) \
    && ($3 <= 5) \
) { \
    if ($4 == "0x8F") \
{ printf( ($1 - 1658177592) "," $2 "," $0"\n");} \
}}' 
