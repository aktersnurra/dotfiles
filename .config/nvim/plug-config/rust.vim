if has('macunix')
  let g:rust_clip_command = 'pbcopy'
else
  let g:rust_clip_command = 'xclip -selection clipboard'
endif
