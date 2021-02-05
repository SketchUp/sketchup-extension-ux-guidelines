toolbar = UI::Toolbar.new "Cube Drawer"
command = UI::Command.new("Draw Cube") do
  msg =
    "Trial license for Cube Maker Pro 2000 has expired.\n\n"\
    "Do you want to visit our website to acquire a license?"
  UI.messagebox(msg, MB_YESNO)
end
command.large_icon = command.small_icon = "#{__dir__}/cube_icon.svg"
command.tooltip = "Draw Cube"
command.menu_text = "Draw Cube"
command.status_bar_text = "Draw cubes from points."
command.set_validation_proc { MF_CHECKED }
toolbar = toolbar.add_item(command)
toolbar.show