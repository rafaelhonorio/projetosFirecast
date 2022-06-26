require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmCodigo1()
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
    obj:setName("frmCodigo1");
    obj:setHeight(0);
    obj:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'fatributos1_1', 'fatributos2_1', 'fatributos3_1', 'satributos1_1', 'satributos2_1', 'satributos3_1', 'matributos1_1', 'matributos2_1', 'matributos3_1', 'virtude1_1', 'virtude2_1', 'virtude3_1'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'fatributos1_5', 'fatributos1_4', 'fatributos1_3', 'fatributos1_2', 'fatributos1_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'fatributos2_5', 'fatributos2_4', 'fatributos2_3', 'fatributos2_2', 'fatributos2_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'fatributos3_5', 'fatributos3_4', 'fatributos3_3', 'fatributos3_2', 'fatributos3_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'satributos1_5', 'satributos1_4', 'satributos1_3', 'satributos1_2', 'satributos1_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'satributos2_5', 'satributos2_4', 'satributos2_3', 'satributos2_2', 'satributos2_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'satributos3_5', 'satributos3_4', 'satributos3_3', 'satributos3_2', 'satributos3_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'matributos1_5', 'matributos1_4', 'matributos1_3', 'matributos1_2', 'matributos1_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'matributos2_5', 'matributos2_4', 'matributos2_3', 'matributos2_2', 'matributos2_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'matributos3_5', 'matributos3_4', 'matributos3_3', 'matributos3_2', 'matributos3_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'thabilidades1_5', 'thabilidades1_4', 'thabilidades1_3', 'thabilidades1_2', 'thabilidades1_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'thabilidades2_5', 'thabilidades2_4', 'thabilidades2_3', 'thabilidades2_2', 'thabilidades2_1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'thabilidades3_5', 'thabilidades3_4', 'thabilidades3_3', 'thabilidades3_2', 'thabilidades3_1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'thabilidades4_5', 'thabilidades4_4', 'thabilidades4_3', 'thabilidades4_2', 'thabilidades4_1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'thabilidades5_5', 'thabilidades5_4', 'thabilidades5_3', 'thabilidades5_2', 'thabilidades5_1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'thabilidades6_5', 'thabilidades6_4', 'thabilidades6_3', 'thabilidades6_2', 'thabilidades6_1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'thabilidades7_5', 'thabilidades7_4', 'thabilidades7_3', 'thabilidades7_2', 'thabilidades7_1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'thabilidades8_5', 'thabilidades8_4', 'thabilidades8_3', 'thabilidades8_2', 'thabilidades8_1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'thabilidades9_5', 'thabilidades9_4', 'thabilidades9_3', 'thabilidades9_2', 'thabilidades9_1'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'thabilidades10_5', 'thabilidades10_4', 'thabilidades10_3', 'thabilidades10_2', 'thabilidades10_1'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'phabilidades1_5', 'phabilidades1_4', 'phabilidades1_3', 'phabilidades1_2', 'phabilidades1_1'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'phabilidades2_5', 'phabilidades2_4', 'phabilidades2_3', 'phabilidades2_2', 'phabilidades2_1'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'phabilidades3_5', 'phabilidades3_4', 'phabilidades3_3', 'phabilidades3_2', 'phabilidades3_1'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'phabilidades4_5', 'phabilidades4_4', 'phabilidades4_3', 'phabilidades4_2', 'phabilidades4_1'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'phabilidades5_5', 'phabilidades5_4', 'phabilidades5_3', 'phabilidades5_2', 'phabilidades5_1'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'phabilidades6_5', 'phabilidades6_4', 'phabilidades6_3', 'phabilidades6_2', 'phabilidades6_1'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'phabilidades7_5', 'phabilidades7_4', 'phabilidades7_3', 'phabilidades7_2', 'phabilidades7_1'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'phabilidades8_5', 'phabilidades8_4', 'phabilidades8_3', 'phabilidades8_2', 'phabilidades8_1'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'phabilidades9_5', 'phabilidades9_4', 'phabilidades9_3', 'phabilidades9_2', 'phabilidades9_1'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'phabilidades10_5', 'phabilidades10_4', 'phabilidades10_3', 'phabilidades10_2', 'phabilidades10_1'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'chabilidades1_5', 'chabilidades1_4', 'chabilidades1_3', 'chabilidades1_2', 'chabilidades1_1'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'chabilidades2_5', 'chabilidades2_4', 'chabilidades2_3', 'chabilidades2_2', 'chabilidades2_1'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'chabilidades3_5', 'chabilidades3_4', 'chabilidades3_3', 'chabilidades3_2', 'chabilidades3_1'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'chabilidades4_5', 'chabilidades4_4', 'chabilidades4_3', 'chabilidades4_2', 'chabilidades4_1'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'chabilidades5_5', 'chabilidades5_4', 'chabilidades5_3', 'chabilidades5_2', 'chabilidades5_1'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'chabilidades6_5', 'chabilidades6_4', 'chabilidades6_3', 'chabilidades6_2', 'chabilidades6_1'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'chabilidades7_5', 'chabilidades7_4', 'chabilidades7_3', 'chabilidades7_2', 'chabilidades7_1'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'chabilidades8_5', 'chabilidades8_4', 'chabilidades8_3', 'chabilidades8_2', 'chabilidades8_1'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'chabilidades9_5', 'chabilidades9_4', 'chabilidades9_3', 'chabilidades9_2', 'chabilidades9_1'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'chabilidades10_5', 'chabilidades10_4', 'chabilidades10_3', 'chabilidades10_2', 'chabilidades10_1'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'antecedentes1_5', 'antecedentes1_4', 'antecedentes1_3', 'antecedentes1_2', 'antecedentes1_1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'antecedentes2_5', 'antecedentes2_4', 'antecedentes2_3', 'antecedentes2_2', 'antecedentes2_1'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setFields({'antecedentes3_5', 'antecedentes3_4', 'antecedentes3_3', 'antecedentes3_2', 'antecedentes3_1'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setFields({'antecedentes4_5', 'antecedentes4_4', 'antecedentes4_3', 'antecedentes4_2', 'antecedentes4_1'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj);
    obj.dataLink45:setFields({'antecedentes5_5', 'antecedentes5_4', 'antecedentes5_3', 'antecedentes5_2', 'antecedentes5_1'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj);
    obj.dataLink46:setFields({'disciplinas1_5', 'disciplinas1_4', 'disciplinas1_3', 'disciplinas1_2', 'disciplinas1_1'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj);
    obj.dataLink47:setFields({'disciplinas2_5', 'disciplinas2_4', 'disciplinas2_3', 'disciplinas2_2', 'disciplinas2_1'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj);
    obj.dataLink48:setFields({'disciplinas3_5', 'disciplinas3_4', 'disciplinas3_3', 'disciplinas3_2', 'disciplinas3_1'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj);
    obj.dataLink49:setFields({'disciplinas4_5', 'disciplinas4_4', 'disciplinas4_3', 'disciplinas4_2', 'disciplinas4_1'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj);
    obj.dataLink50:setFields({'disciplinas5_5', 'disciplinas5_4', 'disciplinas5_3', 'disciplinas5_2', 'disciplinas5_1'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj);
    obj.dataLink51:setFields({'virtude1_5', 'virtude1_4', 'virtude1_3', 'virtude1_2', 'virtude1_1'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj);
    obj.dataLink52:setFields({'virtude2_5', 'virtude2_4', 'virtude2_3', 'virtude2_2', 'virtude2_1'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj);
    obj.dataLink53:setFields({'virtude3_5', 'virtude3_4', 'virtude3_3', 'virtude3_2', 'virtude3_1'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj);
    obj.dataLink54:setFields({'humanidade_10', 'humanidade_9', 'humanidade_8', 'humanidade_7','humanidade_6', 'humanidade_5', 'humanidade_4', 'humanidade_3', 'humanidade_2', 'humanidade_1'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj);
    obj.dataLink55:setFields({'fdv_10', 'fdv_9', 'fdv_8', 'fdv_7','fdv_6', 'fdv_5', 'fdv_4', 'fdv_3', 'fdv_2', 'fdv_1'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj);
    obj.dataLink56:setFields({'sangue_50', 'sangue_49', 'sangue_48', 'sangue_47', 'sangue_46', 'sangue_45', 'sangue_44', 'sangue_43', 'sangue_42', 'sangue_41',
 'sangue_40', 'sangue_39', 'sangue_38', 'sangue_37', 'sangue_36', 'sangue_35', 'sangue_34', 'sangue_33', 'sangue_32', 'sangue_31',
 'sangue_30', 'sangue_29', 'sangue_28', 'sangue_27', 'sangue_26', 'sangue_25', 'sangue_24', 'sangue_23', 'sangue_22', 'sangue_21', 'sangue_20',
 'sangue_19', 'sangue_18', 'sangue_17', 'sangue_16', 'sangue_15', 'sangue_14', 'sangue_13', 'sangue_12', 'sangue_11', 'sangue_10',
 'sangue_9', 'sangue_8', 'sangue_7', 'sangue_6', 'sangue_5', 'sangue_4', 'sangue_3', 'sangue_2', 'sangue_1'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj);
    obj.dataLink57:setFields({'incapacitado_1','aleijado_1', 'espancado_1', 'feridog_1', 'ferido_1', 'machucado_1', 'escoridado_1'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj);
    obj.dataLink58:setFields({'incapacitado_2','aleijado_2', 'espancado_2', 'feridog_2', 'ferido_2', 'machucado_2', 'escoridado_2'});
    obj.dataLink58:setName("dataLink58");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.fatributos1_5 == true then
            		sheet.fatributos1_4 = true;
            		sheet.fatributos1_3 = true;
            		sheet.fatributos1_2 = true;
            		sheet.fatributos1_1 = true;
            	elseif sheet.fatributos1_4 == true then
            		sheet.fatributos1_5 = false;
            		sheet.fatributos1_3 = true;
            		sheet.fatributos1_2 = true;
            		sheet.fatributos1_1 = true;
            	elseif sheet.fatributos1_3 == true then
            		sheet.fatributos1_5 = false;
            		sheet.fatributos1_4 = false;
            		sheet.fatributos1_2 = true;
            		sheet.fatributos1_1 = true;
            	elseif sheet.fatributos1_2 == true then
            		sheet.fatributos1_5 = false;
            		sheet.fatributos1_4 = false;
            		sheet.fatributos1_3 = false;
            		sheet.fatributos1_1 = true;
            	elseif sheet.fatributos1_1 == true then
            		sheet.fatributos1_5 = false;
            		sheet.fatributos1_4 = false;
            		sheet.fatributos1_3 = false;
            		sheet.fatributos1_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.fatributos2_5 == true then
            		sheet.fatributos2_4 = true;
            		sheet.fatributos2_3 = true;
            		sheet.fatributos2_2 = true;
            		sheet.fatributos2_1 = true;
            	elseif sheet.fatributos2_4 == true then
            		sheet.fatributos2_5 = false;
            		sheet.fatributos2_3 = true;
            		sheet.fatributos2_2 = true;
            		sheet.fatributos2_1 = true;
            	elseif sheet.fatributos2_3 == true then
            		sheet.fatributos2_5 = false;
            		sheet.fatributos2_4 = false;
            		sheet.fatributos2_2 = true;
            		sheet.fatributos2_1 = true;
            	elseif sheet.fatributos2_2 == true then
            		sheet.fatributos2_5 = false;
            		sheet.fatributos2_4 = false;
            		sheet.fatributos2_3 = false;
            		sheet.fatributos2_1 = true;
            	elseif sheet.fatributos2_1 == true then
            		sheet.fatributos2_5 = false;
            		sheet.fatributos2_4 = false;
            		sheet.fatributos2_3 = false;
            		sheet.fatributos2_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.fatributos3_5 == true then
            		sheet.fatributos3_4 = true;
            		sheet.fatributos3_3 = true;
            		sheet.fatributos3_2 = true;
            		sheet.fatributos3_1 = true;
            	elseif sheet.fatributos3_4 == true then
            		sheet.fatributos3_5 = false;
            		sheet.fatributos3_3 = true;
            		sheet.fatributos3_2 = true;
            		sheet.fatributos3_1 = true;
            	elseif sheet.fatributos3_3 == true then
            		sheet.fatributos3_5 = false;
            		sheet.fatributos3_4 = false;
            		sheet.fatributos3_2 = true;
            		sheet.fatributos3_1 = true;
            	elseif sheet.fatributos3_2 == true then
            		sheet.fatributos3_5 = false;
            		sheet.fatributos3_4 = false;
            		sheet.fatributos3_3 = false;
            		sheet.fatributos3_1 = true;
            	elseif sheet.fatributos3_1 == true then
            		sheet.fatributos3_5 = false;
            		sheet.fatributos3_4 = false;
            		sheet.fatributos3_3 = false;
            		sheet.fatributos3_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.satributos1_5 == true then
            		sheet.satributos1_4 = true;
            		sheet.satributos1_3 = true;
            		sheet.satributos1_2 = true;
            		sheet.satributos1_1 = true;
            	elseif sheet.satributos1_4 == true then
            		sheet.satributos1_5 = false;
            		sheet.satributos1_3 = true;
            		sheet.satributos1_2 = true;
            		sheet.satributos1_1 = true;
            	elseif sheet.satributos1_3 == true then
            		sheet.satributos1_5 = false;
            		sheet.satributos1_4 = false;
            		sheet.satributos1_2 = true;
            		sheet.satributos1_1 = true;
            	elseif sheet.satributos1_2 == true then
            		sheet.satributos1_5 = false;
            		sheet.satributos1_4 = false;
            		sheet.satributos1_3 = false;
            		sheet.satributos1_1 = true;
            	elseif sheet.satributos1_1 == true then
            		sheet.satributos1_5 = false;
            		sheet.satributos1_4 = false;
            		sheet.satributos1_3 = false;
            		sheet.satributos1_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.satributos2_5 == true then
            		sheet.satributos2_4 = true;
            		sheet.satributos2_3 = true;
            		sheet.satributos2_2 = true;
            		sheet.satributos2_1 = true;
            	elseif sheet.satributos2_4 == true then
            		sheet.satributos2_5 = false;
            		sheet.satributos2_3 = true;
            		sheet.satributos2_2 = true;
            		sheet.satributos2_1 = true;
            	elseif sheet.satributos2_3 == true then
            		sheet.satributos2_5 = false;
            		sheet.satributos2_4 = false;
            		sheet.satributos2_2 = true;
            		sheet.satributos2_1 = true;
            	elseif sheet.satributos2_2 == true then
            		sheet.satributos2_5 = false;
            		sheet.satributos2_4 = false;
            		sheet.satributos2_3 = false;
            		sheet.satributos2_1 = true;
            	elseif sheet.satributos2_1 == true then
            		sheet.satributos2_5 = false;
            		sheet.satributos2_4 = false;
            		sheet.satributos2_3 = false;
            		sheet.satributos2_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.satributos3_5 == true then
            		sheet.satributos3_4 = true;
            		sheet.satributos3_3 = true;
            		sheet.satributos3_2 = true;
            		sheet.satributos3_1 = true;
            	elseif sheet.satributos3_4 == true then
            		sheet.satributos3_5 = false;
            		sheet.satributos3_3 = true;
            		sheet.satributos3_2 = true;
            		sheet.satributos3_1 = true;
            	elseif sheet.satributos3_3 == true then
            		sheet.satributos3_5 = false;
            		sheet.satributos3_4 = false;
            		sheet.satributos3_2 = true;
            		sheet.satributos3_1 = true;
            	elseif sheet.satributos3_2 == true then
            		sheet.satributos3_5 = false;
            		sheet.satributos3_4 = false;
            		sheet.satributos3_3 = false;
            		sheet.satributos3_1 = true;
            	elseif sheet.satributos3_1 == true then
            		sheet.satributos3_5 = false;
            		sheet.satributos3_4 = false;
            		sheet.satributos3_3 = false;
            		sheet.satributos3_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.matributos1_5 == true then
            		sheet.matributos1_4 = true;
            		sheet.matributos1_3 = true;
            		sheet.matributos1_2 = true;
            		sheet.matributos1_1 = true;
            	elseif sheet.matributos1_4 == true then
            		sheet.matributos1_5 = false;
            		sheet.matributos1_3 = true;
            		sheet.matributos1_2 = true;
            		sheet.matributos1_1 = true;
            	elseif sheet.matributos1_3 == true then
            		sheet.matributos1_5 = false;
            		sheet.matributos1_4 = false;
            		sheet.matributos1_2 = true;
            		sheet.matributos1_1 = true;
            	elseif sheet.matributos1_2 == true then
            		sheet.matributos1_5 = false;
            		sheet.matributos1_4 = false;
            		sheet.matributos1_3 = false;
            		sheet.matributos1_1 = true;
            	elseif sheet.matributos1_1 == true then
            		sheet.matributos1_5 = false;
            		sheet.matributos1_4 = false;
            		sheet.matributos1_3 = false;
            		sheet.matributos1_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.matributos2_5 == true then
            		sheet.matributos2_4 = true;
            		sheet.matributos2_3 = true;
            		sheet.matributos2_2 = true;
            		sheet.matributos2_1 = true;
            	elseif sheet.matributos2_4 == true then
            		sheet.matributos2_5 = false;
            		sheet.matributos2_3 = true;
            		sheet.matributos2_2 = true;
            		sheet.matributos2_1 = true;
            	elseif sheet.matributos2_3 == true then
            		sheet.matributos2_5 = false;
            		sheet.matributos2_4 = false;
            		sheet.matributos2_2 = true;
            		sheet.matributos2_1 = true;
            	elseif sheet.matributos2_2 == true then
            		sheet.matributos2_5 = false;
            		sheet.matributos2_4 = false;
            		sheet.matributos2_3 = false;
            		sheet.matributos2_1 = true;
            	elseif sheet.matributos2_1 == true then
            		sheet.matributos2_5 = false;
            		sheet.matributos2_4 = false;
            		sheet.matributos2_3 = false;
            		sheet.matributos2_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.matributos3_5 == true then
            		sheet.matributos3_4 = true;
            		sheet.matributos3_3 = true;
            		sheet.matributos3_2 = true;
            		sheet.matributos3_1 = true;
            	elseif sheet.matributos3_4 == true then
            		sheet.matributos3_5 = false;
            		sheet.matributos3_3 = true;
            		sheet.matributos3_2 = true;
            		sheet.matributos3_1 = true;
            	elseif sheet.matributos3_3 == true then
            		sheet.matributos3_5 = false;
            		sheet.matributos3_4 = false;
            		sheet.matributos3_2 = true;
            		sheet.matributos3_1 = true;
            	elseif sheet.matributos3_2 == true then
            		sheet.matributos3_5 = false;
            		sheet.matributos3_4 = false;
            		sheet.matributos3_3 = false;
            		sheet.matributos3_1 = true;
            	elseif sheet.matributos3_1 == true then
            		sheet.matributos3_5 = false;
            		sheet.matributos3_4 = false;
            		sheet.matributos3_3 = false;
            		sheet.matributos3_2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades1_5 == true then
            		sheet.thabilidades1_4 = true;
            		sheet.thabilidades1_3 = true;
            		sheet.thabilidades1_2 = true;
            		sheet.thabilidades1_1 = true;
            	elseif sheet.thabilidades1_4 == true then
            		sheet.thabilidades1_5 = false;
            		sheet.thabilidades1_3 = true;
            		sheet.thabilidades1_2 = true;
            		sheet.thabilidades1_1 = true;
            	elseif sheet.thabilidades1_3 == true then
            		sheet.thabilidades1_5 = false;
            		sheet.thabilidades1_4 = false;
            		sheet.thabilidades1_2 = true;
            		sheet.thabilidades1_1 = true;
            	elseif sheet.thabilidades1_2 == true then
            		sheet.thabilidades1_5 = false;
            		sheet.thabilidades1_4 = false;
            		sheet.thabilidades1_3 = false;
            		sheet.thabilidades1_1 = true;
            	elseif sheet.thabilidades1_1 == true then
            		sheet.thabilidades1_5 = false;
            		sheet.thabilidades1_4 = false;
            		sheet.thabilidades1_3 = false;
            		sheet.thabilidades1_2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades2_5 == true then
            		sheet.thabilidades2_4 = true;
            		sheet.thabilidades2_3 = true;
            		sheet.thabilidades2_2 = true;
            		sheet.thabilidades2_1 = true;
            	elseif sheet.thabilidades2_4 == true then
            		sheet.thabilidades2_5 = false;
            		sheet.thabilidades2_3 = true;
            		sheet.thabilidades2_2 = true;
            		sheet.thabilidades2_1 = true;
            	elseif sheet.thabilidades2_3 == true then
            		sheet.thabilidades2_5 = false;
            		sheet.thabilidades2_4 = false;
            		sheet.thabilidades2_2 = true;
            		sheet.thabilidades2_1 = true;
            	elseif sheet.thabilidades2_2 == true then
            		sheet.thabilidades2_5 = false;
            		sheet.thabilidades2_4 = false;
            		sheet.thabilidades2_3 = false;
            		sheet.thabilidades2_1 = true;
            	elseif sheet.thabilidades2_1 == true then
            		sheet.thabilidades2_5 = false;
            		sheet.thabilidades2_4 = false;
            		sheet.thabilidades2_3 = false;
            		sheet.thabilidades2_2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades3_5 == true then
            		sheet.thabilidades3_4 = true;
            		sheet.thabilidades3_3 = true;
            		sheet.thabilidades3_2 = true;
            		sheet.thabilidades3_1 = true;
            	elseif sheet.thabilidades3_4 == true then
            		sheet.thabilidades3_5 = false;
            		sheet.thabilidades3_3 = true;
            		sheet.thabilidades3_2 = true;
            		sheet.thabilidades3_1 = true;
            	elseif sheet.thabilidades3_3 == true then
            		sheet.thabilidades3_5 = false;
            		sheet.thabilidades3_4 = false;
            		sheet.thabilidades3_2 = true;
            		sheet.thabilidades3_1 = true;
            	elseif sheet.thabilidades3_2 == true then
            		sheet.thabilidades3_5 = false;
            		sheet.thabilidades3_4 = false;
            		sheet.thabilidades3_3 = false;
            		sheet.thabilidades3_1 = true;
            	elseif sheet.thabilidades3_1 == true then
            		sheet.thabilidades3_5 = false;
            		sheet.thabilidades3_4 = false;
            		sheet.thabilidades3_3 = false;
            		sheet.thabilidades3_2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades4_5 == true then
            		sheet.thabilidades4_4 = true;
            		sheet.thabilidades4_3 = true;
            		sheet.thabilidades4_2 = true;
            		sheet.thabilidades4_1 = true;
            	elseif sheet.thabilidades4_4 == true then
            		sheet.thabilidades4_5 = false;
            		sheet.thabilidades4_3 = true;
            		sheet.thabilidades4_2 = true;
            		sheet.thabilidades4_1 = true;
            	elseif sheet.thabilidades4_3 == true then
            		sheet.thabilidades4_5 = false;
            		sheet.thabilidades4_4 = false;
            		sheet.thabilidades4_2 = true;
            		sheet.thabilidades4_1 = true;
            	elseif sheet.thabilidades4_2 == true then
            		sheet.thabilidades4_5 = false;
            		sheet.thabilidades4_4 = false;
            		sheet.thabilidades4_3 = false;
            		sheet.thabilidades4_1 = true;
            	elseif sheet.thabilidades4_1 == true then
            		sheet.thabilidades4_5 = false;
            		sheet.thabilidades4_4 = false;
            		sheet.thabilidades4_3 = false;
            		sheet.thabilidades4_2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades5_5 == true then
            		sheet.thabilidades5_4 = true;
            		sheet.thabilidades5_3 = true;
            		sheet.thabilidades5_2 = true;
            		sheet.thabilidades5_1 = true;
            	elseif sheet.thabilidades5_4 == true then
            		sheet.thabilidades5_5 = false;
            		sheet.thabilidades5_3 = true;
            		sheet.thabilidades5_2 = true;
            		sheet.thabilidades5_1 = true;
            	elseif sheet.thabilidades5_3 == true then
            		sheet.thabilidades5_5 = false;
            		sheet.thabilidades5_4 = false;
            		sheet.thabilidades5_2 = true;
            		sheet.thabilidades5_1 = true;
            	elseif sheet.thabilidades5_2 == true then
            		sheet.thabilidades5_5 = false;
            		sheet.thabilidades5_4 = false;
            		sheet.thabilidades5_3 = false;
            		sheet.thabilidades5_1 = true;
            	elseif sheet.thabilidades5_1 == true then
            		sheet.thabilidades5_5 = false;
            		sheet.thabilidades5_4 = false;
            		sheet.thabilidades5_3 = false;
            		sheet.thabilidades5_2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades6_5 == true then
            		sheet.thabilidades6_4 = true;
            		sheet.thabilidades6_3 = true;
            		sheet.thabilidades6_2 = true;
            		sheet.thabilidades6_1 = true;
            	elseif sheet.thabilidades6_4 == true then
            		sheet.thabilidades6_5 = false;
            		sheet.thabilidades6_3 = true;
            		sheet.thabilidades6_2 = true;
            		sheet.thabilidades6_1 = true;
            	elseif sheet.thabilidades6_3 == true then
            		sheet.thabilidades6_5 = false;
            		sheet.thabilidades6_4 = false;
            		sheet.thabilidades6_2 = true;
            		sheet.thabilidades6_1 = true;
            	elseif sheet.thabilidades6_2 == true then
            		sheet.thabilidades6_5 = false;
            		sheet.thabilidades6_4 = false;
            		sheet.thabilidades6_3 = false;
            		sheet.thabilidades6_1 = true;
            	elseif sheet.thabilidades6_1 == true then
            		sheet.thabilidades6_5 = false;
            		sheet.thabilidades6_4 = false;
            		sheet.thabilidades6_3 = false;
            		sheet.thabilidades6_2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades7_5 == true then
            		sheet.thabilidades7_4 = true;
            		sheet.thabilidades7_3 = true;
            		sheet.thabilidades7_2 = true;
            		sheet.thabilidades7_1 = true;
            	elseif sheet.thabilidades7_4 == true then
            		sheet.thabilidades7_5 = false;
            		sheet.thabilidades7_3 = true;
            		sheet.thabilidades7_2 = true;
            		sheet.thabilidades7_1 = true;
            	elseif sheet.thabilidades7_3 == true then
            		sheet.thabilidades7_5 = false;
            		sheet.thabilidades7_4 = false;
            		sheet.thabilidades7_2 = true;
            		sheet.thabilidades7_1 = true;
            	elseif sheet.thabilidades7_2 == true then
            		sheet.thabilidades7_5 = false;
            		sheet.thabilidades7_4 = false;
            		sheet.thabilidades7_3 = false;
            		sheet.thabilidades7_1 = true;
            	elseif sheet.thabilidades7_1 == true then
            		sheet.thabilidades7_5 = false;
            		sheet.thabilidades7_4 = false;
            		sheet.thabilidades7_3 = false;
            		sheet.thabilidades7_2 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades8_5 == true then
            		sheet.thabilidades8_4 = true;
            		sheet.thabilidades8_3 = true;
            		sheet.thabilidades8_2 = true;
            		sheet.thabilidades8_1 = true;
            	elseif sheet.thabilidades8_4 == true then
            		sheet.thabilidades8_5 = false;
            		sheet.thabilidades8_3 = true;
            		sheet.thabilidades8_2 = true;
            		sheet.thabilidades8_1 = true;
            	elseif sheet.thabilidades8_3 == true then
            		sheet.thabilidades8_5 = false;
            		sheet.thabilidades8_4 = false;
            		sheet.thabilidades8_2 = true;
            		sheet.thabilidades8_1 = true;
            	elseif sheet.thabilidades8_2 == true then
            		sheet.thabilidades8_5 = false;
            		sheet.thabilidades8_4 = false;
            		sheet.thabilidades8_3 = false;
            		sheet.thabilidades8_1 = true;
            	elseif sheet.thabilidades8_1 == true then
            		sheet.thabilidades8_5 = false;
            		sheet.thabilidades8_4 = false;
            		sheet.thabilidades8_3 = false;
            		sheet.thabilidades8_2 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades9_5 == true then
            		sheet.thabilidades9_4 = true;
            		sheet.thabilidades9_3 = true;
            		sheet.thabilidades9_2 = true;
            		sheet.thabilidades9_1 = true;
            	elseif sheet.thabilidades9_4 == true then
            		sheet.thabilidades9_5 = false;
            		sheet.thabilidades9_3 = true;
            		sheet.thabilidades9_2 = true;
            		sheet.thabilidades9_1 = true;
            	elseif sheet.thabilidades9_3 == true then
            		sheet.thabilidades9_5 = false;
            		sheet.thabilidades9_4 = false;
            		sheet.thabilidades9_2 = true;
            		sheet.thabilidades9_1 = true;
            	elseif sheet.thabilidades9_2 == true then
            		sheet.thabilidades9_5 = false;
            		sheet.thabilidades9_4 = false;
            		sheet.thabilidades9_3 = false;
            		sheet.thabilidades9_1 = true;
            	elseif sheet.thabilidades9_1 == true then
            		sheet.thabilidades9_5 = false;
            		sheet.thabilidades9_4 = false;
            		sheet.thabilidades9_3 = false;
            		sheet.thabilidades9_2 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.thabilidades10_5 == true then
            		sheet.thabilidades10_4 = true;
            		sheet.thabilidades10_3 = true;
            		sheet.thabilidades10_2 = true;
            		sheet.thabilidades10_1 = true;
            	elseif sheet.thabilidades10_4 == true then
            		sheet.thabilidades10_5 = false;
            		sheet.thabilidades10_3 = true;
            		sheet.thabilidades10_2 = true;
            		sheet.thabilidades10_1 = true;
            	elseif sheet.thabilidades10_3 == true then
            		sheet.thabilidades10_5 = false;
            		sheet.thabilidades10_4 = false;
            		sheet.thabilidades10_2 = true;
            		sheet.thabilidades10_1 = true;
            	elseif sheet.thabilidades10_2 == true then
            		sheet.thabilidades10_5 = false;
            		sheet.thabilidades10_4 = false;
            		sheet.thabilidades10_3 = false;
            		sheet.thabilidades10_1 = true;
            	elseif sheet.thabilidades10_1 == true then
            		sheet.thabilidades10_5 = false;
            		sheet.thabilidades10_4 = false;
            		sheet.thabilidades10_3 = false;
            		sheet.thabilidades10_2 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades1_5 == true then
            		sheet.phabilidades1_4 = true;
            		sheet.phabilidades1_3 = true;
            		sheet.phabilidades1_2 = true;
            		sheet.phabilidades1_1 = true;
            	elseif sheet.phabilidades1_4 == true then
            		sheet.phabilidades1_5 = false;
            		sheet.phabilidades1_3 = true;
            		sheet.phabilidades1_2 = true;
            		sheet.phabilidades1_1 = true;
            	elseif sheet.phabilidades1_3 == true then
            		sheet.phabilidades1_5 = false;
            		sheet.phabilidades1_4 = false;
            		sheet.phabilidades1_2 = true;
            		sheet.phabilidades1_1 = true;
            	elseif sheet.phabilidades1_2 == true then
            		sheet.phabilidades1_5 = false;
            		sheet.phabilidades1_4 = false;
            		sheet.phabilidades1_3 = false;
            		sheet.phabilidades1_1 = true;
            	elseif sheet.phabilidades1_1 == true then
            		sheet.phabilidades1_5 = false;
            		sheet.phabilidades1_4 = false;
            		sheet.phabilidades1_3 = false;
            		sheet.phabilidades1_2 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades2_5 == true then
            		sheet.phabilidades2_4 = true;
            		sheet.phabilidades2_3 = true;
            		sheet.phabilidades2_2 = true;
            		sheet.phabilidades2_1 = true;
            	elseif sheet.phabilidades2_4 == true then
            		sheet.phabilidades2_5 = false;
            		sheet.phabilidades2_3 = true;
            		sheet.phabilidades2_2 = true;
            		sheet.phabilidades2_1 = true;
            	elseif sheet.phabilidades2_3 == true then
            		sheet.phabilidades2_5 = false;
            		sheet.phabilidades2_4 = false;
            		sheet.phabilidades2_2 = true;
            		sheet.phabilidades2_1 = true;
            	elseif sheet.phabilidades2_2 == true then
            		sheet.phabilidades2_5 = false;
            		sheet.phabilidades2_4 = false;
            		sheet.phabilidades2_3 = false;
            		sheet.phabilidades2_1 = true;
            	elseif sheet.phabilidades2_1 == true then
            		sheet.phabilidades2_5 = false;
            		sheet.phabilidades2_4 = false;
            		sheet.phabilidades2_3 = false;
            		sheet.phabilidades2_2 = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades3_5 == true then
            		sheet.phabilidades3_4 = true;
            		sheet.phabilidades3_3 = true;
            		sheet.phabilidades3_2 = true;
            		sheet.phabilidades3_1 = true;
            	elseif sheet.phabilidades3_4 == true then
            		sheet.phabilidades3_5 = false;
            		sheet.phabilidades3_3 = true;
            		sheet.phabilidades3_2 = true;
            		sheet.phabilidades3_1 = true;
            	elseif sheet.phabilidades3_3 == true then
            		sheet.phabilidades3_5 = false;
            		sheet.phabilidades3_4 = false;
            		sheet.phabilidades3_2 = true;
            		sheet.phabilidades3_1 = true;
            	elseif sheet.phabilidades3_2 == true then
            		sheet.phabilidades3_5 = false;
            		sheet.phabilidades3_4 = false;
            		sheet.phabilidades3_3 = false;
            		sheet.phabilidades3_1 = true;
            	elseif sheet.phabilidades3_1 == true then
            		sheet.phabilidades3_5 = false;
            		sheet.phabilidades3_4 = false;
            		sheet.phabilidades3_3 = false;
            		sheet.phabilidades3_2 = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades4_5 == true then
            		sheet.phabilidades4_4 = true;
            		sheet.phabilidades4_3 = true;
            		sheet.phabilidades4_2 = true;
            		sheet.phabilidades4_1 = true;
            	elseif sheet.phabilidades4_4 == true then
            		sheet.phabilidades4_5 = false;
            		sheet.phabilidades4_3 = true;
            		sheet.phabilidades4_2 = true;
            		sheet.phabilidades4_1 = true;
            	elseif sheet.phabilidades4_3 == true then
            		sheet.phabilidades4_5 = false;
            		sheet.phabilidades4_4 = false;
            		sheet.phabilidades4_2 = true;
            		sheet.phabilidades4_1 = true;
            	elseif sheet.phabilidades4_2 == true then
            		sheet.phabilidades4_5 = false;
            		sheet.phabilidades4_4 = false;
            		sheet.phabilidades4_3 = false;
            		sheet.phabilidades4_1 = true;
            	elseif sheet.phabilidades4_1 == true then
            		sheet.phabilidades4_5 = false;
            		sheet.phabilidades4_4 = false;
            		sheet.phabilidades4_3 = false;
            		sheet.phabilidades4_2 = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades5_5 == true then
            		sheet.phabilidades5_4 = true;
            		sheet.phabilidades5_3 = true;
            		sheet.phabilidades5_2 = true;
            		sheet.phabilidades5_1 = true;
            	elseif sheet.phabilidades5_4 == true then
            		sheet.phabilidades5_5 = false;
            		sheet.phabilidades5_3 = true;
            		sheet.phabilidades5_2 = true;
            		sheet.phabilidades5_1 = true;
            	elseif sheet.phabilidades5_3 == true then
            		sheet.phabilidades5_5 = false;
            		sheet.phabilidades5_4 = false;
            		sheet.phabilidades5_2 = true;
            		sheet.phabilidades5_1 = true;
            	elseif sheet.phabilidades5_2 == true then
            		sheet.phabilidades5_5 = false;
            		sheet.phabilidades5_4 = false;
            		sheet.phabilidades5_3 = false;
            		sheet.phabilidades5_1 = true;
            	elseif sheet.phabilidades5_1 == true then
            		sheet.phabilidades5_5 = false;
            		sheet.phabilidades5_4 = false;
            		sheet.phabilidades5_3 = false;
            		sheet.phabilidades5_2 = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades6_5 == true then
            		sheet.phabilidades6_4 = true;
            		sheet.phabilidades6_3 = true;
            		sheet.phabilidades6_2 = true;
            		sheet.phabilidades6_1 = true;
            	elseif sheet.phabilidades6_4 == true then
            		sheet.phabilidades6_5 = false;
            		sheet.phabilidades6_3 = true;
            		sheet.phabilidades6_2 = true;
            		sheet.phabilidades6_1 = true;
            	elseif sheet.phabilidades6_3 == true then
            		sheet.phabilidades6_5 = false;
            		sheet.phabilidades6_4 = false;
            		sheet.phabilidades6_2 = true;
            		sheet.phabilidades6_1 = true;
            	elseif sheet.phabilidades6_2 == true then
            		sheet.phabilidades6_5 = false;
            		sheet.phabilidades6_4 = false;
            		sheet.phabilidades6_3 = false;
            		sheet.phabilidades6_1 = true;
            	elseif sheet.phabilidades6_1 == true then
            		sheet.phabilidades6_5 = false;
            		sheet.phabilidades6_4 = false;
            		sheet.phabilidades6_3 = false;
            		sheet.phabilidades6_2 = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades7_5 == true then
            		sheet.phabilidades7_4 = true;
            		sheet.phabilidades7_3 = true;
            		sheet.phabilidades7_2 = true;
            		sheet.phabilidades7_1 = true;
            	elseif sheet.phabilidades7_4 == true then
            		sheet.phabilidades7_5 = false;
            		sheet.phabilidades7_3 = true;
            		sheet.phabilidades7_2 = true;
            		sheet.phabilidades7_1 = true;
            	elseif sheet.phabilidades7_3 == true then
            		sheet.phabilidades7_5 = false;
            		sheet.phabilidades7_4 = false;
            		sheet.phabilidades7_2 = true;
            		sheet.phabilidades7_1 = true;
            	elseif sheet.phabilidades7_2 == true then
            		sheet.phabilidades7_5 = false;
            		sheet.phabilidades7_4 = false;
            		sheet.phabilidades7_3 = false;
            		sheet.phabilidades7_1 = true;
            	elseif sheet.phabilidades7_1 == true then
            		sheet.phabilidades7_5 = false;
            		sheet.phabilidades7_4 = false;
            		sheet.phabilidades7_3 = false;
            		sheet.phabilidades7_2 = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades8_5 == true then
            		sheet.phabilidades8_4 = true;
            		sheet.phabilidades8_3 = true;
            		sheet.phabilidades8_2 = true;
            		sheet.phabilidades8_1 = true;
            	elseif sheet.phabilidades8_4 == true then
            		sheet.phabilidades8_5 = false;
            		sheet.phabilidades8_3 = true;
            		sheet.phabilidades8_2 = true;
            		sheet.phabilidades8_1 = true;
            	elseif sheet.phabilidades8_3 == true then
            		sheet.phabilidades8_5 = false;
            		sheet.phabilidades8_4 = false;
            		sheet.phabilidades8_2 = true;
            		sheet.phabilidades8_1 = true;
            	elseif sheet.phabilidades8_2 == true then
            		sheet.phabilidades8_5 = false;
            		sheet.phabilidades8_4 = false;
            		sheet.phabilidades8_3 = false;
            		sheet.phabilidades8_1 = true;
            	elseif sheet.phabilidades8_1 == true then
            		sheet.phabilidades8_5 = false;
            		sheet.phabilidades8_4 = false;
            		sheet.phabilidades8_3 = false;
            		sheet.phabilidades8_2 = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades9_5 == true then
            		sheet.phabilidades9_4 = true;
            		sheet.phabilidades9_3 = true;
            		sheet.phabilidades9_2 = true;
            		sheet.phabilidades9_1 = true;
            	elseif sheet.phabilidades9_4 == true then
            		sheet.phabilidades9_5 = false;
            		sheet.phabilidades9_3 = true;
            		sheet.phabilidades9_2 = true;
            		sheet.phabilidades9_1 = true;
            	elseif sheet.phabilidades9_3 == true then
            		sheet.phabilidades9_5 = false;
            		sheet.phabilidades9_4 = false;
            		sheet.phabilidades9_2 = true;
            		sheet.phabilidades9_1 = true;
            	elseif sheet.phabilidades9_2 == true then
            		sheet.phabilidades9_5 = false;
            		sheet.phabilidades9_4 = false;
            		sheet.phabilidades9_3 = false;
            		sheet.phabilidades9_1 = true;
            	elseif sheet.phabilidades9_1 == true then
            		sheet.phabilidades9_5 = false;
            		sheet.phabilidades9_4 = false;
            		sheet.phabilidades9_3 = false;
            		sheet.phabilidades9_2 = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.phabilidades10_5 == true then
            		sheet.phabilidades10_4 = true;
            		sheet.phabilidades10_3 = true;
            		sheet.phabilidades10_2 = true;
            		sheet.phabilidades10_1 = true;
            	elseif sheet.phabilidades10_4 == true then
            		sheet.phabilidades10_5 = false;
            		sheet.phabilidades10_3 = true;
            		sheet.phabilidades10_2 = true;
            		sheet.phabilidades10_1 = true;
            	elseif sheet.phabilidades10_3 == true then
            		sheet.phabilidades10_5 = false;
            		sheet.phabilidades10_4 = false;
            		sheet.phabilidades10_2 = true;
            		sheet.phabilidades10_1 = true;
            	elseif sheet.phabilidades10_2 == true then
            		sheet.phabilidades10_5 = false;
            		sheet.phabilidades10_4 = false;
            		sheet.phabilidades10_3 = false;
            		sheet.phabilidades10_1 = true;
            	elseif sheet.phabilidades10_1 == true then
            		sheet.phabilidades10_5 = false;
            		sheet.phabilidades10_4 = false;
            		sheet.phabilidades10_3 = false;
            		sheet.phabilidades10_2 = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades1_5 == true then
            		sheet.chabilidades1_4 = true;
            		sheet.chabilidades1_3 = true;
            		sheet.chabilidades1_2 = true;
            		sheet.chabilidades1_1 = true;
            	elseif sheet.chabilidades1_4 == true then
            		sheet.chabilidades1_5 = false;
            		sheet.chabilidades1_3 = true;
            		sheet.chabilidades1_2 = true;
            		sheet.chabilidades1_1 = true;
            	elseif sheet.chabilidades1_3 == true then
            		sheet.chabilidades1_5 = false;
            		sheet.chabilidades1_4 = false;
            		sheet.chabilidades1_2 = true;
            		sheet.chabilidades1_1 = true;
            	elseif sheet.chabilidades1_2 == true then
            		sheet.chabilidades1_5 = false;
            		sheet.chabilidades1_4 = false;
            		sheet.chabilidades1_3 = false;
            		sheet.chabilidades1_1 = true;
            	elseif sheet.chabilidades1_1 == true then
            		sheet.chabilidades1_5 = false;
            		sheet.chabilidades1_4 = false;
            		sheet.chabilidades1_3 = false;
            		sheet.chabilidades1_2 = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades2_5 == true then
            		sheet.chabilidades2_4 = true;
            		sheet.chabilidades2_3 = true;
            		sheet.chabilidades2_2 = true;
            		sheet.chabilidades2_1 = true;
            	elseif sheet.chabilidades2_4 == true then
            		sheet.chabilidades2_5 = false;
            		sheet.chabilidades2_3 = true;
            		sheet.chabilidades2_2 = true;
            		sheet.chabilidades2_1 = true;
            	elseif sheet.chabilidades2_3 == true then
            		sheet.chabilidades2_5 = false;
            		sheet.chabilidades2_4 = false;
            		sheet.chabilidades2_2 = true;
            		sheet.chabilidades2_1 = true;
            	elseif sheet.chabilidades2_2 == true then
            		sheet.chabilidades2_5 = false;
            		sheet.chabilidades2_4 = false;
            		sheet.chabilidades2_3 = false;
            		sheet.chabilidades2_1 = true;
            	elseif sheet.chabilidades2_1 == true then
            		sheet.chabilidades2_5 = false;
            		sheet.chabilidades2_4 = false;
            		sheet.chabilidades2_3 = false;
            		sheet.chabilidades2_2 = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades3_5 == true then
            		sheet.chabilidades3_4 = true;
            		sheet.chabilidades3_3 = true;
            		sheet.chabilidades3_2 = true;
            		sheet.chabilidades3_1 = true;
            	elseif sheet.chabilidades3_4 == true then
            		sheet.chabilidades3_5 = false;
            		sheet.chabilidades3_3 = true;
            		sheet.chabilidades3_2 = true;
            		sheet.chabilidades3_1 = true;
            	elseif sheet.chabilidades3_3 == true then
            		sheet.chabilidades3_5 = false;
            		sheet.chabilidades3_4 = false;
            		sheet.chabilidades3_2 = true;
            		sheet.chabilidades3_1 = true;
            	elseif sheet.chabilidades3_2 == true then
            		sheet.chabilidades3_5 = false;
            		sheet.chabilidades3_4 = false;
            		sheet.chabilidades3_3 = false;
            		sheet.chabilidades3_1 = true;
            	elseif sheet.chabilidades3_1 == true then
            		sheet.chabilidades3_5 = false;
            		sheet.chabilidades3_4 = false;
            		sheet.chabilidades3_3 = false;
            		sheet.chabilidades3_2 = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades4_5 == true then
            		sheet.chabilidades4_4 = true;
            		sheet.chabilidades4_3 = true;
            		sheet.chabilidades4_2 = true;
            		sheet.chabilidades4_1 = true;
            	elseif sheet.chabilidades4_4 == true then
            		sheet.chabilidades4_5 = false;
            		sheet.chabilidades4_3 = true;
            		sheet.chabilidades4_2 = true;
            		sheet.chabilidades4_1 = true;
            	elseif sheet.chabilidades4_3 == true then
            		sheet.chabilidades4_5 = false;
            		sheet.chabilidades4_4 = false;
            		sheet.chabilidades4_2 = true;
            		sheet.chabilidades4_1 = true;
            	elseif sheet.chabilidades4_2 == true then
            		sheet.chabilidades4_5 = false;
            		sheet.chabilidades4_4 = false;
            		sheet.chabilidades4_3 = false;
            		sheet.chabilidades4_1 = true;
            	elseif sheet.chabilidades4_1 == true then
            		sheet.chabilidades4_5 = false;
            		sheet.chabilidades4_4 = false;
            		sheet.chabilidades4_3 = false;
            		sheet.chabilidades4_2 = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades5_5 == true then
            		sheet.chabilidades5_4 = true;
            		sheet.chabilidades5_3 = true;
            		sheet.chabilidades5_2 = true;
            		sheet.chabilidades5_1 = true;
            	elseif sheet.chabilidades5_4 == true then
            		sheet.chabilidades5_5 = false;
            		sheet.chabilidades5_3 = true;
            		sheet.chabilidades5_2 = true;
            		sheet.chabilidades5_1 = true;
            	elseif sheet.chabilidades5_3 == true then
            		sheet.chabilidades5_5 = false;
            		sheet.chabilidades5_4 = false;
            		sheet.chabilidades5_2 = true;
            		sheet.chabilidades5_1 = true;
            	elseif sheet.chabilidades5_2 == true then
            		sheet.chabilidades5_5 = false;
            		sheet.chabilidades5_4 = false;
            		sheet.chabilidades5_3 = false;
            		sheet.chabilidades5_1 = true;
            	elseif sheet.chabilidades5_1 == true then
            		sheet.chabilidades5_5 = false;
            		sheet.chabilidades5_4 = false;
            		sheet.chabilidades5_3 = false;
            		sheet.chabilidades5_2 = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades6_5 == true then
            		sheet.chabilidades6_4 = true;
            		sheet.chabilidades6_3 = true;
            		sheet.chabilidades6_2 = true;
            		sheet.chabilidades6_1 = true;
            	elseif sheet.chabilidades6_4 == true then
            		sheet.chabilidades6_5 = false;
            		sheet.chabilidades6_3 = true;
            		sheet.chabilidades6_2 = true;
            		sheet.chabilidades6_1 = true;
            	elseif sheet.chabilidades6_3 == true then
            		sheet.chabilidades6_5 = false;
            		sheet.chabilidades6_4 = false;
            		sheet.chabilidades6_2 = true;
            		sheet.chabilidades6_1 = true;
            	elseif sheet.chabilidades6_2 == true then
            		sheet.chabilidades6_5 = false;
            		sheet.chabilidades6_4 = false;
            		sheet.chabilidades6_3 = false;
            		sheet.chabilidades6_1 = true;
            	elseif sheet.chabilidades6_1 == true then
            		sheet.chabilidades6_5 = false;
            		sheet.chabilidades6_4 = false;
            		sheet.chabilidades6_3 = false;
            		sheet.chabilidades6_2 = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades7_5 == true then
            		sheet.chabilidades7_4 = true;
            		sheet.chabilidades7_3 = true;
            		sheet.chabilidades7_2 = true;
            		sheet.chabilidades7_1 = true;
            	elseif sheet.chabilidades7_4 == true then
            		sheet.chabilidades7_5 = false;
            		sheet.chabilidades7_3 = true;
            		sheet.chabilidades7_2 = true;
            		sheet.chabilidades7_1 = true;
            	elseif sheet.chabilidades7_3 == true then
            		sheet.chabilidades7_5 = false;
            		sheet.chabilidades7_4 = false;
            		sheet.chabilidades7_2 = true;
            		sheet.chabilidades7_1 = true;
            	elseif sheet.chabilidades7_2 == true then
            		sheet.chabilidades7_5 = false;
            		sheet.chabilidades7_4 = false;
            		sheet.chabilidades7_3 = false;
            		sheet.chabilidades7_1 = true;
            	elseif sheet.chabilidades7_1 == true then
            		sheet.chabilidades7_5 = false;
            		sheet.chabilidades7_4 = false;
            		sheet.chabilidades7_3 = false;
            		sheet.chabilidades7_2 = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades8_5 == true then
            		sheet.chabilidades8_4 = true;
            		sheet.chabilidades8_3 = true;
            		sheet.chabilidades8_2 = true;
            		sheet.chabilidades8_1 = true;
            	elseif sheet.chabilidades8_4 == true then
            		sheet.chabilidades8_5 = false;
            		sheet.chabilidades8_3 = true;
            		sheet.chabilidades8_2 = true;
            		sheet.chabilidades8_1 = true;
            	elseif sheet.chabilidades8_3 == true then
            		sheet.chabilidades8_5 = false;
            		sheet.chabilidades8_4 = false;
            		sheet.chabilidades8_2 = true;
            		sheet.chabilidades8_1 = true;
            	elseif sheet.chabilidades8_2 == true then
            		sheet.chabilidades8_5 = false;
            		sheet.chabilidades8_4 = false;
            		sheet.chabilidades8_3 = false;
            		sheet.chabilidades8_1 = true;
            	elseif sheet.chabilidades8_1 == true then
            		sheet.chabilidades8_5 = false;
            		sheet.chabilidades8_4 = false;
            		sheet.chabilidades8_3 = false;
            		sheet.chabilidades8_2 = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades9_5 == true then
            		sheet.chabilidades9_4 = true;
            		sheet.chabilidades9_3 = true;
            		sheet.chabilidades9_2 = true;
            		sheet.chabilidades9_1 = true;
            	elseif sheet.chabilidades9_4 == true then
            		sheet.chabilidades9_5 = false;
            		sheet.chabilidades9_3 = true;
            		sheet.chabilidades9_2 = true;
            		sheet.chabilidades9_1 = true;
            	elseif sheet.chabilidades9_3 == true then
            		sheet.chabilidades9_5 = false;
            		sheet.chabilidades9_4 = false;
            		sheet.chabilidades9_2 = true;
            		sheet.chabilidades9_1 = true;
            	elseif sheet.chabilidades9_2 == true then
            		sheet.chabilidades9_5 = false;
            		sheet.chabilidades9_4 = false;
            		sheet.chabilidades9_3 = false;
            		sheet.chabilidades9_1 = true;
            	elseif sheet.chabilidades9_1 == true then
            		sheet.chabilidades9_5 = false;
            		sheet.chabilidades9_4 = false;
            		sheet.chabilidades9_3 = false;
            		sheet.chabilidades9_2 = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.chabilidades10_5 == true then
            		sheet.chabilidades10_4 = true;
            		sheet.chabilidades10_3 = true;
            		sheet.chabilidades10_2 = true;
            		sheet.chabilidades10_1 = true;
            	elseif sheet.chabilidades10_4 == true then
            		sheet.chabilidades10_5 = false;
            		sheet.chabilidades10_3 = true;
            		sheet.chabilidades10_2 = true;
            		sheet.chabilidades10_1 = true;
            	elseif sheet.chabilidades10_3 == true then
            		sheet.chabilidades10_5 = false;
            		sheet.chabilidades10_4 = false;
            		sheet.chabilidades10_2 = true;
            		sheet.chabilidades10_1 = true;
            	elseif sheet.chabilidades10_2 == true then
            		sheet.chabilidades10_5 = false;
            		sheet.chabilidades10_4 = false;
            		sheet.chabilidades10_3 = false;
            		sheet.chabilidades10_1 = true;
            	elseif sheet.chabilidades10_1 == true then
            		sheet.chabilidades10_5 = false;
            		sheet.chabilidades10_4 = false;
            		sheet.chabilidades10_3 = false;
            		sheet.chabilidades10_2 = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.antecedentes1_5 == true then
            		sheet.antecedentes1_4 = true;
            		sheet.antecedentes1_3 = true;
            		sheet.antecedentes1_2 = true;
            		sheet.antecedentes1_1 = true;
            	elseif sheet.antecedentes1_4 == true then
            		sheet.antecedentes1_5 = false;
            		sheet.antecedentes1_3 = true;
            		sheet.antecedentes1_2 = true;
            		sheet.antecedentes1_1 = true;
            	elseif sheet.antecedentes1_3 == true then
            		sheet.antecedentes1_5 = false;
            		sheet.antecedentes1_4 = false;
            		sheet.antecedentes1_2 = true;
            		sheet.antecedentes1_1 = true;
            	elseif sheet.antecedentes1_2 == true then
            		sheet.antecedentes1_5 = false;
            		sheet.antecedentes1_4 = false;
            		sheet.antecedentes1_3 = false;
            		sheet.antecedentes1_1 = true;
            	elseif sheet.antecedentes1_1 == true then
            		sheet.antecedentes1_5 = false;
            		sheet.antecedentes1_4 = false;
            		sheet.antecedentes1_3 = false;
            		sheet.antecedentes1_2 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.antecedentes2_5 == true then
            		sheet.antecedentes2_4 = true;
            		sheet.antecedentes2_3 = true;
            		sheet.antecedentes2_2 = true;
            		sheet.antecedentes2_1 = true;
            	elseif sheet.antecedentes2_4 == true then
            		sheet.antecedentes2_5 = false;
            		sheet.antecedentes2_3 = true;
            		sheet.antecedentes2_2 = true;
            		sheet.antecedentes2_1 = true;
            	elseif sheet.antecedentes2_3 == true then
            		sheet.antecedentes2_5 = false;
            		sheet.antecedentes2_4 = false;
            		sheet.antecedentes2_2 = true;
            		sheet.antecedentes2_1 = true;
            	elseif sheet.antecedentes2_2 == true then
            		sheet.antecedentes2_5 = false;
            		sheet.antecedentes2_4 = false;
            		sheet.antecedentes2_3 = false;
            		sheet.antecedentes2_1 = true;
            	elseif sheet.antecedentes2_1 == true then
            		sheet.antecedentes2_5 = false;
            		sheet.antecedentes2_4 = false;
            		sheet.antecedentes2_3 = false;
            		sheet.antecedentes2_2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.antecedentes3_5 == true then
            		sheet.antecedentes3_4 = true;
            		sheet.antecedentes3_3 = true;
            		sheet.antecedentes3_2 = true;
            		sheet.antecedentes3_1 = true;
            	elseif sheet.antecedentes3_4 == true then
            		sheet.antecedentes3_5 = false;
            		sheet.antecedentes3_3 = true;
            		sheet.antecedentes3_2 = true;
            		sheet.antecedentes3_1 = true;
            	elseif sheet.antecedentes3_3 == true then
            		sheet.antecedentes3_5 = false;
            		sheet.antecedentes3_4 = false;
            		sheet.antecedentes3_2 = true;
            		sheet.antecedentes3_1 = true;
            	elseif sheet.antecedentes3_2 == true then
            		sheet.antecedentes3_5 = false;
            		sheet.antecedentes3_4 = false;
            		sheet.antecedentes3_3 = false;
            		sheet.antecedentes3_1 = true;
            	elseif sheet.antecedentes3_1 == true then
            		sheet.antecedentes3_5 = false;
            		sheet.antecedentes3_4 = false;
            		sheet.antecedentes3_3 = false;
            		sheet.antecedentes3_2 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.antecedentes4_5 == true then
            		sheet.antecedentes4_4 = true;
            		sheet.antecedentes4_3 = true;
            		sheet.antecedentes4_2 = true;
            		sheet.antecedentes4_1 = true;
            	elseif sheet.antecedentes4_4 == true then
            		sheet.antecedentes4_5 = false;
            		sheet.antecedentes4_3 = true;
            		sheet.antecedentes4_2 = true;
            		sheet.antecedentes4_1 = true;
            	elseif sheet.antecedentes4_3 == true then
            		sheet.antecedentes4_5 = false;
            		sheet.antecedentes4_4 = false;
            		sheet.antecedentes4_2 = true;
            		sheet.antecedentes4_1 = true;
            	elseif sheet.antecedentes4_2 == true then
            		sheet.antecedentes4_5 = false;
            		sheet.antecedentes4_4 = false;
            		sheet.antecedentes4_3 = false;
            		sheet.antecedentes4_1 = true;
            	elseif sheet.antecedentes4_1 == true then
            		sheet.antecedentes4_5 = false;
            		sheet.antecedentes4_4 = false;
            		sheet.antecedentes4_3 = false;
            		sheet.antecedentes4_2 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.antecedentes5_5 == true then
            		sheet.antecedentes5_4 = true;
            		sheet.antecedentes5_3 = true;
            		sheet.antecedentes5_2 = true;
            		sheet.antecedentes5_1 = true;
            	elseif sheet.antecedentes5_4 == true then
            		sheet.antecedentes5_5 = false;
            		sheet.antecedentes5_3 = true;
            		sheet.antecedentes5_2 = true;
            		sheet.antecedentes5_1 = true;
            	elseif sheet.antecedentes5_3 == true then
            		sheet.antecedentes5_5 = false;
            		sheet.antecedentes5_4 = false;
            		sheet.antecedentes5_2 = true;
            		sheet.antecedentes5_1 = true;
            	elseif sheet.antecedentes5_2 == true then
            		sheet.antecedentes5_5 = false;
            		sheet.antecedentes5_4 = false;
            		sheet.antecedentes5_3 = false;
            		sheet.antecedentes5_1 = true;
            	elseif sheet.antecedentes5_1 == true then
            		sheet.antecedentes5_5 = false;
            		sheet.antecedentes5_4 = false;
            		sheet.antecedentes5_3 = false;
            		sheet.antecedentes5_2 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.disciplinas1_5 == true then
            		sheet.disciplinas1_4 = true;
            		sheet.disciplinas1_3 = true;
            		sheet.disciplinas1_2 = true;
            		sheet.disciplinas1_1 = true;
            	elseif sheet.disciplinas1_4 == true then
            		sheet.disciplinas1_5 = false;
            		sheet.disciplinas1_3 = true;
            		sheet.disciplinas1_2 = true;
            		sheet.disciplinas1_1 = true;
            	elseif sheet.disciplinas1_3 == true then
            		sheet.disciplinas1_5 = false;
            		sheet.disciplinas1_4 = false;
            		sheet.disciplinas1_2 = true;
            		sheet.disciplinas1_1 = true;
            	elseif sheet.disciplinas1_2 == true then
            		sheet.disciplinas1_5 = false;
            		sheet.disciplinas1_4 = false;
            		sheet.disciplinas1_3 = false;
            		sheet.disciplinas1_1 = true;
            	elseif sheet.disciplinas1_1 == true then
            		sheet.disciplinas1_5 = false;
            		sheet.disciplinas1_4 = false;
            		sheet.disciplinas1_3 = false;
            		sheet.disciplinas1_2 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.disciplinas2_5 == true then
            		sheet.disciplinas2_4 = true;
            		sheet.disciplinas2_3 = true;
            		sheet.disciplinas2_2 = true;
            		sheet.disciplinas2_1 = true;
            	elseif sheet.disciplinas2_4 == true then
            		sheet.disciplinas2_5 = false;
            		sheet.disciplinas2_3 = true;
            		sheet.disciplinas2_2 = true;
            		sheet.disciplinas2_1 = true;
            	elseif sheet.disciplinas2_3 == true then
            		sheet.disciplinas2_5 = false;
            		sheet.disciplinas2_4 = false;
            		sheet.disciplinas2_2 = true;
            		sheet.disciplinas2_1 = true;
            	elseif sheet.disciplinas2_2 == true then
            		sheet.disciplinas2_5 = false;
            		sheet.disciplinas2_4 = false;
            		sheet.disciplinas2_3 = false;
            		sheet.disciplinas2_1 = true;
            	elseif sheet.disciplinas2_1 == true then
            		sheet.disciplinas2_5 = false;
            		sheet.disciplinas2_4 = false;
            		sheet.disciplinas2_3 = false;
            		sheet.disciplinas2_2 = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.disciplinas3_5 == true then
            		sheet.disciplinas3_4 = true;
            		sheet.disciplinas3_3 = true;
            		sheet.disciplinas3_2 = true;
            		sheet.disciplinas3_1 = true;
            	elseif sheet.disciplinas3_4 == true then
            		sheet.disciplinas3_5 = false;
            		sheet.disciplinas3_3 = true;
            		sheet.disciplinas3_2 = true;
            		sheet.disciplinas3_1 = true;
            	elseif sheet.disciplinas3_3 == true then
            		sheet.disciplinas3_5 = false;
            		sheet.disciplinas3_4 = false;
            		sheet.disciplinas3_2 = true;
            		sheet.disciplinas3_1 = true;
            	elseif sheet.disciplinas3_2 == true then
            		sheet.disciplinas3_5 = false;
            		sheet.disciplinas3_4 = false;
            		sheet.disciplinas3_3 = false;
            		sheet.disciplinas3_1 = true;
            	elseif sheet.disciplinas3_1 == true then
            		sheet.disciplinas3_5 = false;
            		sheet.disciplinas3_4 = false;
            		sheet.disciplinas3_3 = false;
            		sheet.disciplinas3_2 = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.disciplinas4_5 == true then
            		sheet.disciplinas4_4 = true;
            		sheet.disciplinas4_3 = true;
            		sheet.disciplinas4_2 = true;
            		sheet.disciplinas4_1 = true;
            	elseif sheet.disciplinas4_4 == true then
            		sheet.disciplinas4_5 = false;
            		sheet.disciplinas4_3 = true;
            		sheet.disciplinas4_2 = true;
            		sheet.disciplinas4_1 = true;
            	elseif sheet.disciplinas4_3 == true then
            		sheet.disciplinas4_5 = false;
            		sheet.disciplinas4_4 = false;
            		sheet.disciplinas4_2 = true;
            		sheet.disciplinas4_1 = true;
            	elseif sheet.disciplinas4_2 == true then
            		sheet.disciplinas4_5 = false;
            		sheet.disciplinas4_4 = false;
            		sheet.disciplinas4_3 = false;
            		sheet.disciplinas4_1 = true;
            	elseif sheet.disciplinas4_1 == true then
            		sheet.disciplinas4_5 = false;
            		sheet.disciplinas4_4 = false;
            		sheet.disciplinas4_3 = false;
            		sheet.disciplinas4_2 = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.disciplinas5_5 == true then
            		sheet.disciplinas5_4 = true;
            		sheet.disciplinas5_3 = true;
            		sheet.disciplinas5_2 = true;
            		sheet.disciplinas5_1 = true;
            	elseif sheet.disciplinas5_4 == true then
            		sheet.disciplinas5_5 = false;
            		sheet.disciplinas5_3 = true;
            		sheet.disciplinas5_2 = true;
            		sheet.disciplinas5_1 = true;
            	elseif sheet.disciplinas5_3 == true then
            		sheet.disciplinas5_5 = false;
            		sheet.disciplinas5_4 = false;
            		sheet.disciplinas5_2 = true;
            		sheet.disciplinas5_1 = true;
            	elseif sheet.disciplinas5_2 == true then
            		sheet.disciplinas5_5 = false;
            		sheet.disciplinas5_4 = false;
            		sheet.disciplinas5_3 = false;
            		sheet.disciplinas5_1 = true;
            	elseif sheet.disciplinas5_1 == true then
            		sheet.disciplinas5_5 = false;
            		sheet.disciplinas5_4 = false;
            		sheet.disciplinas5_3 = false;
            		sheet.disciplinas5_2 = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.virtude1_5 == true then
            		sheet.virtude1_4 = true;
            		sheet.virtude1_3 = true;
            		sheet.virtude1_2 = true;
            		sheet.virtude1_1 = true;
            	elseif sheet.virtude1_4 == true then
            		sheet.virtude1_5 = false;
            		sheet.virtude1_3 = true;
            		sheet.virtude1_2 = true;
            		sheet.virtude1_1 = true;
            	elseif sheet.virtude1_3 == true then
            		sheet.virtude1_5 = false;
            		sheet.virtude1_4 = false;
            		sheet.virtude1_2 = true;
            		sheet.virtude1_1 = true;
            	elseif sheet.virtude1_2 == true then
            		sheet.virtude1_5 = false;
            		sheet.virtude1_4 = false;
            		sheet.virtude1_3 = false;
            		sheet.virtude1_1 = true;
            	elseif sheet.virtude1_1 == true then
            		sheet.virtude1_5 = false;
            		sheet.virtude1_4 = false;
            		sheet.virtude1_3 = false;
            		sheet.virtude1_2 = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.virtude2_5 == true then
            		sheet.virtude2_4 = true;
            		sheet.virtude2_3 = true;
            		sheet.virtude2_2 = true;
            		sheet.virtude2_1 = true;
            	elseif sheet.virtude2_4 == true then
            		sheet.virtude2_5 = false;
            		sheet.virtude2_3 = true;
            		sheet.virtude2_2 = true;
            		sheet.virtude2_1 = true;
            	elseif sheet.virtude2_3 == true then
            		sheet.virtude2_5 = false;
            		sheet.virtude2_4 = false;
            		sheet.virtude2_2 = true;
            		sheet.virtude2_1 = true;
            	elseif sheet.virtude2_2 == true then
            		sheet.virtude2_5 = false;
            		sheet.virtude2_4 = false;
            		sheet.virtude2_3 = false;
            		sheet.virtude2_1 = true;
            	elseif sheet.virtude2_1 == true then
            		sheet.virtude2_5 = false;
            		sheet.virtude2_4 = false;
            		sheet.virtude2_3 = false;
            		sheet.virtude2_2 = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.virtude3_5 == true then
            		sheet.virtude3_4 = true;
            		sheet.virtude3_3 = true;
            		sheet.virtude3_2 = true;
            		sheet.virtude3_1 = true;
            	elseif sheet.virtude3_4 == true then
            		sheet.virtude3_5 = false;
            		sheet.virtude3_3 = true;
            		sheet.virtude3_2 = true;
            		sheet.virtude3_1 = true;
            	elseif sheet.virtude3_3 == true then
            		sheet.virtude3_5 = false;
            		sheet.virtude3_4 = false;
            		sheet.virtude3_2 = true;
            		sheet.virtude3_1 = true;
            	elseif sheet.virtude3_2 == true then
            		sheet.virtude3_5 = false;
            		sheet.virtude3_4 = false;
            		sheet.virtude3_3 = false;
            		sheet.virtude3_1 = true;
            	elseif sheet.virtude3_1 == true then
            		sheet.virtude3_5 = false;
            		sheet.virtude3_4 = false;
            		sheet.virtude3_3 = false;
            		sheet.virtude3_2 = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.humanidade_10 == true then
            		sheet.humanidade_9 = true;
            		sheet.humanidade_8 = true;
            		sheet.humanidade_7 = true;
            		sheet.humanidade_6 = true;        
            		sheet.humanidade_5 = true;
            		sheet.humanidade_4 = true;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_9 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_8 = true;
            		sheet.humanidade_7 = true;
            		sheet.humanidade_6 = true;        
            		sheet.humanidade_5 = true;
            		sheet.humanidade_4 = true;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_8 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_7 = true;
            		sheet.humanidade_6 = true;        
            		sheet.humanidade_5 = true;
            		sheet.humanidade_4 = true;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_7 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_6 = true;        
            		sheet.humanidade_5 = true;
            		sheet.humanidade_4 = true;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_6 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_7 = false;        
            		sheet.humanidade_5 = true;
            		sheet.humanidade_4 = true;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_5 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_7 = false;        
            		sheet.humanidade_6 = false;
            		sheet.humanidade_4 = true;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_4 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_7 = false;        
            		sheet.humanidade_6 = false;
            		sheet.humanidade_5 = false;
            		sheet.humanidade_3 = true;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_3 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_7 = false;        
            		sheet.humanidade_6 = false;
            		sheet.humanidade_5 = false;
            		sheet.humanidade_4 = false;
            		sheet.humanidade_2 = true;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_2 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_7 = false;        
            		sheet.humanidade_6 = false;
            		sheet.humanidade_5 = false;
            		sheet.humanidade_4 = false;
            		sheet.humanidade_3 = false;
            		sheet.humanidade_1 = true;
            	elseif sheet.humanidade_1 == true then
            		sheet.humanidade_10 = false;
            		sheet.humanidade_9 = false;
            		sheet.humanidade_8 = false;
            		sheet.humanidade_7 = false;        
            		sheet.humanidade_6 = false;
            		sheet.humanidade_5 = false;
            		sheet.humanidade_4 = false;
            		sheet.humanidade_3 = false;
            		sheet.humanidade_2 = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.fdv_10 == true then
            		sheet.fdv_9 = true;
            		sheet.fdv_8 = true;
            		sheet.fdv_7 = true;
            		sheet.fdv_6 = true;        
            		sheet.fdv_5 = true;
            		sheet.fdv_4 = true;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_9 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_8 = true;
            		sheet.fdv_7 = true;
            		sheet.fdv_6 = true;        
            		sheet.fdv_5 = true;
            		sheet.fdv_4 = true;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_8 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_7 = true;
            		sheet.fdv_6 = true;        
            		sheet.fdv_5 = true;
            		sheet.fdv_4 = true;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_7 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_6 = true;        
            		sheet.fdv_5 = true;
            		sheet.fdv_4 = true;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_6 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_7 = false;        
            		sheet.fdv_5 = true;
            		sheet.fdv_4 = true;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_5 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_7 = false;        
            		sheet.fdv_6 = false;
            		sheet.fdv_4 = true;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_4 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_7 = false;        
            		sheet.fdv_6 = false;
            		sheet.fdv_5 = false;
            		sheet.fdv_3 = true;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_3 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_7 = false;        
            		sheet.fdv_6 = false;
            		sheet.fdv_5 = false;
            		sheet.fdv_4 = false;
            		sheet.fdv_2 = true;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_2 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_7 = false;        
            		sheet.fdv_6 = false;
            		sheet.fdv_5 = false;
            		sheet.fdv_4 = false;
            		sheet.fdv_3 = false;
            		sheet.fdv_1 = true;
            	elseif sheet.fdv_1 == true then
            		sheet.fdv_10 = false;
            		sheet.fdv_9 = false;
            		sheet.fdv_8 = false;
            		sheet.fdv_7 = false;        
            		sheet.fdv_6 = false;
            		sheet.fdv_5 = false;
            		sheet.fdv_4 = false;
            		sheet.fdv_3 = false;
            		sheet.fdv_2 = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.sangue_50 == true then
                    sheet.sangue_49 = true;
            		sheet.sangue_48 = true;
            		sheet.sangue_47 = true;
            		sheet.sangue_46 = true;
            		sheet.sangue_45 = true;
            		sheet.sangue_44 = true;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_49 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_48 = true;
            		sheet.sangue_47 = true;
            		sheet.sangue_46 = true;
            		sheet.sangue_45 = true;
            		sheet.sangue_44 = true;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_48 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_47 = true;
            		sheet.sangue_46 = true;
            		sheet.sangue_45 = true;
            		sheet.sangue_44 = true;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_47 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_46 = true;
            		sheet.sangue_45 = true;
            		sheet.sangue_44 = true;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_46 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_45 = true;
            		sheet.sangue_44 = true;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_45 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_44 = true;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_44 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_43 = true;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_43 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_42 = true;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_42 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_41 = true;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_41 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_40 = true;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
                elseif sheet.sangue_40 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_39 = true;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_39 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_38 = true;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_38 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_37 = true;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_37 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_36 = true;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_36 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_35 = true;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_35 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_34 = true;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_34 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;		
                    sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_33 = true;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_33 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_32 = true;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_32 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_31 = true;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_31 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_30 = true;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_30 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_29 = true;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_29 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_28 = true;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_28 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_27 = true;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_27 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_26 = true;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_26 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_25 = true;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_25 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_24 = true;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_24 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_23 = true;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_23 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_22 = true;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_22 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_21 = true;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_21 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_20 = true;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_20 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_19 = true;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_19 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_18 = true;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_18 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_17 = true;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_17 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_16 = true;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_16 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_15 = true;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_15 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_14 = true;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_14 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_13 = true;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_13 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_12 = true;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_12 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_11 = true;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_11 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_10 = true;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_10 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_9 = true;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_9 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_8 = true;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_8 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_7 = true;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_7 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_6 = true;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_6 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_5 = true;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_5 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_6 = false;
            		sheet.sangue_4 = true;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_4 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_6 = false;
            		sheet.sangue_5 = false;
            		sheet.sangue_3 = true;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_3 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_6 = false;
            		sheet.sangue_5 = false;
            		sheet.sangue_4 = false;
            		sheet.sangue_2 = true;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_2 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_6 = false;
            		sheet.sangue_5 = false;
            		sheet.sangue_4 = false;
            		sheet.sangue_3 = false;
            		sheet.sangue_1 = true;
            	elseif sheet.sangue_1 == true then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_6 = false;
            		sheet.sangue_5 = false;
            		sheet.sangue_4 = false;
            		sheet.sangue_3 = false;
            		sheet.sangue_2 = false;
            	elseif sheet.sangue_1 == false then
                    sheet.sangue_50 = false;
            		sheet.sangue_49 = false;
            		sheet.sangue_48 = false;
            		sheet.sangue_47 = false;
            		sheet.sangue_46 = false;
            		sheet.sangue_45 = false;
            		sheet.sangue_44 = false;
            		sheet.sangue_43 = false;
            		sheet.sangue_42 = false;
            		sheet.sangue_41 = false;
            		sheet.sangue_40 = false;
            		sheet.sangue_39 = false;
            		sheet.sangue_38 = false;
            		sheet.sangue_37 = false;
            		sheet.sangue_36 = false;
            		sheet.sangue_35 = false;
            		sheet.sangue_34 = false;
            		sheet.sangue_33 = false;
            		sheet.sangue_32 = false;
            		sheet.sangue_31 = false;
            		sheet.sangue_30 = false;
            		sheet.sangue_29 = false;
            		sheet.sangue_28 = false;
            		sheet.sangue_27 = false;
            		sheet.sangue_26 = false;
            		sheet.sangue_25 = false;
            		sheet.sangue_24 = false;
            		sheet.sangue_23 = false;
            		sheet.sangue_22 = false;
            		sheet.sangue_21 = false;
            		sheet.sangue_20 = false;
            		sheet.sangue_19 = false;
            		sheet.sangue_18 = false;
            		sheet.sangue_17 = false;
            		sheet.sangue_16 = false;
            		sheet.sangue_15 = false;
            		sheet.sangue_14 = false;
            		sheet.sangue_13 = false;
            		sheet.sangue_12 = false;
            		sheet.sangue_11 = false;
            		sheet.sangue_10 = false;
            		sheet.sangue_9 = false;
            		sheet.sangue_8 = false;
            		sheet.sangue_7 = false;
            		sheet.sangue_6 = false;
            		sheet.sangue_5 = false;
            		sheet.sangue_4 = false;
            		sheet.sangue_3 = false;
            		sheet.sangue_2 = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
                if sheet.incapacitado_1 == true then
            		sheet.aleijado_1 = true;        
            		sheet.espancado_1 = true;
            		sheet.feridog_1 = true;
            		sheet.ferido_1 = true;
            		sheet.machucado_1 = true;
            		sheet.escoridado_1 = true;
            	elseif sheet.aleijado_1 == true then
            		sheet.incapacitado_1 = false;        
            		sheet.espancado_1 = true;
            		sheet.feridog_1 = true;
            		sheet.ferido_1 = true;
            		sheet.machucado_1 = true;
            		sheet.escoridado_1 = true;
            	elseif sheet.espancado_1 == true then
            		sheet.incapacitado_1 = false;        
            		sheet.aleijado_1 = false;
            		sheet.feridog_1 = true;
            		sheet.ferido_1 = true;
            		sheet.machucado_1 = true;
            		sheet.escoridado_1 = true;
            	elseif sheet.feridog_1 == true then
            		sheet.incapacitado_1 = false;        
            		sheet.aleijado_1 = false;
            		sheet.espancado_1 = false;
            		sheet.ferido_1 = true;
            		sheet.machucado_1 = true;
            		sheet.escoridado_1 = true;
            	elseif sheet.ferido_1 == true then
            		sheet.incapacitado_1 = false;        
            		sheet.aleijado_1 = false;
            		sheet.espancado_1 = false;
            		sheet.feridog_1 = false;
            		sheet.machucado_1 = true;
            		sheet.escoridado_1 = true;
            	elseif sheet.machucado_1 == true then
            		sheet.incapacitado_1 = false;        
            		sheet.aleijado_1 = false;
            		sheet.espancado_1 = false;
            		sheet.feridog_1 = false;
            		sheet.ferido_1 = false;
            		sheet.escoridado_1 = true;
            	elseif sheet.escoridado_1 == true then
            		sheet.incapacitado_1 = false;        
            		sheet.aleijado_1 = false;
            		sheet.espancado_1 = false;
            		sheet.feridog_1 = false;
            		sheet.ferido_1 = false;
            		sheet.machucado_1 = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
                if sheet.incapacitado_2 == true then
            		sheet.aleijado_2 = true;        
            		sheet.espancado_2 = true;
            		sheet.feridog_2 = true;
            		sheet.ferido_2 = true;
            		sheet.machucado_2 = true;
            		sheet.escoridado_2 = true;
            	elseif sheet.aleijado_2 == true then
            		sheet.incapacitado_2 = false;        
            		sheet.espancado_2 = true;
            		sheet.feridog_2 = true;
            		sheet.ferido_2 = true;
            		sheet.machucado_2 = true;
            		sheet.escoridado_2 = true;
            	elseif sheet.espancado_2 == true then
            		sheet.incapacitado_2 = false;        
            		sheet.aleijado_2 = false;
            		sheet.feridog_2 = true;
            		sheet.ferido_2 = true;
            		sheet.machucado_2 = true;
            		sheet.escoridado_2 = true;
            	elseif sheet.feridog_2 == true then
            		sheet.incapacitado_2 = false;        
            		sheet.aleijado_2 = false;
            		sheet.espancado_2 = false;
            		sheet.ferido_2 = true;
            		sheet.machucado_2 = true;
            		sheet.escoridado_2 = true;
            	elseif sheet.ferido_2 == true then
            		sheet.incapacitado_2 = false;        
            		sheet.aleijado_2 = false;
            		sheet.espancado_2 = false;
            		sheet.feridog_2 = false;
            		sheet.machucado_2 = true;
            		sheet.escoridado_2 = true;
            	elseif sheet.machucado_2 == true then
            		sheet.incapacitado_2 = false;        
            		sheet.aleijado_2 = false;
            		sheet.espancado_2 = false;
            		sheet.feridog_2 = false;
            		sheet.ferido_2 = false;
            		sheet.escoridado_2 = true;
            	elseif sheet.escoridado_2 == true then
            		sheet.incapacitado_2 = false;        
            		sheet.aleijado_2 = false;
            		sheet.espancado_2 = false;
            		sheet.feridog_2 = false;
            		sheet.ferido_2 = false;
            		sheet.machucado_2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
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
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmCodigo1()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmCodigo1();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmCodigo1 = {
    newEditor = newfrmCodigo1, 
    new = newfrmCodigo1, 
    name = "frmCodigo1", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmCodigo1 = _frmCodigo1;
Firecast.registrarForm(_frmCodigo1);

return _frmCodigo1;
