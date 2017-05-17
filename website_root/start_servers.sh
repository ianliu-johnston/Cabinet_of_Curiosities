#!/bin/bash
BASE_FP="/home/$(whoami)/website_root/static"
$BASE_FP/basic_server.js >> $BASE_FP/err_log.$(date +%F) 2>&1 &
