#!/bin/bash

# Search using rg and fzf with preview
out=$(rg . --line-number --column --no-heading --glob '!.git' | \
      fzf +i --exact --delimiter : --preview 'bat --theme=Dracula --color=always --highlight-line {2} {1} ' --preview-window 'right,~4,+{2}+4/2')

# Remove cruft leaving something like: 'file:line:column'
ref=$(echo $out | sed -E 's/([a-zA-Z0-9/-_]*):[0-9]*:[0-9]*:.*/\1/')
ref=$(echo $ref | sed -E 's/.*\/([^\/]+\/[^\/]+)$/\1/')
echo $ref | tr -d '\n' | pbcopy

