require "sketchup.rb"
require "extensions.rb"

module AndrejsSitals
  module UnitSwitcher
    ex = SketchupExtension.new("Unit Switcher", "as_unitswitcher/core.rb")
    ex.description = "Unit Switcher"
    ex.version = "0.0.1"
    ex.creator = "Andrejs Šitals"
    ex.copyright = "Andrejs Šitals © 2018"
    Sketchup.register_extension(ex, true)
  end
end
