Reshape column variables to columns for Excel plotting
======================================================

This R code snippet allows you to reshape a table so you can plot it immediately in MS Excel. It reshapes the data from rows to columns like this:

| date | category| value |
|------|---|---|
| 1.1. | a | 1 |
| 2.1. | a | 2 |
| 1.1. | b | 3 |


to this:

| date | a | b |
|------|---|---|
| 1.1. | 1 | 3 |
| 2.1. | 2 | - |


In order to make it run smoothly, just follow the short guide below.

1. The following packages have to be installed using the `install.packages()` command in your R console:  
- readxl
- tidyverse
- reshape2
