﻿package 
{
    import Enums.*;
    import GUI.Components.*;
    import GUI.Loca.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _GUI_Components_MinimalInfoPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _GUI_Components_MinimalInfoPanelWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[1] = new FunctionReturnWatcher("GetInstance", target, function () : Array
            {
                return [];
            }// end function
            , null, [bindings[1]], null);
            watchers[2] = new FunctionReturnWatcher("GetText", target, function () : Array
            {
                return [LOCA_GROUP.LABELS, "KnockDown"];
            }// end function
            , {languageChanged:true}, [bindings[1]], null);
            watchers[1].updateParent(cLocaManager);
            watchers[2].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[2]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MinimalInfoPanel.watcherSetupUtil = new _GUI_Components_MinimalInfoPanelWatcherSetupUtil;
            return;
        }// end function

    }
}
