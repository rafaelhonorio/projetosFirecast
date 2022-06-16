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
    obj.dataLink1:setFields({'Gota8C1L1', 'Gota7C1L1', 'Gota6C1L1', 'Gota5C1L1', 'Gota4C1L1', 'Gota3C1L1', 'Gota2C1L1', 'Gota1C1L1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'Gota8C1L2', 'Gota7C1L2', 'Gota6C1L2', 'Gota5C1L2', 'Gota4C1L2', 'Gota3C1L2', 'Gota2C1L2', 'Gota1C1L2'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'Gota8C1L3', 'Gota7C1L3', 'Gota6C1L3', 'Gota5C1L3', 'Gota4C1L3', 'Gota3C1L3', 'Gota2C1L3', 'Gota1C1L3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'Gota8C1L4', 'Gota7C1L4', 'Gota6C1L4', 'Gota5C1L4', 'Gota4C1L4', 'Gota3C1L4', 'Gota2C1L4', 'Gota1C1L4'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'Gota8C1L5', 'Gota7C1L5', 'Gota6C1L5', 'Gota5C1L5', 'Gota4C1L5', 'Gota3C1L5', 'Gota2C1L5', 'Gota1C1L5'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'Gota8C1L6', 'Gota7C1L6', 'Gota6C1L6', 'Gota5C1L6', 'Gota4C1L6', 'Gota3C1L6', 'Gota2C1L6', 'Gota1C1L6'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'Gota8C1L7', 'Gota7C1L7', 'Gota6C1L7', 'Gota5C1L7', 'Gota4C1L7', 'Gota3C1L7', 'Gota2C1L7', 'Gota1C1L7'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'Gota8C1L8', 'Gota7C1L8', 'Gota6C1L8', 'Gota5C1L8', 'Gota4C1L8', 'Gota3C1L8', 'Gota2C1L8', 'Gota1C1L8'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'Gota8C2L1', 'Gota7C2L1', 'Gota6C2L1', 'Gota5C2L1', 'Gota4C2L1', 'Gota3C2L1', 'Gota2C2L1', 'Gota1C2L1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'Gota8C2L2', 'Gota7C2L2', 'Gota6C2L2', 'Gota5C2L2', 'Gota4C2L2', 'Gota3C2L2', 'Gota2C2L2', 'Gota1C2L2'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'Gota8C2L3', 'Gota7C2L3', 'Gota6C2L3', 'Gota5C2L3', 'Gota4C2L3', 'Gota3C2L3', 'Gota2C2L3', 'Gota1C2L3'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'Gota8C2L4', 'Gota7C2L4', 'Gota6C2L4', 'Gota5C2L4', 'Gota4C2L4', 'Gota3C2L4', 'Gota2C2L4', 'Gota1C2L4'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'Gota8C2L5', 'Gota7C2L5', 'Gota6C2L5', 'Gota5C2L5', 'Gota4C2L5', 'Gota3C2L5', 'Gota2C2L5', 'Gota1C2L5'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'Gota8C2L6', 'Gota7C2L6', 'Gota6C2L6', 'Gota5C2L6', 'Gota4C2L6', 'Gota3C2L6', 'Gota2C2L6', 'Gota1C2L6'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'Gota8C2L7', 'Gota7C2L7', 'Gota6C2L7', 'Gota5C2L7', 'Gota4C2L7', 'Gota3C2L7', 'Gota2C2L7', 'Gota1C2L7'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'Gota8C2L8', 'Gota7C2L8', 'Gota6C2L8', 'Gota5C2L8', 'Gota4C2L8', 'Gota3C2L8', 'Gota2C2L8', 'Gota1C2L8'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'Gota8C3L1', 'Gota7C3L1', 'Gota6C3L1', 'Gota5C3L1', 'Gota4C3L1', 'Gota3C3L1', 'Gota2C3L1', 'Gota1C3L1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'Gota8C3L2', 'Gota7C3L2', 'Gota6C3L2', 'Gota5C3L2', 'Gota4C3L2', 'Gota3C3L2', 'Gota2C3L2', 'Gota1C3L2'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'Gota8C3L3', 'Gota7C3L3', 'Gota6C3L3', 'Gota5C3L3', 'Gota4C3L3', 'Gota3C3L3', 'Gota2C3L3', 'Gota1C3L3'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'Gota8C3L4', 'Gota7C3L4', 'Gota6C3L4', 'Gota5C3L4', 'Gota4C3L4', 'Gota3C3L4', 'Gota2C3L4', 'Gota1C3L4'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'Gota8C3L5', 'Gota7C3L5', 'Gota6C3L5', 'Gota5C3L5', 'Gota4C3L5', 'Gota3C3L5', 'Gota2C3L5', 'Gota1C3L5'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'Gota8C3L6', 'Gota7C3L6', 'Gota6C3L6', 'Gota5C3L6', 'Gota4C3L6', 'Gota3C3L6', 'Gota2C3L6', 'Gota1C3L6'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'Gota8C3L7', 'Gota7C3L7', 'Gota6C3L7', 'Gota5C3L7', 'Gota4C3L7', 'Gota3C3L7', 'Gota2C3L7', 'Gota1C3L7'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'Gota8C3L8', 'Gota7C3L8', 'Gota6C3L8', 'Gota5C3L8', 'Gota4C3L8', 'Gota3C3L8', 'Gota2C3L8', 'Gota1C3L8'});
    obj.dataLink24:setName("dataLink24");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L1 == true then
            			sheet.Gota7C1L1 = true;
            			sheet.Gota6C1L1 = true;
            			sheet.Gota5C1L1 = true;
            			sheet.Gota4C1L1 = true;
            			sheet.Gota3C1L1 = true;
            			sheet.Gota2C1L1 = true;
            			sheet.Gota1C1L1 = true;
            		elseif sheet.Gota7C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota6C1L1 = true;
            			sheet.Gota5C1L1 = true;
            			sheet.Gota4C1L1 = true;
            			sheet.Gota3C1L1 = true;
            			sheet.Gota2C1L1 = true;
            			sheet.Gota1C1L1 = true;
            		elseif sheet.Gota6C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota5C1L1 = true;
            			sheet.Gota4C1L1 = true;
            			sheet.Gota3C1L1 = true;
            			sheet.Gota2C1L1 = true;
            			sheet.Gota1C1L1 = true;
            		elseif sheet.Gota5C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota6C1L1 = false;
            			sheet.Gota4C1L1 = true;
            			sheet.Gota3C1L1 = true;
            			sheet.Gota2C1L1 = true;
            			sheet.Gota1C1L1 = true;
            		elseif sheet.Gota4C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota6C1L1 = false;
            			sheet.Gota5C1L1 = false;
            			sheet.Gota3C1L1 = true;
            			sheet.Gota2C1L1 = true;
            			sheet.Gota1C1L1 = true;
            		elseif sheet.Gota3C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota6C1L1 = false;
            			sheet.Gota5C1L1 = false;
            			sheet.Gota4C1L1 = false;
            			sheet.Gota2C1L1 = true;
            			sheet.Gota1C1L1 = true;
            		elseif sheet.Gota2C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota6C1L1 = false;
            			sheet.Gota5C1L1 = false;
            			sheet.Gota4C1L1 = false;
            			sheet.Gota3C1L1 = false;
            			sheet.Gota1C1L1 = true;	
            		elseif sheet.Gota1C1L1 == true then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota6C1L1 = false;
            			sheet.Gota5C1L1 = false;
            			sheet.Gota4C1L1 = false;
            			sheet.Gota3C1L1 = false;
            			sheet.Gota2C1L1 = false;
            		elseif sheet.Gota1C1L1 == false then
            			sheet.Gota8C1L1 = false;
            			sheet.Gota7C1L1 = false;
            			sheet.Gota6C1L1 = false;
            			sheet.Gota5C1L1 = false;
            			sheet.Gota4C1L1 = false;
            			sheet.Gota3C1L1 = false;
            			sheet.Gota2C1L1 = false;
            		end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L2 == true then
            			sheet.Gota7C1L2 = true;
            			sheet.Gota6C1L2 = true;
            			sheet.Gota5C1L2 = true;
            			sheet.Gota4C1L2 = true;
            			sheet.Gota3C1L2 = true;
            			sheet.Gota2C1L2 = true;
            			sheet.Gota1C1L2 = true;
            		elseif sheet.Gota7C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota6C1L2 = true;
            			sheet.Gota5C1L2 = true;
            			sheet.Gota4C1L2 = true;
            			sheet.Gota3C1L2 = true;
            			sheet.Gota2C1L2 = true;
            			sheet.Gota1C1L2 = true;
            		elseif sheet.Gota6C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota5C1L2 = true;
            			sheet.Gota4C1L2 = true;
            			sheet.Gota3C1L2 = true;
            			sheet.Gota2C1L2 = true;
            			sheet.Gota1C1L2 = true;
            		elseif sheet.Gota5C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota6C1L2 = false;
            			sheet.Gota4C1L2 = true;
            			sheet.Gota3C1L2 = true;
            			sheet.Gota2C1L2 = true;
            			sheet.Gota1C1L2 = true;
            		elseif sheet.Gota4C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota6C1L2 = false;
            			sheet.Gota5C1L2 = false;
            			sheet.Gota3C1L2 = true;
            			sheet.Gota2C1L2 = true;
            			sheet.Gota1C1L2 = true;
            		elseif sheet.Gota3C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota6C1L2 = false;
            			sheet.Gota5C1L2 = false;
            			sheet.Gota4C1L2 = false;
            			sheet.Gota2C1L2 = true;
            			sheet.Gota1C1L2 = true;
            		elseif sheet.Gota2C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota6C1L2 = false;
            			sheet.Gota5C1L2 = false;
            			sheet.Gota4C1L2 = false;
            			sheet.Gota3C1L2 = false;
            			sheet.Gota1C1L2 = true;	
            		elseif sheet.Gota1C1L2 == true then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota6C1L2 = false;
            			sheet.Gota5C1L2 = false;
            			sheet.Gota4C1L2 = false;
            			sheet.Gota3C1L2 = false;
            			sheet.Gota2C1L2 = false;
            		elseif sheet.Gota1C1L2 == false then
            			sheet.Gota8C1L2 = false;
            			sheet.Gota7C1L2 = false;
            			sheet.Gota6C1L2 = false;
            			sheet.Gota5C1L2 = false;
            			sheet.Gota4C1L2 = false;
            			sheet.Gota3C1L2 = false;
            			sheet.Gota2C1L2 = false;
            		end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L3 == true then
            			sheet.Gota7C1L3 = true;
            			sheet.Gota6C1L3 = true;
            			sheet.Gota5C1L3 = true;
            			sheet.Gota4C1L3 = true;
            			sheet.Gota3C1L3 = true;
            			sheet.Gota2C1L3 = true;
            			sheet.Gota1C1L3 = true;
            		elseif sheet.Gota7C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota6C1L3 = true;
            			sheet.Gota5C1L3 = true;
            			sheet.Gota4C1L3 = true;
            			sheet.Gota3C1L3 = true;
            			sheet.Gota2C1L3 = true;
            			sheet.Gota1C1L3 = true;
            		elseif sheet.Gota6C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota5C1L3 = true;
            			sheet.Gota4C1L3 = true;
            			sheet.Gota3C1L3 = true;
            			sheet.Gota2C1L3 = true;
            			sheet.Gota1C1L3 = true;
            		elseif sheet.Gota5C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota6C1L3 = false;
            			sheet.Gota4C1L3 = true;
            			sheet.Gota3C1L3 = true;
            			sheet.Gota2C1L3 = true;
            			sheet.Gota1C1L3 = true;
            		elseif sheet.Gota4C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota6C1L3 = false;
            			sheet.Gota5C1L3 = false;
            			sheet.Gota3C1L3 = true;
            			sheet.Gota2C1L3 = true;
            			sheet.Gota1C1L3 = true;
            		elseif sheet.Gota3C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota6C1L3 = false;
            			sheet.Gota5C1L3 = false;
            			sheet.Gota4C1L3 = false;
            			sheet.Gota2C1L3 = true;
            			sheet.Gota1C1L3 = true;
            		elseif sheet.Gota2C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota6C1L3 = false;
            			sheet.Gota5C1L3 = false;
            			sheet.Gota4C1L3 = false;
            			sheet.Gota3C1L3 = false;
            			sheet.Gota1C1L3 = true;	
            		elseif sheet.Gota1C1L3 == true then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota6C1L3 = false;
            			sheet.Gota5C1L3 = false;
            			sheet.Gota4C1L3 = false;
            			sheet.Gota3C1L3 = false;
            			sheet.Gota2C1L3 = false;
            		elseif sheet.Gota1C1L3 == false then
            			sheet.Gota8C1L3 = false;
            			sheet.Gota7C1L3 = false;
            			sheet.Gota6C1L3 = false;
            			sheet.Gota5C1L3 = false;
            			sheet.Gota4C1L3 = false;
            			sheet.Gota3C1L3 = false;
            			sheet.Gota2C1L3 = false;
            		end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L4 == true then
            			sheet.Gota7C1L4 = true;
            			sheet.Gota6C1L4 = true;
            			sheet.Gota5C1L4 = true;
            			sheet.Gota4C1L4 = true;
            			sheet.Gota3C1L4 = true;
            			sheet.Gota2C1L4 = true;
            			sheet.Gota1C1L4 = true;
            		elseif sheet.Gota7C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota6C1L4 = true;
            			sheet.Gota5C1L4 = true;
            			sheet.Gota4C1L4 = true;
            			sheet.Gota3C1L4 = true;
            			sheet.Gota2C1L4 = true;
            			sheet.Gota1C1L4 = true;
            		elseif sheet.Gota6C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota5C1L4 = true;
            			sheet.Gota4C1L4 = true;
            			sheet.Gota3C1L4 = true;
            			sheet.Gota2C1L4 = true;
            			sheet.Gota1C1L4 = true;
            		elseif sheet.Gota5C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota6C1L4 = false;
            			sheet.Gota4C1L4 = true;
            			sheet.Gota3C1L4 = true;
            			sheet.Gota2C1L4 = true;
            			sheet.Gota1C1L4 = true;
            		elseif sheet.Gota4C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota6C1L4 = false;
            			sheet.Gota5C1L4 = false;
            			sheet.Gota3C1L4 = true;
            			sheet.Gota2C1L4 = true;
            			sheet.Gota1C1L4 = true;
            		elseif sheet.Gota3C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota6C1L4 = false;
            			sheet.Gota5C1L4 = false;
            			sheet.Gota4C1L4 = false;
            			sheet.Gota2C1L4 = true;
            			sheet.Gota1C1L4 = true;
            		elseif sheet.Gota2C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota6C1L4 = false;
            			sheet.Gota5C1L4 = false;
            			sheet.Gota4C1L4 = false;
            			sheet.Gota3C1L4 = false;
            			sheet.Gota1C1L4 = true;	
            		elseif sheet.Gota1C1L4 == true then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota6C1L4 = false;
            			sheet.Gota5C1L4 = false;
            			sheet.Gota4C1L4 = false;
            			sheet.Gota3C1L4 = false;
            			sheet.Gota2C1L4 = false;
            		elseif sheet.Gota1C1L4 == false then
            			sheet.Gota8C1L4 = false;
            			sheet.Gota7C1L4 = false;
            			sheet.Gota6C1L4 = false;
            			sheet.Gota5C1L4 = false;
            			sheet.Gota4C1L4 = false;
            			sheet.Gota3C1L4 = false;
            			sheet.Gota2C1L4 = false;
            		end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L5 == true then
            			sheet.Gota7C1L5 = true;
            			sheet.Gota6C1L5 = true;
            			sheet.Gota5C1L5 = true;
            			sheet.Gota4C1L5 = true;
            			sheet.Gota3C1L5 = true;
            			sheet.Gota2C1L5 = true;
            			sheet.Gota1C1L5 = true;
            		elseif sheet.Gota7C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota6C1L5 = true;
            			sheet.Gota5C1L5 = true;
            			sheet.Gota4C1L5 = true;
            			sheet.Gota3C1L5 = true;
            			sheet.Gota2C1L5 = true;
            			sheet.Gota1C1L5 = true;
            		elseif sheet.Gota6C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota5C1L5 = true;
            			sheet.Gota4C1L5 = true;
            			sheet.Gota3C1L5 = true;
            			sheet.Gota2C1L5 = true;
            			sheet.Gota1C1L5 = true;
            		elseif sheet.Gota5C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota6C1L5 = false;
            			sheet.Gota4C1L5 = true;
            			sheet.Gota3C1L5 = true;
            			sheet.Gota2C1L5 = true;
            			sheet.Gota1C1L5 = true;
            		elseif sheet.Gota4C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota6C1L5 = false;
            			sheet.Gota5C1L5 = false;
            			sheet.Gota3C1L5 = true;
            			sheet.Gota2C1L5 = true;
            			sheet.Gota1C1L5 = true;
            		elseif sheet.Gota3C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota6C1L5 = false;
            			sheet.Gota5C1L5 = false;
            			sheet.Gota4C1L5 = false;
            			sheet.Gota2C1L5 = true;
            			sheet.Gota1C1L5 = true;
            		elseif sheet.Gota2C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota6C1L5 = false;
            			sheet.Gota5C1L5 = false;
            			sheet.Gota4C1L5 = false;
            			sheet.Gota3C1L5 = false;
            			sheet.Gota1C1L5 = true;	
            		elseif sheet.Gota1C1L5 == true then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota6C1L5 = false;
            			sheet.Gota5C1L5 = false;
            			sheet.Gota4C1L5 = false;
            			sheet.Gota3C1L5 = false;
            			sheet.Gota2C1L5 = false;
            		elseif sheet.Gota1C1L5 == false then
            			sheet.Gota8C1L5 = false;
            			sheet.Gota7C1L5 = false;
            			sheet.Gota6C1L5 = false;
            			sheet.Gota5C1L5 = false;
            			sheet.Gota4C1L5 = false;
            			sheet.Gota3C1L5 = false;
            			sheet.Gota2C1L5 = false;
            		end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L6 == true then
            			sheet.Gota7C1L6 = true;
            			sheet.Gota6C1L6 = true;
            			sheet.Gota5C1L6 = true;
            			sheet.Gota4C1L6 = true;
            			sheet.Gota3C1L6 = true;
            			sheet.Gota2C1L6 = true;
            			sheet.Gota1C1L6 = true;
            		elseif sheet.Gota7C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota6C1L6 = true;
            			sheet.Gota5C1L6 = true;
            			sheet.Gota4C1L6 = true;
            			sheet.Gota3C1L6 = true;
            			sheet.Gota2C1L6 = true;
            			sheet.Gota1C1L6 = true;
            		elseif sheet.Gota6C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota5C1L6 = true;
            			sheet.Gota4C1L6 = true;
            			sheet.Gota3C1L6 = true;
            			sheet.Gota2C1L6 = true;
            			sheet.Gota1C1L6 = true;
            		elseif sheet.Gota5C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota6C1L6 = false;
            			sheet.Gota4C1L6 = true;
            			sheet.Gota3C1L6 = true;
            			sheet.Gota2C1L6 = true;
            			sheet.Gota1C1L6 = true;
            		elseif sheet.Gota4C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota6C1L6 = false;
            			sheet.Gota5C1L6 = false;
            			sheet.Gota3C1L6 = true;
            			sheet.Gota2C1L6 = true;
            			sheet.Gota1C1L6 = true;
            		elseif sheet.Gota3C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota6C1L6 = false;
            			sheet.Gota5C1L6 = false;
            			sheet.Gota4C1L6 = false;
            			sheet.Gota2C1L6 = true;
            			sheet.Gota1C1L6 = true;
            		elseif sheet.Gota2C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota6C1L6 = false;
            			sheet.Gota5C1L6 = false;
            			sheet.Gota4C1L6 = false;
            			sheet.Gota3C1L6 = false;
            			sheet.Gota1C1L6 = true;	
            		elseif sheet.Gota1C1L6 == true then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota6C1L6 = false;
            			sheet.Gota5C1L6 = false;
            			sheet.Gota4C1L6 = false;
            			sheet.Gota3C1L6 = false;
            			sheet.Gota2C1L6 = false;
            		elseif sheet.Gota1C1L6 == false then
            			sheet.Gota8C1L6 = false;
            			sheet.Gota7C1L6 = false;
            			sheet.Gota6C1L6 = false;
            			sheet.Gota5C1L6 = false;
            			sheet.Gota4C1L6 = false;
            			sheet.Gota3C1L6 = false;
            			sheet.Gota2C1L6 = false;
            		end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L7 == true then
            			sheet.Gota7C1L7 = true;
            			sheet.Gota6C1L7 = true;
            			sheet.Gota5C1L7 = true;
            			sheet.Gota4C1L7 = true;
            			sheet.Gota3C1L7 = true;
            			sheet.Gota2C1L7 = true;
            			sheet.Gota1C1L7 = true;
            		elseif sheet.Gota7C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota6C1L7 = true;
            			sheet.Gota5C1L7 = true;
            			sheet.Gota4C1L7 = true;
            			sheet.Gota3C1L7 = true;
            			sheet.Gota2C1L7 = true;
            			sheet.Gota1C1L7 = true;
            		elseif sheet.Gota6C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota5C1L7 = true;
            			sheet.Gota4C1L7 = true;
            			sheet.Gota3C1L7 = true;
            			sheet.Gota2C1L7 = true;
            			sheet.Gota1C1L7 = true;
            		elseif sheet.Gota5C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota6C1L7 = false;
            			sheet.Gota4C1L7 = true;
            			sheet.Gota3C1L7 = true;
            			sheet.Gota2C1L7 = true;
            			sheet.Gota1C1L7 = true;
            		elseif sheet.Gota4C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota6C1L7 = false;
            			sheet.Gota5C1L7 = false;
            			sheet.Gota3C1L7 = true;
            			sheet.Gota2C1L7 = true;
            			sheet.Gota1C1L7 = true;
            		elseif sheet.Gota3C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota6C1L7 = false;
            			sheet.Gota5C1L7 = false;
            			sheet.Gota4C1L7 = false;
            			sheet.Gota2C1L7 = true;
            			sheet.Gota1C1L7 = true;
            		elseif sheet.Gota2C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota6C1L7 = false;
            			sheet.Gota5C1L7 = false;
            			sheet.Gota4C1L7 = false;
            			sheet.Gota3C1L7 = false;
            			sheet.Gota1C1L7 = true;	
            		elseif sheet.Gota1C1L7 == true then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota6C1L7 = false;
            			sheet.Gota5C1L7 = false;
            			sheet.Gota4C1L7 = false;
            			sheet.Gota3C1L7 = false;
            			sheet.Gota2C1L7 = false;
            		elseif sheet.Gota1C1L7 == false then
            			sheet.Gota8C1L7 = false;
            			sheet.Gota7C1L7 = false;
            			sheet.Gota6C1L7 = false;
            			sheet.Gota5C1L7 = false;
            			sheet.Gota4C1L7 = false;
            			sheet.Gota3C1L7 = false;
            			sheet.Gota2C1L7 = false;
            		end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C1L8 == true then
            			sheet.Gota7C1L8 = true;
            			sheet.Gota6C1L8 = true;
            			sheet.Gota5C1L8 = true;
            			sheet.Gota4C1L8 = true;
            			sheet.Gota3C1L8 = true;
            			sheet.Gota2C1L8 = true;
            			sheet.Gota1C1L8 = true;
            		elseif sheet.Gota7C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota6C1L8 = true;
            			sheet.Gota5C1L8 = true;
            			sheet.Gota4C1L8 = true;
            			sheet.Gota3C1L8 = true;
            			sheet.Gota2C1L8 = true;
            			sheet.Gota1C1L8 = true;
            		elseif sheet.Gota6C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota5C1L8 = true;
            			sheet.Gota4C1L8 = true;
            			sheet.Gota3C1L8 = true;
            			sheet.Gota2C1L8 = true;
            			sheet.Gota1C1L8 = true;
            		elseif sheet.Gota5C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota6C1L8 = false;
            			sheet.Gota4C1L8 = true;
            			sheet.Gota3C1L8 = true;
            			sheet.Gota2C1L8 = true;
            			sheet.Gota1C1L8 = true;
            		elseif sheet.Gota4C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota6C1L8 = false;
            			sheet.Gota5C1L8 = false;
            			sheet.Gota3C1L8 = true;
            			sheet.Gota2C1L8 = true;
            			sheet.Gota1C1L8 = true;
            		elseif sheet.Gota3C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota6C1L8 = false;
            			sheet.Gota5C1L8 = false;
            			sheet.Gota4C1L8 = false;
            			sheet.Gota2C1L8 = true;
            			sheet.Gota1C1L8 = true;
            		elseif sheet.Gota2C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota6C1L8 = false;
            			sheet.Gota5C1L8 = false;
            			sheet.Gota4C1L8 = false;
            			sheet.Gota3C1L8 = false;
            			sheet.Gota1C1L8 = true;	
            		elseif sheet.Gota1C1L8 == true then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota6C1L8 = false;
            			sheet.Gota5C1L8 = false;
            			sheet.Gota4C1L8 = false;
            			sheet.Gota3C1L8 = false;
            			sheet.Gota2C1L8 = false;
            		elseif sheet.Gota1C1L8 == false then
            			sheet.Gota8C1L8 = false;
            			sheet.Gota7C1L8 = false;
            			sheet.Gota6C1L8 = false;
            			sheet.Gota5C1L8 = false;
            			sheet.Gota4C1L8 = false;
            			sheet.Gota3C1L8 = false;
            			sheet.Gota2C1L8 = false;
            		end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L1 == true then
            			sheet.Gota7C2L1 = true;
            			sheet.Gota6C2L1 = true;
            			sheet.Gota5C2L1 = true;
            			sheet.Gota4C2L1 = true;
            			sheet.Gota3C2L1 = true;
            			sheet.Gota2C2L1 = true;
            			sheet.Gota1C2L1 = true;
            		elseif sheet.Gota7C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota6C2L1 = true;
            			sheet.Gota5C2L1 = true;
            			sheet.Gota4C2L1 = true;
            			sheet.Gota3C2L1 = true;
            			sheet.Gota2C2L1 = true;
            			sheet.Gota1C2L1 = true;
            		elseif sheet.Gota6C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota5C2L1 = true;
            			sheet.Gota4C2L1 = true;
            			sheet.Gota3C2L1 = true;
            			sheet.Gota2C2L1 = true;
            			sheet.Gota1C2L1 = true;
            		elseif sheet.Gota5C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota6C2L1 = false;
            			sheet.Gota4C2L1 = true;
            			sheet.Gota3C2L1 = true;
            			sheet.Gota2C2L1 = true;
            			sheet.Gota1C2L1 = true;
            		elseif sheet.Gota4C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota6C2L1 = false;
            			sheet.Gota5C2L1 = false;
            			sheet.Gota3C2L1 = true;
            			sheet.Gota2C2L1 = true;
            			sheet.Gota1C2L1 = true;
            		elseif sheet.Gota3C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota6C2L1 = false;
            			sheet.Gota5C2L1 = false;
            			sheet.Gota4C2L1 = false;
            			sheet.Gota2C2L1 = true;
            			sheet.Gota1C2L1 = true;
            		elseif sheet.Gota2C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota6C2L1 = false;
            			sheet.Gota5C2L1 = false;
            			sheet.Gota4C2L1 = false;
            			sheet.Gota3C2L1 = false;
            			sheet.Gota1C2L1 = true;	
            		elseif sheet.Gota1C2L1 == true then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota6C2L1 = false;
            			sheet.Gota5C2L1 = false;
            			sheet.Gota4C2L1 = false;
            			sheet.Gota3C2L1 = false;
            			sheet.Gota2C2L1 = false;
            		elseif sheet.Gota1C2L1 == false then
            			sheet.Gota8C2L1 = false;
            			sheet.Gota7C2L1 = false;
            			sheet.Gota6C2L1 = false;
            			sheet.Gota5C2L1 = false;
            			sheet.Gota4C2L1 = false;
            			sheet.Gota3C2L1 = false;
            			sheet.Gota2C2L1 = false;
            		end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L2 == true then
            			sheet.Gota7C2L2 = true;
            			sheet.Gota6C2L2 = true;
            			sheet.Gota5C2L2 = true;
            			sheet.Gota4C2L2 = true;
            			sheet.Gota3C2L2 = true;
            			sheet.Gota2C2L2 = true;
            			sheet.Gota1C2L2 = true;
            		elseif sheet.Gota7C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota6C2L2 = true;
            			sheet.Gota5C2L2 = true;
            			sheet.Gota4C2L2 = true;
            			sheet.Gota3C2L2 = true;
            			sheet.Gota2C2L2 = true;
            			sheet.Gota1C2L2 = true;
            		elseif sheet.Gota6C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota5C2L2 = true;
            			sheet.Gota4C2L2 = true;
            			sheet.Gota3C2L2 = true;
            			sheet.Gota2C2L2 = true;
            			sheet.Gota1C2L2 = true;
            		elseif sheet.Gota5C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota6C2L2 = false;
            			sheet.Gota4C2L2 = true;
            			sheet.Gota3C2L2 = true;
            			sheet.Gota2C2L2 = true;
            			sheet.Gota1C2L2 = true;
            		elseif sheet.Gota4C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota6C2L2 = false;
            			sheet.Gota5C2L2 = false;
            			sheet.Gota3C2L2 = true;
            			sheet.Gota2C2L2 = true;
            			sheet.Gota1C2L2 = true;
            		elseif sheet.Gota3C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota6C2L2 = false;
            			sheet.Gota5C2L2 = false;
            			sheet.Gota4C2L2 = false;
            			sheet.Gota2C2L2 = true;
            			sheet.Gota1C2L2 = true;
            		elseif sheet.Gota2C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota6C2L2 = false;
            			sheet.Gota5C2L2 = false;
            			sheet.Gota4C2L2 = false;
            			sheet.Gota3C2L2 = false;
            			sheet.Gota1C2L2 = true;	
            		elseif sheet.Gota1C2L2 == true then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota6C2L2 = false;
            			sheet.Gota5C2L2 = false;
            			sheet.Gota4C2L2 = false;
            			sheet.Gota3C2L2 = false;
            			sheet.Gota2C2L2 = false;
            		elseif sheet.Gota1C2L2 == false then
            			sheet.Gota8C2L2 = false;
            			sheet.Gota7C2L2 = false;
            			sheet.Gota6C2L2 = false;
            			sheet.Gota5C2L2 = false;
            			sheet.Gota4C2L2 = false;
            			sheet.Gota3C2L2 = false;
            			sheet.Gota2C2L2 = false;
            		end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L3 == true then
            			sheet.Gota7C2L3 = true;
            			sheet.Gota6C2L3 = true;
            			sheet.Gota5C2L3 = true;
            			sheet.Gota4C2L3 = true;
            			sheet.Gota3C2L3 = true;
            			sheet.Gota2C2L3 = true;
            			sheet.Gota1C2L3 = true;
            		elseif sheet.Gota7C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota6C2L3 = true;
            			sheet.Gota5C2L3 = true;
            			sheet.Gota4C2L3 = true;
            			sheet.Gota3C2L3 = true;
            			sheet.Gota2C2L3 = true;
            			sheet.Gota1C2L3 = true;
            		elseif sheet.Gota6C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota5C2L3 = true;
            			sheet.Gota4C2L3 = true;
            			sheet.Gota3C2L3 = true;
            			sheet.Gota2C2L3 = true;
            			sheet.Gota1C2L3 = true;
            		elseif sheet.Gota5C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota6C2L3 = false;
            			sheet.Gota4C2L3 = true;
            			sheet.Gota3C2L3 = true;
            			sheet.Gota2C2L3 = true;
            			sheet.Gota1C2L3 = true;
            		elseif sheet.Gota4C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota6C2L3 = false;
            			sheet.Gota5C2L3 = false;
            			sheet.Gota3C2L3 = true;
            			sheet.Gota2C2L3 = true;
            			sheet.Gota1C2L3 = true;
            		elseif sheet.Gota3C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota6C2L3 = false;
            			sheet.Gota5C2L3 = false;
            			sheet.Gota4C2L3 = false;
            			sheet.Gota2C2L3 = true;
            			sheet.Gota1C2L3 = true;
            		elseif sheet.Gota2C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota6C2L3 = false;
            			sheet.Gota5C2L3 = false;
            			sheet.Gota4C2L3 = false;
            			sheet.Gota3C2L3 = false;
            			sheet.Gota1C2L3 = true;	
            		elseif sheet.Gota1C2L3 == true then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota6C2L3 = false;
            			sheet.Gota5C2L3 = false;
            			sheet.Gota4C2L3 = false;
            			sheet.Gota3C2L3 = false;
            			sheet.Gota2C2L3 = false;
            		elseif sheet.Gota1C2L3 == false then
            			sheet.Gota8C2L3 = false;
            			sheet.Gota7C2L3 = false;
            			sheet.Gota6C2L3 = false;
            			sheet.Gota5C2L3 = false;
            			sheet.Gota4C2L3 = false;
            			sheet.Gota3C2L3 = false;
            			sheet.Gota2C2L3 = false;
            		end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L4 == true then
            			sheet.Gota7C2L4 = true;
            			sheet.Gota6C2L4 = true;
            			sheet.Gota5C2L4 = true;
            			sheet.Gota4C2L4 = true;
            			sheet.Gota3C2L4 = true;
            			sheet.Gota2C2L4 = true;
            			sheet.Gota1C2L4 = true;
            		elseif sheet.Gota7C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota6C2L4 = true;
            			sheet.Gota5C2L4 = true;
            			sheet.Gota4C2L4 = true;
            			sheet.Gota3C2L4 = true;
            			sheet.Gota2C2L4 = true;
            			sheet.Gota1C2L4 = true;
            		elseif sheet.Gota6C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota5C2L4 = true;
            			sheet.Gota4C2L4 = true;
            			sheet.Gota3C2L4 = true;
            			sheet.Gota2C2L4 = true;
            			sheet.Gota1C2L4 = true;
            		elseif sheet.Gota5C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota6C2L4 = false;
            			sheet.Gota4C2L4 = true;
            			sheet.Gota3C2L4 = true;
            			sheet.Gota2C2L4 = true;
            			sheet.Gota1C2L4 = true;
            		elseif sheet.Gota4C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota6C2L4 = false;
            			sheet.Gota5C2L4 = false;
            			sheet.Gota3C2L4 = true;
            			sheet.Gota2C2L4 = true;
            			sheet.Gota1C2L4 = true;
            		elseif sheet.Gota3C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota6C2L4 = false;
            			sheet.Gota5C2L4 = false;
            			sheet.Gota4C2L4 = false;
            			sheet.Gota2C2L4 = true;
            			sheet.Gota1C2L4 = true;
            		elseif sheet.Gota2C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota6C2L4 = false;
            			sheet.Gota5C2L4 = false;
            			sheet.Gota4C2L4 = false;
            			sheet.Gota3C2L4 = false;
            			sheet.Gota1C2L4 = true;	
            		elseif sheet.Gota1C2L4 == true then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota6C2L4 = false;
            			sheet.Gota5C2L4 = false;
            			sheet.Gota4C2L4 = false;
            			sheet.Gota3C2L4 = false;
            			sheet.Gota2C2L4 = false;
            		elseif sheet.Gota1C2L4 == false then
            			sheet.Gota8C2L4 = false;
            			sheet.Gota7C2L4 = false;
            			sheet.Gota6C2L4 = false;
            			sheet.Gota5C2L4 = false;
            			sheet.Gota4C2L4 = false;
            			sheet.Gota3C2L4 = false;
            			sheet.Gota2C2L4 = false;
            		end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L5 == true then
            			sheet.Gota7C2L5 = true;
            			sheet.Gota6C2L5 = true;
            			sheet.Gota5C2L5 = true;
            			sheet.Gota4C2L5 = true;
            			sheet.Gota3C2L5 = true;
            			sheet.Gota2C2L5 = true;
            			sheet.Gota1C2L5 = true;
            		elseif sheet.Gota7C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota6C2L5 = true;
            			sheet.Gota5C2L5 = true;
            			sheet.Gota4C2L5 = true;
            			sheet.Gota3C2L5 = true;
            			sheet.Gota2C2L5 = true;
            			sheet.Gota1C2L5 = true;
            		elseif sheet.Gota6C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota5C2L5 = true;
            			sheet.Gota4C2L5 = true;
            			sheet.Gota3C2L5 = true;
            			sheet.Gota2C2L5 = true;
            			sheet.Gota1C2L5 = true;
            		elseif sheet.Gota5C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota6C2L5 = false;
            			sheet.Gota4C2L5 = true;
            			sheet.Gota3C2L5 = true;
            			sheet.Gota2C2L5 = true;
            			sheet.Gota1C2L5 = true;
            		elseif sheet.Gota4C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota6C2L5 = false;
            			sheet.Gota5C2L5 = false;
            			sheet.Gota3C2L5 = true;
            			sheet.Gota2C2L5 = true;
            			sheet.Gota1C2L5 = true;
            		elseif sheet.Gota3C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota6C2L5 = false;
            			sheet.Gota5C2L5 = false;
            			sheet.Gota4C2L5 = false;
            			sheet.Gota2C2L5 = true;
            			sheet.Gota1C2L5 = true;
            		elseif sheet.Gota2C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota6C2L5 = false;
            			sheet.Gota5C2L5 = false;
            			sheet.Gota4C2L5 = false;
            			sheet.Gota3C2L5 = false;
            			sheet.Gota1C2L5 = true;	
            		elseif sheet.Gota1C2L5 == true then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota6C2L5 = false;
            			sheet.Gota5C2L5 = false;
            			sheet.Gota4C2L5 = false;
            			sheet.Gota3C2L5 = false;
            			sheet.Gota2C2L5 = false;
            		elseif sheet.Gota1C2L5 == false then
            			sheet.Gota8C2L5 = false;
            			sheet.Gota7C2L5 = false;
            			sheet.Gota6C2L5 = false;
            			sheet.Gota5C2L5 = false;
            			sheet.Gota4C2L5 = false;
            			sheet.Gota3C2L5 = false;
            			sheet.Gota2C2L5 = false;
            		end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L6 == true then
            			sheet.Gota7C2L6 = true;
            			sheet.Gota6C2L6 = true;
            			sheet.Gota5C2L6 = true;
            			sheet.Gota4C2L6 = true;
            			sheet.Gota3C2L6 = true;
            			sheet.Gota2C2L6 = true;
            			sheet.Gota1C2L6 = true;
            		elseif sheet.Gota7C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota6C2L6 = true;
            			sheet.Gota5C2L6 = true;
            			sheet.Gota4C2L6 = true;
            			sheet.Gota3C2L6 = true;
            			sheet.Gota2C2L6 = true;
            			sheet.Gota1C2L6 = true;
            		elseif sheet.Gota6C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota5C2L6 = true;
            			sheet.Gota4C2L6 = true;
            			sheet.Gota3C2L6 = true;
            			sheet.Gota2C2L6 = true;
            			sheet.Gota1C2L6 = true;
            		elseif sheet.Gota5C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota6C2L6 = false;
            			sheet.Gota4C2L6 = true;
            			sheet.Gota3C2L6 = true;
            			sheet.Gota2C2L6 = true;
            			sheet.Gota1C2L6 = true;
            		elseif sheet.Gota4C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota6C2L6 = false;
            			sheet.Gota5C2L6 = false;
            			sheet.Gota3C2L6 = true;
            			sheet.Gota2C2L6 = true;
            			sheet.Gota1C2L6 = true;
            		elseif sheet.Gota3C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota6C2L6 = false;
            			sheet.Gota5C2L6 = false;
            			sheet.Gota4C2L6 = false;
            			sheet.Gota2C2L6 = true;
            			sheet.Gota1C2L6 = true;
            		elseif sheet.Gota2C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota6C2L6 = false;
            			sheet.Gota5C2L6 = false;
            			sheet.Gota4C2L6 = false;
            			sheet.Gota3C2L6 = false;
            			sheet.Gota1C2L6 = true;	
            		elseif sheet.Gota1C2L6 == true then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota6C2L6 = false;
            			sheet.Gota5C2L6 = false;
            			sheet.Gota4C2L6 = false;
            			sheet.Gota3C2L6 = false;
            			sheet.Gota2C2L6 = false;
            		elseif sheet.Gota1C2L6 == false then
            			sheet.Gota8C2L6 = false;
            			sheet.Gota7C2L6 = false;
            			sheet.Gota6C2L6 = false;
            			sheet.Gota5C2L6 = false;
            			sheet.Gota4C2L6 = false;
            			sheet.Gota3C2L6 = false;
            			sheet.Gota2C2L6 = false;
            		end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L7 == true then
            			sheet.Gota7C2L7 = true;
            			sheet.Gota6C2L7 = true;
            			sheet.Gota5C2L7 = true;
            			sheet.Gota4C2L7 = true;
            			sheet.Gota3C2L7 = true;
            			sheet.Gota2C2L7 = true;
            			sheet.Gota1C2L7 = true;
            		elseif sheet.Gota7C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota6C2L7 = true;
            			sheet.Gota5C2L7 = true;
            			sheet.Gota4C2L7 = true;
            			sheet.Gota3C2L7 = true;
            			sheet.Gota2C2L7 = true;
            			sheet.Gota1C2L7 = true;
            		elseif sheet.Gota6C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota5C2L7 = true;
            			sheet.Gota4C2L7 = true;
            			sheet.Gota3C2L7 = true;
            			sheet.Gota2C2L7 = true;
            			sheet.Gota1C2L7 = true;
            		elseif sheet.Gota5C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota6C2L7 = false;
            			sheet.Gota4C2L7 = true;
            			sheet.Gota3C2L7 = true;
            			sheet.Gota2C2L7 = true;
            			sheet.Gota1C2L7 = true;
            		elseif sheet.Gota4C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota6C2L7 = false;
            			sheet.Gota5C2L7 = false;
            			sheet.Gota3C2L7 = true;
            			sheet.Gota2C2L7 = true;
            			sheet.Gota1C2L7 = true;
            		elseif sheet.Gota3C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota6C2L7 = false;
            			sheet.Gota5C2L7 = false;
            			sheet.Gota4C2L7 = false;
            			sheet.Gota2C2L7 = true;
            			sheet.Gota1C2L7 = true;
            		elseif sheet.Gota2C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota6C2L7 = false;
            			sheet.Gota5C2L7 = false;
            			sheet.Gota4C2L7 = false;
            			sheet.Gota3C2L7 = false;
            			sheet.Gota1C2L7 = true;	
            		elseif sheet.Gota1C2L7 == true then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota6C2L7 = false;
            			sheet.Gota5C2L7 = false;
            			sheet.Gota4C2L7 = false;
            			sheet.Gota3C2L7 = false;
            			sheet.Gota2C2L7 = false;
            		elseif sheet.Gota1C2L7 == false then
            			sheet.Gota8C2L7 = false;
            			sheet.Gota7C2L7 = false;
            			sheet.Gota6C2L7 = false;
            			sheet.Gota5C2L7 = false;
            			sheet.Gota4C2L7 = false;
            			sheet.Gota3C2L7 = false;
            			sheet.Gota2C2L7 = false;
            		end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C2L8 == true then
            			sheet.Gota7C2L8 = true;
            			sheet.Gota6C2L8 = true;
            			sheet.Gota5C2L8 = true;
            			sheet.Gota4C2L8 = true;
            			sheet.Gota3C2L8 = true;
            			sheet.Gota2C2L8 = true;
            			sheet.Gota1C2L8 = true;
            		elseif sheet.Gota7C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota6C2L8 = true;
            			sheet.Gota5C2L8 = true;
            			sheet.Gota4C2L8 = true;
            			sheet.Gota3C2L8 = true;
            			sheet.Gota2C2L8 = true;
            			sheet.Gota1C2L8 = true;
            		elseif sheet.Gota6C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota5C2L8 = true;
            			sheet.Gota4C2L8 = true;
            			sheet.Gota3C2L8 = true;
            			sheet.Gota2C2L8 = true;
            			sheet.Gota1C2L8 = true;
            		elseif sheet.Gota5C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota6C2L8 = false;
            			sheet.Gota4C2L8 = true;
            			sheet.Gota3C2L8 = true;
            			sheet.Gota2C2L8 = true;
            			sheet.Gota1C2L8 = true;
            		elseif sheet.Gota4C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota6C2L8 = false;
            			sheet.Gota5C2L8 = false;
            			sheet.Gota3C2L8 = true;
            			sheet.Gota2C2L8 = true;
            			sheet.Gota1C2L8 = true;
            		elseif sheet.Gota3C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota6C2L8 = false;
            			sheet.Gota5C2L8 = false;
            			sheet.Gota4C2L8 = false;
            			sheet.Gota2C2L8 = true;
            			sheet.Gota1C2L8 = true;
            		elseif sheet.Gota2C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota6C2L8 = false;
            			sheet.Gota5C2L8 = false;
            			sheet.Gota4C2L8 = false;
            			sheet.Gota3C2L8 = false;
            			sheet.Gota1C2L8 = true;	
            		elseif sheet.Gota1C2L8 == true then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota6C2L8 = false;
            			sheet.Gota5C2L8 = false;
            			sheet.Gota4C2L8 = false;
            			sheet.Gota3C2L8 = false;
            			sheet.Gota2C2L8 = false;
            		elseif sheet.Gota1C2L8 == false then
            			sheet.Gota8C2L8 = false;
            			sheet.Gota7C2L8 = false;
            			sheet.Gota6C2L8 = false;
            			sheet.Gota5C2L8 = false;
            			sheet.Gota4C2L8 = false;
            			sheet.Gota3C2L8 = false;
            			sheet.Gota2C2L8 = false;
            		end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L1 == true then
            			sheet.Gota7C3L1 = true;
            			sheet.Gota6C3L1 = true;
            			sheet.Gota5C3L1 = true;
            			sheet.Gota4C3L1 = true;
            			sheet.Gota3C3L1 = true;
            			sheet.Gota2C3L1 = true;
            			sheet.Gota1C3L1 = true;
            		elseif sheet.Gota7C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota6C3L1 = true;
            			sheet.Gota5C3L1 = true;
            			sheet.Gota4C3L1 = true;
            			sheet.Gota3C3L1 = true;
            			sheet.Gota2C3L1 = true;
            			sheet.Gota1C3L1 = true;
            		elseif sheet.Gota6C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota5C3L1 = true;
            			sheet.Gota4C3L1 = true;
            			sheet.Gota3C3L1 = true;
            			sheet.Gota2C3L1 = true;
            			sheet.Gota1C3L1 = true;
            		elseif sheet.Gota5C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota6C3L1 = false;
            			sheet.Gota4C3L1 = true;
            			sheet.Gota3C3L1 = true;
            			sheet.Gota2C3L1 = true;
            			sheet.Gota1C3L1 = true;
            		elseif sheet.Gota4C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota6C3L1 = false;
            			sheet.Gota5C3L1 = false;
            			sheet.Gota3C3L1 = true;
            			sheet.Gota2C3L1 = true;
            			sheet.Gota1C3L1 = true;
            		elseif sheet.Gota3C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota6C3L1 = false;
            			sheet.Gota5C3L1 = false;
            			sheet.Gota4C3L1 = false;
            			sheet.Gota2C3L1 = true;
            			sheet.Gota1C3L1 = true;
            		elseif sheet.Gota2C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota6C3L1 = false;
            			sheet.Gota5C3L1 = false;
            			sheet.Gota4C3L1 = false;
            			sheet.Gota3C3L1 = false;
            			sheet.Gota1C3L1 = true;	
            		elseif sheet.Gota1C3L1 == true then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota6C3L1 = false;
            			sheet.Gota5C3L1 = false;
            			sheet.Gota4C3L1 = false;
            			sheet.Gota3C3L1 = false;
            			sheet.Gota2C3L1 = false;
            		elseif sheet.Gota1C3L1 == false then
            			sheet.Gota8C3L1 = false;
            			sheet.Gota7C3L1 = false;
            			sheet.Gota6C3L1 = false;
            			sheet.Gota5C3L1 = false;
            			sheet.Gota4C3L1 = false;
            			sheet.Gota3C3L1 = false;
            			sheet.Gota2C3L1 = false;
            		end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L2 == true then
            			sheet.Gota7C3L2 = true;
            			sheet.Gota6C3L2 = true;
            			sheet.Gota5C3L2 = true;
            			sheet.Gota4C3L2 = true;
            			sheet.Gota3C3L2 = true;
            			sheet.Gota2C3L2 = true;
            			sheet.Gota1C3L2 = true;
            		elseif sheet.Gota7C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota6C3L2 = true;
            			sheet.Gota5C3L2 = true;
            			sheet.Gota4C3L2 = true;
            			sheet.Gota3C3L2 = true;
            			sheet.Gota2C3L2 = true;
            			sheet.Gota1C3L2 = true;
            		elseif sheet.Gota6C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota5C3L2 = true;
            			sheet.Gota4C3L2 = true;
            			sheet.Gota3C3L2 = true;
            			sheet.Gota2C3L2 = true;
            			sheet.Gota1C3L2 = true;
            		elseif sheet.Gota5C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota6C3L2 = false;
            			sheet.Gota4C3L2 = true;
            			sheet.Gota3C3L2 = true;
            			sheet.Gota2C3L2 = true;
            			sheet.Gota1C3L2 = true;
            		elseif sheet.Gota4C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota6C3L2 = false;
            			sheet.Gota5C3L2 = false;
            			sheet.Gota3C3L2 = true;
            			sheet.Gota2C3L2 = true;
            			sheet.Gota1C3L2 = true;
            		elseif sheet.Gota3C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota6C3L2 = false;
            			sheet.Gota5C3L2 = false;
            			sheet.Gota4C3L2 = false;
            			sheet.Gota2C3L2 = true;
            			sheet.Gota1C3L2 = true;
            		elseif sheet.Gota2C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota6C3L2 = false;
            			sheet.Gota5C3L2 = false;
            			sheet.Gota4C3L2 = false;
            			sheet.Gota3C3L2 = false;
            			sheet.Gota1C3L2 = true;	
            		elseif sheet.Gota1C3L2 == true then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota6C3L2 = false;
            			sheet.Gota5C3L2 = false;
            			sheet.Gota4C3L2 = false;
            			sheet.Gota3C3L2 = false;
            			sheet.Gota2C3L2 = false;
            		elseif sheet.Gota1C3L2 == false then
            			sheet.Gota8C3L2 = false;
            			sheet.Gota7C3L2 = false;
            			sheet.Gota6C3L2 = false;
            			sheet.Gota5C3L2 = false;
            			sheet.Gota4C3L2 = false;
            			sheet.Gota3C3L2 = false;
            			sheet.Gota2C3L2 = false;
            		end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L3 == true then
            			sheet.Gota7C3L3 = true;
            			sheet.Gota6C3L3 = true;
            			sheet.Gota5C3L3 = true;
            			sheet.Gota4C3L3 = true;
            			sheet.Gota3C3L3 = true;
            			sheet.Gota2C3L3 = true;
            			sheet.Gota1C3L3 = true;
            		elseif sheet.Gota7C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota6C3L3 = true;
            			sheet.Gota5C3L3 = true;
            			sheet.Gota4C3L3 = true;
            			sheet.Gota3C3L3 = true;
            			sheet.Gota2C3L3 = true;
            			sheet.Gota1C3L3 = true;
            		elseif sheet.Gota6C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota5C3L3 = true;
            			sheet.Gota4C3L3 = true;
            			sheet.Gota3C3L3 = true;
            			sheet.Gota2C3L3 = true;
            			sheet.Gota1C3L3 = true;
            		elseif sheet.Gota5C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota6C3L3 = false;
            			sheet.Gota4C3L3 = true;
            			sheet.Gota3C3L3 = true;
            			sheet.Gota2C3L3 = true;
            			sheet.Gota1C3L3 = true;
            		elseif sheet.Gota4C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota6C3L3 = false;
            			sheet.Gota5C3L3 = false;
            			sheet.Gota3C3L3 = true;
            			sheet.Gota2C3L3 = true;
            			sheet.Gota1C3L3 = true;
            		elseif sheet.Gota3C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota6C3L3 = false;
            			sheet.Gota5C3L3 = false;
            			sheet.Gota4C3L3 = false;
            			sheet.Gota2C3L3 = true;
            			sheet.Gota1C3L3 = true;
            		elseif sheet.Gota2C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota6C3L3 = false;
            			sheet.Gota5C3L3 = false;
            			sheet.Gota4C3L3 = false;
            			sheet.Gota3C3L3 = false;
            			sheet.Gota1C3L3 = true;	
            		elseif sheet.Gota1C3L3 == true then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota6C3L3 = false;
            			sheet.Gota5C3L3 = false;
            			sheet.Gota4C3L3 = false;
            			sheet.Gota3C3L3 = false;
            			sheet.Gota2C3L3 = false;
            		elseif sheet.Gota1C3L3 == false then
            			sheet.Gota8C3L3 = false;
            			sheet.Gota7C3L3 = false;
            			sheet.Gota6C3L3 = false;
            			sheet.Gota5C3L3 = false;
            			sheet.Gota4C3L3 = false;
            			sheet.Gota3C3L3 = false;
            			sheet.Gota2C3L3 = false;
            		end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L4 == true then
            			sheet.Gota7C3L4 = true;
            			sheet.Gota6C3L4 = true;
            			sheet.Gota5C3L4 = true;
            			sheet.Gota4C3L4 = true;
            			sheet.Gota3C3L4 = true;
            			sheet.Gota2C3L4 = true;
            			sheet.Gota1C3L4 = true;
            		elseif sheet.Gota7C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota6C3L4 = true;
            			sheet.Gota5C3L4 = true;
            			sheet.Gota4C3L4 = true;
            			sheet.Gota3C3L4 = true;
            			sheet.Gota2C3L4 = true;
            			sheet.Gota1C3L4 = true;
            		elseif sheet.Gota6C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota5C3L4 = true;
            			sheet.Gota4C3L4 = true;
            			sheet.Gota3C3L4 = true;
            			sheet.Gota2C3L4 = true;
            			sheet.Gota1C3L4 = true;
            		elseif sheet.Gota5C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota6C3L4 = false;
            			sheet.Gota4C3L4 = true;
            			sheet.Gota3C3L4 = true;
            			sheet.Gota2C3L4 = true;
            			sheet.Gota1C3L4 = true;
            		elseif sheet.Gota4C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota6C3L4 = false;
            			sheet.Gota5C3L4 = false;
            			sheet.Gota3C3L4 = true;
            			sheet.Gota2C3L4 = true;
            			sheet.Gota1C3L4 = true;
            		elseif sheet.Gota3C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota6C3L4 = false;
            			sheet.Gota5C3L4 = false;
            			sheet.Gota4C3L4 = false;
            			sheet.Gota2C3L4 = true;
            			sheet.Gota1C3L4 = true;
            		elseif sheet.Gota2C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota6C3L4 = false;
            			sheet.Gota5C3L4 = false;
            			sheet.Gota4C3L4 = false;
            			sheet.Gota3C3L4 = false;
            			sheet.Gota1C3L4 = true;	
            		elseif sheet.Gota1C3L4 == true then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota6C3L4 = false;
            			sheet.Gota5C3L4 = false;
            			sheet.Gota4C3L4 = false;
            			sheet.Gota3C3L4 = false;
            			sheet.Gota2C3L4 = false;
            		elseif sheet.Gota1C3L4 == false then
            			sheet.Gota8C3L4 = false;
            			sheet.Gota7C3L4 = false;
            			sheet.Gota6C3L4 = false;
            			sheet.Gota5C3L4 = false;
            			sheet.Gota4C3L4 = false;
            			sheet.Gota3C3L4 = false;
            			sheet.Gota2C3L4 = false;
            		end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L5 == true then
            			sheet.Gota7C3L5 = true;
            			sheet.Gota6C3L5 = true;
            			sheet.Gota5C3L5 = true;
            			sheet.Gota4C3L5 = true;
            			sheet.Gota3C3L5 = true;
            			sheet.Gota2C3L5 = true;
            			sheet.Gota1C3L5 = true;
            		elseif sheet.Gota7C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota6C3L5 = true;
            			sheet.Gota5C3L5 = true;
            			sheet.Gota4C3L5 = true;
            			sheet.Gota3C3L5 = true;
            			sheet.Gota2C3L5 = true;
            			sheet.Gota1C3L5 = true;
            		elseif sheet.Gota6C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota5C3L5 = true;
            			sheet.Gota4C3L5 = true;
            			sheet.Gota3C3L5 = true;
            			sheet.Gota2C3L5 = true;
            			sheet.Gota1C3L5 = true;
            		elseif sheet.Gota5C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota6C3L5 = false;
            			sheet.Gota4C3L5 = true;
            			sheet.Gota3C3L5 = true;
            			sheet.Gota2C3L5 = true;
            			sheet.Gota1C3L5 = true;
            		elseif sheet.Gota4C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota6C3L5 = false;
            			sheet.Gota5C3L5 = false;
            			sheet.Gota3C3L5 = true;
            			sheet.Gota2C3L5 = true;
            			sheet.Gota1C3L5 = true;
            		elseif sheet.Gota3C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota6C3L5 = false;
            			sheet.Gota5C3L5 = false;
            			sheet.Gota4C3L5 = false;
            			sheet.Gota2C3L5 = true;
            			sheet.Gota1C3L5 = true;
            		elseif sheet.Gota2C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota6C3L5 = false;
            			sheet.Gota5C3L5 = false;
            			sheet.Gota4C3L5 = false;
            			sheet.Gota3C3L5 = false;
            			sheet.Gota1C3L5 = true;	
            		elseif sheet.Gota1C3L5 == true then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota6C3L5 = false;
            			sheet.Gota5C3L5 = false;
            			sheet.Gota4C3L5 = false;
            			sheet.Gota3C3L5 = false;
            			sheet.Gota2C3L5 = false;
            		elseif sheet.Gota1C3L5 == false then
            			sheet.Gota8C3L5 = false;
            			sheet.Gota7C3L5 = false;
            			sheet.Gota6C3L5 = false;
            			sheet.Gota5C3L5 = false;
            			sheet.Gota4C3L5 = false;
            			sheet.Gota3C3L5 = false;
            			sheet.Gota2C3L5 = false;
            		end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L6 == true then
            			sheet.Gota7C3L6 = true;
            			sheet.Gota6C3L6 = true;
            			sheet.Gota5C3L6 = true;
            			sheet.Gota4C3L6 = true;
            			sheet.Gota3C3L6 = true;
            			sheet.Gota2C3L6 = true;
            			sheet.Gota1C3L6 = true;
            		elseif sheet.Gota7C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota6C3L6 = true;
            			sheet.Gota5C3L6 = true;
            			sheet.Gota4C3L6 = true;
            			sheet.Gota3C3L6 = true;
            			sheet.Gota2C3L6 = true;
            			sheet.Gota1C3L6 = true;
            		elseif sheet.Gota6C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota5C3L6 = true;
            			sheet.Gota4C3L6 = true;
            			sheet.Gota3C3L6 = true;
            			sheet.Gota2C3L6 = true;
            			sheet.Gota1C3L6 = true;
            		elseif sheet.Gota5C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota6C3L6 = false;
            			sheet.Gota4C3L6 = true;
            			sheet.Gota3C3L6 = true;
            			sheet.Gota2C3L6 = true;
            			sheet.Gota1C3L6 = true;
            		elseif sheet.Gota4C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota6C3L6 = false;
            			sheet.Gota5C3L6 = false;
            			sheet.Gota3C3L6 = true;
            			sheet.Gota2C3L6 = true;
            			sheet.Gota1C3L6 = true;
            		elseif sheet.Gota3C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota6C3L6 = false;
            			sheet.Gota5C3L6 = false;
            			sheet.Gota4C3L6 = false;
            			sheet.Gota2C3L6 = true;
            			sheet.Gota1C3L6 = true;
            		elseif sheet.Gota2C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota6C3L6 = false;
            			sheet.Gota5C3L6 = false;
            			sheet.Gota4C3L6 = false;
            			sheet.Gota3C3L6 = false;
            			sheet.Gota1C3L6 = true;	
            		elseif sheet.Gota1C3L6 == true then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota6C3L6 = false;
            			sheet.Gota5C3L6 = false;
            			sheet.Gota4C3L6 = false;
            			sheet.Gota3C3L6 = false;
            			sheet.Gota2C3L6 = false;
            		elseif sheet.Gota1C3L6 == false then
            			sheet.Gota8C3L6 = false;
            			sheet.Gota7C3L6 = false;
            			sheet.Gota6C3L6 = false;
            			sheet.Gota5C3L6 = false;
            			sheet.Gota4C3L6 = false;
            			sheet.Gota3C3L6 = false;
            			sheet.Gota2C3L6 = false;
            		end;
        end, obj);

    obj._e_event22 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L7 == true then
            			sheet.Gota7C3L7 = true;
            			sheet.Gota6C3L7 = true;
            			sheet.Gota5C3L7 = true;
            			sheet.Gota4C3L7 = true;
            			sheet.Gota3C3L7 = true;
            			sheet.Gota2C3L7 = true;
            			sheet.Gota1C3L7 = true;
            		elseif sheet.Gota7C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota6C3L7 = true;
            			sheet.Gota5C3L7 = true;
            			sheet.Gota4C3L7 = true;
            			sheet.Gota3C3L7 = true;
            			sheet.Gota2C3L7 = true;
            			sheet.Gota1C3L7 = true;
            		elseif sheet.Gota6C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota5C3L7 = true;
            			sheet.Gota4C3L7 = true;
            			sheet.Gota3C3L7 = true;
            			sheet.Gota2C3L7 = true;
            			sheet.Gota1C3L7 = true;
            		elseif sheet.Gota5C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota6C3L7 = false;
            			sheet.Gota4C3L7 = true;
            			sheet.Gota3C3L7 = true;
            			sheet.Gota2C3L7 = true;
            			sheet.Gota1C3L7 = true;
            		elseif sheet.Gota4C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota6C3L7 = false;
            			sheet.Gota5C3L7 = false;
            			sheet.Gota3C3L7 = true;
            			sheet.Gota2C3L7 = true;
            			sheet.Gota1C3L7 = true;
            		elseif sheet.Gota3C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota6C3L7 = false;
            			sheet.Gota5C3L7 = false;
            			sheet.Gota4C3L7 = false;
            			sheet.Gota2C3L7 = true;
            			sheet.Gota1C3L7 = true;
            		elseif sheet.Gota2C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota6C3L7 = false;
            			sheet.Gota5C3L7 = false;
            			sheet.Gota4C3L7 = false;
            			sheet.Gota3C3L7 = false;
            			sheet.Gota1C3L7 = true;	
            		elseif sheet.Gota1C3L7 == true then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota6C3L7 = false;
            			sheet.Gota5C3L7 = false;
            			sheet.Gota4C3L7 = false;
            			sheet.Gota3C3L7 = false;
            			sheet.Gota2C3L7 = false;
            		elseif sheet.Gota1C3L7 == false then
            			sheet.Gota8C3L7 = false;
            			sheet.Gota7C3L7 = false;
            			sheet.Gota6C3L7 = false;
            			sheet.Gota5C3L7 = false;
            			sheet.Gota4C3L7 = false;
            			sheet.Gota3C3L7 = false;
            			sheet.Gota2C3L7 = false;
            		end;
        end, obj);

    obj._e_event23 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.Gota8C3L8 == true then
            			sheet.Gota7C3L8 = true;
            			sheet.Gota6C3L8 = true;
            			sheet.Gota5C3L8 = true;
            			sheet.Gota4C3L8 = true;
            			sheet.Gota3C3L8 = true;
            			sheet.Gota2C3L8 = true;
            			sheet.Gota1C3L8 = true;
            		elseif sheet.Gota7C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota6C3L8 = true;
            			sheet.Gota5C3L8 = true;
            			sheet.Gota4C3L8 = true;
            			sheet.Gota3C3L8 = true;
            			sheet.Gota2C3L8 = true;
            			sheet.Gota1C3L8 = true;
            		elseif sheet.Gota6C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota5C3L8 = true;
            			sheet.Gota4C3L8 = true;
            			sheet.Gota3C3L8 = true;
            			sheet.Gota2C3L8 = true;
            			sheet.Gota1C3L8 = true;
            		elseif sheet.Gota5C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota6C3L8 = false;
            			sheet.Gota4C3L8 = true;
            			sheet.Gota3C3L8 = true;
            			sheet.Gota2C3L8 = true;
            			sheet.Gota1C3L8 = true;
            		elseif sheet.Gota4C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota6C3L8 = false;
            			sheet.Gota5C3L8 = false;
            			sheet.Gota3C3L8 = true;
            			sheet.Gota2C3L8 = true;
            			sheet.Gota1C3L8 = true;
            		elseif sheet.Gota3C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota6C3L8 = false;
            			sheet.Gota5C3L8 = false;
            			sheet.Gota4C3L8 = false;
            			sheet.Gota2C3L8 = true;
            			sheet.Gota1C3L8 = true;
            		elseif sheet.Gota2C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota6C3L8 = false;
            			sheet.Gota5C3L8 = false;
            			sheet.Gota4C3L8 = false;
            			sheet.Gota3C3L8 = false;
            			sheet.Gota1C3L8 = true;	
            		elseif sheet.Gota1C3L8 == true then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota6C3L8 = false;
            			sheet.Gota5C3L8 = false;
            			sheet.Gota4C3L8 = false;
            			sheet.Gota3C3L8 = false;
            			sheet.Gota2C3L8 = false;
            		elseif sheet.Gota1C3L8 == false then
            			sheet.Gota8C3L8 = false;
            			sheet.Gota7C3L8 = false;
            			sheet.Gota6C3L8 = false;
            			sheet.Gota5C3L8 = false;
            			sheet.Gota4C3L8 = false;
            			sheet.Gota3C3L8 = false;
            			sheet.Gota2C3L8 = false;
            		end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
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
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
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
