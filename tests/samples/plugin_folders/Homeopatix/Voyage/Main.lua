------------------------------------------------------------------------------------------
-- Main file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Import librarys --
------------------------------------------------------------------------------------------
import "Homeopatix.Voyage.Librarys"; 

------------------------------------------------------------------------------------------
-- create the localization texte
------------------------------------------------------------------------------------------
CreateLocalizationInfo();
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------
GenerateWindow();
------------------------------------------------------------------------------------------
-- create the options window
------------------------------------------------------------------------------------------
GenerateOptionsWindow();
------------------------------------------------------------------------------------------
-- create the help window
------------------------------------------------------------------------------------------
GenerateHelpWindow();
------------------------------------------------------------------------------------------
-- create the option window for house
------------------------------------------------------------------------------------------
GenerateOptionsWindowHousing("");

GenerateOptionsWindowTeleport("", "");

GenerateOptionsWindowRegion("");

------------------------------------------------------------------------------------------
-- create the map window
------------------------------------------------------------------------------------------
CreateMapWindow("", 0);
------------------------------------------------------------------------------------------
-- handle minimizeIcon
------------------------------------------------------------------------------------------
CreateAndHandleMinimizeIcon();
------------------------------------------------------------------------------------------
-- event handling for escape key
------------------------------------------------------------------------------------------
EscapeKeyPressed();
------------------------------------------------------------------------------------------
-- if the position changes, save the new window location
------------------------------------------------------------------------------------------
WindowPositionChanged();
------------------------------------------------------------------------------------------
-- if the position changes, save the new option window location
------------------------------------------------------------------------------------------
OptionsWindowPositionChanged();