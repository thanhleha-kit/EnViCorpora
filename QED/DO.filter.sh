#!/bin/bash

awk 'FILENAME=="excluded.test.en" { arr[$0]++} FILENAME=="QED.en-vi.en" {if(!(FNR in arr)) {print $0}}' excluded.test.en QED.en-vi.en > QED.filtered.test.en
awk 'FILENAME=="excluded.test.en" { arr[$0]++} FILENAME=="QED.en-vi.vi" {if(!(FNR in arr)) {print $0}}' excluded.test.en QED.en-vi.vi > QED.filtered.test.vi

awk 'FILENAME=="excluded.dev.en" { arr[$0]++} FILENAME=="QED.en-vi.en" {if(!(FNR in arr)) {print $0}}' excluded.dev.en QED.en-vi.en > QED.filtered.dev.en
awk 'FILENAME=="excluded.dev.en" { arr[$0]++} FILENAME=="QED.en-vi.vi" {if(!(FNR in arr)) {print $0}}' excluded.dev.en QED.en-vi.vi > QED.filtered.dev.vi

cat excluded.dev.en excluded.test.en > excluded.en

awk 'FILENAME=="excluded.en" { arr[$0]++} FILENAME=="QED.en-vi.en" {if(!(FNR in arr)) {print $0}}' excluded.en QED.en-vi.en > QED.filtered.devtest.en
awk 'FILENAME=="excluded.en" { arr[$0]++} FILENAME=="QED.en-vi.vi" {if(!(FNR in arr)) {print $0}}' excluded.en QED.en-vi.vi > QED.filtered.devtest.vi
