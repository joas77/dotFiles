#!/usr/bin/env bash

# grep function declaration
function grepFunc()
{
    grep -rinw -E "\w+ $1 *"
}

# grep variable assignment
function grepVarA()
{
    grep -rinE "$1\s*=" * 
}

function grepPublic()
{
    path=$1
    grep -rnE "public\s*\w{2}+" $path
}
