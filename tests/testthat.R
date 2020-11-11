
os = switch(Sys.info()[['sysname']],
            Windows= 'windows',
            Linux  = 'linux',
            Darwin = 'mac')

options(reticulate.useImportHook = FALSE)
library(testthat)
library(fastai)
library(reticulate)
library(magrittr)
library(data.table)

test_check("fastai")

