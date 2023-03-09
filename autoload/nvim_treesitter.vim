function! nvim_treesitter#statusline(...) abort
  return luaeval("require'nvim-treesitter.statusline'.statusline(_A)", get(a:, 1, {}))
endfunction

function! nvim_treesitter#foldexpr() abort
	return luaeval(printf('require"nvim-treesitter.fold".get_fold_indic(%d)', v:lnum))
endfunction

function! nvim_treesitter#installable_parsers(arglead, cmdline, cursorpos) abort
  return join(luaeval("require'nvim-treesitter.parsers'.available_parsers()") + ['all'], "\n")
endfunction

function! nvim_treesitter#installed_parsers(arglead, cmdline, cursorpos) abort
  return join(luaeval("require'nvim-treesitter.info'.installed_parsers()") + ['all'], "\n")
endfunction

function! nvim_treesitter#available_modules(arglead, cmdline, cursorpos) abort
  return join(luaeval("require'nvim-treesitter.configs'.available_modules()"), "\n")
endfunction

function! nvim_treesitter#available_query_groups(arglead, cmdline, cursorpos) abort
  return join(luaeval("require'nvim-treesitter.query'.available_query_groups()"), "\n")
endfunction

" Add missing file
function! nvim_treesitter#get_parser_configs(arglead, cmdline, cursorpos) abort
  return join(luaeval("require'nvim-treesitter.configs'.get_parser_configs()"), "\n")
endfunctionindent".get_indent(%d)', v:lnum))
endfunction
