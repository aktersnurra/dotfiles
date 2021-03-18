autocmd! User GoyoEnter Limelight lua require('galaxyline').disable_galaxyline()
autocmd! User GoyoLeave Limelight! lua require('galaxyline').galaxyline_augroup()
