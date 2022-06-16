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
    obj.dataLink1:setFields({'Pata5C1', 'Pata4C1', 'Pata3C1', 'Pata2C1', 'Pata1C1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'Pata5C2', 'Pata4C2', 'Pata3C2', 'Pata2C2', 'Pata1C2'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'Pata5C3', 'Pata4C3', 'Pata3C3', 'Pata2C3', 'Pata1C3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'Pata5C4', 'Pata4C4', 'Pata3C4', 'Pata2C4', 'Pata1C4'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'Pata5C5', 'Pata4C5', 'Pata3C5', 'Pata2C5', 'Pata1C5'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'Pata5C6', 'Pata4C6', 'Pata3C6', 'Pata2C6', 'Pata1C6'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'Pata5C7', 'Pata4C7', 'Pata3C7', 'Pata2C7', 'Pata1C7'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'Pata5C8', 'Pata4C8', 'Pata3C8', 'Pata2C8', 'Pata1C8'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'Pata5C9', 'Pata4C9', 'Pata3C9', 'Pata2C9', 'Pata1C9'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'Pata5C10', 'Pata4C10', 'Pata3C10', 'Pata2C10', 'Pata1C10'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'Pata5C11', 'Pata4C11', 'Pata3C11', 'Pata2C11', 'Pata1C11'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'Pata5C12', 'Pata4C12', 'Pata3C12', 'Pata2C12', 'Pata1C12'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'Pata5C13', 'Pata4C13', 'Pata3C13', 'Pata2C13', 'Pata1C13'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'Pata5C14', 'Pata4C14', 'Pata3C14', 'Pata2C14', 'Pata1C14'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'Pata5C15', 'Pata4C15', 'Pata3C15', 'Pata2C15', 'Pata1C15'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'Pata5C16', 'Pata4C16', 'Pata3C16', 'Pata2C16', 'Pata1C16'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'Pata5C17', 'Pata4C17', 'Pata3C17', 'Pata2C17', 'Pata1C17'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'Pata5C18', 'Pata4C18', 'Pata3C18', 'Pata2C18', 'Pata1C18'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'Pata5C19', 'Pata4C19', 'Pata3C19', 'Pata2C19', 'Pata1C19'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'Pata5C20', 'Pata4C20', 'Pata3C20', 'Pata2C20', 'Pata1C20'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'Pata5C21', 'Pata4C21', 'Pata3C21', 'Pata2C21', 'Pata1C21'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'Pata5C22', 'Pata4C22', 'Pata3C22', 'Pata2C22', 'Pata1C22'});
    obj.dataLink22:setName("dataLink22");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C1 == true then
            		sheet.Pata4C1 = true;
            		sheet.Pata3C1 = true;
            		sheet.Pata2C1 = true;
            		sheet.Pata1C1 = true;
            	elseif sheet.Pata4C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata3C1 = true;
            		sheet.Pata2C1 = true;
            		sheet.Pata1C1 = true;
            	elseif sheet.Pata3C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata2C1 = true;
            		sheet.Pata1C1 = true;
            	elseif sheet.Pata2C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata3C1 = false;
            		sheet.Pata1C1 = true;	
            	elseif sheet.Pata1C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata3C1 = false;
            		sheet.Pata2C1 = false;
            	elseif sheet.Pata1C1 == false then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata3C1 = false;
            		sheet.Pata2C1 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C2 == true then
            		sheet.Pata4C2 = true;
            		sheet.Pata3C2 = true;
            		sheet.Pata2C2 = true;
            		sheet.Pata1C2 = true;
            	elseif sheet.Pata4C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata3C2 = true;
            		sheet.Pata2C2 = true;
            		sheet.Pata1C2 = true;
            	elseif sheet.Pata3C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata2C2 = true;
            		sheet.Pata1C2 = true;
            	elseif sheet.Pata2C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata3C2 = false;
            		sheet.Pata1C2 = true;	
            	elseif sheet.Pata1C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata3C2 = false;
            		sheet.Pata2C2 = false;
            	elseif sheet.Pata1C2 == false then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata3C2 = false;
            		sheet.Pata2C2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C3 == true then
            		sheet.Pata4C3 = true;
            		sheet.Pata3C3 = true;
            		sheet.Pata2C3 = true;
            		sheet.Pata1C3 = true;
            	elseif sheet.Pata4C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata3C3 = true;
            		sheet.Pata2C3 = true;
            		sheet.Pata1C3 = true;
            	elseif sheet.Pata3C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata2C3 = true;
            		sheet.Pata1C3 = true;
            	elseif sheet.Pata2C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata3C3 = false;
            		sheet.Pata1C3 = true;	
            	elseif sheet.Pata1C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata3C3 = false;
            		sheet.Pata2C3 = false;
            	elseif sheet.Pata1C3 == false then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata3C3 = false;
            		sheet.Pata2C3 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C4 == true then
            		sheet.Pata4C4 = true;
            		sheet.Pata3C4 = true;
            		sheet.Pata2C4 = true;
            		sheet.Pata1C4 = true;
            	elseif sheet.Pata4C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata3C4 = true;
            		sheet.Pata2C4 = true;
            		sheet.Pata1C4 = true;
            	elseif sheet.Pata3C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata2C4 = true;
            		sheet.Pata1C4 = true;
            	elseif sheet.Pata2C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata3C4 = false;
            		sheet.Pata1C4 = true;	
            	elseif sheet.Pata1C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata3C4 = false;
            		sheet.Pata2C4 = false;
            	elseif sheet.Pata1C4 == false then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata3C4 = false;
            		sheet.Pata2C4 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C5 == true then
            		sheet.Pata4C5 = true;
            		sheet.Pata3C5 = true;
            		sheet.Pata2C5 = true;
            		sheet.Pata1C5 = true;
            	elseif sheet.Pata4C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata3C5 = true;
            		sheet.Pata2C5 = true;
            		sheet.Pata1C5 = true;
            	elseif sheet.Pata3C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata2C5 = true;
            		sheet.Pata1C5 = true;
            	elseif sheet.Pata2C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata3C5 = false;
            		sheet.Pata1C5 = true;	
            	elseif sheet.Pata1C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata3C5 = false;
            		sheet.Pata2C5 = false;
            	elseif sheet.Pata1C5 == false then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata3C5 = false;
            		sheet.Pata2C5 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C6 == true then
            		sheet.Pata4C6 = true;
            		sheet.Pata3C6 = true;
            		sheet.Pata2C6 = true;
            		sheet.Pata1C6 = true;
            	elseif sheet.Pata4C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata3C6 = true;
            		sheet.Pata2C6 = true;
            		sheet.Pata1C6 = true;
            	elseif sheet.Pata3C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata2C6 = true;
            		sheet.Pata1C6 = true;
            	elseif sheet.Pata2C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata3C6 = false;
            		sheet.Pata1C6 = true;	
            	elseif sheet.Pata1C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata3C6 = false;
            		sheet.Pata2C6 = false;
            	elseif sheet.Pata1C6 == false then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata3C6 = false;
            		sheet.Pata2C6 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C7 == true then
            		sheet.Pata4C7 = true;
            		sheet.Pata3C7 = true;
            		sheet.Pata2C7 = true;
            		sheet.Pata1C7 = true;
            	elseif sheet.Pata4C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata3C7 = true;
            		sheet.Pata2C7 = true;
            		sheet.Pata1C7 = true;
            	elseif sheet.Pata3C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata2C7 = true;
            		sheet.Pata1C7 = true;
            	elseif sheet.Pata2C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata3C7 = false;
            		sheet.Pata1C7 = true;	
            	elseif sheet.Pata1C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata3C7 = false;
            		sheet.Pata2C7 = false;
            	elseif sheet.Pata1C7 == false then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata3C7 = false;
            		sheet.Pata2C7 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C8 == true then
            		sheet.Pata4C8 = true;
            		sheet.Pata3C8 = true;
            		sheet.Pata2C8 = true;
            		sheet.Pata1C8 = true;
            	elseif sheet.Pata4C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata3C8 = true;
            		sheet.Pata2C8 = true;
            		sheet.Pata1C8 = true;
            	elseif sheet.Pata3C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata2C8 = true;
            		sheet.Pata1C8 = true;
            	elseif sheet.Pata2C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata3C8 = false;
            		sheet.Pata1C8 = true;	
            	elseif sheet.Pata1C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata3C8 = false;
            		sheet.Pata2C8 = false;
            	elseif sheet.Pata1C8 == false then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata3C8 = false;
            		sheet.Pata2C8 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C9 == true then
            		sheet.Pata4C9 = true;
            		sheet.Pata3C9 = true;
            		sheet.Pata2C9 = true;
            		sheet.Pata1C9 = true;
            	elseif sheet.Pata4C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata3C9 = true;
            		sheet.Pata2C9 = true;
            		sheet.Pata1C9 = true;
            	elseif sheet.Pata3C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata2C9 = true;
            		sheet.Pata1C9 = true;
            	elseif sheet.Pata2C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata3C9 = false;
            		sheet.Pata1C9 = true;	
            	elseif sheet.Pata1C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata3C9 = false;
            		sheet.Pata2C9 = false;
            	elseif sheet.Pata1C9 == false then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata3C9 = false;
            		sheet.Pata2C9 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C10 == true then
            		sheet.Pata4C10 = true;
            		sheet.Pata3C10 = true;
            		sheet.Pata2C10 = true;
            		sheet.Pata1C10 = true;
            	elseif sheet.Pata4C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata3C10 = true;
            		sheet.Pata2C10 = true;
            		sheet.Pata1C10 = true;
            	elseif sheet.Pata3C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata2C10 = true;
            		sheet.Pata1C10 = true;
            	elseif sheet.Pata2C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata3C10 = false;
            		sheet.Pata1C10 = true;	
            	elseif sheet.Pata1C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata3C10 = false;
            		sheet.Pata2C10 = false;
            	elseif sheet.Pata1C10 == false then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata3C10 = false;
            		sheet.Pata2C10 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C11 == true then
            		sheet.Pata4C11 = true;
            		sheet.Pata3C11 = true;
            		sheet.Pata2C11 = true;
            		sheet.Pata1C11 = true;
            	elseif sheet.Pata4C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata3C11 = true;
            		sheet.Pata2C11 = true;
            		sheet.Pata1C11 = true;
            	elseif sheet.Pata3C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata2C11 = true;
            		sheet.Pata1C11 = true;
            	elseif sheet.Pata2C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata3C11 = false;
            		sheet.Pata1C11 = true;	
            	elseif sheet.Pata1C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata3C11 = false;
            		sheet.Pata2C11 = false;
            	elseif sheet.Pata1C11 == false then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata3C11 = false;
            		sheet.Pata2C11 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C12 == true then
            		sheet.Pata4C12 = true;
            		sheet.Pata3C12 = true;
            		sheet.Pata2C12 = true;
            		sheet.Pata1C12 = true;
            	elseif sheet.Pata4C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata3C12 = true;
            		sheet.Pata2C12 = true;
            		sheet.Pata1C12 = true;
            	elseif sheet.Pata3C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata2C12 = true;
            		sheet.Pata1C12 = true;
            	elseif sheet.Pata2C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata3C12 = false;
            		sheet.Pata1C12 = true;	
            	elseif sheet.Pata1C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata3C12 = false;
            		sheet.Pata2C12 = false;
            	elseif sheet.Pata1C12 == false then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata3C12 = false;
            		sheet.Pata2C12 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C13 == true then
            		sheet.Pata4C13 = true;
            		sheet.Pata3C13 = true;
            		sheet.Pata2C13 = true;
            		sheet.Pata1C13 = true;
            	elseif sheet.Pata4C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata3C13 = true;
            		sheet.Pata2C13 = true;
            		sheet.Pata1C13 = true;
            	elseif sheet.Pata3C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata2C13 = true;
            		sheet.Pata1C13 = true;
            	elseif sheet.Pata2C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata3C13 = false;
            		sheet.Pata1C13 = true;	
            	elseif sheet.Pata1C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata3C13 = false;
            		sheet.Pata2C13 = false;
            	elseif sheet.Pata1C13 == false then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata3C13 = false;
            		sheet.Pata2C13 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C14 == true then
            		sheet.Pata4C14 = true;
            		sheet.Pata3C14 = true;
            		sheet.Pata2C14 = true;
            		sheet.Pata1C14 = true;
            	elseif sheet.Pata4C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata3C14 = true;
            		sheet.Pata2C14 = true;
            		sheet.Pata1C14 = true;
            	elseif sheet.Pata3C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata2C14 = true;
            		sheet.Pata1C14 = true;
            	elseif sheet.Pata2C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata3C14 = false;
            		sheet.Pata1C14 = true;	
            	elseif sheet.Pata1C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata3C14 = false;
            		sheet.Pata2C14 = false;
            	elseif sheet.Pata1C14 == false then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata3C14 = false;
            		sheet.Pata2C14 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C15 == true then
            		sheet.Pata4C15 = true;
            		sheet.Pata3C15 = true;
            		sheet.Pata2C15 = true;
            		sheet.Pata1C15 = true;
            	elseif sheet.Pata4C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata3C15 = true;
            		sheet.Pata2C15 = true;
            		sheet.Pata1C15 = true;
            	elseif sheet.Pata3C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata2C15 = true;
            		sheet.Pata1C15 = true;
            	elseif sheet.Pata2C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata3C15 = false;
            		sheet.Pata1C15 = true;	
            	elseif sheet.Pata1C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata3C15 = false;
            		sheet.Pata2C15 = false;
            	elseif sheet.Pata1C15 == false then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata3C15 = false;
            		sheet.Pata2C15 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C16 == true then
            		sheet.Pata4C16 = true;
            		sheet.Pata3C16 = true;
            		sheet.Pata2C16 = true;
            		sheet.Pata1C16 = true;
            	elseif sheet.Pata4C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata3C16 = true;
            		sheet.Pata2C16 = true;
            		sheet.Pata1C16 = true;
            	elseif sheet.Pata3C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata2C16 = true;
            		sheet.Pata1C16 = true;
            	elseif sheet.Pata2C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata3C16 = false;
            		sheet.Pata1C16 = true;	
            	elseif sheet.Pata1C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata3C16 = false;
            		sheet.Pata2C16 = false;
            	elseif sheet.Pata1C16 == false then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata3C16 = false;
            		sheet.Pata2C16 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C17 == true then
            		sheet.Pata4C17 = true;
            		sheet.Pata3C17 = true;
            		sheet.Pata2C17 = true;
            		sheet.Pata1C17 = true;
            	elseif sheet.Pata4C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata3C17 = true;
            		sheet.Pata2C17 = true;
            		sheet.Pata1C17 = true;
            	elseif sheet.Pata3C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata2C17 = true;
            		sheet.Pata1C17 = true;
            	elseif sheet.Pata2C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata3C17 = false;
            		sheet.Pata1C17 = true;	
            	elseif sheet.Pata1C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata3C17 = false;
            		sheet.Pata2C17 = false;
            	elseif sheet.Pata1C17 == false then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata3C17 = false;
            		sheet.Pata2C17 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C18 == true then
            		sheet.Pata4C18 = true;
            		sheet.Pata3C18 = true;
            		sheet.Pata2C18 = true;
            		sheet.Pata1C18 = true;
            	elseif sheet.Pata4C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata3C18 = true;
            		sheet.Pata2C18 = true;
            		sheet.Pata1C18 = true;
            	elseif sheet.Pata3C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata2C18 = true;
            		sheet.Pata1C18 = true;
            	elseif sheet.Pata2C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata3C18 = false;
            		sheet.Pata1C18 = true;	
            	elseif sheet.Pata1C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata3C18 = false;
            		sheet.Pata2C18 = false;
            	elseif sheet.Pata1C18 == false then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata3C18 = false;
            		sheet.Pata2C18 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C19 == true then
            		sheet.Pata4C19 = true;
            		sheet.Pata3C19 = true;
            		sheet.Pata2C19 = true;
            		sheet.Pata1C19 = true;
            	elseif sheet.Pata4C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata3C19 = true;
            		sheet.Pata2C19 = true;
            		sheet.Pata1C19 = true;
            	elseif sheet.Pata3C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata2C19 = true;
            		sheet.Pata1C19 = true;
            	elseif sheet.Pata2C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata3C19 = false;
            		sheet.Pata1C19 = true;	
            	elseif sheet.Pata1C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata3C19 = false;
            		sheet.Pata2C19 = false;
            	elseif sheet.Pata1C19 == false then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata3C19 = false;
            		sheet.Pata2C19 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C20 == true then
            		sheet.Pata4C20 = true;
            		sheet.Pata3C20 = true;
            		sheet.Pata2C20 = true;
            		sheet.Pata1C20 = true;
            	elseif sheet.Pata4C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata3C20 = true;
            		sheet.Pata2C20 = true;
            		sheet.Pata1C20 = true;
            	elseif sheet.Pata3C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata2C20 = true;
            		sheet.Pata1C20 = true;
            	elseif sheet.Pata2C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata3C20 = false;
            		sheet.Pata1C20 = true;	
            	elseif sheet.Pata1C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata3C20 = false;
            		sheet.Pata2C20 = false;
            	elseif sheet.Pata1C20 == false then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata3C20 = false;
            		sheet.Pata2C20 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C21 == true then
            		sheet.Pata4C21 = true;
            		sheet.Pata3C21 = true;
            		sheet.Pata2C21 = true;
            		sheet.Pata1C21 = true;
            	elseif sheet.Pata4C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata3C21 = true;
            		sheet.Pata2C21 = true;
            		sheet.Pata1C21 = true;
            	elseif sheet.Pata3C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata2C21 = true;
            		sheet.Pata1C21 = true;
            	elseif sheet.Pata2C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata3C21 = false;
            		sheet.Pata1C21 = true;	
            	elseif sheet.Pata1C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata3C21 = false;
            		sheet.Pata2C21 = false;
            	elseif sheet.Pata1C21 == false then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata3C21 = false;
            		sheet.Pata2C21 = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C22 == true then
            		sheet.Pata4C22 = true;
            		sheet.Pata3C22 = true;
            		sheet.Pata2C22 = true;
            		sheet.Pata1C22 = true;
            	elseif sheet.Pata4C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata3C22 = true;
            		sheet.Pata2C22 = true;
            		sheet.Pata1C22 = true;
            	elseif sheet.Pata3C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata2C22 = true;
            		sheet.Pata1C22 = true;
            	elseif sheet.Pata2C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata3C22 = false;
            		sheet.Pata1C22 = true;	
            	elseif sheet.Pata1C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata3C22 = false;
            		sheet.Pata2C22 = false;
            	elseif sheet.Pata1C22 == false then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata3C22 = false;
            		sheet.Pata2C22 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
