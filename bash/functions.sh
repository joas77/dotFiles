#!/usr/bin/env bash

function grepFunc()
{
    grep -rnw -E "\w+ $1 *"
}
