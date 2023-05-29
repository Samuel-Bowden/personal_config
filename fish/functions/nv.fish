function nv --wraps='WINIT_UNIX_BACKEND=x11 neovide' --description 'alias nv=WINIT_UNIX_BACKEND=x11 neovide'
    WINIT_UNIX_BACKEND=x11 neovide $argv
end
