#!/bin/sh
curl -sS http://kom.aau.dk/project/SmartGridControl/DiSC/data/HouseDataCSV.zip > data/HouseDataCSV.zip
curl -sS http://kom.aau.dk/project/SmartGridControl/DiSC/data/industry_agricultur_commercial.zip > data/industry_agricultur_commercial.zip
curl -sS http://kom.aau.dk/project/SmartGridControl/DiSC/data/supermarket.zip > data/supermarket.zip
cd data
unzip -q HouseDataCSV.zip
unzip -q industry_agricultur_commercial.zip -d industry_agricultur_commercial
unzip -q supermarket.zip
rm *.zip

