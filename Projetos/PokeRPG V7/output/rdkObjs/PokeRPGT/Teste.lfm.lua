require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmTeste()
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
    obj:setName("frmTeste");
    obj:setHeight(0);
    obj:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'vit12', 'vit11', 'vit10', 'vit9', 'vit8', 'vit7', 'vit6', 'vit5', 'vit4', 'vit3', 'vit2', 'vit1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'acd12', 'acd11', 'acd10', 'acd9', 'acd8', 'acd7', 'acd6', 'acd5', 'acd4', 'acd3', 'acd2', 'acd1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'for9', 'for8', 'for7', 'for6', 'for5', 'for4', 'for3', 'for2', 'for1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'per9', 'per8', 'per7', 'per6', 'per5', 'per4', 'per3', 'per2', 'per1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'car9', 'car8', 'car7', 'car6', 'car5', 'car4', 'car3', 'car2', 'car1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'des9', 'des8', 'des7', 'des6', 'des5', 'des4', 'des3', 'des2', 'des1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'int9', 'int8', 'int7', 'int6', 'int5', 'int4', 'int3', 'int2', 'int1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'man9', 'man8', 'man7', 'man6', 'man5', 'man4', 'man3', 'man2', 'man1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'vig9', 'vig8', 'vig7', 'vig6', 'vig5', 'vig4', 'vig3', 'vig2', 'vig1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'rac9', 'rac8', 'rac7', 'rac6', 'rac5', 'rac4', 'rac3', 'rac2', 'rac1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'ap9', 'ap8', 'ap7', 'ap6', 'ap5', 'ap4', 'ap3', 'ap2', 'ap1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'pront9', 'pront8', 'pront7', 'pront6', 'pront5', 'pront4', 'pront3', 'pront2', 'pront1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'acad9', 'acad8', 'acad7', 'acad6', 'acad5', 'acad4', 'acad3', 'acad2', 'acad1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'poke9', 'poke8', 'poke7', 'poke6', 'poke5', 'poke4', 'poke3', 'poke2', 'poke1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'esp9', 'esp8', 'esp7', 'esp6', 'esp5', 'esp4', 'esp3', 'esp2', 'esp1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'comp9', 'comp8', 'comp7', 'comp6', 'comp5', 'comp4', 'comp3', 'comp2', 'comp1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'ofc9', 'ofc8', 'ofc7', 'ofc6', 'ofc5', 'ofc4', 'ofc3', 'ofc2', 'ofc1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'bri9', 'bri8', 'bri7', 'bri6', 'bri5', 'bri4', 'bri3', 'bri2', 'bri1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'habit9', 'habit8', 'habit7', 'habit6', 'habit5', 'habit4', 'habit3', 'habit2', 'habit1'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'cond9', 'cond8', 'cond7', 'cond6', 'cond5', 'cond4', 'cond3', 'cond2', 'cond1'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'esq9', 'esq8', 'esq7', 'esq6', 'esq5', 'esq4', 'esq3', 'esq2', 'esq1'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'inves9', 'inves8', 'inves7', 'inves6', 'inves5', 'inves4', 'inves3', 'inves2', 'inves1'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'et9', 'et8', 'et7', 'et6', 'et5', 'et4', 'et3', 'et2', 'et1'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'emp9', 'emp8', 'emp7', 'emp6', 'emp5', 'emp4', 'emp3', 'emp2', 'emp1'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'act9', 'act8', 'act7', 'act6', 'act5', 'act4', 'act3', 'act2', 'act1'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'dir9', 'dir8', 'dir7', 'dir6', 'dir5', 'dir4', 'dir3', 'dir2', 'dir1'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'expre9', 'expre8', 'expre7', 'expre6', 'expre5', 'expre4', 'expre3', 'expre2', 'expre1'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'ling9', 'ling8', 'ling7', 'ling6', 'ling5', 'ling4', 'ling3', 'ling2', 'ling1'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'seg9', 'seg8', 'seg7', 'seg6', 'seg5', 'seg4', 'seg3', 'seg2', 'seg1'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'intim9', 'intim8', 'intim7', 'intim6', 'intim5', 'intim4', 'intim3', 'intim2', 'intim1'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'med9', 'med8', 'med7', 'med6', 'med5', 'med4', 'med3', 'med2', 'med1'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'furt9', 'furt8', 'furt7', 'furt6', 'furt5', 'furt4', 'furt3', 'furt2', 'furt1'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'lid9', 'lid8', 'lid7', 'lid6', 'lid5', 'lid4', 'lid3', 'lid2', 'lid1'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'cie9', 'cie8', 'cie7', 'cie6', 'cie5', 'cie4', 'cie3', 'cie2', 'cie1'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'sob9', 'sob8', 'sob7', 'sob6', 'sob5', 'sob4', 'sob3', 'sob2', 'sob1'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'manh9', 'manh8', 'manh7', 'manh6', 'manh5', 'manh4', 'manh3', 'manh2', 'manh1'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'cul9', 'cul8', 'cul7', 'cul6', 'cul5', 'cul4', 'cul3', 'cul2', 'cul1'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'cac9', 'cac8', 'cac7', 'cac6', 'cac5', 'cac4', 'cac3', 'cac2', 'cac1'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'cor12', 'cor11', 'cor10', 'cor9', 'cor8', 'cor7', 'cor6', 'cor5', 'cor4', 'cor3', 'cor2', 'cor1'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'ins12', 'ins11', 'ins10', 'ins9', 'ins8', 'ins7', 'ins6', 'ins5', 'ins4', 'ins3', 'ins2', 'ins1'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'fdv12', 'fdv11', 'fdv10', 'fdv9', 'fdv8', 'fdv7', 'fdv6', 'fdv5', 'fdv4', 'fdv3', 'fdv2', 'fdv1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'recon10', 'recon9', 'recon8', 'recon7', 'recon6', 'recon5', 'recon4', 'recon3', 'recon2', 'recon1'});
    obj.dataLink42:setName("dataLink42");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vit12 == true then
            		sheet.vit11 = true;
            		sheet.vit10 = true;
            		sheet.vit9 = true;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit11 == true then
            		sheet.vit12 = false;
            		sheet.vit10 = true;
            		sheet.vit9 = true;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit10 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit9 = true;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit9 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit8 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit7 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit6 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit5 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit4 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit3 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit2 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit3 = false;
            		sheet.vit1 = true;	
            	elseif sheet.vit1 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit3 = false;
            		sheet.vit2 = false;
            	elseif sheet.vit1 == false then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit3 = false;
            		sheet.vit2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.acd12 == true then
            		sheet.acd11 = true;
            		sheet.acd10 = true;
            		sheet.acd9 = true;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd11 == true then
            		sheet.acd12 = false;
            		sheet.acd10 = true;
            		sheet.acd9 = true;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd10 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd9 = true;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd9 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd8 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd7 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd6 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd5 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd4 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd3 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd2 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd3 = false;
            		sheet.acd1 = true;	
            	elseif sheet.acd1 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd3 = false;
            		sheet.acd2 = false;
            	elseif sheet.acd1 == false then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd3 = false;
            		sheet.acd2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.for9 == true then
            		sheet.for8 = true;
            		sheet.for7 = true;
            		sheet.for6 = true;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for8 == true then
            		sheet.for9 = false;
            		sheet.for7 = true;
            		sheet.for6 = true;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for7 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for6 = true;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for6 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for5 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for4 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for3 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for2 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for3 = false;
            		sheet.for1 = true;	
            	elseif sheet.for1 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for3 = false;
            		sheet.for2 = false;
            	elseif sheet.for1 == false then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for3 = false;
            		sheet.for2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.per9 == true then
            		sheet.per8 = true;
            		sheet.per7 = true;
            		sheet.per6 = true;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per8 == true then
            		sheet.per9 = false;
            		sheet.per7 = true;
            		sheet.per6 = true;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per7 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per6 = true;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per6 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per5 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per4 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per3 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per2 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per3 = false;
            		sheet.per1 = true;	
            	elseif sheet.per1 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per3 = false;
            		sheet.per2 = false;
            	elseif sheet.per1 == false then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per3 = false;
            		sheet.per2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.car9 == true then
            		sheet.car8 = true;
            		sheet.car7 = true;
            		sheet.car6 = true;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car8 == true then
            		sheet.car9 = false;
            		sheet.car7 = true;
            		sheet.car6 = true;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car7 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car6 = true;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car6 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car5 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car4 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car3 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car2 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car3 = false;
            		sheet.car1 = true;	
            	elseif sheet.car1 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car3 = false;
            		sheet.car2 = false;
            	elseif sheet.car1 == false then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car3 = false;
            		sheet.car2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.des9 == true then
            		sheet.des8 = true;
            		sheet.des7 = true;
            		sheet.des6 = true;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des8 == true then
            		sheet.des9 = false;
            		sheet.des7 = true;
            		sheet.des6 = true;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des7 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des6 = true;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des6 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des5 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des4 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des3 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des2 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des3 = false;
            		sheet.des1 = true;	
            	elseif sheet.des1 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des3 = false;
            		sheet.des2 = false;
            	elseif sheet.des1 == false then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des3 = false;
            		sheet.des2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.int9 == true then
            		sheet.int8 = true;
            		sheet.int7 = true;
            		sheet.int6 = true;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int8 == true then
            		sheet.int9 = false;
            		sheet.int7 = true;
            		sheet.int6 = true;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int7 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int6 = true;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int6 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int5 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int4 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int3 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int2 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int3 = false;
            		sheet.int1 = true;	
            	elseif sheet.int1 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int3 = false;
            		sheet.int2 = false;
            	elseif sheet.int1 == false then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int3 = false;
            		sheet.int2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.man9 == true then
            		sheet.man8 = true;
            		sheet.man7 = true;
            		sheet.man6 = true;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man8 == true then
            		sheet.man9 = false;
            		sheet.man7 = true;
            		sheet.man6 = true;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man7 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man6 = true;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man6 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man5 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man4 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man3 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man2 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man3 = false;
            		sheet.man1 = true;	
            	elseif sheet.man1 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man3 = false;
            		sheet.man2 = false;
            	elseif sheet.man1 == false then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man3 = false;
            		sheet.man2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vig9 == true then
            		sheet.vig8 = true;
            		sheet.vig7 = true;
            		sheet.vig6 = true;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig8 == true then
            		sheet.vig9 = false;
            		sheet.vig7 = true;
            		sheet.vig6 = true;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig7 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig6 = true;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig6 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig5 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig4 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig3 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig2 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig3 = false;
            		sheet.vig1 = true;	
            	elseif sheet.vig1 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig3 = false;
            		sheet.vig2 = false;
            	elseif sheet.vig1 == false then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig3 = false;
            		sheet.vig2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.rac9 == true then
            		sheet.rac8 = true;
            		sheet.rac7 = true;
            		sheet.rac6 = true;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac8 == true then
            		sheet.rac9 = false;
            		sheet.rac7 = true;
            		sheet.rac6 = true;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac7 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac6 = true;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac6 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac5 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac4 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac3 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac2 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac3 = false;
            		sheet.rac1 = true;	
            	elseif sheet.rac1 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac3 = false;
            		sheet.rac2 = false;
            	elseif sheet.rac1 == false then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac3 = false;
            		sheet.rac2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ap9 == true then
            		sheet.ap8 = true;
            		sheet.ap7 = true;
            		sheet.ap6 = true;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap8 == true then
            		sheet.ap9 = false;
            		sheet.ap7 = true;
            		sheet.ap6 = true;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap7 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap6 = true;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap6 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap5 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap4 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap3 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap2 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap3 = false;
            		sheet.ap1 = true;	
            	elseif sheet.ap1 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap3 = false;
            		sheet.ap2 = false;
            	elseif sheet.ap1 == false then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap3 = false;
            		sheet.ap2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.pront9 == true then
            		sheet.pront8 = true;
            		sheet.pront7 = true;
            		sheet.pront6 = true;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront8 == true then
            		sheet.pront9 = false;
            		sheet.pront7 = true;
            		sheet.pront6 = true;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront7 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront6 = true;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront6 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront5 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront4 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront3 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront2 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront3 = false;
            		sheet.pront1 = true;	
            	elseif sheet.pront1 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront3 = false;
            		sheet.pront2 = false;
            	elseif sheet.pront1 == false then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront3 = false;
            		sheet.pront2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.acad9 == true then
            		sheet.acad8 = true;
            		sheet.acad7 = true;
            		sheet.acad6 = true;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad8 == true then
            		sheet.acad9 = false;
            		sheet.acad7 = true;
            		sheet.acad6 = true;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad7 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad6 = true;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad6 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad5 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad4 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad3 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad2 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad3 = false;
            		sheet.acad1 = true;	
            	elseif sheet.acad1 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad3 = false;
            		sheet.acad2 = false;
            	elseif sheet.acad1 == false then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad3 = false;
            		sheet.acad2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.poke9 == true then
            		sheet.poke8 = true;
            		sheet.poke7 = true;
            		sheet.poke6 = true;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke8 == true then
            		sheet.poke9 = false;
            		sheet.poke7 = true;
            		sheet.poke6 = true;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke7 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke6 = true;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke6 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke5 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke4 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke3 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke2 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke3 = false;
            		sheet.poke1 = true;	
            	elseif sheet.poke1 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke3 = false;
            		sheet.poke2 = false;
            	elseif sheet.poke1 == false then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke3 = false;
            		sheet.poke2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esp9 == true then
            		sheet.esp8 = true;
            		sheet.esp7 = true;
            		sheet.esp6 = true;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp8 == true then
            		sheet.esp9 = false;
            		sheet.esp7 = true;
            		sheet.esp6 = true;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp7 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp6 = true;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp6 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp5 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp4 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp3 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp2 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp3 = false;
            		sheet.esp1 = true;	
            	elseif sheet.esp1 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp3 = false;
            		sheet.esp2 = false;
            	elseif sheet.esp1 == false then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp3 = false;
            		sheet.esp2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.comp9 == true then
            		sheet.comp8 = true;
            		sheet.comp7 = true;
            		sheet.comp6 = true;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp8 == true then
            		sheet.comp9 = false;
            		sheet.comp7 = true;
            		sheet.comp6 = true;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp7 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp6 = true;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp6 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp5 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp4 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp3 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp2 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp3 = false;
            		sheet.comp1 = true;	
            	elseif sheet.comp1 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp3 = false;
            		sheet.comp2 = false;
            	elseif sheet.comp1 == false then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp3 = false;
            		sheet.comp2 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ofc9 == true then
            		sheet.ofc8 = true;
            		sheet.ofc7 = true;
            		sheet.ofc6 = true;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc8 == true then
            		sheet.ofc9 = false;
            		sheet.ofc7 = true;
            		sheet.ofc6 = true;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc7 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc6 = true;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc6 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc5 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc4 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc3 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc2 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc3 = false;
            		sheet.ofc1 = true;	
            	elseif sheet.ofc1 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc3 = false;
            		sheet.ofc2 = false;
            	elseif sheet.ofc1 == false then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc3 = false;
            		sheet.ofc2 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bri9 == true then
            		sheet.bri8 = true;
            		sheet.bri7 = true;
            		sheet.bri6 = true;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri8 == true then
            		sheet.bri9 = false;
            		sheet.bri7 = true;
            		sheet.bri6 = true;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri7 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri6 = true;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri6 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri5 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri4 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri3 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri2 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri3 = false;
            		sheet.bri1 = true;	
            	elseif sheet.bri1 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri3 = false;
            		sheet.bri2 = false;
            	elseif sheet.bri1 == false then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri3 = false;
            		sheet.bri2 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.habit9 == true then
            		sheet.habit8 = true;
            		sheet.habit7 = true;
            		sheet.habit6 = true;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit8 == true then
            		sheet.habit9 = false;
            		sheet.habit7 = true;
            		sheet.habit6 = true;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit7 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit6 = true;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit6 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit5 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit4 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit3 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit2 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit3 = false;
            		sheet.habit1 = true;	
            	elseif sheet.habit1 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit3 = false;
            		sheet.habit2 = false;
            	elseif sheet.habit1 == false then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit3 = false;
            		sheet.habit2 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cond9 == true then
            		sheet.cond8 = true;
            		sheet.cond7 = true;
            		sheet.cond6 = true;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond8 == true then
            		sheet.cond9 = false;
            		sheet.cond7 = true;
            		sheet.cond6 = true;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond7 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond6 = true;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond6 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond5 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond4 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond3 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond2 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond3 = false;
            		sheet.cond1 = true;	
            	elseif sheet.cond1 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond3 = false;
            		sheet.cond2 = false;
            	elseif sheet.cond1 == false then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond3 = false;
            		sheet.cond2 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esq9 == true then
            		sheet.esq8 = true;
            		sheet.esq7 = true;
            		sheet.esq6 = true;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq8 == true then
            		sheet.esq9 = false;
            		sheet.esq7 = true;
            		sheet.esq6 = true;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq7 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq6 = true;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq6 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq5 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq4 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq3 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq2 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq3 = false;
            		sheet.esq1 = true;	
            	elseif sheet.esq1 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq3 = false;
            		sheet.esq2 = false;
            	elseif sheet.esq1 == false then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq3 = false;
            		sheet.esq2 = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.inves9 == true then
            		sheet.inves8 = true;
            		sheet.inves7 = true;
            		sheet.inves6 = true;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves8 == true then
            		sheet.inves9 = false;
            		sheet.inves7 = true;
            		sheet.inves6 = true;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves7 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves6 = true;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves6 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves5 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves4 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves3 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves2 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves3 = false;
            		sheet.inves1 = true;	
            	elseif sheet.inves1 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves3 = false;
            		sheet.inves2 = false;
            	elseif sheet.inves1 == false then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves3 = false;
            		sheet.inves2 = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.et9 == true then
            		sheet.et8 = true;
            		sheet.et7 = true;
            		sheet.et6 = true;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et8 == true then
            		sheet.et9 = false;
            		sheet.et7 = true;
            		sheet.et6 = true;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et7 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et6 = true;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et6 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et5 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et4 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et3 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et2 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et3 = false;
            		sheet.et1 = true;	
            	elseif sheet.et1 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et3 = false;
            		sheet.et2 = false;
            	elseif sheet.et1 == false then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et3 = false;
            		sheet.et2 = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.emp9 == true then
            		sheet.emp8 = true;
            		sheet.emp7 = true;
            		sheet.emp6 = true;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp8 == true then
            		sheet.emp9 = false;
            		sheet.emp7 = true;
            		sheet.emp6 = true;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp7 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp6 = true;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp6 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp5 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp4 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp3 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp2 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp3 = false;
            		sheet.emp1 = true;	
            	elseif sheet.emp1 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp3 = false;
            		sheet.emp2 = false;
            	elseif sheet.emp1 == false then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp3 = false;
            		sheet.emp2 = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.act9 == true then
            		sheet.act8 = true;
            		sheet.act7 = true;
            		sheet.act6 = true;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act8 == true then
            		sheet.act9 = false;
            		sheet.act7 = true;
            		sheet.act6 = true;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act7 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act6 = true;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act6 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act5 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act4 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act3 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act2 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act3 = false;
            		sheet.act1 = true;	
            	elseif sheet.act1 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act3 = false;
            		sheet.act2 = false;
            	elseif sheet.act1 == false then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act3 = false;
            		sheet.act2 = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.dir9 == true then
            		sheet.dir8 = true;
            		sheet.dir7 = true;
            		sheet.dir6 = true;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir8 == true then
            		sheet.dir9 = false;
            		sheet.dir7 = true;
            		sheet.dir6 = true;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir7 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir6 = true;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir6 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir5 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir4 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir3 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir2 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir3 = false;
            		sheet.dir1 = true;	
            	elseif sheet.dir1 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir3 = false;
            		sheet.dir2 = false;
            	elseif sheet.dir1 == false then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir3 = false;
            		sheet.dir2 = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.expre9 == true then
            		sheet.expre8 = true;
            		sheet.expre7 = true;
            		sheet.expre6 = true;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre8 == true then
            		sheet.expre9 = false;
            		sheet.expre7 = true;
            		sheet.expre6 = true;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre7 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre6 = true;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre6 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre5 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre4 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre3 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre2 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre3 = false;
            		sheet.expre1 = true;	
            	elseif sheet.expre1 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre3 = false;
            		sheet.expre2 = false;
            	elseif sheet.expre1 == false then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre3 = false;
            		sheet.expre2 = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ling9 == true then
            		sheet.ling8 = true;
            		sheet.ling7 = true;
            		sheet.ling6 = true;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling8 == true then
            		sheet.ling9 = false;
            		sheet.ling7 = true;
            		sheet.ling6 = true;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling7 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling6 = true;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling6 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling5 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling4 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling3 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling2 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling3 = false;
            		sheet.ling1 = true;	
            	elseif sheet.ling1 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling3 = false;
            		sheet.ling2 = false;
            	elseif sheet.ling1 == false then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling3 = false;
            		sheet.ling2 = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.seg9 == true then
            		sheet.seg8 = true;
            		sheet.seg7 = true;
            		sheet.seg6 = true;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg8 == true then
            		sheet.seg9 = false;
            		sheet.seg7 = true;
            		sheet.seg6 = true;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg7 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg6 = true;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg6 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg5 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg4 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg3 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg2 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg3 = false;
            		sheet.seg1 = true;	
            	elseif sheet.seg1 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg3 = false;
            		sheet.seg2 = false;
            	elseif sheet.seg1 == false then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg3 = false;
            		sheet.seg2 = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.intim9 == true then
            		sheet.intim8 = true;
            		sheet.intim7 = true;
            		sheet.intim6 = true;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim8 == true then
            		sheet.intim9 = false;
            		sheet.intim7 = true;
            		sheet.intim6 = true;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim7 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim6 = true;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim6 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim5 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim4 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim3 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim2 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim3 = false;
            		sheet.intim1 = true;	
            	elseif sheet.intim1 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim3 = false;
            		sheet.intim2 = false;
            	elseif sheet.intim1 == false then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim3 = false;
            		sheet.intim2 = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.med9 == true then
            		sheet.med8 = true;
            		sheet.med7 = true;
            		sheet.med6 = true;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med8 == true then
            		sheet.med9 = false;
            		sheet.med7 = true;
            		sheet.med6 = true;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med7 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med6 = true;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med6 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med5 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med4 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med3 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med2 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med3 = false;
            		sheet.med1 = true;	
            	elseif sheet.med1 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med3 = false;
            		sheet.med2 = false;
            	elseif sheet.med1 == false then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med3 = false;
            		sheet.med2 = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.furt9 == true then
            		sheet.furt8 = true;
            		sheet.furt7 = true;
            		sheet.furt6 = true;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt8 == true then
            		sheet.furt9 = false;
            		sheet.furt7 = true;
            		sheet.furt6 = true;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt7 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt6 = true;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt6 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt5 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt4 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt3 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt2 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt3 = false;
            		sheet.furt1 = true;	
            	elseif sheet.furt1 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt3 = false;
            		sheet.furt2 = false;
            	elseif sheet.furt1 == false then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt3 = false;
            		sheet.furt2 = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.lid9 == true then
            		sheet.lid8 = true;
            		sheet.lid7 = true;
            		sheet.lid6 = true;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid8 == true then
            		sheet.lid9 = false;
            		sheet.lid7 = true;
            		sheet.lid6 = true;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid7 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid6 = true;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid6 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid5 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid4 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid3 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid2 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid3 = false;
            		sheet.lid1 = true;	
            	elseif sheet.lid1 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid3 = false;
            		sheet.lid2 = false;
            	elseif sheet.lid1 == false then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid3 = false;
            		sheet.lid2 = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cie9 == true then
            		sheet.cie8 = true;
            		sheet.cie7 = true;
            		sheet.cie6 = true;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie8 == true then
            		sheet.cie9 = false;
            		sheet.cie7 = true;
            		sheet.cie6 = true;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie7 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie6 = true;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie6 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie5 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie4 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie3 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie2 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie3 = false;
            		sheet.cie1 = true;	
            	elseif sheet.cie1 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie3 = false;
            		sheet.cie2 = false;
            	elseif sheet.cie1 == false then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie3 = false;
            		sheet.cie2 = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.sob9 == true then
            		sheet.sob8 = true;
            		sheet.sob7 = true;
            		sheet.sob6 = true;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob8 == true then
            		sheet.sob9 = false;
            		sheet.sob7 = true;
            		sheet.sob6 = true;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob7 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob6 = true;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob6 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob5 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob4 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob3 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob2 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob3 = false;
            		sheet.sob1 = true;	
            	elseif sheet.sob1 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob3 = false;
            		sheet.sob2 = false;
            	elseif sheet.sob1 == false then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob3 = false;
            		sheet.sob2 = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.manh9 == true then
            		sheet.manh8 = true;
            		sheet.manh7 = true;
            		sheet.manh6 = true;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh8 == true then
            		sheet.manh9 = false;
            		sheet.manh7 = true;
            		sheet.manh6 = true;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh7 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh6 = true;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh6 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh5 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh4 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh3 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh2 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh3 = false;
            		sheet.manh1 = true;	
            	elseif sheet.manh1 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh3 = false;
            		sheet.manh2 = false;
            	elseif sheet.manh1 == false then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh3 = false;
            		sheet.manh2 = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cul9 == true then
            		sheet.cul8 = true;
            		sheet.cul7 = true;
            		sheet.cul6 = true;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul8 == true then
            		sheet.cul9 = false;
            		sheet.cul7 = true;
            		sheet.cul6 = true;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul7 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul6 = true;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul6 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul5 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul4 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul3 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul2 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul3 = false;
            		sheet.cul1 = true;	
            	elseif sheet.cul1 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul3 = false;
            		sheet.cul2 = false;
            	elseif sheet.cul1 == false then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul3 = false;
            		sheet.cul2 = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cac9 == true then
            		sheet.cac8 = true;
            		sheet.cac7 = true;
            		sheet.cac6 = true;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac8 == true then
            		sheet.cac9 = false;
            		sheet.cac7 = true;
            		sheet.cac6 = true;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac7 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac6 = true;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac6 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac5 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac4 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac3 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac2 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac3 = false;
            		sheet.cac1 = true;	
            	elseif sheet.cac1 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac3 = false;
            		sheet.cac2 = false;
            	elseif sheet.cac1 == false then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac3 = false;
            		sheet.cac2 = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cor12 == true then
            		sheet.cor11 = true;
            		sheet.cor10 = true;
            		sheet.cor9 = true;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor11 == true then
            		sheet.cor12 = false;
            		sheet.cor10 = true;
            		sheet.cor9 = true;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor10 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor9 = true;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor9 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor8 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor7 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor6 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor5 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor4 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor3 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor2 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor3 = false;
            		sheet.cor1 = true;	
            	elseif sheet.cor1 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor3 = false;
            		sheet.cor2 = false;
            	elseif sheet.cor1 == false then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor3 = false;
            		sheet.cor2 = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ins12 == true then
            		sheet.ins11 = true;
            		sheet.ins10 = true;
            		sheet.ins9 = true;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins11 == true then
            		sheet.ins12 = false;
            		sheet.ins10 = true;
            		sheet.ins9 = true;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins10 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins9 = true;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins9 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins8 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins7 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins6 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins5 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins4 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins3 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins2 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins3 = false;
            		sheet.ins1 = true;	
            	elseif sheet.ins1 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins3 = false;
            		sheet.ins2 = false;
            	elseif sheet.ins1 == false then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins3 = false;
            		sheet.ins2 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.fdv12 == true then
            		sheet.fdv11 = true;
            		sheet.fdv10 = true;
            		sheet.fdv9 = true;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv11 == true then
            		sheet.fdv12 = false;
            		sheet.fdv10 = true;
            		sheet.fdv9 = true;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv10 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv9 = true;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv9 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv8 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv7 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv6 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv5 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv4 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv3 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv2 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv3 = false;
            		sheet.fdv1 = true;	
            	elseif sheet.fdv1 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv3 = false;
            		sheet.fdv2 = false;
            	elseif sheet.fdv1 == false then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv3 = false;
            		sheet.fdv2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.recon10 == 3 then
            		sheet.recon9 = 3;
            		sheet.recon8 = 3;
            		sheet.recon7 = 3;
            		sheet.recon6 = 3;
            		sheet.recon5 = 3;
            		sheet.recon4 = 3;
            		sheet.recon3 = 3;
            		sheet.recon2 = 3;
            		sheet.recon1 = 3;	
            		end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
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
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmTeste()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmTeste();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmTeste = {
    newEditor = newfrmTeste, 
    new = newfrmTeste, 
    name = "frmTeste", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmTeste = _frmTeste;
Firecast.registrarForm(_frmTeste);

return _frmTeste;
