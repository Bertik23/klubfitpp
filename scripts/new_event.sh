#!/bin/bash

printf "Post name:"
read -r name
printf "Post slug:"
read -r slug

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
cd _posts

cat <<< "---
layout: post
image: https://picsum.photos/300/200
title: $name
slug: $slug
date: $(date -u "+%Y-%m-%d %H:%M:%S %z")
---" > "$(date +%Y-%m-%d)-$slug.md"
