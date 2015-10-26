if not CURSES then 
  ui.set_theme('base16-atelierdune-dark', {font ='Source Code Pro Semibold', fontsize = 11}) 
end

buffer.edge_column = 120
buffer.edge_mode = buffer.EDGE_LINE

-- Lexer associations
textadept.file_types.extensions.rs = 'rust'
textadept.file_types.extensions.gradle = 'groovy'
textadept.file_types.extensions.gsp = 'html'

local folders_to_ignore = {
  '%.gradle$',
  'node_modules$',
  'bower_components$',
  'target$',
  'build$',
  'dist$',
  '%.idea$',
  '%.jruby%-container$',
  '%.sass%-cache$',
  '%.sass%-work$',
  'out$',
  'gradle$'
}

for i = 1, #folders_to_ignore do
  table.insert(lfs.FILTER.folders, folders_to_ignore[i])
end

io.SNAPOPEN_MAX = 5000

local textredux = require('textredux')
textredux.hijack()

keys[not OSX and 'cu' or 'mu'] = function()
  textredux.fs.snapopen(_USERHOME)
end
