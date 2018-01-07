#!/bin/sh
# generate 2x3 square mazes 
# Peng Shulin <trees_peng@163.com> 2018
# 
mazegen -t 1 -m 0 -o 1
mazegen -t 1 -m 0 -o 2
mazegen -t 1 -m 0 -o 3
mazegen -t 1 -m 0 -o 4
mazegen -t 1 -m 0 -o 5
mazegen -t 1 -m 0 -o 6

convert +append 1.png 2.png a.png
convert +append 3.png 4.png b.png
convert +append 5.png 6.png c.png
convert -append a.png b.png c.png out.pdf

rm *.plt *.png

