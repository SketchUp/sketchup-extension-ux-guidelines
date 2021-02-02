# This file contains snippets for generating menus for the SketchUp Extension UX Guidelines.
# The snippets are trivial, but may be good to keep if we want to generate the imagery at a different resolution
# or on a different system or after SketchUp's own entries are moved.

# Stop installed extensions from loading to avoid clutter in menus.
Sketchup.plugins_disabled = true

# Restore extension loading when done.
Sketchup.plugins_disabled = false



# Use of Separators

# Never add separators to the extension menus
# Bad
menu = UI.menu("Plugins")
menu.add_item("My Extension") { }
menu.add_item("Some Other Extension") { }
menu.add_separator
menu.add_item("Bad Extension") { }
menu.add_item("Yet Another Extension") { }
# Good
menu = UI.menu("Plugins")
menu.add_item("My Extension") { }
menu.add_item("Some Other Extension") { }
menu.add_item("Good Extension") { }
menu.add_item("Yet Another Extension") { }

# Always add separator before entry in other menus
# Bad
menu = UI.menu("Windows")
menu.add_item("Bad Extension") { }
# Good
menu = UI.menu("Windows")
menu.add_separator
menu.add_item("Good Extension") { }

# Never add a separator after your extension
# Bad 1
menu = UI.menu("Windows")
menu.add_separator
menu.add_item("Bad Extension") { }
menu.add_separator
# Bad 2
menu = UI.menu("Windows")
menu.add_separator
menu.add_item("Bad Extension") { }
menu.add_separator
menu.add_separator
menu.add_item("Other Extension") { }
# Good
menu = UI.menu("Windows")
menu.add_separator
menu.add_item("Good Extension") { }
menu.add_separator
menu.add_item("Other Extension") { }


