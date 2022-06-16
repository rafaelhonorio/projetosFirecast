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
    obj.dataLink1:setFields({'bola5OutraCaracteristicas1', 'bola4OutraCaracteristicas1', 'bola3OutraCaracteristicas1', 'bola2OutraCaracteristicas1', 'bola1OutraCaracteristicas1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'bola5OutraCaracteristicas2', 'bola4OutraCaracteristicas2', 'bola3OutraCaracteristicas2', 'bola2OutraCaracteristicas2', 'bola1OutraCaracteristicas2'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'bola5OutraCaracteristicas3', 'bola4OutraCaracteristicas3', 'bola3OutraCaracteristicas3', 'bola2OutraCaracteristicas3', 'bola1OutraCaracteristicas3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'bola5OutraCaracteristicas4', 'bola4OutraCaracteristicas4', 'bola3OutraCaracteristicas4', 'bola2OutraCaracteristicas4', 'bola1OutraCaracteristicas4'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'bola5OutraCaracteristicas5', 'bola4OutraCaracteristicas5', 'bola3OutraCaracteristicas5', 'bola2OutraCaracteristicas5', 'bola1OutraCaracteristicas5'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'bola5OutraCaracteristicas6', 'bola4OutraCaracteristicas6', 'bola3OutraCaracteristicas6', 'bola2OutraCaracteristicas6', 'bola1OutraCaracteristicas6'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'bola5OutraCaracteristicas7', 'bola4OutraCaracteristicas7', 'bola3OutraCaracteristicas7', 'bola2OutraCaracteristicas7', 'bola1OutraCaracteristicas7'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'bola5OutraCaracteristicas8', 'bola4OutraCaracteristicas8', 'bola3OutraCaracteristicas8', 'bola2OutraCaracteristicas8', 'bola1OutraCaracteristicas8'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'bola5OutraCaracteristicas9', 'bola4OutraCaracteristicas9', 'bola3OutraCaracteristicas9', 'bola2OutraCaracteristicas9', 'bola1OutraCaracteristicas9'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'bola5OutraCaracteristicas10', 'bola4OutraCaracteristicas10', 'bola3OutraCaracteristicas10', 'bola2OutraCaracteristicas10', 'bola1OutraCaracteristicas10'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'bola5OutraCaracteristicas11', 'bola4OutraCaracteristicas11', 'bola3OutraCaracteristicas11', 'bola2OutraCaracteristicas11', 'bola1OutraCaracteristicas11'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'bola5OutraCaracteristicas12', 'bola4OutraCaracteristicas12', 'bola3OutraCaracteristicas12', 'bola2OutraCaracteristicas12', 'bola1OutraCaracteristicas12'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'bola5OutraCaracteristicas13', 'bola4OutraCaracteristicas13', 'bola3OutraCaracteristicas13', 'bola2OutraCaracteristicas13', 'bola1OutraCaracteristicas13'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'bola5OutraCaracteristicas14', 'bola4OutraCaracteristicas14', 'bola3OutraCaracteristicas14', 'bola2OutraCaracteristicas14', 'bola1OutraCaracteristicas14'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'bola5OutraCaracteristicas15', 'bola4OutraCaracteristicas15', 'bola3OutraCaracteristicas15', 'bola2OutraCaracteristicas15', 'bola1OutraCaracteristicas15'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'bola5OutraCaracteristicas16', 'bola4OutraCaracteristicas16', 'bola3OutraCaracteristicas16', 'bola2OutraCaracteristicas16', 'bola1OutraCaracteristicas16'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'bola5OutraCaracteristicas17', 'bola4OutraCaracteristicas17', 'bola3OutraCaracteristicas17', 'bola2OutraCaracteristicas17', 'bola1OutraCaracteristicas17'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'bola5OutraCaracteristicas18', 'bola4OutraCaracteristicas18', 'bola3OutraCaracteristicas18', 'bola2OutraCaracteristicas18', 'bola1OutraCaracteristicas18'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'bola5OutraCaracteristicas19', 'bola4OutraCaracteristicas19', 'bola3OutraCaracteristicas19', 'bola2OutraCaracteristicas19', 'bola1OutraCaracteristicas19'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'bola5OutraCaracteristicas20', 'bola4OutraCaracteristicas20', 'bola3OutraCaracteristicas20', 'bola2OutraCaracteristicas20', 'bola1OutraCaracteristicas20'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'bola5OutraCaracteristicas21', 'bola4OutraCaracteristicas21', 'bola3OutraCaracteristicas21', 'bola2OutraCaracteristicas21', 'bola1OutraCaracteristicas21'});
    obj.dataLink21:setName("dataLink21");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas1 == true then
            		sheet.bola4OutraCaracteristicas1 = true;
            		sheet.bola3OutraCaracteristicas1 = true;
            		sheet.bola2OutraCaracteristicas1 = true;
            		sheet.bola1OutraCaracteristicas1 = true;
            	elseif sheet.bola4OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = true;
            		sheet.bola2OutraCaracteristicas1 = true;
            		sheet.bola1OutraCaracteristicas1 = true;
            	elseif sheet.bola3OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola2OutraCaracteristicas1 = true;
            		sheet.bola1OutraCaracteristicas1 = true;
            	elseif sheet.bola2OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = false;
            		sheet.bola1OutraCaracteristicas1 = true;	
            	elseif sheet.bola1OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = false;
            		sheet.bola2OutraCaracteristicas1 = false;
            	elseif sheet.bola1OutraCaracteristicas1 == false then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = false;
            		sheet.bola2OutraCaracteristicas1 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas2 == true then
            		sheet.bola4OutraCaracteristicas2 = true;
            		sheet.bola3OutraCaracteristicas2 = true;
            		sheet.bola2OutraCaracteristicas2 = true;
            		sheet.bola1OutraCaracteristicas2 = true;
            	elseif sheet.bola4OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = true;
            		sheet.bola2OutraCaracteristicas2 = true;
            		sheet.bola1OutraCaracteristicas2 = true;
            	elseif sheet.bola3OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola2OutraCaracteristicas2 = true;
            		sheet.bola1OutraCaracteristicas2 = true;
            	elseif sheet.bola2OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = false;
            		sheet.bola1OutraCaracteristicas2 = true;	
            	elseif sheet.bola1OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = false;
            		sheet.bola2OutraCaracteristicas2 = false;
            	elseif sheet.bola1OutraCaracteristicas2 == false then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = false;
            		sheet.bola2OutraCaracteristicas2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas3 == true then
            		sheet.bola4OutraCaracteristicas3 = true;
            		sheet.bola3OutraCaracteristicas3 = true;
            		sheet.bola2OutraCaracteristicas3 = true;
            		sheet.bola1OutraCaracteristicas3 = true;
            	elseif sheet.bola4OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = true;
            		sheet.bola2OutraCaracteristicas3 = true;
            		sheet.bola1OutraCaracteristicas3 = true;
            	elseif sheet.bola3OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola2OutraCaracteristicas3 = true;
            		sheet.bola1OutraCaracteristicas3 = true;
            	elseif sheet.bola2OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = false;
            		sheet.bola1OutraCaracteristicas3 = true;	
            	elseif sheet.bola1OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = false;
            		sheet.bola2OutraCaracteristicas3 = false;
            	elseif sheet.bola1OutraCaracteristicas3 == false then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = false;
            		sheet.bola2OutraCaracteristicas3 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas4 == true then
            		sheet.bola4OutraCaracteristicas4 = true;
            		sheet.bola3OutraCaracteristicas4 = true;
            		sheet.bola2OutraCaracteristicas4 = true;
            		sheet.bola1OutraCaracteristicas4 = true;
            	elseif sheet.bola4OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = true;
            		sheet.bola2OutraCaracteristicas4 = true;
            		sheet.bola1OutraCaracteristicas4 = true;
            	elseif sheet.bola3OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola2OutraCaracteristicas4 = true;
            		sheet.bola1OutraCaracteristicas4 = true;
            	elseif sheet.bola2OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = false;
            		sheet.bola1OutraCaracteristicas4 = true;	
            	elseif sheet.bola1OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = false;
            		sheet.bola2OutraCaracteristicas4 = false;
            	elseif sheet.bola1OutraCaracteristicas4 == false then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = false;
            		sheet.bola2OutraCaracteristicas4 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas5 == true then
            		sheet.bola4OutraCaracteristicas5 = true;
            		sheet.bola3OutraCaracteristicas5 = true;
            		sheet.bola2OutraCaracteristicas5 = true;
            		sheet.bola1OutraCaracteristicas5 = true;
            	elseif sheet.bola4OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = true;
            		sheet.bola2OutraCaracteristicas5 = true;
            		sheet.bola1OutraCaracteristicas5 = true;
            	elseif sheet.bola3OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola2OutraCaracteristicas5 = true;
            		sheet.bola1OutraCaracteristicas5 = true;
            	elseif sheet.bola2OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = false;
            		sheet.bola1OutraCaracteristicas5 = true;	
            	elseif sheet.bola1OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = false;
            		sheet.bola2OutraCaracteristicas5 = false;
            	elseif sheet.bola1OutraCaracteristicas5 == false then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = false;
            		sheet.bola2OutraCaracteristicas5 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas6 == true then
            		sheet.bola4OutraCaracteristicas6 = true;
            		sheet.bola3OutraCaracteristicas6 = true;
            		sheet.bola2OutraCaracteristicas6 = true;
            		sheet.bola1OutraCaracteristicas6 = true;
            	elseif sheet.bola4OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = true;
            		sheet.bola2OutraCaracteristicas6 = true;
            		sheet.bola1OutraCaracteristicas6 = true;
            	elseif sheet.bola3OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola2OutraCaracteristicas6 = true;
            		sheet.bola1OutraCaracteristicas6 = true;
            	elseif sheet.bola2OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = false;
            		sheet.bola1OutraCaracteristicas6 = true;	
            	elseif sheet.bola1OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = false;
            		sheet.bola2OutraCaracteristicas6 = false;
            	elseif sheet.bola1OutraCaracteristicas6 == false then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = false;
            		sheet.bola2OutraCaracteristicas6 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas7 == true then
            		sheet.bola4OutraCaracteristicas7 = true;
            		sheet.bola3OutraCaracteristicas7 = true;
            		sheet.bola2OutraCaracteristicas7 = true;
            		sheet.bola1OutraCaracteristicas7 = true;
            	elseif sheet.bola4OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = true;
            		sheet.bola2OutraCaracteristicas7 = true;
            		sheet.bola1OutraCaracteristicas7 = true;
            	elseif sheet.bola3OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola2OutraCaracteristicas7 = true;
            		sheet.bola1OutraCaracteristicas7 = true;
            	elseif sheet.bola2OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = false;
            		sheet.bola1OutraCaracteristicas7 = true;	
            	elseif sheet.bola1OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = false;
            		sheet.bola2OutraCaracteristicas7 = false;
            	elseif sheet.bola1OutraCaracteristicas7 == false then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = false;
            		sheet.bola2OutraCaracteristicas7 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas8 == true then
            		sheet.bola4OutraCaracteristicas8 = true;
            		sheet.bola3OutraCaracteristicas8 = true;
            		sheet.bola2OutraCaracteristicas8 = true;
            		sheet.bola1OutraCaracteristicas8 = true;
            	elseif sheet.bola4OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = true;
            		sheet.bola2OutraCaracteristicas8 = true;
            		sheet.bola1OutraCaracteristicas8 = true;
            	elseif sheet.bola3OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola2OutraCaracteristicas8 = true;
            		sheet.bola1OutraCaracteristicas8 = true;
            	elseif sheet.bola2OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = false;
            		sheet.bola1OutraCaracteristicas8 = true;	
            	elseif sheet.bola1OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = false;
            		sheet.bola2OutraCaracteristicas8 = false;
            	elseif sheet.bola1OutraCaracteristicas8 == false then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = false;
            		sheet.bola2OutraCaracteristicas8 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas9 == true then
            		sheet.bola4OutraCaracteristicas9 = true;
            		sheet.bola3OutraCaracteristicas9 = true;
            		sheet.bola2OutraCaracteristicas9 = true;
            		sheet.bola1OutraCaracteristicas9 = true;
            	elseif sheet.bola4OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = true;
            		sheet.bola2OutraCaracteristicas9 = true;
            		sheet.bola1OutraCaracteristicas9 = true;
            	elseif sheet.bola3OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola2OutraCaracteristicas9 = true;
            		sheet.bola1OutraCaracteristicas9 = true;
            	elseif sheet.bola2OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = false;
            		sheet.bola1OutraCaracteristicas9 = true;	
            	elseif sheet.bola1OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = false;
            		sheet.bola2OutraCaracteristicas9 = false;
            	elseif sheet.bola1OutraCaracteristicas9 == false then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = false;
            		sheet.bola2OutraCaracteristicas9 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas10 == true then
            		sheet.bola4OutraCaracteristicas10 = true;
            		sheet.bola3OutraCaracteristicas10 = true;
            		sheet.bola2OutraCaracteristicas10 = true;
            		sheet.bola1OutraCaracteristicas10 = true;
            	elseif sheet.bola4OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = true;
            		sheet.bola2OutraCaracteristicas10 = true;
            		sheet.bola1OutraCaracteristicas10 = true;
            	elseif sheet.bola3OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola2OutraCaracteristicas10 = true;
            		sheet.bola1OutraCaracteristicas10 = true;
            	elseif sheet.bola2OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = false;
            		sheet.bola1OutraCaracteristicas10 = true;	
            	elseif sheet.bola1OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = false;
            		sheet.bola2OutraCaracteristicas10 = false;
            	elseif sheet.bola1OutraCaracteristicas10 == false then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = false;
            		sheet.bola2OutraCaracteristicas10 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas11 == true then
            		sheet.bola4OutraCaracteristicas11 = true;
            		sheet.bola3OutraCaracteristicas11 = true;
            		sheet.bola2OutraCaracteristicas11 = true;
            		sheet.bola1OutraCaracteristicas11 = true;
            	elseif sheet.bola4OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = true;
            		sheet.bola2OutraCaracteristicas11 = true;
            		sheet.bola1OutraCaracteristicas11 = true;
            	elseif sheet.bola3OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola2OutraCaracteristicas11 = true;
            		sheet.bola1OutraCaracteristicas11 = true;
            	elseif sheet.bola2OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = false;
            		sheet.bola1OutraCaracteristicas11 = true;	
            	elseif sheet.bola1OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = false;
            		sheet.bola2OutraCaracteristicas11 = false;
            	elseif sheet.bola1OutraCaracteristicas11 == false then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = false;
            		sheet.bola2OutraCaracteristicas11 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas12 == true then
            		sheet.bola4OutraCaracteristicas12 = true;
            		sheet.bola3OutraCaracteristicas12 = true;
            		sheet.bola2OutraCaracteristicas12 = true;
            		sheet.bola1OutraCaracteristicas12 = true;
            	elseif sheet.bola4OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = true;
            		sheet.bola2OutraCaracteristicas12 = true;
            		sheet.bola1OutraCaracteristicas12 = true;
            	elseif sheet.bola3OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola2OutraCaracteristicas12 = true;
            		sheet.bola1OutraCaracteristicas12 = true;
            	elseif sheet.bola2OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = false;
            		sheet.bola1OutraCaracteristicas12 = true;	
            	elseif sheet.bola1OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = false;
            		sheet.bola2OutraCaracteristicas12 = false;
            	elseif sheet.bola1OutraCaracteristicas12 == false then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = false;
            		sheet.bola2OutraCaracteristicas12 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas13 == true then
            		sheet.bola4OutraCaracteristicas13 = true;
            		sheet.bola3OutraCaracteristicas13 = true;
            		sheet.bola2OutraCaracteristicas13 = true;
            		sheet.bola1OutraCaracteristicas13 = true;
            	elseif sheet.bola4OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = true;
            		sheet.bola2OutraCaracteristicas13 = true;
            		sheet.bola1OutraCaracteristicas13 = true;
            	elseif sheet.bola3OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola2OutraCaracteristicas13 = true;
            		sheet.bola1OutraCaracteristicas13 = true;
            	elseif sheet.bola2OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = false;
            		sheet.bola1OutraCaracteristicas13 = true;	
            	elseif sheet.bola1OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = false;
            		sheet.bola2OutraCaracteristicas13 = false;
            	elseif sheet.bola1OutraCaracteristicas13 == false then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = false;
            		sheet.bola2OutraCaracteristicas13 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas14 == true then
            		sheet.bola4OutraCaracteristicas14 = true;
            		sheet.bola3OutraCaracteristicas14 = true;
            		sheet.bola2OutraCaracteristicas14 = true;
            		sheet.bola1OutraCaracteristicas14 = true;
            	elseif sheet.bola4OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = true;
            		sheet.bola2OutraCaracteristicas14 = true;
            		sheet.bola1OutraCaracteristicas14 = true;
            	elseif sheet.bola3OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola2OutraCaracteristicas14 = true;
            		sheet.bola1OutraCaracteristicas14 = true;
            	elseif sheet.bola2OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = false;
            		sheet.bola1OutraCaracteristicas14 = true;	
            	elseif sheet.bola1OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = false;
            		sheet.bola2OutraCaracteristicas14 = false;
            	elseif sheet.bola1OutraCaracteristicas14 == false then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = false;
            		sheet.bola2OutraCaracteristicas14 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas15 == true then
            		sheet.bola4OutraCaracteristicas15 = true;
            		sheet.bola3OutraCaracteristicas15 = true;
            		sheet.bola2OutraCaracteristicas15 = true;
            		sheet.bola1OutraCaracteristicas15 = true;
            	elseif sheet.bola4OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = true;
            		sheet.bola2OutraCaracteristicas15 = true;
            		sheet.bola1OutraCaracteristicas15 = true;
            	elseif sheet.bola3OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola2OutraCaracteristicas15 = true;
            		sheet.bola1OutraCaracteristicas15 = true;
            	elseif sheet.bola2OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = false;
            		sheet.bola1OutraCaracteristicas15 = true;	
            	elseif sheet.bola1OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = false;
            		sheet.bola2OutraCaracteristicas15 = false;
            	elseif sheet.bola1OutraCaracteristicas15 == false then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = false;
            		sheet.bola2OutraCaracteristicas15 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas16 == true then
            		sheet.bola4OutraCaracteristicas16 = true;
            		sheet.bola3OutraCaracteristicas16 = true;
            		sheet.bola2OutraCaracteristicas16 = true;
            		sheet.bola1OutraCaracteristicas16 = true;
            	elseif sheet.bola4OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = true;
            		sheet.bola2OutraCaracteristicas16 = true;
            		sheet.bola1OutraCaracteristicas16 = true;
            	elseif sheet.bola3OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola2OutraCaracteristicas16 = true;
            		sheet.bola1OutraCaracteristicas16 = true;
            	elseif sheet.bola2OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = false;
            		sheet.bola1OutraCaracteristicas16 = true;	
            	elseif sheet.bola1OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = false;
            		sheet.bola2OutraCaracteristicas16 = false;
            	elseif sheet.bola1OutraCaracteristicas16 == false then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = false;
            		sheet.bola2OutraCaracteristicas16 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas17 == true then
            		sheet.bola4OutraCaracteristicas17 = true;
            		sheet.bola3OutraCaracteristicas17 = true;
            		sheet.bola2OutraCaracteristicas17 = true;
            		sheet.bola1OutraCaracteristicas17 = true;
            	elseif sheet.bola4OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = true;
            		sheet.bola2OutraCaracteristicas17 = true;
            		sheet.bola1OutraCaracteristicas17 = true;
            	elseif sheet.bola3OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola2OutraCaracteristicas17 = true;
            		sheet.bola1OutraCaracteristicas17 = true;
            	elseif sheet.bola2OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = false;
            		sheet.bola1OutraCaracteristicas17 = true;	
            	elseif sheet.bola1OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = false;
            		sheet.bola2OutraCaracteristicas17 = false;
            	elseif sheet.bola1OutraCaracteristicas17 == false then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = false;
            		sheet.bola2OutraCaracteristicas17 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas18 == true then
            		sheet.bola4OutraCaracteristicas18 = true;
            		sheet.bola3OutraCaracteristicas18 = true;
            		sheet.bola2OutraCaracteristicas18 = true;
            		sheet.bola1OutraCaracteristicas18 = true;
            	elseif sheet.bola4OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = true;
            		sheet.bola2OutraCaracteristicas18 = true;
            		sheet.bola1OutraCaracteristicas18 = true;
            	elseif sheet.bola3OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola2OutraCaracteristicas18 = true;
            		sheet.bola1OutraCaracteristicas18 = true;
            	elseif sheet.bola2OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = false;
            		sheet.bola1OutraCaracteristicas18 = true;	
            	elseif sheet.bola1OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = false;
            		sheet.bola2OutraCaracteristicas18 = false;
            	elseif sheet.bola1OutraCaracteristicas18 == false then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = false;
            		sheet.bola2OutraCaracteristicas18 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas19 == true then
            		sheet.bola4OutraCaracteristicas19 = true;
            		sheet.bola3OutraCaracteristicas19 = true;
            		sheet.bola2OutraCaracteristicas19 = true;
            		sheet.bola1OutraCaracteristicas19 = true;
            	elseif sheet.bola4OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = true;
            		sheet.bola2OutraCaracteristicas19 = true;
            		sheet.bola1OutraCaracteristicas19 = true;
            	elseif sheet.bola3OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola2OutraCaracteristicas19 = true;
            		sheet.bola1OutraCaracteristicas19 = true;
            	elseif sheet.bola2OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = false;
            		sheet.bola1OutraCaracteristicas19 = true;	
            	elseif sheet.bola1OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = false;
            		sheet.bola2OutraCaracteristicas19 = false;
            	elseif sheet.bola1OutraCaracteristicas19 == false then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = false;
            		sheet.bola2OutraCaracteristicas19 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas20 == true then
            		sheet.bola4OutraCaracteristicas20 = true;
            		sheet.bola3OutraCaracteristicas20 = true;
            		sheet.bola2OutraCaracteristicas20 = true;
            		sheet.bola1OutraCaracteristicas20 = true;
            	elseif sheet.bola4OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = true;
            		sheet.bola2OutraCaracteristicas20 = true;
            		sheet.bola1OutraCaracteristicas20 = true;
            	elseif sheet.bola3OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola2OutraCaracteristicas20 = true;
            		sheet.bola1OutraCaracteristicas20 = true;
            	elseif sheet.bola2OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = false;
            		sheet.bola1OutraCaracteristicas20 = true;	
            	elseif sheet.bola1OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = false;
            		sheet.bola2OutraCaracteristicas20 = false;
            	elseif sheet.bola1OutraCaracteristicas20 == false then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = false;
            		sheet.bola2OutraCaracteristicas20 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas21 == true then
            		sheet.bola4OutraCaracteristicas21 = true;
            		sheet.bola3OutraCaracteristicas21 = true;
            		sheet.bola2OutraCaracteristicas21 = true;
            		sheet.bola1OutraCaracteristicas21 = true;
            	elseif sheet.bola4OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = true;
            		sheet.bola2OutraCaracteristicas21 = true;
            		sheet.bola1OutraCaracteristicas21 = true;
            	elseif sheet.bola3OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola2OutraCaracteristicas21 = true;
            		sheet.bola1OutraCaracteristicas21 = true;
            	elseif sheet.bola2OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = false;
            		sheet.bola1OutraCaracteristicas21 = true;	
            	elseif sheet.bola1OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = false;
            		sheet.bola2OutraCaracteristicas21 = false;
            	elseif sheet.bola1OutraCaracteristicas21 == false then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = false;
            		sheet.bola2OutraCaracteristicas21 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
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
