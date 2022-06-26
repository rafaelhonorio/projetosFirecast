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
    obj.dataLink1:setFields({'umoutras1_5', 'umoutras1_4', 'umoutras1_3', 'umoutras1_2', 'umoutras1_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'umoutras2_5', 'umoutras2_4', 'umoutras2_3', 'umoutras2_2', 'umoutras2_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'umoutras3_5', 'umoutras3_4', 'umoutras3_3', 'umoutras3_2', 'umoutras3_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'umoutras4_5', 'umoutras4_4', 'umoutras4_3', 'umoutras4_2', 'umoutras4_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'umoutras5_5', 'umoutras5_4', 'umoutras5_3', 'umoutras5_2', 'umoutras5_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'doisoutras1_5', 'doisoutras1_4', 'doisoutras1_3', 'doisoutras1_2', 'doisoutras1_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'doisoutras2_5', 'doisoutras2_4', 'doisoutras2_3', 'doisoutras2_2', 'doisoutras2_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'doisoutras3_5', 'doisoutras3_4', 'doisoutras3_3', 'doisoutras3_2', 'doisoutras3_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'doisoutras4_5', 'doisoutras4_4', 'doisoutras4_3', 'doisoutras4_2', 'doisoutras4_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'doisoutras5_5', 'doisoutras5_4', 'doisoutras5_3', 'doisoutras5_2', 'doisoutras5_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'tresoutras1_5', 'tresoutras1_4', 'tresoutras1_3', 'tresoutras1_2', 'tresoutras1_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'tresoutras2_5', 'tresoutras2_4', 'tresoutras2_3', 'tresoutras2_2', 'tresoutras2_1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'tresoutras3_5', 'tresoutras3_4', 'tresoutras3_3', 'tresoutras3_2', 'tresoutras3_1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'tresoutras4_5', 'tresoutras4_4', 'tresoutras4_3', 'tresoutras4_2', 'tresoutras4_1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'tresoutras5_5', 'tresoutras5_4', 'tresoutras5_3', 'tresoutras5_2', 'tresoutras5_1'});
    obj.dataLink15:setName("dataLink15");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras1_5 == true then
            		sheet.umoutras1_4 = true;
            		sheet.umoutras1_3 = true;
            		sheet.umoutras1_2 = true;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_4 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_3 = true;
            		sheet.umoutras1_2 = true;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_3 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_4 = false;
            		sheet.umoutras1_2 = true;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_2 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_4 = false;
            		sheet.umoutras1_3 = false;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_1 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_4 = false;
            		sheet.umoutras1_3 = false;
            		sheet.umoutras1_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras2_5 == true then
            		sheet.umoutras2_4 = true;
            		sheet.umoutras2_3 = true;
            		sheet.umoutras2_2 = true;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_4 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_3 = true;
            		sheet.umoutras2_2 = true;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_3 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_4 = false;
            		sheet.umoutras2_2 = true;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_2 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_4 = false;
            		sheet.umoutras2_3 = false;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_1 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_4 = false;
            		sheet.umoutras2_3 = false;
            		sheet.umoutras2_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras3_5 == true then
            		sheet.umoutras3_4 = true;
            		sheet.umoutras3_3 = true;
            		sheet.umoutras3_2 = true;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_4 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_3 = true;
            		sheet.umoutras3_2 = true;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_3 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_4 = false;
            		sheet.umoutras3_2 = true;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_2 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_4 = false;
            		sheet.umoutras3_3 = false;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_1 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_4 = false;
            		sheet.umoutras3_3 = false;
            		sheet.umoutras3_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras4_5 == true then
            		sheet.umoutras4_4 = true;
            		sheet.umoutras4_3 = true;
            		sheet.umoutras4_2 = true;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_4 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_3 = true;
            		sheet.umoutras4_2 = true;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_3 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_4 = false;
            		sheet.umoutras4_2 = true;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_2 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_4 = false;
            		sheet.umoutras4_3 = false;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_1 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_4 = false;
            		sheet.umoutras4_3 = false;
            		sheet.umoutras4_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras5_5 == true then
            		sheet.umoutras5_4 = true;
            		sheet.umoutras5_3 = true;
            		sheet.umoutras5_2 = true;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_4 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_3 = true;
            		sheet.umoutras5_2 = true;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_3 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_4 = false;
            		sheet.umoutras5_2 = true;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_2 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_4 = false;
            		sheet.umoutras5_3 = false;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_1 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_4 = false;
            		sheet.umoutras5_3 = false;
            		sheet.umoutras5_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras1_5 == true then
            		sheet.doisoutras1_4 = true;
            		sheet.doisoutras1_3 = true;
            		sheet.doisoutras1_2 = true;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_4 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_3 = true;
            		sheet.doisoutras1_2 = true;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_3 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_4 = false;
            		sheet.doisoutras1_2 = true;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_2 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_4 = false;
            		sheet.doisoutras1_3 = false;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_1 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_4 = false;
            		sheet.doisoutras1_3 = false;
            		sheet.doisoutras1_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras2_5 == true then
            		sheet.doisoutras2_4 = true;
            		sheet.doisoutras2_3 = true;
            		sheet.doisoutras2_2 = true;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_4 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_3 = true;
            		sheet.doisoutras2_2 = true;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_3 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_4 = false;
            		sheet.doisoutras2_2 = true;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_2 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_4 = false;
            		sheet.doisoutras2_3 = false;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_1 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_4 = false;
            		sheet.doisoutras2_3 = false;
            		sheet.doisoutras2_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras3_5 == true then
            		sheet.doisoutras3_4 = true;
            		sheet.doisoutras3_3 = true;
            		sheet.doisoutras3_2 = true;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_4 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_3 = true;
            		sheet.doisoutras3_2 = true;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_3 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_4 = false;
            		sheet.doisoutras3_2 = true;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_2 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_4 = false;
            		sheet.doisoutras3_3 = false;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_1 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_4 = false;
            		sheet.doisoutras3_3 = false;
            		sheet.doisoutras3_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras4_5 == true then
            		sheet.doisoutras4_4 = true;
            		sheet.doisoutras4_3 = true;
            		sheet.doisoutras4_2 = true;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_4 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_3 = true;
            		sheet.doisoutras4_2 = true;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_3 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_4 = false;
            		sheet.doisoutras4_2 = true;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_2 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_4 = false;
            		sheet.doisoutras4_3 = false;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_1 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_4 = false;
            		sheet.doisoutras4_3 = false;
            		sheet.doisoutras4_2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras5_5 == true then
            		sheet.doisoutras5_4 = true;
            		sheet.doisoutras5_3 = true;
            		sheet.doisoutras5_2 = true;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_4 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_3 = true;
            		sheet.doisoutras5_2 = true;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_3 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_4 = false;
            		sheet.doisoutras5_2 = true;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_2 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_4 = false;
            		sheet.doisoutras5_3 = false;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_1 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_4 = false;
            		sheet.doisoutras5_3 = false;
            		sheet.doisoutras5_2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras1_5 == true then
            		sheet.tresoutras1_4 = true;
            		sheet.tresoutras1_3 = true;
            		sheet.tresoutras1_2 = true;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_4 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_3 = true;
            		sheet.tresoutras1_2 = true;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_3 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_4 = false;
            		sheet.tresoutras1_2 = true;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_2 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_4 = false;
            		sheet.tresoutras1_3 = false;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_1 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_4 = false;
            		sheet.tresoutras1_3 = false;
            		sheet.tresoutras1_2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras2_5 == true then
            		sheet.tresoutras2_4 = true;
            		sheet.tresoutras2_3 = true;
            		sheet.tresoutras2_2 = true;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_4 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_3 = true;
            		sheet.tresoutras2_2 = true;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_3 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_4 = false;
            		sheet.tresoutras2_2 = true;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_2 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_4 = false;
            		sheet.tresoutras2_3 = false;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_1 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_4 = false;
            		sheet.tresoutras2_3 = false;
            		sheet.tresoutras2_2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras3_5 == true then
            		sheet.tresoutras3_4 = true;
            		sheet.tresoutras3_3 = true;
            		sheet.tresoutras3_2 = true;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_4 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_3 = true;
            		sheet.tresoutras3_2 = true;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_3 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_4 = false;
            		sheet.tresoutras3_2 = true;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_2 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_4 = false;
            		sheet.tresoutras3_3 = false;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_1 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_4 = false;
            		sheet.tresoutras3_3 = false;
            		sheet.tresoutras3_2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras4_5 == true then
            		sheet.tresoutras4_4 = true;
            		sheet.tresoutras4_3 = true;
            		sheet.tresoutras4_2 = true;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_4 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_3 = true;
            		sheet.tresoutras4_2 = true;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_3 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_4 = false;
            		sheet.tresoutras4_2 = true;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_2 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_4 = false;
            		sheet.tresoutras4_3 = false;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_1 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_4 = false;
            		sheet.tresoutras4_3 = false;
            		sheet.tresoutras4_2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras5_5 == true then
            		sheet.tresoutras5_4 = true;
            		sheet.tresoutras5_3 = true;
            		sheet.tresoutras5_2 = true;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_4 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_3 = true;
            		sheet.tresoutras5_2 = true;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_3 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_4 = false;
            		sheet.tresoutras5_2 = true;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_2 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_4 = false;
            		sheet.tresoutras5_3 = false;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_1 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_4 = false;
            		sheet.tresoutras5_3 = false;
            		sheet.tresoutras5_2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
