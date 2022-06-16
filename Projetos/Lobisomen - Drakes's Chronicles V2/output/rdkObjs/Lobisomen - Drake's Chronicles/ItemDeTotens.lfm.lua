require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmItemDeTotens()
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
    obj:setName("frmItemDeTotens");
    obj:setHeight(30);
    obj:setTheme("dark");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("top");
    obj.layout1:setWidth(100);
    obj.layout1:setMargins({left=4, right=4, top=4, bottom=4});
    obj.layout1:setName("layout1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setHeight(30);
    obj.button1:setWidth(30);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setFontSize(18);
    obj.edit1:setHeight(40);
    obj.edit1:setWidth(150);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setLeft(40);
    obj.edit1:setText("Totem");
    obj.edit1:setField("Nome");
    obj.edit1:setName("edit1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'Pata5M1', 'Pata4M1', 'Pata3M1', 'Pata2M1', 'Pata1M1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'Pata5M2', 'Pata4M2', 'Pata3M2', 'Pata2M2', 'Pata1M2'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'Pata5M3', 'Pata4M3', 'Pata3M3', 'Pata2M3', 'Pata1M3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'Pata5M4', 'Pata4M4', 'Pata3M4', 'Pata2M4', 'Pata1M4'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'Pata5M5', 'Pata4M5', 'Pata3M5', 'Pata2M5', 'Pata1M5'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'Pata5M6', 'Pata4M6', 'Pata3M6', 'Pata2M6', 'Pata1M6'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'Pata5M7', 'Pata4M7', 'Pata3M7', 'Pata2M7', 'Pata1M7'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'Pata5M8', 'Pata4M8', 'Pata3M8', 'Pata2M8', 'Pata1M8'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'Pata5M9', 'Pata4M9', 'Pata3M9', 'Pata2M9', 'Pata1M9'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'Pata10FT', 'Pata9FT', 'Pata8FT', 'Pata7FT', 'Pata6FT', 'Pata5FT', 'Pata4FT', 'Pata3FT', 'Pata2FT', 'Pata1FT'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'square10FT', 'square9FT', 'square8FT', 'square7FT', 'square6FT', 'square5FT', 'square4FT', 'square3FT', 'square2FT', 'square1FT'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'Pata10GT', 'Pata9GT', 'Pata8GT', 'Pata7GT', 'Pata6GT', 'Pata5GT', 'Pata4GT', 'Pata3GT', 'Pata2GT', 'Pata1GT'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'square10GT', 'square9GT', 'square8GT', 'square7GT', 'square6GT', 'square5GT', 'square4GT', 'square3GT', 'square2GT', 'square1GT'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'Pata10FDVT', 'Pata9FDVT', 'Pata8FDVT', 'Pata7FDVT', 'Pata6FDVT', 'Pata5FDVT', 'Pata4FDVT', 'Pata3FDVT', 'Pata2FDVT', 'Pata1FDVT'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'square10FDVT', 'square9FDVT', 'square8FDVT', 'square7FDVT', 'square6FDVT', 'square5FDVT', 'square4FDVT', 'square3FDVT', 'square2FDVT', 'square1FDVT'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'square10Ess', 'square9Ess', 'square8Ess', 'square7Ess', 'square6Ess', 'square5Ess', 'square4Ess', 'square3Ess', 'square2Ess', 'square1Ess'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'square20Ess', 'square19Ess', 'square18Ess', 'square17Ess', 'square16Ess', 'square15Ess', 'square14Ess', 'square13Ess', 'square12Ess', 'square11Ess'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'square30Ess', 'square29Ess', 'square28Ess', 'square27Ess', 'square26Ess', 'square25Ess', 'square24Ess', 'square23Ess', 'square22Ess', 'square21Ess'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'square40Ess', 'square39Ess', 'square38Ess', 'square37Ess', 'square36Ess', 'square35Ess', 'square34Ess', 'square33Ess', 'square32Ess', 'square31Ess'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'square50Ess', 'square49Ess', 'square48Ess', 'square47Ess', 'square46Ess', 'square45Ess', 'square44Ess', 'square43Ess', 'square42Ess', 'square41Ess'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'square60Ess', 'square59Ess', 'square58Ess', 'square57Ess', 'square56Ess', 'square55Ess', 'square54Ess', 'square53Ess', 'square52Ess', 'square51Ess'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'square70Ess', 'square69Ess', 'square68Ess', 'square67Ess', 'square66Ess', 'square65Ess', 'square64Ess', 'square63Ess', 'square62Ess', 'square61Ess'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'square80Ess', 'square79Ess', 'square78Ess', 'square77Ess', 'square76Ess', 'square75Ess', 'square74Ess', 'square73Ess', 'square72Ess', 'square71Ess'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'square90Ess', 'square89Ess', 'square88Ess', 'square87Ess', 'square86Ess', 'square85Ess', 'square84Ess', 'square83Ess', 'square82Ess', 'square81Ess'});
    obj.dataLink24:setName("dataLink24");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            NDB.deleteNode(sheet);
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M1 == true then
            		sheet.Pata4M1 = true;
            		sheet.Pata3M1 = true;
            		sheet.Pata2M1 = true;
            		sheet.Pata1M1 = true;
            	elseif sheet.Pata4M1 == true then
            		sheet.Pata5M1 = false;
            		sheet.Pata3M1 = true;
            		sheet.Pata2M1 = true;
            		sheet.Pata1M1 = true;
            	elseif sheet.Pata3M1 == true then
            		sheet.Pata5M1 = false;
            		sheet.Pata4M1 = false;
            		sheet.Pata2M1 = true;
            		sheet.Pata1M1 = true;
            	elseif sheet.Pata2M1 == true then
            		sheet.Pata5M1 = false;
            		sheet.Pata4M1 = false;
            		sheet.Pata3M1 = false;
            		sheet.Pata1M1 = true;	
            	elseif sheet.Pata1M1 == true then
            		sheet.Pata5M1 = false;
            		sheet.Pata4M1 = false;
            		sheet.Pata3M1 = false;
            		sheet.Pata2M1 = false;
            	elseif sheet.Pata1M1 == false then
            		sheet.Pata5M1 = false;
            		sheet.Pata4M1 = false;
            		sheet.Pata3M1 = false;
            		sheet.Pata2M1 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M2 == true then
            		sheet.Pata4M2 = true;
            		sheet.Pata3M2 = true;
            		sheet.Pata2M2 = true;
            		sheet.Pata1M2 = true;
            	elseif sheet.Pata4M2 == true then
            		sheet.Pata5M2 = false;
            		sheet.Pata3M2 = true;
            		sheet.Pata2M2 = true;
            		sheet.Pata1M2 = true;
            	elseif sheet.Pata3M2 == true then
            		sheet.Pata5M2 = false;
            		sheet.Pata4M2 = false;
            		sheet.Pata2M2 = true;
            		sheet.Pata1M2 = true;
            	elseif sheet.Pata2M2 == true then
            		sheet.Pata5M2 = false;
            		sheet.Pata4M2 = false;
            		sheet.Pata3M2 = false;
            		sheet.Pata1M2 = true;	
            	elseif sheet.Pata1M2 == true then
            		sheet.Pata5M2 = false;
            		sheet.Pata4M2 = false;
            		sheet.Pata3M2 = false;
            		sheet.Pata2M2 = false;
            	elseif sheet.Pata1M2 == false then
            		sheet.Pata5M2 = false;
            		sheet.Pata4M2 = false;
            		sheet.Pata3M2 = false;
            		sheet.Pata2M2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M3 == true then
            		sheet.Pata4M3 = true;
            		sheet.Pata3M3 = true;
            		sheet.Pata2M3 = true;
            		sheet.Pata1M3 = true;
            	elseif sheet.Pata4M3 == true then
            		sheet.Pata5M3 = false;
            		sheet.Pata3M3 = true;
            		sheet.Pata2M3 = true;
            		sheet.Pata1M3 = true;
            	elseif sheet.Pata3M3 == true then
            		sheet.Pata5M3 = false;
            		sheet.Pata4M3 = false;
            		sheet.Pata2M3 = true;
            		sheet.Pata1M3 = true;
            	elseif sheet.Pata2M3 == true then
            		sheet.Pata5M3 = false;
            		sheet.Pata4M3 = false;
            		sheet.Pata3M3 = false;
            		sheet.Pata1M3 = true;	
            	elseif sheet.Pata1M3 == true then
            		sheet.Pata5M3 = false;
            		sheet.Pata4M3 = false;
            		sheet.Pata3M3 = false;
            		sheet.Pata2M3 = false;
            	elseif sheet.Pata1M3 == false then
            		sheet.Pata5M3 = false;
            		sheet.Pata4M3 = false;
            		sheet.Pata3M3 = false;
            		sheet.Pata2M3 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M4 == true then
            		sheet.Pata4M4 = true;
            		sheet.Pata3M4 = true;
            		sheet.Pata2M4 = true;
            		sheet.Pata1M4 = true;
            	elseif sheet.Pata4M4 == true then
            		sheet.Pata5M4 = false;
            		sheet.Pata3M4 = true;
            		sheet.Pata2M4 = true;
            		sheet.Pata1M4 = true;
            	elseif sheet.Pata3M4 == true then
            		sheet.Pata5M4 = false;
            		sheet.Pata4M4 = false;
            		sheet.Pata2M4 = true;
            		sheet.Pata1M4 = true;
            	elseif sheet.Pata2M4 == true then
            		sheet.Pata5M4 = false;
            		sheet.Pata4M4 = false;
            		sheet.Pata3M4 = false;
            		sheet.Pata1M4 = true;	
            	elseif sheet.Pata1M4 == true then
            		sheet.Pata5M4 = false;
            		sheet.Pata4M4 = false;
            		sheet.Pata3M4 = false;
            		sheet.Pata2M4 = false;
            	elseif sheet.Pata1M4 == false then
            		sheet.Pata5M4 = false;
            		sheet.Pata4M4 = false;
            		sheet.Pata3M4 = false;
            		sheet.Pata2M4 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M5 == true then
            		sheet.Pata4M5 = true;
            		sheet.Pata3M5 = true;
            		sheet.Pata2M5 = true;
            		sheet.Pata1M5 = true;
            	elseif sheet.Pata4M5 == true then
            		sheet.Pata5M5 = false;
            		sheet.Pata3M5 = true;
            		sheet.Pata2M5 = true;
            		sheet.Pata1M5 = true;
            	elseif sheet.Pata3M5 == true then
            		sheet.Pata5M5 = false;
            		sheet.Pata4M5 = false;
            		sheet.Pata2M5 = true;
            		sheet.Pata1M5 = true;
            	elseif sheet.Pata2M5 == true then
            		sheet.Pata5M5 = false;
            		sheet.Pata4M5 = false;
            		sheet.Pata3M5 = false;
            		sheet.Pata1M5 = true;	
            	elseif sheet.Pata1M5 == true then
            		sheet.Pata5M5 = false;
            		sheet.Pata4M5 = false;
            		sheet.Pata3M5 = false;
            		sheet.Pata2M5 = false;
            	elseif sheet.Pata1M5 == false then
            		sheet.Pata5M5 = false;
            		sheet.Pata4M5 = false;
            		sheet.Pata3M5 = false;
            		sheet.Pata2M5 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M6 == true then
            		sheet.Pata4M6 = true;
            		sheet.Pata3M6 = true;
            		sheet.Pata2M6 = true;
            		sheet.Pata1M6 = true;
            	elseif sheet.Pata4M6 == true then
            		sheet.Pata5M6 = false;
            		sheet.Pata3M6 = true;
            		sheet.Pata2M6 = true;
            		sheet.Pata1M6 = true;
            	elseif sheet.Pata3M6 == true then
            		sheet.Pata5M6 = false;
            		sheet.Pata4M6 = false;
            		sheet.Pata2M6 = true;
            		sheet.Pata1M6 = true;
            	elseif sheet.Pata2M6 == true then
            		sheet.Pata5M6 = false;
            		sheet.Pata4M6 = false;
            		sheet.Pata3M6 = false;
            		sheet.Pata1M6 = true;	
            	elseif sheet.Pata1M6 == true then
            		sheet.Pata5M6 = false;
            		sheet.Pata4M6 = false;
            		sheet.Pata3M6 = false;
            		sheet.Pata2M6 = false;
            	elseif sheet.Pata1M6 == false then
            		sheet.Pata5M6 = false;
            		sheet.Pata4M6 = false;
            		sheet.Pata3M6 = false;
            		sheet.Pata2M6 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M7 == true then
            		sheet.Pata4M7 = true;
            		sheet.Pata3M7 = true;
            		sheet.Pata2M7 = true;
            		sheet.Pata1M7 = true;
            	elseif sheet.Pata4M7 == true then
            		sheet.Pata5M7 = false;
            		sheet.Pata3M7 = true;
            		sheet.Pata2M7 = true;
            		sheet.Pata1M7 = true;
            	elseif sheet.Pata3M7 == true then
            		sheet.Pata5M7 = false;
            		sheet.Pata4M7 = false;
            		sheet.Pata2M7 = true;
            		sheet.Pata1M7 = true;
            	elseif sheet.Pata2M7 == true then
            		sheet.Pata5M7 = false;
            		sheet.Pata4M7 = false;
            		sheet.Pata3M7 = false;
            		sheet.Pata1M7 = true;	
            	elseif sheet.Pata1M7 == true then
            		sheet.Pata5M7 = false;
            		sheet.Pata4M7 = false;
            		sheet.Pata3M7 = false;
            		sheet.Pata2M7 = false;
            	elseif sheet.Pata1M7 == false then
            		sheet.Pata5M7 = false;
            		sheet.Pata4M7 = false;
            		sheet.Pata3M7 = false;
            		sheet.Pata2M7 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M8 == true then
            		sheet.Pata4M8 = true;
            		sheet.Pata3M8 = true;
            		sheet.Pata2M8 = true;
            		sheet.Pata1M8 = true;
            	elseif sheet.Pata4M8 == true then
            		sheet.Pata5M8 = false;
            		sheet.Pata3M8 = true;
            		sheet.Pata2M8 = true;
            		sheet.Pata1M8 = true;
            	elseif sheet.Pata3M8 == true then
            		sheet.Pata5M8 = false;
            		sheet.Pata4M8 = false;
            		sheet.Pata2M8 = true;
            		sheet.Pata1M8 = true;
            	elseif sheet.Pata2M8 == true then
            		sheet.Pata5M8 = false;
            		sheet.Pata4M8 = false;
            		sheet.Pata3M8 = false;
            		sheet.Pata1M8 = true;	
            	elseif sheet.Pata1M8 == true then
            		sheet.Pata5M8 = false;
            		sheet.Pata4M8 = false;
            		sheet.Pata3M8 = false;
            		sheet.Pata2M8 = false;
            	elseif sheet.Pata1M8 == false then
            		sheet.Pata5M8 = false;
            		sheet.Pata4M8 = false;
            		sheet.Pata3M8 = false;
            		sheet.Pata2M8 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5M9 == true then
            		sheet.Pata4M9 = true;
            		sheet.Pata3M9 = true;
            		sheet.Pata2M9 = true;
            		sheet.Pata1M9 = true;
            	elseif sheet.Pata4M9 == true then
            		sheet.Pata5M9 = false;
            		sheet.Pata3M9 = true;
            		sheet.Pata2M9 = true;
            		sheet.Pata1M9 = true;
            	elseif sheet.Pata3M9 == true then
            		sheet.Pata5M9 = false;
            		sheet.Pata4M9 = false;
            		sheet.Pata2M9 = true;
            		sheet.Pata1M9 = true;
            	elseif sheet.Pata2M9 == true then
            		sheet.Pata5M9 = false;
            		sheet.Pata4M9 = false;
            		sheet.Pata3M9 = false;
            		sheet.Pata1M9 = true;	
            	elseif sheet.Pata1M9 == true then
            		sheet.Pata5M9 = false;
            		sheet.Pata4M9 = false;
            		sheet.Pata3M9 = false;
            		sheet.Pata2M9 = false;
            	elseif sheet.Pata1M9 == false then
            		sheet.Pata5M9 = false;
            		sheet.Pata4M9 = false;
            		sheet.Pata3M9 = false;
            		sheet.Pata2M9 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10FT == true then
            		sheet.Pata9FT = true;
            		sheet.Pata8FT = true;
            		sheet.Pata7FT = true;
            		sheet.Pata6FT = true;
            		sheet.Pata5FT = true;
            		sheet.Pata4FT = true;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata9FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata8FT = true;
            		sheet.Pata7FT = true;
            		sheet.Pata6FT = true;
            		sheet.Pata5FT = true;
            		sheet.Pata4FT = true;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata8FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata7FT = true;
            		sheet.Pata6FT = true;
            		sheet.Pata5FT = true;
            		sheet.Pata4FT = true;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata7FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata6FT = true;
            		sheet.Pata5FT = true;
            		sheet.Pata4FT = true;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata6FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata5FT = true;
            		sheet.Pata4FT = true;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata5FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata6FT = false;
            		sheet.Pata4FT = true;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata4FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata6FT = false;
            		sheet.Pata5FT = false;
            		sheet.Pata3FT = true;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata3FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata6FT = false;
            		sheet.Pata5FT = false;
            		sheet.Pata4FT = false;
            		sheet.Pata2FT = true;
            		sheet.Pata1FT = true;
            	elseif sheet.Pata2FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata6FT = false;
            		sheet.Pata5FT = false;
            		sheet.Pata4FT = false;
            		sheet.Pata3FT = false;
            		sheet.Pata1FT = true;	
            	elseif sheet.Pata1FT == true then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata6FT = false;
            		sheet.Pata5FT = false;
            		sheet.Pata4FT = false;
            		sheet.Pata3FT = false;
            		sheet.Pata2FT = false;
            	elseif sheet.Pata1FT == false then
            		sheet.Pata10FT = false;
            		sheet.Pata9FT = false;
            		sheet.Pata8FT = false;
            		sheet.Pata7FT = false;
            		sheet.Pata6FT = false;
            		sheet.Pata5FT = false;
            		sheet.Pata4FT = false;
            		sheet.Pata3FT = false;
            		sheet.Pata2FT = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10FT == true then
            		sheet.square9FT = true;
            		sheet.square8FT = true;
            		sheet.square7FT = true;
            		sheet.square6FT = true;
            		sheet.square5FT = true;
            		sheet.square4FT = true;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square9FT == true then
            		sheet.square10FT = false;
            		sheet.square8FT = true;
            		sheet.square7FT = true;
            		sheet.square6FT = true;
            		sheet.square5FT = true;
            		sheet.square4FT = true;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square8FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square7FT = true;
            		sheet.square6FT = true;
            		sheet.square5FT = true;
            		sheet.square4FT = true;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square7FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square6FT = true;
            		sheet.square5FT = true;
            		sheet.square4FT = true;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square6FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square5FT = true;
            		sheet.square4FT = true;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square5FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square6FT = false;
            		sheet.square4FT = true;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square4FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square6FT = false;
            		sheet.square5FT = false;
            		sheet.square3FT = true;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square3FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square6FT = false;
            		sheet.square5FT = false;
            		sheet.square4FT = false;
            		sheet.square2FT = true;
            		sheet.square1FT = true;
            	elseif sheet.square2FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square6FT = false;
            		sheet.square5FT = false;
            		sheet.square4FT = false;
            		sheet.square3FT = false;
            		sheet.square1FT = true;	
            	elseif sheet.square1FT == true then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square6FT = false;
            		sheet.square5FT = false;
            		sheet.square4FT = false;
            		sheet.square3FT = false;
            		sheet.square2FT = false;
            	elseif sheet.square1FT == false then
            		sheet.square10FT = false;
            		sheet.square9FT = false;
            		sheet.square8FT = false;
            		sheet.square7FT = false;
            		sheet.square6FT = false;
            		sheet.square5FT = false;
            		sheet.square4FT = false;
            		sheet.square3FT = false;
            		sheet.square2FT = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10GT == true then
            		sheet.Pata9GT = true;
            		sheet.Pata8GT = true;
            		sheet.Pata7GT = true;
            		sheet.Pata6GT = true;
            		sheet.Pata5GT = true;
            		sheet.Pata4GT = true;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata9GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata8GT = true;
            		sheet.Pata7GT = true;
            		sheet.Pata6GT = true;
            		sheet.Pata5GT = true;
            		sheet.Pata4GT = true;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata8GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata7GT = true;
            		sheet.Pata6GT = true;
            		sheet.Pata5GT = true;
            		sheet.Pata4GT = true;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata7GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata6GT = true;
            		sheet.Pata5GT = true;
            		sheet.Pata4GT = true;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata6GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata5GT = true;
            		sheet.Pata4GT = true;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata5GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata6GT = false;
            		sheet.Pata4GT = true;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata4GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata6GT = false;
            		sheet.Pata5GT = false;
            		sheet.Pata3GT = true;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata3GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata6GT = false;
            		sheet.Pata5GT = false;
            		sheet.Pata4GT = false;
            		sheet.Pata2GT = true;
            		sheet.Pata1GT = true;
            	elseif sheet.Pata2GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata6GT = false;
            		sheet.Pata5GT = false;
            		sheet.Pata4GT = false;
            		sheet.Pata3GT = false;
            		sheet.Pata1GT = true;	
            	elseif sheet.Pata1GT == true then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata6GT = false;
            		sheet.Pata5GT = false;
            		sheet.Pata4GT = false;
            		sheet.Pata3GT = false;
            		sheet.Pata2GT = false;
            	elseif sheet.Pata1GT == false then
            		sheet.Pata10GT = false;
            		sheet.Pata9GT = false;
            		sheet.Pata8GT = false;
            		sheet.Pata7GT = false;
            		sheet.Pata6GT = false;
            		sheet.Pata5GT = false;
            		sheet.Pata4GT = false;
            		sheet.Pata3GT = false;
            		sheet.Pata2GT = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10GT == true then
            		sheet.square9GT = true;
            		sheet.square8GT = true;
            		sheet.square7GT = true;
            		sheet.square6GT = true;
            		sheet.square5GT = true;
            		sheet.square4GT = true;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square9GT == true then
            		sheet.square10GT = false;
            		sheet.square8GT = true;
            		sheet.square7GT = true;
            		sheet.square6GT = true;
            		sheet.square5GT = true;
            		sheet.square4GT = true;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square8GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square7GT = true;
            		sheet.square6GT = true;
            		sheet.square5GT = true;
            		sheet.square4GT = true;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square7GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square6GT = true;
            		sheet.square5GT = true;
            		sheet.square4GT = true;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square6GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square5GT = true;
            		sheet.square4GT = true;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square5GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square6GT = false;
            		sheet.square4GT = true;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square4GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square6GT = false;
            		sheet.square5GT = false;
            		sheet.square3GT = true;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square3GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square6GT = false;
            		sheet.square5GT = false;
            		sheet.square4GT = false;
            		sheet.square2GT = true;
            		sheet.square1GT = true;
            	elseif sheet.square2GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square6GT = false;
            		sheet.square5GT = false;
            		sheet.square4GT = false;
            		sheet.square3GT = false;
            		sheet.square1GT = true;	
            	elseif sheet.square1GT == true then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square6GT = false;
            		sheet.square5GT = false;
            		sheet.square4GT = false;
            		sheet.square3GT = false;
            		sheet.square2GT = false;
            	elseif sheet.square1GT == false then
            		sheet.square10GT = false;
            		sheet.square9GT = false;
            		sheet.square8GT = false;
            		sheet.square7GT = false;
            		sheet.square6GT = false;
            		sheet.square5GT = false;
            		sheet.square4GT = false;
            		sheet.square3GT = false;
            		sheet.square2GT = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10FDVT == true then
            		sheet.Pata9FDVT = true;
            		sheet.Pata8FDVT = true;
            		sheet.Pata7FDVT = true;
            		sheet.Pata6FDVT = true;
            		sheet.Pata5FDVT = true;
            		sheet.Pata4FDVT = true;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata9FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata8FDVT = true;
            		sheet.Pata7FDVT = true;
            		sheet.Pata6FDVT = true;
            		sheet.Pata5FDVT = true;
            		sheet.Pata4FDVT = true;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata8FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata7FDVT = true;
            		sheet.Pata6FDVT = true;
            		sheet.Pata5FDVT = true;
            		sheet.Pata4FDVT = true;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata7FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata6FDVT = true;
            		sheet.Pata5FDVT = true;
            		sheet.Pata4FDVT = true;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata6FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata5FDVT = true;
            		sheet.Pata4FDVT = true;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata5FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata6FDVT = false;
            		sheet.Pata4FDVT = true;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata4FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata6FDVT = false;
            		sheet.Pata5FDVT = false;
            		sheet.Pata3FDVT = true;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata3FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata6FDVT = false;
            		sheet.Pata5FDVT = false;
            		sheet.Pata4FDVT = false;
            		sheet.Pata2FDVT = true;
            		sheet.Pata1FDVT = true;
            	elseif sheet.Pata2FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata6FDVT = false;
            		sheet.Pata5FDVT = false;
            		sheet.Pata4FDVT = false;
            		sheet.Pata3FDVT = false;
            		sheet.Pata1FDVT = true;	
            	elseif sheet.Pata1FDVT == true then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata6FDVT = false;
            		sheet.Pata5FDVT = false;
            		sheet.Pata4FDVT = false;
            		sheet.Pata3FDVT = false;
            		sheet.Pata2FDVT = false;
            	elseif sheet.Pata1FDVT == false then
            		sheet.Pata10FDVT = false;
            		sheet.Pata9FDVT = false;
            		sheet.Pata8FDVT = false;
            		sheet.Pata7FDVT = false;
            		sheet.Pata6FDVT = false;
            		sheet.Pata5FDVT = false;
            		sheet.Pata4FDVT = false;
            		sheet.Pata3FDVT = false;
            		sheet.Pata2FDVT = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10FDVT == true then
            		sheet.square9FDVT = true;
            		sheet.square8FDVT = true;
            		sheet.square7FDVT = true;
            		sheet.square6FDVT = true;
            		sheet.square5FDVT = true;
            		sheet.square4FDVT = true;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square9FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square8FDVT = true;
            		sheet.square7FDVT = true;
            		sheet.square6FDVT = true;
            		sheet.square5FDVT = true;
            		sheet.square4FDVT = true;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square8FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square7FDVT = true;
            		sheet.square6FDVT = true;
            		sheet.square5FDVT = true;
            		sheet.square4FDVT = true;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square7FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square6FDVT = true;
            		sheet.square5FDVT = true;
            		sheet.square4FDVT = true;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square6FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square5FDVT = true;
            		sheet.square4FDVT = true;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square5FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square6FDVT = false;
            		sheet.square4FDVT = true;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square4FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square6FDVT = false;
            		sheet.square5FDVT = false;
            		sheet.square3FDVT = true;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square3FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square6FDVT = false;
            		sheet.square5FDVT = false;
            		sheet.square4FDVT = false;
            		sheet.square2FDVT = true;
            		sheet.square1FDVT = true;
            	elseif sheet.square2FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square6FDVT = false;
            		sheet.square5FDVT = false;
            		sheet.square4FDVT = false;
            		sheet.square3FDVT = false;
            		sheet.square1FDVT = true;	
            	elseif sheet.square1FDVT == true then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square6FDVT = false;
            		sheet.square5FDVT = false;
            		sheet.square4FDVT = false;
            		sheet.square3FDVT = false;
            		sheet.square2FDVT = false;
            	elseif sheet.square1FDVT == false then
            		sheet.square10FDVT = false;
            		sheet.square9FDVT = false;
            		sheet.square8FDVT = false;
            		sheet.square7FDVT = false;
            		sheet.square6FDVT = false;
            		sheet.square5FDVT = false;
            		sheet.square4FDVT = false;
            		sheet.square3FDVT = false;
            		sheet.square2FDVT = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Ess == true then
            		sheet.square9Ess = true;
            		sheet.square8Ess = true;
            		sheet.square7Ess = true;
            		sheet.square6Ess = true;
            		sheet.square5Ess = true;
            		sheet.square4Ess = true;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square9Ess == true then
            		sheet.square10Ess = false;
            		sheet.square8Ess = true;
            		sheet.square7Ess = true;
            		sheet.square6Ess = true;
            		sheet.square5Ess = true;
            		sheet.square4Ess = true;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square8Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square7Ess = true;
            		sheet.square6Ess = true;
            		sheet.square5Ess = true;
            		sheet.square4Ess = true;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square7Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square6Ess = true;
            		sheet.square5Ess = true;
            		sheet.square4Ess = true;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square6Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square5Ess = true;
            		sheet.square4Ess = true;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square5Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square6Ess = false;
            		sheet.square4Ess = true;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square4Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square6Ess = false;
            		sheet.square5Ess = false;
            		sheet.square3Ess = true;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square3Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square6Ess = false;
            		sheet.square5Ess = false;
            		sheet.square4Ess = false;
            		sheet.square2Ess = true;
            		sheet.square1Ess = true;
            	elseif sheet.square2Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square6Ess = false;
            		sheet.square5Ess = false;
            		sheet.square4Ess = false;
            		sheet.square3Ess = false;
            		sheet.square1Ess = true;	
            	elseif sheet.square1Ess == true then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square6Ess = false;
            		sheet.square5Ess = false;
            		sheet.square4Ess = false;
            		sheet.square3Ess = false;
            		sheet.square2Ess = false;
            	elseif sheet.square1Ess == false then
            		sheet.square10Ess = false;
            		sheet.square9Ess = false;
            		sheet.square8Ess = false;
            		sheet.square7Ess = false;
            		sheet.square6Ess = false;
            		sheet.square5Ess = false;
            		sheet.square4Ess = false;
            		sheet.square3Ess = false;
            		sheet.square2Ess = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square20Ess == true then
            		sheet.square19Ess = true;
            		sheet.square18Ess = true;
            		sheet.square17Ess = true;
            		sheet.square16Ess = true;
            		sheet.square15Ess = true;
            		sheet.square14Ess = true;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square19Ess == true then
            		sheet.square20Ess = false;
            		sheet.square18Ess = true;
            		sheet.square17Ess = true;
            		sheet.square16Ess = true;
            		sheet.square15Ess = true;
            		sheet.square14Ess = true;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square18Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square17Ess = true;
            		sheet.square16Ess = true;
            		sheet.square15Ess = true;
            		sheet.square14Ess = true;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square17Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square16Ess = true;
            		sheet.square15Ess = true;
            		sheet.square14Ess = true;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square16Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square15Ess = true;
            		sheet.square14Ess = true;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square15Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square16Ess = false;
            		sheet.square14Ess = true;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square14Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square16Ess = false;
            		sheet.square15Ess = false;
            		sheet.square13Ess = true;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square13Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square16Ess = false;
            		sheet.square15Ess = false;
            		sheet.square14Ess = false;
            		sheet.square12Ess = true;
            		sheet.square11Ess = true;
            	elseif sheet.square12Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square16Ess = false;
            		sheet.square15Ess = false;
            		sheet.square14Ess = false;
            		sheet.square13Ess = false;
            		sheet.square11Ess = true;	
            	elseif sheet.square11Ess == true then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square16Ess = false;
            		sheet.square15Ess = false;
            		sheet.square14Ess = false;
            		sheet.square13Ess = false;
            		sheet.square12Ess = false;
            	elseif sheet.square11Ess == false then
            		sheet.square20Ess = false;
            		sheet.square19Ess = false;
            		sheet.square18Ess = false;
            		sheet.square17Ess = false;
            		sheet.square16Ess = false;
            		sheet.square15Ess = false;
            		sheet.square14Ess = false;
            		sheet.square13Ess = false;
            		sheet.square12Ess = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square30Ess == true then
            		sheet.square29Ess = true;
            		sheet.square28Ess = true;
            		sheet.square27Ess = true;
            		sheet.square26Ess = true;
            		sheet.square25Ess = true;
            		sheet.square24Ess = true;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square29Ess == true then
            		sheet.square30Ess = false;
            		sheet.square28Ess = true;
            		sheet.square27Ess = true;
            		sheet.square26Ess = true;
            		sheet.square25Ess = true;
            		sheet.square24Ess = true;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square28Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square27Ess = true;
            		sheet.square26Ess = true;
            		sheet.square25Ess = true;
            		sheet.square24Ess = true;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square27Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square26Ess = true;
            		sheet.square25Ess = true;
            		sheet.square24Ess = true;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square26Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square25Ess = true;
            		sheet.square24Ess = true;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square25Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square26Ess = false;
            		sheet.square24Ess = true;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square24Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square26Ess = false;
            		sheet.square25Ess = false;
            		sheet.square23Ess = true;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square23Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square26Ess = false;
            		sheet.square25Ess = false;
            		sheet.square24Ess = false;
            		sheet.square22Ess = true;
            		sheet.square21Ess = true;
            	elseif sheet.square22Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square26Ess = false;
            		sheet.square25Ess = false;
            		sheet.square24Ess = false;
            		sheet.square23Ess = false;
            		sheet.square21Ess = true;	
            	elseif sheet.square21Ess == true then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square26Ess = false;
            		sheet.square25Ess = false;
            		sheet.square24Ess = false;
            		sheet.square23Ess = false;
            		sheet.square22Ess = false;
            	elseif sheet.square21Ess == false then
            		sheet.square30Ess = false;
            		sheet.square29Ess = false;
            		sheet.square28Ess = false;
            		sheet.square27Ess = false;
            		sheet.square26Ess = false;
            		sheet.square25Ess = false;
            		sheet.square24Ess = false;
            		sheet.square23Ess = false;
            		sheet.square22Ess = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square40Ess == true then
            		sheet.square39Ess = true;
            		sheet.square38Ess = true;
            		sheet.square37Ess = true;
            		sheet.square36Ess = true;
            		sheet.square35Ess = true;
            		sheet.square34Ess = true;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square39Ess == true then
            		sheet.square40Ess = false;
            		sheet.square38Ess = true;
            		sheet.square37Ess = true;
            		sheet.square36Ess = true;
            		sheet.square35Ess = true;
            		sheet.square34Ess = true;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square38Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square37Ess = true;
            		sheet.square36Ess = true;
            		sheet.square35Ess = true;
            		sheet.square34Ess = true;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square37Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square36Ess = true;
            		sheet.square35Ess = true;
            		sheet.square34Ess = true;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square36Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square35Ess = true;
            		sheet.square34Ess = true;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square35Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square36Ess = false;
            		sheet.square34Ess = true;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square34Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square36Ess = false;
            		sheet.square35Ess = false;
            		sheet.square33Ess = true;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square33Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square36Ess = false;
            		sheet.square35Ess = false;
            		sheet.square34Ess = false;
            		sheet.square32Ess = true;
            		sheet.square31Ess = true;
            	elseif sheet.square32Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square36Ess = false;
            		sheet.square35Ess = false;
            		sheet.square34Ess = false;
            		sheet.square33Ess = false;
            		sheet.square31Ess = true;	
            	elseif sheet.square31Ess == true then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square36Ess = false;
            		sheet.square35Ess = false;
            		sheet.square34Ess = false;
            		sheet.square33Ess = false;
            		sheet.square32Ess = false;
            	elseif sheet.square31Ess == false then
            		sheet.square40Ess = false;
            		sheet.square39Ess = false;
            		sheet.square38Ess = false;
            		sheet.square37Ess = false;
            		sheet.square36Ess = false;
            		sheet.square35Ess = false;
            		sheet.square34Ess = false;
            		sheet.square33Ess = false;
            		sheet.square32Ess = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square50Ess == true then
            		sheet.square49Ess = true;
            		sheet.square48Ess = true;
            		sheet.square47Ess = true;
            		sheet.square46Ess = true;
            		sheet.square45Ess = true;
            		sheet.square44Ess = true;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square49Ess == true then
            		sheet.square50Ess = false;
            		sheet.square48Ess = true;
            		sheet.square47Ess = true;
            		sheet.square46Ess = true;
            		sheet.square45Ess = true;
            		sheet.square44Ess = true;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square48Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square47Ess = true;
            		sheet.square46Ess = true;
            		sheet.square45Ess = true;
            		sheet.square44Ess = true;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square47Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square46Ess = true;
            		sheet.square45Ess = true;
            		sheet.square44Ess = true;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square46Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square45Ess = true;
            		sheet.square44Ess = true;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square45Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square46Ess = false;
            		sheet.square44Ess = true;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square44Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square46Ess = false;
            		sheet.square45Ess = false;
            		sheet.square43Ess = true;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square43Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square46Ess = false;
            		sheet.square45Ess = false;
            		sheet.square44Ess = false;
            		sheet.square42Ess = true;
            		sheet.square41Ess = true;
            	elseif sheet.square42Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square46Ess = false;
            		sheet.square45Ess = false;
            		sheet.square44Ess = false;
            		sheet.square43Ess = false;
            		sheet.square41Ess = true;	
            	elseif sheet.square41Ess == true then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square46Ess = false;
            		sheet.square45Ess = false;
            		sheet.square44Ess = false;
            		sheet.square43Ess = false;
            		sheet.square42Ess = false;
            	elseif sheet.square41Ess == false then
            		sheet.square50Ess = false;
            		sheet.square49Ess = false;
            		sheet.square48Ess = false;
            		sheet.square47Ess = false;
            		sheet.square46Ess = false;
            		sheet.square45Ess = false;
            		sheet.square44Ess = false;
            		sheet.square43Ess = false;
            		sheet.square42Ess = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square60Ess == true then
            		sheet.square59Ess = true;
            		sheet.square58Ess = true;
            		sheet.square57Ess = true;
            		sheet.square56Ess = true;
            		sheet.square55Ess = true;
            		sheet.square54Ess = true;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square59Ess == true then
            		sheet.square60Ess = false;
            		sheet.square58Ess = true;
            		sheet.square57Ess = true;
            		sheet.square56Ess = true;
            		sheet.square55Ess = true;
            		sheet.square54Ess = true;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square58Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square57Ess = true;
            		sheet.square56Ess = true;
            		sheet.square55Ess = true;
            		sheet.square54Ess = true;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square57Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square56Ess = true;
            		sheet.square55Ess = true;
            		sheet.square54Ess = true;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square56Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square55Ess = true;
            		sheet.square54Ess = true;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square55Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square56Ess = false;
            		sheet.square54Ess = true;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square54Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square56Ess = false;
            		sheet.square55Ess = false;
            		sheet.square53Ess = true;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square53Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square56Ess = false;
            		sheet.square55Ess = false;
            		sheet.square54Ess = false;
            		sheet.square52Ess = true;
            		sheet.square51Ess = true;
            	elseif sheet.square52Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square56Ess = false;
            		sheet.square55Ess = false;
            		sheet.square54Ess = false;
            		sheet.square53Ess = false;
            		sheet.square51Ess = true;	
            	elseif sheet.square51Ess == true then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square56Ess = false;
            		sheet.square55Ess = false;
            		sheet.square54Ess = false;
            		sheet.square53Ess = false;
            		sheet.square52Ess = false;
            	elseif sheet.square51Ess == false then
            		sheet.square60Ess = false;
            		sheet.square59Ess = false;
            		sheet.square58Ess = false;
            		sheet.square57Ess = false;
            		sheet.square56Ess = false;
            		sheet.square55Ess = false;
            		sheet.square54Ess = false;
            		sheet.square53Ess = false;
            		sheet.square52Ess = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square70Ess == true then
            		sheet.square69Ess = true;
            		sheet.square68Ess = true;
            		sheet.square67Ess = true;
            		sheet.square66Ess = true;
            		sheet.square65Ess = true;
            		sheet.square64Ess = true;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square69Ess == true then
            		sheet.square70Ess = false;
            		sheet.square68Ess = true;
            		sheet.square67Ess = true;
            		sheet.square66Ess = true;
            		sheet.square65Ess = true;
            		sheet.square64Ess = true;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square68Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square67Ess = true;
            		sheet.square66Ess = true;
            		sheet.square65Ess = true;
            		sheet.square64Ess = true;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square67Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square66Ess = true;
            		sheet.square65Ess = true;
            		sheet.square64Ess = true;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square66Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square65Ess = true;
            		sheet.square64Ess = true;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square65Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square66Ess = false;
            		sheet.square64Ess = true;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square64Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square66Ess = false;
            		sheet.square65Ess = false;
            		sheet.square63Ess = true;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square63Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square66Ess = false;
            		sheet.square65Ess = false;
            		sheet.square64Ess = false;
            		sheet.square62Ess = true;
            		sheet.square61Ess = true;
            	elseif sheet.square62Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square66Ess = false;
            		sheet.square65Ess = false;
            		sheet.square64Ess = false;
            		sheet.square63Ess = false;
            		sheet.square61Ess = true;	
            	elseif sheet.square61Ess == true then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square66Ess = false;
            		sheet.square65Ess = false;
            		sheet.square64Ess = false;
            		sheet.square63Ess = false;
            		sheet.square62Ess = false;
            	elseif sheet.square61Ess == false then
            		sheet.square70Ess = false;
            		sheet.square69Ess = false;
            		sheet.square68Ess = false;
            		sheet.square67Ess = false;
            		sheet.square66Ess = false;
            		sheet.square65Ess = false;
            		sheet.square64Ess = false;
            		sheet.square63Ess = false;
            		sheet.square62Ess = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square80Ess == true then
            		sheet.square79Ess = true;
            		sheet.square78Ess = true;
            		sheet.square77Ess = true;
            		sheet.square76Ess = true;
            		sheet.square75Ess = true;
            		sheet.square74Ess = true;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square79Ess == true then
            		sheet.square80Ess = false;
            		sheet.square78Ess = true;
            		sheet.square77Ess = true;
            		sheet.square76Ess = true;
            		sheet.square75Ess = true;
            		sheet.square74Ess = true;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square78Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square77Ess = true;
            		sheet.square76Ess = true;
            		sheet.square75Ess = true;
            		sheet.square74Ess = true;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square77Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square76Ess = true;
            		sheet.square75Ess = true;
            		sheet.square74Ess = true;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square76Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square75Ess = true;
            		sheet.square74Ess = true;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square75Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square76Ess = false;
            		sheet.square74Ess = true;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square74Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square76Ess = false;
            		sheet.square75Ess = false;
            		sheet.square73Ess = true;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square73Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square76Ess = false;
            		sheet.square75Ess = false;
            		sheet.square74Ess = false;
            		sheet.square72Ess = true;
            		sheet.square71Ess = true;
            	elseif sheet.square72Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square76Ess = false;
            		sheet.square75Ess = false;
            		sheet.square74Ess = false;
            		sheet.square73Ess = false;
            		sheet.square71Ess = true;	
            	elseif sheet.square71Ess == true then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square76Ess = false;
            		sheet.square75Ess = false;
            		sheet.square74Ess = false;
            		sheet.square73Ess = false;
            		sheet.square72Ess = false;
            	elseif sheet.square71Ess == false then
            		sheet.square80Ess = false;
            		sheet.square79Ess = false;
            		sheet.square78Ess = false;
            		sheet.square77Ess = false;
            		sheet.square76Ess = false;
            		sheet.square75Ess = false;
            		sheet.square74Ess = false;
            		sheet.square73Ess = false;
            		sheet.square72Ess = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square90Ess == true then
            		sheet.square89Ess = true;
            		sheet.square88Ess = true;
            		sheet.square87Ess = true;
            		sheet.square86Ess = true;
            		sheet.square85Ess = true;
            		sheet.square84Ess = true;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square89Ess == true then
            		sheet.square90Ess = false;
            		sheet.square88Ess = true;
            		sheet.square87Ess = true;
            		sheet.square86Ess = true;
            		sheet.square85Ess = true;
            		sheet.square84Ess = true;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square88Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square87Ess = true;
            		sheet.square86Ess = true;
            		sheet.square85Ess = true;
            		sheet.square84Ess = true;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square87Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square86Ess = true;
            		sheet.square85Ess = true;
            		sheet.square84Ess = true;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square86Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square85Ess = true;
            		sheet.square84Ess = true;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square85Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square86Ess = false;
            		sheet.square84Ess = true;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square84Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square86Ess = false;
            		sheet.square85Ess = false;
            		sheet.square83Ess = true;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square83Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square86Ess = false;
            		sheet.square85Ess = false;
            		sheet.square84Ess = false;
            		sheet.square82Ess = true;
            		sheet.square81Ess = true;
            	elseif sheet.square82Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square86Ess = false;
            		sheet.square85Ess = false;
            		sheet.square84Ess = false;
            		sheet.square83Ess = false;
            		sheet.square81Ess = true;	
            	elseif sheet.square81Ess == true then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square86Ess = false;
            		sheet.square85Ess = false;
            		sheet.square84Ess = false;
            		sheet.square83Ess = false;
            		sheet.square82Ess = false;
            	elseif sheet.square81Ess == false then
            		sheet.square90Ess = false;
            		sheet.square89Ess = false;
            		sheet.square88Ess = false;
            		sheet.square87Ess = false;
            		sheet.square86Ess = false;
            		sheet.square85Ess = false;
            		sheet.square84Ess = false;
            		sheet.square83Ess = false;
            		sheet.square82Ess = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
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

        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmItemDeTotens()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmItemDeTotens();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmItemDeTotens = {
    newEditor = newfrmItemDeTotens, 
    new = newfrmItemDeTotens, 
    name = "frmItemDeTotens", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmItemDeTotens = _frmItemDeTotens;
Firecast.registrarForm(_frmItemDeTotens);

return _frmItemDeTotens;
