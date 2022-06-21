require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmCodigo2()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmCodigo2");
    obj:setHeight(0);
    obj:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'shabilidades1_6', 'shabilidades1_5', 'shabilidades1_4', 'shabilidades1_3', 'shabilidades1_2', 'shabilidades1_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'shabilidades2_6', 'shabilidades2_5', 'shabilidades2_4', 'shabilidades2_3', 'shabilidades2_2', 'shabilidades2_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'shabilidades3_6', 'shabilidades3_5', 'shabilidades3_4', 'shabilidades3_3', 'shabilidades3_2', 'shabilidades3_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'shabilidades4_6', 'shabilidades4_5', 'shabilidades4_4', 'shabilidades4_3', 'shabilidades4_2', 'shabilidades4_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'shabilidades5_6', 'shabilidades5_5', 'shabilidades5_4', 'shabilidades5_3', 'shabilidades5_2', 'shabilidades5_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'shabilidades6_6', 'shabilidades6_5', 'shabilidades6_4', 'shabilidades6_3', 'shabilidades6_2', 'shabilidades6_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'shabilidades7_6', 'shabilidades7_5', 'shabilidades7_4', 'shabilidades7_3', 'shabilidades7_2', 'shabilidades7_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'shabilidades8_6', 'shabilidades8_5', 'shabilidades8_4', 'shabilidades8_3', 'shabilidades8_2', 'shabilidades8_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'shabilidades1_h6', 'shabilidades1_h5', 'shabilidades1_h4', 'shabilidades1_h3', 'shabilidades1_h2', 'shabilidades1_h1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'shabilidades2_h6', 'shabilidades2_h5', 'shabilidades2_h4', 'shabilidades2_h3', 'shabilidades2_h2', 'shabilidades2_h1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'shabilidades3_h6', 'shabilidades3_h5', 'shabilidades3_h4', 'shabilidades3_h3', 'shabilidades3_h2', 'shabilidades3_h1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'shabilidades4_h6', 'shabilidades4_h5', 'shabilidades4_h4', 'shabilidades4_h3', 'shabilidades4_h2', 'shabilidades4_h1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'shabilidades5_h6', 'shabilidades5_h5', 'shabilidades5_h4', 'shabilidades5_h3', 'shabilidades5_h2', 'shabilidades5_h1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'shabilidades6_h6', 'shabilidades6_h5', 'shabilidades6_h4', 'shabilidades6_h3', 'shabilidades6_h2', 'shabilidades6_h1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'shabilidades7_h6', 'shabilidades7_h5', 'shabilidades7_h4', 'shabilidades7_h3', 'shabilidades7_h2', 'shabilidades7_h1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'shabilidades8_h6', 'shabilidades8_h5', 'shabilidades8_h4', 'shabilidades8_h3', 'shabilidades8_h2', 'shabilidades8_h1'});
    obj.dataLink16:setName("dataLink16");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades1_6 == true then
            		sheet.shabilidades1_5 = true;
            		sheet.shabilidades1_4 = true;
            		sheet.shabilidades1_3 = true;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_5 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_4 = true;
            		sheet.shabilidades1_3 = true;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_4 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_3 = true;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_3 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_2 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_3 = false;
            		sheet.shabilidades1_1 = true;	
            	elseif sheet.shabilidades1_1 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_3 = false;
            		sheet.shabilidades1_2 = false;
            	elseif sheet.shabilidades1_1 == false then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_3 = false;
            		sheet.shabilidades1_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades2_6 == true then
            		sheet.shabilidades2_5 = true;
            		sheet.shabilidades2_4 = true;
            		sheet.shabilidades2_3 = true;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_5 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_4 = true;
            		sheet.shabilidades2_3 = true;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_4 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_3 = true;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_3 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_2 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_3 = false;
            		sheet.shabilidades2_1 = true;	
            	elseif sheet.shabilidades2_1 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_3 = false;
            		sheet.shabilidades2_2 = false;
            	elseif sheet.shabilidades2_1 == false then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_3 = false;
            		sheet.shabilidades2_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades3_6 == true then
            		sheet.shabilidades3_5 = true;
            		sheet.shabilidades3_4 = true;
            		sheet.shabilidades3_3 = true;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_5 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_4 = true;
            		sheet.shabilidades3_3 = true;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_4 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_3 = true;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_3 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_2 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_3 = false;
            		sheet.shabilidades3_1 = true;	
            	elseif sheet.shabilidades3_1 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_3 = false;
            		sheet.shabilidades3_2 = false;
            	elseif sheet.shabilidades3_1 == false then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_3 = false;
            		sheet.shabilidades3_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades4_6 == true then
            		sheet.shabilidades4_5 = true;
            		sheet.shabilidades4_4 = true;
            		sheet.shabilidades4_3 = true;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_5 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_4 = true;
            		sheet.shabilidades4_3 = true;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_4 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_3 = true;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_3 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_2 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_3 = false;
            		sheet.shabilidades4_1 = true;	
            	elseif sheet.shabilidades4_1 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_3 = false;
            		sheet.shabilidades4_2 = false;
            	elseif sheet.shabilidades4_1 == false then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_3 = false;
            		sheet.shabilidades4_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades5_6 == true then
            		sheet.shabilidades5_5 = true;
            		sheet.shabilidades5_4 = true;
            		sheet.shabilidades5_3 = true;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_5 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_4 = true;
            		sheet.shabilidades5_3 = true;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_4 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_3 = true;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_3 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_2 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_3 = false;
            		sheet.shabilidades5_1 = true;	
            	elseif sheet.shabilidades5_1 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_3 = false;
            		sheet.shabilidades5_2 = false;
            	elseif sheet.shabilidades5_1 == false then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_3 = false;
            		sheet.shabilidades5_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades6_6 == true then
            		sheet.shabilidades6_5 = true;
            		sheet.shabilidades6_4 = true;
            		sheet.shabilidades6_3 = true;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_5 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_4 = true;
            		sheet.shabilidades6_3 = true;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_4 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_3 = true;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_3 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_2 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_3 = false;
            		sheet.shabilidades6_1 = true;	
            	elseif sheet.shabilidades6_1 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_3 = false;
            		sheet.shabilidades6_2 = false;
            	elseif sheet.shabilidades6_1 == false then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_3 = false;
            		sheet.shabilidades6_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades7_6 == true then
            		sheet.shabilidades7_5 = true;
            		sheet.shabilidades7_4 = true;
            		sheet.shabilidades7_3 = true;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_5 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_4 = true;
            		sheet.shabilidades7_3 = true;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_4 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_3 = true;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_3 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_2 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_3 = false;
            		sheet.shabilidades7_1 = true;	
            	elseif sheet.shabilidades7_1 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_3 = false;
            		sheet.shabilidades7_2 = false;
            	elseif sheet.shabilidades7_1 == false then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_3 = false;
            		sheet.shabilidades7_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades8_6 == true then
            		sheet.shabilidades8_5 = true;
            		sheet.shabilidades8_4 = true;
            		sheet.shabilidades8_3 = true;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_5 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_4 = true;
            		sheet.shabilidades8_3 = true;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_4 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_3 = true;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_3 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_2 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_3 = false;
            		sheet.shabilidades8_1 = true;	
            	elseif sheet.shabilidades8_1 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_3 = false;
            		sheet.shabilidades8_2 = false;
            	elseif sheet.shabilidades8_1 == false then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_3 = false;
            		sheet.shabilidades8_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades1_h6 == true then
            		sheet.shabilidades1_h5 = true;
            		sheet.shabilidades1_h4 = true;
            		sheet.shabilidades1_h3 = true;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h5 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h4 = true;
            		sheet.shabilidades1_h3 = true;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h4 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h3 = true;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h3 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h2 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h3 = false;
            		sheet.shabilidades1_h1 = true;	
            	elseif sheet.shabilidades1_h1 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h3 = false;
            		sheet.shabilidades1_h2 = false;
            	elseif sheet.shabilidades1_h1 == false then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h3 = false;
            		sheet.shabilidades1_h2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades2_h6 == true then
            		sheet.shabilidades2_h5 = true;
            		sheet.shabilidades2_h4 = true;
            		sheet.shabilidades2_h3 = true;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h5 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h4 = true;
            		sheet.shabilidades2_h3 = true;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h4 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h3 = true;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h3 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h2 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h3 = false;
            		sheet.shabilidades2_h1 = true;	
            	elseif sheet.shabilidades2_h1 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h3 = false;
            		sheet.shabilidades2_h2 = false;
            	elseif sheet.shabilidades2_h1 == false then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h3 = false;
            		sheet.shabilidades2_h2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades3_h6 == true then
            		sheet.shabilidades3_h5 = true;
            		sheet.shabilidades3_h4 = true;
            		sheet.shabilidades3_h3 = true;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h5 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h4 = true;
            		sheet.shabilidades3_h3 = true;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h4 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h3 = true;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h3 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h2 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h3 = false;
            		sheet.shabilidades3_h1 = true;	
            	elseif sheet.shabilidades3_h1 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h3 = false;
            		sheet.shabilidades3_h2 = false;
            	elseif sheet.shabilidades3_h1 == false then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h3 = false;
            		sheet.shabilidades3_h2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades4_h6 == true then
            		sheet.shabilidades4_h5 = true;
            		sheet.shabilidades4_h4 = true;
            		sheet.shabilidades4_h3 = true;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h5 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h4 = true;
            		sheet.shabilidades4_h3 = true;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h4 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h3 = true;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h3 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h2 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h3 = false;
            		sheet.shabilidades4_h1 = true;	
            	elseif sheet.shabilidades4_h1 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h3 = false;
            		sheet.shabilidades4_h2 = false;
            	elseif sheet.shabilidades4_h1 == false then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h3 = false;
            		sheet.shabilidades4_h2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades5_h6 == true then
            		sheet.shabilidades5_h5 = true;
            		sheet.shabilidades5_h4 = true;
            		sheet.shabilidades5_h3 = true;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h5 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h4 = true;
            		sheet.shabilidades5_h3 = true;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h4 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h3 = true;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h3 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h2 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h3 = false;
            		sheet.shabilidades5_h1 = true;	
            	elseif sheet.shabilidades5_h1 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h3 = false;
            		sheet.shabilidades5_h2 = false;
            	elseif sheet.shabilidades5_h1 == false then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h3 = false;
            		sheet.shabilidades5_h2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades6_h6 == true then
            		sheet.shabilidades6_h5 = true;
            		sheet.shabilidades6_h4 = true;
            		sheet.shabilidades6_h3 = true;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h5 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h4 = true;
            		sheet.shabilidades6_h3 = true;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h4 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h3 = true;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h3 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h2 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h3 = false;
            		sheet.shabilidades6_h1 = true;	
            	elseif sheet.shabilidades6_h1 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h3 = false;
            		sheet.shabilidades6_h2 = false;
            	elseif sheet.shabilidades6_h1 == false then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h3 = false;
            		sheet.shabilidades6_h2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades7_h6 == true then
            		sheet.shabilidades7_h5 = true;
            		sheet.shabilidades7_h4 = true;
            		sheet.shabilidades7_h3 = true;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h5 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h4 = true;
            		sheet.shabilidades7_h3 = true;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h4 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h3 = true;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h3 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h2 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h3 = false;
            		sheet.shabilidades7_h1 = true;	
            	elseif sheet.shabilidades7_h1 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h3 = false;
            		sheet.shabilidades7_h2 = false;
            	elseif sheet.shabilidades7_h1 == false then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h3 = false;
            		sheet.shabilidades7_h2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades8_h6 == true then
            		sheet.shabilidades8_h5 = true;
            		sheet.shabilidades8_h4 = true;
            		sheet.shabilidades8_h3 = true;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h5 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h4 = true;
            		sheet.shabilidades8_h3 = true;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h4 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h3 = true;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h3 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h2 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h3 = false;
            		sheet.shabilidades8_h1 = true;	
            	elseif sheet.shabilidades8_h1 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h3 = false;
            		sheet.shabilidades8_h2 = false;
            	elseif sheet.shabilidades8_h1 == false then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h3 = false;
            		sheet.shabilidades8_h2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmCodigo2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmCodigo2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmCodigo2 = {
    newEditor = newfrmCodigo2, 
    new = newfrmCodigo2, 
    name = "frmCodigo2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmCodigo2 = _frmCodigo2;
Firecast.registrarForm(_frmCodigo2);

return _frmCodigo2;
