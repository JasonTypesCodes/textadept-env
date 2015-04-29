if not CURSES then ui.set_theme('base16-brewer-dark', {font ='Source Code Pro Semibold', fontsize = 11}) end

require('textadept_swm')

-- Adds rust support
textadept.file_types.extensions.rs = 'rust'
