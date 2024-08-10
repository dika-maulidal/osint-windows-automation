@echo off
cd D:\open-source intelligence\main tools\spiderfoot\spiderfoot
start python sf.py -l 127.0.0.1:5001
cd c:\Program Files\Mozilla Firefox
timeout 3
start firefox http://127.0.0.1:5001