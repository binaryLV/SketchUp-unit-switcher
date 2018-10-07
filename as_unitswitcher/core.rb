# %APPDATA%\SketchUp\SketchUp 2017\SketchUp\Plugins\unit_switcher.rb

# Available length units:
# Length::Inches
# Length::Feet
# Length::Millimeter
# Length::Centimeter
# Length::Meter

# http://ruby.sketchup.com/Sketchup/AppObserver.html
class MyAppObserver < Sketchup::AppObserver
  def onNewModel(model)
    AddModelObservers(model)
  end
  
  def onOpenModel(model)
    AddModelObservers(model)
  end
end

# http://ruby.sketchup.com/Sketchup/SelectionObserver.html
class MySelectionObserver < Sketchup::SelectionObserver
  def onSelectionBulkChange(selection)
    if selection.length > 0 && (selection.first.typename == "Face" || selection.first.typename == "Group" || selection.first.typename == "ComponentInstance")
      selection.model.options["UnitsOptions"]["LengthUnit"] = Length::Meter
      selection.model.options["UnitsOptions"]["LengthPrecision"] = 3
    end
  end

  def onSelectionCleared(selection)
    if selection.model.options["UnitsOptions"]["LengthUnit"] != Length::Millimeter
      selection.model.options["UnitsOptions"]["LengthUnit"] = Length::Millimeter
      selection.model.options["UnitsOptions"]["LengthPrecision"] = 2
    end
  end
end

# http://ruby.sketchup.com/Sketchup/ToolsObserver.html
class MyToolsObserver < Sketchup::ToolsObserver
  def onActiveToolChanged(tools, tool_name, tool_id)
    if tool_id != 21022 # = SelectionTool
      Sketchup.active_model.options["UnitsOptions"]["LengthUnit"] = Length::Millimeter
      Sketchup.active_model.options["UnitsOptions"]["LengthPrecision"] = 2
    end
  end
end

def AddModelObservers(model)
  model.selection.add_observer(MySelectionObserver.new)
  model.tools.add_observer(MyToolsObserver.new)
end

Sketchup.add_observer(MyAppObserver.new)
AddModelObservers(Sketchup.active_model)
