local o = vim.o

o.number = true
o.relativenumber = true
o.laststatus = 0
o.langmap = 'nh,ej,ok,il,ju,ko,ui,he,ln,NH,EJ,OK,IL,JU,KO,UI,HE,LN'
o.clipboard = 'unnamedplus'
o.ts = 2
o.sw = 2
o.expandtab = true

if vim.g.neovide then
    o.guifont = "Source Code Pro:h11"
end
