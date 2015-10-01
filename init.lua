if not CURSES then 
  ui.set_theme('base16-chalk-dark', {font ='Source Code Pro Semibold', fontsize = 11}) 
end

buffer.edge_column = 120
buffer.edge_mode = buffer.EDGE_LINE

-- Adds rust support
textadept.file_types.extensions.rs = 'rust'

-- Use Groovy lexer for gradle files
textadept.file_types.extensions.gradle = 'groovy'

-- Use HTML lexer for GSP files
textadept.file_types.extensions.gsp = 'html'

textadept.file_types.extensions.feature = 'gherkin'

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
  'out$',
  'gradle$'
}

for i = 1, #folders_to_ignore do
  table.insert(lfs.FILTER.folders, folders_to_ignore[i])
end
