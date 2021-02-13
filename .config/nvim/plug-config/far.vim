let g:far#source='rgnvim'

set lazyredraw            " improve scrolling performance when navigating through large results

let g:far#window_width=50
" Use %:p with buffer option only
let g:far#file_mask_favorites=['%:p', '**/*.*', '**/*.js', '**/*.py', '**/*.java', '**/*.css', '**/*.html', '**/*.vim', '**/*.cpp', '**/*.c', '**/*.h', ]
let g:far#window_min_content_width=30
let g:far#enable_undo=1
