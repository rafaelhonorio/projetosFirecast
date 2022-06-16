require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmItemDaLista()
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
    obj:setName("frmItemDaLista");
    obj:setHeight(30);
    obj:setTheme("dark");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setMargins({bottom=2});
    obj.layout1:setName("layout1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setWidth(32);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setFontSize(18);
    obj.edit1:setHeight(30);
    obj.edit1:setHorzTextAlign("center");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setLeft(40);
    obj.edit1:setWidth(200);
    obj.edit1:setText("Pokemon");
    obj.edit1:setField("Espécie");
    obj.edit1:setMargins({left=4});
    obj.edit1:setName("edit1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'VidaF1', 'VidaBonus', 'VidaNivel', 'VidaB1', 'VidaV'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'VidaF2', 'VidaBonus', 'VidaNivel', 'VidaB2', 'VidaV'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'ATQF1', 'ATQBonus', 'ATQNivel', 'ATQB1', 'ATQV'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'ATQF2', 'ATQBonus', 'ATQNivel', 'ATQB2', 'ATQV'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'DEFF1', 'DEFBonus', 'DEFNivel', 'DefB1', 'DEFV'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'DEFF2', 'DEFBonus', 'DEFNivel', 'DefB2', 'DEFV'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'ATEF1', 'ATEBonus', 'ATENivel', 'ATEB1', 'ATEV'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'ATEF2', 'ATEBonus', 'ATENivel', 'ATEB2', 'ATEV'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'DFESF1', 'DFESBonus', 'DFESNIVEL', 'DFESB1', 'DFESV'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'DFESF2', 'DFESBonus', 'DFESNIVEL', 'DFESB2', 'DFESV'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'VELF1', 'VELBonus', 'VELNivel', 'VELB1', 'VELV'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'VELF2', 'VELBonus', 'VELNivel', 'VELB2', 'VELV'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'Natureza', 'natP', 'natN'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'TOTALF1G1', 'BONF1G1', 'PODERF1G1', 'STABF1G1', 'ATRF1G1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'PODERF1G1D2', 'PODERF1G1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'PODERF1G1X2', 'PODERF1G1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'TOTALF1G1D2', 'BONF1G1', 'PODERF1G1D2', 'STABF1G1', 'ATRF1G1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'TOTALF1G1X2', 'BONF1G1', 'PODERF1G1X2', 'STABF1G1', 'ATRF1G1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'TOTALF2G1', 'BONF2G1', 'PODERF2G1', 'STABF2G1', 'ATRF2G1'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'TOTALF1G2', 'BONF1G2', 'PODERF1G2', 'STABF1G2', 'ATRF1G2'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'PODERF1G2D2', 'PODERF1G2'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'PODERF1G2X2', 'PODERF1G2'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'TOTALF1G2D2', 'BONF1G2', 'PODERF1G2D2', 'STABF1G2', 'ATRF1G2'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'TOTALF1G2X2', 'BONF1G2', 'PODERF1G2X2', 'STABF1G2', 'ATRF1G2'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'TOTALF2G2', 'BONF2G2', 'PODERF2G2', 'STABF2G2', 'ATRF2G2'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'TOTALF1G3', 'BONF1G3', 'PODERF1G3', 'STABF1G3', 'ATRF1G3'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'PODERF1G3D2', 'PODERF1G3'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'PODERF1G3X2', 'PODERF1G3'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'TOTALF1G3D2', 'BONF1G3', 'PODERF1G3D2', 'STABF1G3', 'ATRF1G3'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'TOTALF1G3X2', 'BONF1G3', 'PODERF1G3X2', 'STABF1G3', 'ATRF1G3'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'TOTALF2G3', 'BONF2G3', 'PODERF2G3', 'STABF2G3', 'ATRF2G3'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'TOTALF1G4', 'BONF1G4', 'PODERF1G4', 'STABF1G4', 'ATRF1G4'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'PODERF1G4D2', 'PODERF1G4'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'PODERF1G4X2', 'PODERF1G4'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'TOTALF1G4D2', 'BONF1G4', 'PODERF1G4D2', 'STABF1G4', 'ATRF1G4'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'TOTALF1G4X2', 'BONF1G4', 'PODERF1G4X2', 'STABF1G4', 'ATRF1G4'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'TOTALF2G4', 'BONF2G4', 'PODERF2G4', 'STABF2G4', 'ATRF2G4'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setField("ESPG1");
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setField("ESPG1");
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setField("FISG1");
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setField("FISG1");
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setField("ESPG2");
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setField("ESPG2");
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setField("FISG2");
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj);
    obj.dataLink45:setField("FISG2");
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj);
    obj.dataLink46:setField("ESPG3");
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj);
    obj.dataLink47:setField("ESPG3");
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj);
    obj.dataLink48:setField("FISG3");
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj);
    obj.dataLink49:setField("FISG3");
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj);
    obj.dataLink50:setField("ESPG4");
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj);
    obj.dataLink51:setField("ESPG4");
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj);
    obj.dataLink52:setField("FISG4");
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj);
    obj.dataLink53:setField("FISG4");
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj);
    obj.dataLink54:setFields({'L10', 'L9', 'L8', 'L7', 'L6', 'L5', 'L4', 'L3', 'L2', 'L1'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj);
    obj.dataLink55:setFields({'AFE5', 'AFE4', 'AFE3', 'AFE2', 'AFE1'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj);
    obj.dataLink56:setFields({'T10', 'T9', 'T8', 'T7', 'T6', 'T5', 'T4', 'T3', 'T2', 'T1'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj);
    obj.dataLink57:setFields({'ATQN5', 'ATQN4', 'ATQN3', 'ATQN2', 'ATQN1'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj);
    obj.dataLink58:setFields({'ATQP5', 'ATQP4', 'ATQP3', 'ATQP2', 'ATQP1'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj);
    obj.dataLink59:setFields({'PREN5', 'PREN4', 'PREN3', 'PREN2', 'PREN1'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj);
    obj.dataLink60:setFields({'PREP5', 'PREP4', 'PREP3', 'PREP2', 'PREP1'});
    obj.dataLink60:setName("dataLink60");

    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj);
    obj.dataLink61:setFields({'CRIT5', 'CRIT4', 'CRIT3', 'CRIT2', 'CRIT1'});
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj);
    obj.dataLink62:setFields({'DEFN5', 'DEFN4', 'DEFN3', 'DEFN2', 'DEFN1'});
    obj.dataLink62:setName("dataLink62");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj);
    obj.dataLink63:setFields({'DEFP5', 'DEFP4', 'DEFP3', 'DEFP2', 'DEFP1'});
    obj.dataLink63:setName("dataLink63");

    obj.dataLink64 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink64:setParent(obj);
    obj.dataLink64:setFields({'EVAN5', 'EVAN4', 'EVAN3', 'EVAN2', 'EVAN1'});
    obj.dataLink64:setName("dataLink64");

    obj.dataLink65 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink65:setParent(obj);
    obj.dataLink65:setFields({'EVAP5', 'EVAP4', 'EVAP3', 'EVAP2', 'EVAP1'});
    obj.dataLink65:setName("dataLink65");

    obj.dataLink66 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink66:setParent(obj);
    obj.dataLink66:setFields({'ATEN5', 'ATEN4', 'ATEN3', 'ATEN2', 'ATEN1'});
    obj.dataLink66:setName("dataLink66");

    obj.dataLink67 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink67:setParent(obj);
    obj.dataLink67:setFields({'ATEP5', 'ATEP4', 'ATEP3', 'ATEP2', 'ATEP1'});
    obj.dataLink67:setName("dataLink67");

    obj.dataLink68 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink68:setParent(obj);
    obj.dataLink68:setFields({'DFESN5', 'DFESN4', 'DFESN3', 'DFESN2', 'DFESN1'});
    obj.dataLink68:setName("dataLink68");

    obj.dataLink69 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink69:setParent(obj);
    obj.dataLink69:setFields({'DFESP5', 'DFESP4', 'DFESP3', 'DFESP2', 'DFESP1'});
    obj.dataLink69:setName("dataLink69");

    obj.dataLink70 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink70:setParent(obj);
    obj.dataLink70:setFields({'VELN5', 'VELN4', 'VELN3', 'VELN2', 'VELN1'});
    obj.dataLink70:setName("dataLink70");

    obj.dataLink71 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink71:setParent(obj);
    obj.dataLink71:setFields({'VELP5', 'VELP4', 'VELP3', 'VELP2', 'VELP1'});
    obj.dataLink71:setName("dataLink71");

    obj.dataLink72 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink72:setParent(obj);
    obj.dataLink72:setFields({'CAR10', 'CAR9', 'CAR8', 'CAR7', 'CAR6', 'CAR5', 'CAR4', 'CAR3', 'CAR2', 'CAR1'});
    obj.dataLink72:setName("dataLink72");

    obj.dataLink73 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink73:setParent(obj);
    obj.dataLink73:setFields({'BEL10', 'BEL9', 'BEL8', 'BEL7', 'BEL6', 'BEL5', 'BEL4', 'BEL3', 'BEL2', 'BEL1'});
    obj.dataLink73:setName("dataLink73");

    obj.dataLink74 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink74:setParent(obj);
    obj.dataLink74:setFields({'FOF10', 'FOF9', 'FOF8', 'FOF7', 'FOF6', 'FOF5', 'FOF4', 'FOF3', 'FOF2', 'FOF1'});
    obj.dataLink74:setName("dataLink74");

    obj.dataLink75 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink75:setParent(obj);
    obj.dataLink75:setFields({'INT10', 'INT9', 'INT8', 'INT7', 'INT6', 'INT5', 'INT4', 'INT3', 'INT2', 'INT1'});
    obj.dataLink75:setName("dataLink75");

    obj.dataLink76 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink76:setParent(obj);
    obj.dataLink76:setFields({'RES10', 'RES9', 'RES8', 'RES7', 'RES6', 'RES5', 'RES4', 'RES3', 'RES2', 'RES1'});
    obj.dataLink76:setName("dataLink76");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            NDB.deleteNode(sheet);
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.VidaF1 = math.floor(tonumber((sheet.VidaBonus) or 0) +
                                          (tonumber(sheet.VidaNivel) or 0) +
                                          (tonumber(sheet.VidaB1) or 0) +
            							  (tonumber(sheet.VidaV or 0)));                  
            
                           if sheet.VidaF1 ~= 0 then
                                   sheet.VidaF1 = sheet.VidaF1
            					   else
            					   sheet.VidaF1 = 0;
                           end;
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.VidaF2 = math.floor((tonumber(sheet.VidaBonus) or 0) +
                                          (tonumber(sheet.VidaNivel) or 0) +
                                          (tonumber(sheet.VidaB2) or 0) +
            							  (tonumber(sheet.VidaV) or 0));                  
            
                           if sheet.VidaF2 ~= 0 then
                                   sheet.VidaF2 = sheet.VidaF2
            					   else
            					   sheet.VidaF2 = 0;
                           end;
        end, obj);

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ATQF1 = math.floor((tonumber(sheet.ATQBonus) or 0) +
                                          (tonumber(sheet.ATQNivel) or 0) +
                                          (tonumber(sheet.ATQB1) or 0) +
            							  (tonumber(sheet.ATQV) or 0));                  
            
                           if sheet.ATQF1 ~= 0 then
                                   sheet.ATQF1 = sheet.ATQF1
            					   else
            					   sheet.ATQF1 = 0;
                           end;
        end, obj);

    obj._e_event4 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ATQF2 = math.floor((tonumber(sheet.ATQBonus) or 0) +
                                          (tonumber(sheet.ATQNivel) or 0) +
                                          (tonumber(sheet.ATQB2) or 0) +
            							  (tonumber(sheet.ATQV) or 0));                  
            
                           if sheet.ATQF2 ~= 0 then
                                   sheet.ATQF2 = sheet.ATQF2
            					   else
            					   sheet.ATQF2 = 0;
                           end;
        end, obj);

    obj._e_event5 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.DEFF1 = math.floor((tonumber(sheet.DEFBonus) or 0) +
                                          (tonumber(sheet.DEFNivel) or 0) +
                                          (tonumber(sheet.DefB1) or 0) +
            							  (tonumber(sheet.DEFV) or 0));                  
            
                           if sheet.DEF1 ~= 0 then
                                   sheet.DEF1 = sheet.DEF1
            					   else
            					   sheet.DEF1 = 0;
                           end;
        end, obj);

    obj._e_event6 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.DEFF2 = math.floor((tonumber(sheet.DEFBonus) or 0) +
                                          (tonumber(sheet.DEFNivel) or 0) +
                                          (tonumber(sheet.DefB2) or 0) +
            							  (tonumber(sheet.DEFV) or 0));                  
            
                           if sheet.DEF2 ~= 0 then
                                   sheet.DEF2 = sheet.DEF2
            					   else
            					   sheet.DEF2 = 0;
                           end;
        end, obj);

    obj._e_event7 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ATEF1 = math.floor((tonumber(sheet.ATEBonus) or 0) +
                                          (tonumber(sheet.ATENivel) or 0) +
                                          (tonumber(sheet.ATEB1) or 0) +
            							  (tonumber(sheet.ATEV) or 0));                  
            
                           if sheet.ATEF1 ~= 0 then
                                   sheet.ATEF1 = sheet.ATEF1
            					   else
            					   sheet.ATEF1 = 0;
                           end;
        end, obj);

    obj._e_event8 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ATEF2 = math.floor((tonumber(sheet.ATEBonus) or 0) +
                                          (tonumber(sheet.ATENivel) or 0) +
                                          (tonumber(sheet.ATEB2) or 0) +
            							  (tonumber(sheet.ATEV) or 0));                  
            
                           if sheet.ATEF2 ~= 0 then
                                   sheet.ATEF2 = sheet.ATEF2
            					   else
            					   sheet.ATEF2 = 0;
                           end;
        end, obj);

    obj._e_event9 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.DFESF1 = math.floor((tonumber(sheet.DFESBonus) or 0) +
                                          (tonumber(sheet.DFESNIVEL) or 0) +
                                          (tonumber(sheet.DFESB1) or 0) +
            							  (tonumber(sheet.DFESV) or 0));                  
            
                           if sheet.DFESF1 ~= 0 then
                                   sheet.DFESF1 = sheet.DFESF1
            					   else
            					   sheet.DFESF1 = 0;
                           end;
        end, obj);

    obj._e_event10 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.DFESF2 = math.floor((tonumber(sheet.DFESBonus) or 0) +
                                          (tonumber(sheet.DFESNIVEL) or 0) +
                                          (tonumber(sheet.DFESB2) or 0) +
            							  (tonumber(sheet.DFESV) or 0));                  
            
                           if sheet.DFESF2 ~= 0 then
                                   sheet.DFESF2 = sheet.DFESF2
            					   else
            					   sheet.DFESF2 = 0;
                           end;
        end, obj);

    obj._e_event11 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.VELF1 = math.floor((tonumber(sheet.VELBonus) or 0) +
                                          (tonumber(sheet.VELNivel) or 0) +
                                          (tonumber(sheet.VELB1) or 0) +
            							  (tonumber(sheet.VELV) or 0));                  
            
                           if sheet.VELF1 ~= 0 then
                                   sheet.VELF1 = sheet.VELF1
            					   else
            					   sheet.VELF1 = 0;
                           end;
        end, obj);

    obj._e_event12 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.VELF2 = math.floor((tonumber(sheet.VELBonus) or 0) +
                                          (tonumber(sheet.VELNivel) or 0) +
                                          (tonumber(sheet.VELB2) or 0) +
            							  (tonumber(sheet.VELV) or 0));                  
            
                           if sheet.VELF2 ~= 0 then
                                   sheet.VELF2 = sheet.VELF2
            					   else
            					   sheet.VELF2 = 0;
                           end;
        end, obj);

    obj._e_event13 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;	
            		if sheet.Natureza == "Ousado" then
            			sheet.natP = "Ataque";
            			sheet.natN = "Ataque";
            		elseif sheet.Natureza == "Solitário" then
            			sheet.natP = "Ataque";
            			sheet.natN = "Defesa";
            		elseif sheet.Natureza == "Duro" then
            			sheet.natP = "Ataque";
            			sheet.natN = "Atq. Esp.";
            		elseif sheet.Natureza == "Desobediente" then
            			sheet.natP = "Ataque";
            			sheet.natN = "Def. Esp.";
            		elseif sheet.Natureza == "Valente" then
            			sheet.natP = "Ataque";
            			sheet.natN = "Velocidade";
            		elseif sheet.Natureza == "Atrevido" then
            			sheet.natP = "Defesa";
            			sheet.natN = "Ataque";
            		elseif sheet.Natureza == "Dócil" then
            			sheet.natP = "Defesa";
            			sheet.natN = "Defesa";
            		elseif sheet.Natureza == "Diabólico" then
            			sheet.natP = "Defesa";
            			sheet.natN = "Atq. Esp.";
            		elseif sheet.Natureza == "Medroso" then
            			sheet.natP = "Defesa";
            			sheet.natN = "Def. Esp.";
            		elseif sheet.Natureza == "Relaxado" then
            			sheet.natP = "Defesa";
            			sheet.natN = "Velocidade";
            		elseif sheet.Natureza == "Modesto" then
            			sheet.natP = "Atq. Esp.";
            			sheet.natN = "Ataque";
            		elseif sheet.Natureza == "Meigo" then
            			sheet.natP = "Atq. Esp.";
            			sheet.natN = "Defesa";
            		elseif sheet.Natureza == "Tímido" then
            			sheet.natP = "Atq. Esp.";
            			sheet.natN = "Atq. Esp.";
            		elseif sheet.Natureza == "Precipitado" then
            			sheet.natP = "Atq. Esp.";
            			sheet.natN = "Def. Esp.";
            		elseif sheet.Natureza == "Tranquilo" then
            			sheet.natP = "Atq. Esp.";
            			sheet.natN = "Velocidade";
            		elseif sheet.Natureza == "Calmo" then
            			sheet.natP = "Def. Esp.";
            			sheet.natN = "Ataque";
            		elseif sheet.Natureza == "Amável" then
            			sheet.natP = "Def. Esp.";
            			sheet.natN = "Defesa";
            		elseif sheet.Natureza == "Cuidadoso" then
            			sheet.natP = "Def. Esp.";
            			sheet.natN = "Atq. Esp.";
            		elseif sheet.Natureza == "Peculiar" then
            			sheet.natP = "Def. Esp.";
            			sheet.natN = "Def. Esp.";
            		elseif sheet.Natureza == "Petulante" then
            			sheet.natP = "Def. Esp.";
            			sheet.natN = "Velocidade";
            		elseif sheet.Natureza == "Receoso" then
            			sheet.natP = "Velocidade";
            			sheet.natN = "Ataque";
            		elseif sheet.Natureza == "Imprudente" then
            			sheet.natP = "Velocidade";
            			sheet.natN = "Defesa";
            		elseif sheet.Natureza == "Divertido" then
            			sheet.natP = "Velocidade";
            			sheet.natN = "Atq. Esp.";
            		elseif sheet.Natureza == "Ingênuo" then
            			sheet.natP = "Velocidade";
            			sheet.natN = "Def. Esp.";
            		elseif sheet.Natureza == "Sério" then
            			sheet.natP = "Velocidade";
            			sheet.natN = "Velocidade";
            		end;
        end, obj);

    obj._e_event14 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G1 = math.floor(((tonumber(sheet.PODERF1G1) or 0) *
                                          (tonumber(sheet.STABF1G1) or 1) +
                                          (tonumber(sheet.ATRF1G1) or 0) +
            							  (tonumber(sheet.BONF1G1) or 0)) / 2);                  
            
                           if sheet.TOTALF1G1 ~= 0 then
                                   sheet.TOTALF1G1 = sheet.TOTALF1G1
            					   else
            					   sheet.TOTALF1G1 = 0;
                           end;
        end, obj);

    obj._e_event15 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G1D2 = math.floor((tonumber(sheet.PODERF1G1) or 0) / 2);                  
            
                           if sheet.PODERF1G1D2 ~= 0 then
                                   sheet.PODERF1G1D2 = sheet.PODERF1G1D2
            					   else
            					   sheet.PODERF1G1D2 = 0;
                           end;
        end, obj);

    obj._e_event16 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G1X2 = math.floor((tonumber(sheet.PODERF1G1) or 0) * 2);                  
            
                           if sheet.PODERF1G1X2 ~= 0 then
                                   sheet.PODERF1G1X2 = sheet.PODERF1G1X2
            					   else
            					   sheet.PODERF1G1X2 = 0;
                           end;
        end, obj);

    obj._e_event17 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G1D2 = math.floor(((tonumber(sheet.PODERF1G1D2) or 0) *
                                          (tonumber(sheet.STABF1G1) or 1) +
                                          (tonumber(sheet.ATRF1G1) or 0) +
            							  (tonumber(sheet.BONF1G1) or 0)) / 2);                  
            
                           if sheet.TOTALF1G1D2 ~= 0 then
                                   sheet.TOTALF1G1D2 = sheet.TOTALF1G1D2
            					   else
            					   sheet.TOTALF1G1D2 = 0;
                           end;
        end, obj);

    obj._e_event18 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G1X2 = math.floor(((tonumber(sheet.PODERF1G1X2) or 0) *
                                          (tonumber(sheet.STABF1G1) or 1) +
                                          (tonumber(sheet.ATRF1G1) or 0) +
            							  (tonumber(sheet.BONF1G1) or 0)) / 2);                  
            
                           if sheet.TOTALF1G1X2 ~= 0 then
                                   sheet.TOTALF1G1X2 = sheet.TOTALF1G1X2
            					   else
            					   sheet.TOTALF1G1X2 = 0;
                           end;
        end, obj);

    obj._e_event19 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF2G1 = math.floor(((tonumber(sheet.PODERF2G1) or 0) *
                                          (tonumber(sheet.STABF2G1) or 1) +
                                          (tonumber(sheet.ATRF2G1) or 0) +
            							  (tonumber(sheet.BONF2G1) or 0)) / 2);                  
            
                           if sheet.TOTALF2G1 ~= 0 then
                                   sheet.TOTALF2G1 = sheet.TOTALF2G1
            					   else
            					   sheet.TOTALF2G1 = 0;
                           end;
        end, obj);

    obj._e_event20 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G2 = math.floor(((tonumber(sheet.PODERF1G2) or 0) *
                                          (tonumber(sheet.STABF1G2) or 1) +
                                          (tonumber(sheet.ATRF1G2) or 0) +
            							  (tonumber(sheet.BONF1G2) or 0)) / 2);                  
            
                           if sheet.TOTALF1G2 ~= 0 then
                                   sheet.TOTALF1G2 = sheet.TOTALF1G2
            					   else
            					   sheet.TOTALF1G2 = 0;
                           end;
        end, obj);

    obj._e_event21 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G2D2 = math.floor((tonumber(sheet.PODERF1G2) or 0) / 2);                  
            
                           if sheet.PODERF1G2D2 ~= 0 then
                                   sheet.PODERF1G2D2 = sheet.PODERF1G2D2
            					   else
            					   sheet.PODERF1G2D2 = 0;
                           end;
        end, obj);

    obj._e_event22 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G2X2 = math.floor((tonumber(sheet.PODERF1G2) or 0) * 2);                  
            
                           if sheet.PODERF1G2X2 ~= 0 then
                                   sheet.PODERF1G2X2 = sheet.PODERF1G2X2
            					   else
            					   sheet.PODERF1G2X2 = 0;
                           end;
        end, obj);

    obj._e_event23 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G2D2 = math.floor(((tonumber(sheet.PODERF1G2D2) or 0) *
                                          (tonumber(sheet.STABF1G2) or 1) +
                                          (tonumber(sheet.ATRF1G2) or 0) +
            							  (tonumber(sheet.BONF1G2) or 0)) / 2);                  
            
                           if sheet.TOTALF1G2D2 ~= 0 then
                                   sheet.TOTALF1G2D2 = sheet.TOTALF1G2D2
            					   else
            					   sheet.TOTALF1G2D2 = 0;
                           end;
        end, obj);

    obj._e_event24 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G2X2 = math.floor(((tonumber(sheet.PODERF1G2X2) or 0) *
                                          (tonumber(sheet.STABF1G2) or 1) +
                                          (tonumber(sheet.ATRF1G2) or 0) +
            							  (tonumber(sheet.BONF1G2) or 0)) / 2);                  
            
                           if sheet.TOTALF1G2X2 ~= 0 then
                                   sheet.TOTALF1G2X2 = sheet.TOTALF1G2X2
            					   else
            					   sheet.TOTALF1G2X2 = 0;
                           end;
        end, obj);

    obj._e_event25 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF2G2 = math.floor(((tonumber(sheet.PODERF2G2) or 0) *
                                          (tonumber(sheet.STABF2G2) or 1) +
                                          (tonumber(sheet.ATRF2G2) or 0) +
            							  (tonumber(sheet.BONF2G2) or 0)) / 2);                  
            
                           if sheet.TOTALF2G2 ~= 0 then
                                   sheet.TOTALF2G2 = sheet.TOTALF2G2
            					   else
            					   sheet.TOTALF2G2 = 0;
                           end;
        end, obj);

    obj._e_event26 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G3 = math.floor(((tonumber(sheet.PODERF1G3) or 0) *
                                          (tonumber(sheet.STABF1G3) or 1) +
                                          (tonumber(sheet.ATRF1G3) or 0) +
            							  (tonumber(sheet.BONF1G3) or 0)) / 2);                  
            
                           if sheet.TOTALF1G3 ~= 0 then
                                   sheet.TOTALF1G3 = sheet.TOTALF1G3
            					   else
            					   sheet.TOTALF1G3 = 0;
                           end;
        end, obj);

    obj._e_event27 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G3D2 = math.floor((tonumber(sheet.PODERF1G3) or 0) / 2);                  
            
                           if sheet.PODERF1G3D2 ~= 0 then
                                   sheet.PODERF1G3D2 = sheet.PODERF1G3D2
            					   else
            					   sheet.PODERF1G3D2 = 0;
                           end;
        end, obj);

    obj._e_event28 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G3X2 = math.floor((tonumber(sheet.PODERF1G3) or 0) * 2);                  
            
                           if sheet.PODERF1G3X2 ~= 0 then
                                   sheet.PODERF1G3X2 = sheet.PODERF1G3X2
            					   else
            					   sheet.PODERF1G3X2 = 0;
                           end;
        end, obj);

    obj._e_event29 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G3D2 = math.floor(((tonumber(sheet.PODERF1G3D2) or 0) *
                                          (tonumber(sheet.STABF1G3) or 1) +
                                          (tonumber(sheet.ATRF1G3) or 0) +
            							  (tonumber(sheet.BONF1G3) or 0)) / 2);                  
            
                           if sheet.TOTALF1G3D2 ~= 0 then
                                   sheet.TOTALF1G3D2 = sheet.TOTALF1G3D2
            					   else
            					   sheet.TOTALF1G3D2 = 0;
                           end;
        end, obj);

    obj._e_event30 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G3X2 = math.floor(((tonumber(sheet.PODERF1G3X2) or 0) *
                                          (tonumber(sheet.STABF1G3) or 1) +
                                          (tonumber(sheet.ATRF1G3) or 0) +
            							  (tonumber(sheet.BONF1G3) or 0)) / 2);                  
            
                           if sheet.TOTALF1G3X2 ~= 0 then
                                   sheet.TOTALF1G3X2 = sheet.TOTALF1G3X2
            					   else
            					   sheet.TOTALF1G3X2 = 0;
                           end;
        end, obj);

    obj._e_event31 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF2G3 = math.floor(((tonumber(sheet.PODERF2G3) or 0) *
                                          (tonumber(sheet.STABF2G3) or 1) +
                                          (tonumber(sheet.ATRF2G3) or 0) +
            							  (tonumber(sheet.BONF2G3) or 0)) / 2);                  
            
                           if sheet.TOTALF2G3 ~= 0 then
                                   sheet.TOTALF2G3 = sheet.TOTALF2G3
            					   else
            					   sheet.TOTALF2G3 = 0;
                           end;
        end, obj);

    obj._e_event32 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G4 = math.floor(((tonumber(sheet.PODERF1G4) or 0) *
                                          (tonumber(sheet.STABF1G4) or 1) +
                                          (tonumber(sheet.ATRF1G4) or 0) +
            							  (tonumber(sheet.BONF1G4) or 0)) / 2);                  
            
                           if sheet.TOTALF1G4 ~= 0 then
                                   sheet.TOTALF1G4 = sheet.TOTALF1G4
            					   else
            					   sheet.TOTALF1G4 = 0;
                           end;
        end, obj);

    obj._e_event33 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G4D2 = math.floor((tonumber(sheet.PODERF1G4) or 0) / 2);                  
            
                           if sheet.PODERF1G4D2 ~= 0 then
                                   sheet.PODERF1G4D2 = sheet.PODERF1G4D2
            					   else
            					   sheet.PODERF1G4D2 = 0;
                           end;
        end, obj);

    obj._e_event34 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PODERF1G4X2 = math.floor((tonumber(sheet.PODERF1G4) or 0) * 2);                  
            
                           if sheet.PODERF1G4X2 ~= 0 then
                                   sheet.PODERF1G4X2 = sheet.PODERF1G4X2
            					   else
            					   sheet.PODERF1G4X2 = 0;
                           end;
        end, obj);

    obj._e_event35 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G4D2 = math.floor(((tonumber(sheet.PODERF1G4D2) or 0) *
                                          (tonumber(sheet.STABF1G4) or 1) +
                                          (tonumber(sheet.ATRF1G4) or 0) +
            							  (tonumber(sheet.BONF1G4) or 0)) / 2);                  
            
                           if sheet.TOTALF1G4D2 ~= 0 then
                                   sheet.TOTALF1G4D2 = sheet.TOTALF1G4D2
            					   else
            					   sheet.TOTALF1G4D2 = 0;
                           end;
        end, obj);

    obj._e_event36 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF1G4X2 = math.floor(((tonumber(sheet.PODERF1G4X2) or 0) *
                                          (tonumber(sheet.STABF1G4) or 1) +
                                          (tonumber(sheet.ATRF1G4) or 0) +
            							  (tonumber(sheet.BONF1G4) or 0)) / 2);                  
            
                           if sheet.TOTALF1G4X2 ~= 0 then
                                   sheet.TOTALF1G4X2 = sheet.TOTALF1G4X2
            					   else
            					   sheet.TOTALF1G4X2 = 0;
                           end;
        end, obj);

    obj._e_event37 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TOTALF2G4 = math.floor(((tonumber(sheet.PODERF2G4) or 0) *
                                          (tonumber(sheet.STABF2G4) or 1) +
                                          (tonumber(sheet.ATRF2G4) or 0) +
            							  (tonumber(sheet.BONF2G4) or 0)) / 2);                  
            
                           if sheet.TOTALF2G4 ~= 0 then
                                   sheet.TOTALF2G4 = sheet.TOTALF2G4
            					   else
            					   sheet.TOTALF2G4 = 0;
                           end;
        end, obj);

    obj._e_event38 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef1 = (tonumber(sheet.ATEF1) or 0);
            			if sheet.ESPG1 then
            				sheet.ATRF1G1 = atef1;
            				sheet.FISG1 = false;
            			end;
        end, obj);

    obj._e_event39 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef2 = (tonumber(sheet.ATEF2) or 0);
            			if sheet.ESPG1 then
            				sheet.ATRF2G1 = atef2;
            				sheet.FISG1 = false;
            			end;
        end, obj);

    obj._e_event40 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf1 = (tonumber(sheet.ATQF1) or 0);
            			if sheet.FISG1 then
            				sheet.ATRF1G1 = atqf1;
            				sheet.ESPG1 = false;
            			end;
        end, obj);

    obj._e_event41 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf2 = (tonumber(sheet.ATQF2) or 0);
            			if sheet.FISG1 then
            				sheet.ATRF2G1 = atqf2;
            				sheet.ESPG1 = false;
            			end;
        end, obj);

    obj._e_event42 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef1 = (tonumber(sheet.ATEF1) or 0);
            			if sheet.ESPG2 then
            				sheet.ATRF1G2 = atef1;
            				sheet.FISG2 = false;
            			end;
        end, obj);

    obj._e_event43 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef2 = (tonumber(sheet.ATEF2) or 0);
            			if sheet.ESPG2 then
            				sheet.ATRF2G2 = atef2;
            				sheet.FISG2 = false;
            			end;
        end, obj);

    obj._e_event44 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf1 = (tonumber(sheet.ATQF1) or 0);
            			if sheet.FISG2 then
            				sheet.ATRF1G2 = atqf1;
            				sheet.ESPG2 = false;
            			end;
        end, obj);

    obj._e_event45 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf2 = (tonumber(sheet.ATQF2) or 0);
            			if sheet.FISG2 then
            				sheet.ATRF2G2 = atqf2;
            				sheet.ESPG2 = false;
            			end;
        end, obj);

    obj._e_event46 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef1 = (tonumber(sheet.ATEF1) or 0);
            			if sheet.ESPG3 then
            				sheet.ATRF1G3 = atef1;
            				sheet.FISG3 = false;
            			end;
        end, obj);

    obj._e_event47 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef2 = (tonumber(sheet.ATEF2) or 0);
            			if sheet.ESPG3 then
            				sheet.ATRF2G3 = atef2;
            				sheet.FISG3 = false;
            			end;
        end, obj);

    obj._e_event48 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf1 = (tonumber(sheet.ATQF1) or 0);
            			if sheet.FISG3 then
            				sheet.ATRF1G3 = atqf1;
            				sheet.ESPG3 = false;
            			end;
        end, obj);

    obj._e_event49 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf2 = (tonumber(sheet.ATQF2) or 0);
            			if sheet.FISG3 then
            				sheet.ATRF2G3 = atqf2;
            				sheet.ESPG3 = false;
            			end;
        end, obj);

    obj._e_event50 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef1 = (tonumber(sheet.ATEF1) or 0);
            			if sheet.ESPG4 then
            				sheet.ATRF1G4 = atef1;
            				sheet.FISG4 = false;
            			end;
        end, obj);

    obj._e_event51 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atef2 = (tonumber(sheet.ATEF2) or 0);
            			if sheet.ESPG4 then
            				sheet.ATRF2G4 = atef2;
            				sheet.FISG4 = false;
            			end;
        end, obj);

    obj._e_event52 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf1 = (tonumber(sheet.ATQF1) or 0);
            			if sheet.FISG4 then
            				sheet.ATRF1G4 = atqf1;
            				sheet.ESPG4 = false;
            			end;
        end, obj);

    obj._e_event53 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            			local atqf2 = (tonumber(sheet.ATQF2) or 0);
            			if sheet.FISG4 then
            				sheet.ATRF2G4 = atqf2;
            				sheet.ESPG4 = false;
            			end;
        end, obj);

    obj._e_event54 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.L10 == true then
            		sheet.L9 = true;
            		sheet.L8 = true;
            		sheet.L7 = true;
            		sheet.L6 = true;
            		sheet.L5 = true;
            		sheet.L4 = true;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L9 == true then
            		sheet.L10 = false;
            		sheet.L8 = true;
            		sheet.L7 = true;
            		sheet.L6 = true;
            		sheet.L5 = true;
            		sheet.L4 = true;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L8 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L7 = true;
            		sheet.L6 = true;
            		sheet.L5 = true;
            		sheet.L4 = true;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L7 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L6 = true;
            		sheet.L5 = true;
            		sheet.L4 = true;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L6 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L5 = true;
            		sheet.L4 = true;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L5 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L6 = false;
            		sheet.L4 = true;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L4 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L6 = false;
            		sheet.L5 = false;
            		sheet.L3 = true;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L3 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L6 = false;
            		sheet.L5 = false;
            		sheet.L4 = false;
            		sheet.L2 = true;
            		sheet.L1 = true;
            	elseif sheet.L2 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L6 = false;
            		sheet.L5 = false;
            		sheet.L4 = false;
            		sheet.L3 = false;
            		sheet.L1 = true;	
            	elseif sheet.L1 == true then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L6 = false;
            		sheet.L5 = false;
            		sheet.L4 = false;
            		sheet.L3 = false;
            		sheet.L2 = false;
            	elseif sheet.L1 == false then
            		sheet.L10 = false;
            		sheet.L9 = false;
            		sheet.L8 = false;
            		sheet.L7 = false;
            		sheet.L6 = false;
            		sheet.L5 = false;
            		sheet.L4 = false;
            		sheet.L3 = false;
            		sheet.L2 = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.AFE5 == true then
            		sheet.AFE4 = true;
            		sheet.AFE3 = true;
            		sheet.AFE2 = true;
            		sheet.AFE1 = true;
            	elseif sheet.AFE4 == true then
            		sheet.AFE5 = false;
            		sheet.AFE3 = true;
            		sheet.AFE2 = true;
            		sheet.AFE1 = true;
            	elseif sheet.AFE3 == true then
            		sheet.AFE5 = false;
            		sheet.AFE4 = false;
            		sheet.AFE2 = true;
            		sheet.AFE1 = true;
            	elseif sheet.AFE2 == true then
            		sheet.AFE5 = false;
            		sheet.AFE4 = false;
            		sheet.AFE3 = false;
            		sheet.AFE1 = true;	
            	elseif sheet.AFE1 == true then
            		sheet.AFE5 = false;
            		sheet.AFE4 = false;
            		sheet.AFE3 = false;
            		sheet.AFE2 = false;
            	elseif sheet.AFE1 == false then
            		sheet.AFE5 = false;
            		sheet.AFE4 = false;
            		sheet.AFE3 = false;
            		sheet.AFE2 = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.T10 == true then
            		sheet.T9 = true;
            		sheet.T8 = true;
            		sheet.T7 = true;
            		sheet.T6 = true;
            		sheet.T5 = true;
            		sheet.T4 = true;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T9 == true then
            		sheet.T10 = false;
            		sheet.T8 = true;
            		sheet.T7 = true;
            		sheet.T6 = true;
            		sheet.T5 = true;
            		sheet.T4 = true;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T8 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T7 = true;
            		sheet.T6 = true;
            		sheet.T5 = true;
            		sheet.T4 = true;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T7 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T6 = true;
            		sheet.T5 = true;
            		sheet.T4 = true;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T6 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T5 = true;
            		sheet.T4 = true;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T5 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T6 = false;
            		sheet.T4 = true;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T4 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T6 = false;
            		sheet.T5 = false;
            		sheet.T3 = true;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T3 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T6 = false;
            		sheet.T5 = false;
            		sheet.T4 = false;
            		sheet.T2 = true;
            		sheet.T1 = true;
            	elseif sheet.T2 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T6 = false;
            		sheet.T5 = false;
            		sheet.T4 = false;
            		sheet.T3 = false;
            		sheet.T1 = true;	
            	elseif sheet.T1 == true then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T6 = false;
            		sheet.T5 = false;
            		sheet.T4 = false;
            		sheet.T3 = false;
            		sheet.T2 = false;
            	elseif sheet.T1 == false then
            		sheet.T10 = false;
            		sheet.T9 = false;
            		sheet.T8 = false;
            		sheet.T7 = false;
            		sheet.T6 = false;
            		sheet.T5 = false;
            		sheet.T4 = false;
            		sheet.T3 = false;
            		sheet.T2 = false;
            	end;
        end, obj);

    obj._e_event57 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ATQN5 == true then
            		sheet.ATQN4 = true;
            		sheet.ATQN3 = true;
            		sheet.ATQN2 = true;
            		sheet.ATQN1 = true;
            	elseif sheet.ATQN4 == true then
            		sheet.ATQN5 = false;
            		sheet.ATQN3 = true;
            		sheet.ATQN2 = true;
            		sheet.ATQN1 = true;
            	elseif sheet.ATQN3 == true then
            		sheet.ATQN5 = false;
            		sheet.ATQN4 = false;
            		sheet.ATQN2 = true;
            		sheet.ATQN1 = true;
            	elseif sheet.ATQN2 == true then
            		sheet.ATQN5 = false;
            		sheet.ATQN4 = false;
            		sheet.ATQN3 = false;
            		sheet.ATQN1 = true;	
            	elseif sheet.ATQN1 == true then
            		sheet.ATQN5 = false;
            		sheet.ATQN4 = false;
            		sheet.ATQN3 = false;
            		sheet.ATQN2 = false;
            	elseif sheet.ATQN1 == false then
            		sheet.ATQN5 = false;
            		sheet.ATQN4 = false;
            		sheet.ATQN3 = false;
            		sheet.ATQN2 = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ATQP5 == true then
            		sheet.ATQP4 = true;
            		sheet.ATQP3 = true;
            		sheet.ATQP2 = true;
            		sheet.ATQP1 = true;
            	elseif sheet.ATQP4 == true then
            		sheet.ATQP5 = false;
            		sheet.ATQP3 = true;
            		sheet.ATQP2 = true;
            		sheet.ATQP1 = true;
            	elseif sheet.ATQP3 == true then
            		sheet.ATQP5 = false;
            		sheet.ATQP4 = false;
            		sheet.ATQP2 = true;
            		sheet.ATQP1 = true;
            	elseif sheet.ATQP2 == true then
            		sheet.ATQP5 = false;
            		sheet.ATQP4 = false;
            		sheet.ATQP3 = false;
            		sheet.ATQP1 = true;	
            	elseif sheet.ATQP1 == true then
            		sheet.ATQP5 = false;
            		sheet.ATQP4 = false;
            		sheet.ATQP3 = false;
            		sheet.ATQP2 = false;
            	elseif sheet.ATQP1 == false then
            		sheet.ATQP5 = false;
            		sheet.ATQP4 = false;
            		sheet.ATQP3 = false;
            		sheet.ATQP2 = false;
            	end;
        end, obj);

    obj._e_event59 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.PREN5 == true then
            		sheet.PREN4 = true;
            		sheet.PREN3 = true;
            		sheet.PREN2 = true;
            		sheet.PREN1 = true;
            	elseif sheet.PREN4 == true then
            		sheet.PREN5 = false;
            		sheet.PREN3 = true;
            		sheet.PREN2 = true;
            		sheet.PREN1 = true;
            	elseif sheet.PREN3 == true then
            		sheet.PREN5 = false;
            		sheet.PREN4 = false;
            		sheet.PREN2 = true;
            		sheet.PREN1 = true;
            	elseif sheet.PREN2 == true then
            		sheet.PREN5 = false;
            		sheet.PREN4 = false;
            		sheet.PREN3 = false;
            		sheet.PREN1 = true;	
            	elseif sheet.PREN1 == true then
            		sheet.PREN5 = false;
            		sheet.PREN4 = false;
            		sheet.PREN3 = false;
            		sheet.PREN2 = false;
            	elseif sheet.PREN1 == false then
            		sheet.PREN5 = false;
            		sheet.PREN4 = false;
            		sheet.PREN3 = false;
            		sheet.PREN2 = false;
            	end;
        end, obj);

    obj._e_event60 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.PREP5 == true then
            		sheet.PREP4 = true;
            		sheet.PREP3 = true;
            		sheet.PREP2 = true;
            		sheet.PREP1 = true;
            	elseif sheet.PREP4 == true then
            		sheet.PREP5 = false;
            		sheet.PREP3 = true;
            		sheet.PREP2 = true;
            		sheet.PREP1 = true;
            	elseif sheet.PREP3 == true then
            		sheet.PREP5 = false;
            		sheet.PREP4 = false;
            		sheet.PREP2 = true;
            		sheet.PREP1 = true;
            	elseif sheet.PREP2 == true then
            		sheet.PREP5 = false;
            		sheet.PREP4 = false;
            		sheet.PREP3 = false;
            		sheet.PREP1 = true;	
            	elseif sheet.PREP1 == true then
            		sheet.PREP5 = false;
            		sheet.PREP4 = false;
            		sheet.PREP3 = false;
            		sheet.PREP2 = false;
            	elseif sheet.PREP1 == false then
            		sheet.PREP5 = false;
            		sheet.PREP4 = false;
            		sheet.PREP3 = false;
            		sheet.PREP2 = false;
            	end;
        end, obj);

    obj._e_event61 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.CRIT5 == true then
            		sheet.CRIT4 = true;
            		sheet.CRIT3 = true;
            		sheet.CRIT2 = true;
            		sheet.CRIT1 = true;
            	elseif sheet.CRIT4 == true then
            		sheet.CRIT5 = false;
            		sheet.CRIT3 = true;
            		sheet.CRIT2 = true;
            		sheet.CRIT1 = true;
            	elseif sheet.CRIT3 == true then
            		sheet.CRIT5 = false;
            		sheet.CRIT4 = false;
            		sheet.CRIT2 = true;
            		sheet.CRIT1 = true;
            	elseif sheet.CRIT2 == true then
            		sheet.CRIT5 = false;
            		sheet.CRIT4 = false;
            		sheet.CRIT3 = false;
            		sheet.CRIT1 = true;	
            	elseif sheet.CRIT1 == true then
            		sheet.CRIT5 = false;
            		sheet.CRIT4 = false;
            		sheet.CRIT3 = false;
            		sheet.CRIT2 = false;
            	elseif sheet.CRIT1 == false then
            		sheet.CRIT5 = false;
            		sheet.CRIT4 = false;
            		sheet.CRIT3 = false;
            		sheet.CRIT2 = false;
            	end;
        end, obj);

    obj._e_event62 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.DEFN5 == true then
            		sheet.DEFN4 = true;
            		sheet.DEFN3 = true;
            		sheet.DEFN2 = true;
            		sheet.DEFN1 = true;
            	elseif sheet.DEFN4 == true then
            		sheet.DEFN5 = false;
            		sheet.DEFN3 = true;
            		sheet.DEFN2 = true;
            		sheet.DEFN1 = true;
            	elseif sheet.DEFN3 == true then
            		sheet.DEFN5 = false;
            		sheet.DEFN4 = false;
            		sheet.DEFN2 = true;
            		sheet.DEFN1 = true;
            	elseif sheet.DEFN2 == true then
            		sheet.DEFN5 = false;
            		sheet.DEFN4 = false;
            		sheet.DEFN3 = false;
            		sheet.DEFN1 = true;	
            	elseif sheet.DEFN1 == true then
            		sheet.DEFN5 = false;
            		sheet.DEFN4 = false;
            		sheet.DEFN3 = false;
            		sheet.DEFN2 = false;
            	elseif sheet.DEFN1 == false then
            		sheet.DEFN5 = false;
            		sheet.DEFN4 = false;
            		sheet.DEFN3 = false;
            		sheet.DEFN2 = false;
            	end;
        end, obj);

    obj._e_event63 = obj.dataLink63:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.DEFP5 == true then
            		sheet.DEFP4 = true;
            		sheet.DEFP3 = true;
            		sheet.DEFP2 = true;
            		sheet.DEFP1 = true;
            	elseif sheet.DEFP4 == true then
            		sheet.DEFP5 = false;
            		sheet.DEFP3 = true;
            		sheet.DEFP2 = true;
            		sheet.DEFP1 = true;
            	elseif sheet.DEFP3 == true then
            		sheet.DEFP5 = false;
            		sheet.DEFP4 = false;
            		sheet.DEFP2 = true;
            		sheet.DEFP1 = true;
            	elseif sheet.DEFP2 == true then
            		sheet.DEFP5 = false;
            		sheet.DEFP4 = false;
            		sheet.DEFP3 = false;
            		sheet.DEFP1 = true;	
            	elseif sheet.DEFP1 == true then
            		sheet.DEFP5 = false;
            		sheet.DEFP4 = false;
            		sheet.DEFP3 = false;
            		sheet.DEFP2 = false;
            	elseif sheet.DEFP1 == false then
            		sheet.DEFP5 = false;
            		sheet.DEFP4 = false;
            		sheet.DEFP3 = false;
            		sheet.DEFP2 = false;
            	end;
        end, obj);

    obj._e_event64 = obj.dataLink64:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.EVAN5 == true then
            		sheet.EVAN4 = true;
            		sheet.EVAN3 = true;
            		sheet.EVAN2 = true;
            		sheet.EVAN1 = true;
            	elseif sheet.EVAN4 == true then
            		sheet.EVAN5 = false;
            		sheet.EVAN3 = true;
            		sheet.EVAN2 = true;
            		sheet.EVAN1 = true;
            	elseif sheet.EVAN3 == true then
            		sheet.EVAN5 = false;
            		sheet.EVAN4 = false;
            		sheet.EVAN2 = true;
            		sheet.EVAN1 = true;
            	elseif sheet.EVAN2 == true then
            		sheet.EVAN5 = false;
            		sheet.EVAN4 = false;
            		sheet.EVAN3 = false;
            		sheet.EVAN1 = true;	
            	elseif sheet.EVAN1 == true then
            		sheet.EVAN5 = false;
            		sheet.EVAN4 = false;
            		sheet.EVAN3 = false;
            		sheet.EVAN2 = false;
            	elseif sheet.EVAN1 == false then
            		sheet.EVAN5 = false;
            		sheet.EVAN4 = false;
            		sheet.EVAN3 = false;
            		sheet.EVAN2 = false;
            	end;
        end, obj);

    obj._e_event65 = obj.dataLink65:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.EVAP5 == true then
            		sheet.EVAP4 = true;
            		sheet.EVAP3 = true;
            		sheet.EVAP2 = true;
            		sheet.EVAP1 = true;
            	elseif sheet.EVAP4 == true then
            		sheet.EVAP5 = false;
            		sheet.EVAP3 = true;
            		sheet.EVAP2 = true;
            		sheet.EVAP1 = true;
            	elseif sheet.EVAP3 == true then
            		sheet.EVAP5 = false;
            		sheet.EVAP4 = false;
            		sheet.EVAP2 = true;
            		sheet.EVAP1 = true;
            	elseif sheet.EVAP2 == true then
            		sheet.EVAP5 = false;
            		sheet.EVAP4 = false;
            		sheet.EVAP3 = false;
            		sheet.EVAP1 = true;	
            	elseif sheet.EVAP1 == true then
            		sheet.EVAP5 = false;
            		sheet.EVAP4 = false;
            		sheet.EVAP3 = false;
            		sheet.EVAP2 = false;
            	elseif sheet.EVAP1 == false then
            		sheet.EVAP5 = false;
            		sheet.EVAP4 = false;
            		sheet.EVAP3 = false;
            		sheet.EVAP2 = false;
            	end;
        end, obj);

    obj._e_event66 = obj.dataLink66:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ATEN5 == true then
            		sheet.ATEN4 = true;
            		sheet.ATEN3 = true;
            		sheet.ATEN2 = true;
            		sheet.ATEN1 = true;
            	elseif sheet.ATEN4 == true then
            		sheet.ATEN5 = false;
            		sheet.ATEN3 = true;
            		sheet.ATEN2 = true;
            		sheet.ATEN1 = true;
            	elseif sheet.ATEN3 == true then
            		sheet.ATEN5 = false;
            		sheet.ATEN4 = false;
            		sheet.ATEN2 = true;
            		sheet.ATEN1 = true;
            	elseif sheet.ATEN2 == true then
            		sheet.ATEN5 = false;
            		sheet.ATEN4 = false;
            		sheet.ATEN3 = false;
            		sheet.ATEN1 = true;	
            	elseif sheet.ATEN1 == true then
            		sheet.ATEN5 = false;
            		sheet.ATEN4 = false;
            		sheet.ATEN3 = false;
            		sheet.ATEN2 = false;
            	elseif sheet.ATEN1 == false then
            		sheet.ATEN5 = false;
            		sheet.ATEN4 = false;
            		sheet.ATEN3 = false;
            		sheet.ATEN2 = false;
            	end;
        end, obj);

    obj._e_event67 = obj.dataLink67:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ATEP5 == true then
            		sheet.ATEP4 = true;
            		sheet.ATEP3 = true;
            		sheet.ATEP2 = true;
            		sheet.ATEP1 = true;
            	elseif sheet.ATEP4 == true then
            		sheet.ATEP5 = false;
            		sheet.ATEP3 = true;
            		sheet.ATEP2 = true;
            		sheet.ATEP1 = true;
            	elseif sheet.ATEP3 == true then
            		sheet.ATEP5 = false;
            		sheet.ATEP4 = false;
            		sheet.ATEP2 = true;
            		sheet.ATEP1 = true;
            	elseif sheet.ATEP2 == true then
            		sheet.ATEP5 = false;
            		sheet.ATEP4 = false;
            		sheet.ATEP3 = false;
            		sheet.ATEP1 = true;	
            	elseif sheet.ATEP1 == true then
            		sheet.ATEP5 = false;
            		sheet.ATEP4 = false;
            		sheet.ATEP3 = false;
            		sheet.ATEP2 = false;
            	elseif sheet.ATEP1 == false then
            		sheet.ATEP5 = false;
            		sheet.ATEP4 = false;
            		sheet.ATEP3 = false;
            		sheet.ATEP2 = false;
            	end;
        end, obj);

    obj._e_event68 = obj.dataLink68:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.DFESN5 == true then
            		sheet.DFESN4 = true;
            		sheet.DFESN3 = true;
            		sheet.DFESN2 = true;
            		sheet.DFESN1 = true;
            	elseif sheet.DFESN4 == true then
            		sheet.DFESN5 = false;
            		sheet.DFESN3 = true;
            		sheet.DFESN2 = true;
            		sheet.DFESN1 = true;
            	elseif sheet.DFESN3 == true then
            		sheet.DFESN5 = false;
            		sheet.DFESN4 = false;
            		sheet.DFESN2 = true;
            		sheet.DFESN1 = true;
            	elseif sheet.DFESN2 == true then
            		sheet.DFESN5 = false;
            		sheet.DFESN4 = false;
            		sheet.DFESN3 = false;
            		sheet.DFESN1 = true;	
            	elseif sheet.DFESN1 == true then
            		sheet.DFESN5 = false;
            		sheet.DFESN4 = false;
            		sheet.DFESN3 = false;
            		sheet.DFESN2 = false;
            	elseif sheet.DFESN1 == false then
            		sheet.DFESN5 = false;
            		sheet.DFESN4 = false;
            		sheet.DFESN3 = false;
            		sheet.DFESN2 = false;
            	end;
        end, obj);

    obj._e_event69 = obj.dataLink69:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.DFESP5 == true then
            		sheet.DFESP4 = true;
            		sheet.DFESP3 = true;
            		sheet.DFESP2 = true;
            		sheet.DFESP1 = true;
            	elseif sheet.DFESP4 == true then
            		sheet.DFESP5 = false;
            		sheet.DFESP3 = true;
            		sheet.DFESP2 = true;
            		sheet.DFESP1 = true;
            	elseif sheet.DFESP3 == true then
            		sheet.DFESP5 = false;
            		sheet.DFESP4 = false;
            		sheet.DFESP2 = true;
            		sheet.DFESP1 = true;
            	elseif sheet.DFESP2 == true then
            		sheet.DFESP5 = false;
            		sheet.DFESP4 = false;
            		sheet.DFESP3 = false;
            		sheet.DFESP1 = true;	
            	elseif sheet.DFESP1 == true then
            		sheet.DFESP5 = false;
            		sheet.DFESP4 = false;
            		sheet.DFESP3 = false;
            		sheet.DFESP2 = false;
            	elseif sheet.DFESP1 == false then
            		sheet.DFESP5 = false;
            		sheet.DFESP4 = false;
            		sheet.DFESP3 = false;
            		sheet.DFESP2 = false;
            	end;
        end, obj);

    obj._e_event70 = obj.dataLink70:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.VELN5 == true then
            		sheet.VELN4 = true;
            		sheet.VELN3 = true;
            		sheet.VELN2 = true;
            		sheet.VELN1 = true;
            	elseif sheet.VELN4 == true then
            		sheet.VELN5 = false;
            		sheet.VELN3 = true;
            		sheet.VELN2 = true;
            		sheet.VELN1 = true;
            	elseif sheet.VELN3 == true then
            		sheet.VELN5 = false;
            		sheet.VELN4 = false;
            		sheet.VELN2 = true;
            		sheet.VELN1 = true;
            	elseif sheet.VELN2 == true then
            		sheet.VELN5 = false;
            		sheet.VELN4 = false;
            		sheet.VELN3 = false;
            		sheet.VELN1 = true;	
            	elseif sheet.VELN1 == true then
            		sheet.VELN5 = false;
            		sheet.VELN4 = false;
            		sheet.VELN3 = false;
            		sheet.VELN2 = false;
            	elseif sheet.VELN1 == false then
            		sheet.VELN5 = false;
            		sheet.VELN4 = false;
            		sheet.VELN3 = false;
            		sheet.VELN2 = false;
            	end;
        end, obj);

    obj._e_event71 = obj.dataLink71:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.VELP5 == true then
            		sheet.VELP4 = true;
            		sheet.VELP3 = true;
            		sheet.VELP2 = true;
            		sheet.VELP1 = true;
            	elseif sheet.VELP4 == true then
            		sheet.VELP5 = false;
            		sheet.VELP3 = true;
            		sheet.VELP2 = true;
            		sheet.VELP1 = true;
            	elseif sheet.VELP3 == true then
            		sheet.VELP5 = false;
            		sheet.VELP4 = false;
            		sheet.VELP2 = true;
            		sheet.VELP1 = true;
            	elseif sheet.VELP2 == true then
            		sheet.VELP5 = false;
            		sheet.VELP4 = false;
            		sheet.VELP3 = false;
            		sheet.VELP1 = true;	
            	elseif sheet.VELP1 == true then
            		sheet.VELP5 = false;
            		sheet.VELP4 = false;
            		sheet.VELP3 = false;
            		sheet.VELP2 = false;
            	elseif sheet.VELP1 == false then
            		sheet.VELP5 = false;
            		sheet.VELP4 = false;
            		sheet.VELP3 = false;
            		sheet.VELP2 = false;
            	end;
        end, obj);

    obj._e_event72 = obj.dataLink72:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.CAR10 == true then
            		sheet.CAR9 = true;
            		sheet.CAR8 = true;
            		sheet.CAR7 = true;
            		sheet.CAR6 = true;
            		sheet.CAR5 = true;
            		sheet.CAR4 = true;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR9 == true then
            		sheet.CAR10 = false;
            		sheet.CAR8 = true;
            		sheet.CAR7 = true;
            		sheet.CAR6 = true;
            		sheet.CAR5 = true;
            		sheet.CAR4 = true;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR8 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR7 = true;
            		sheet.CAR6 = true;
            		sheet.CAR5 = true;
            		sheet.CAR4 = true;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR7 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR6 = true;
            		sheet.CAR5 = true;
            		sheet.CAR4 = true;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR6 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR5 = true;
            		sheet.CAR4 = true;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR5 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR6 = false;
            		sheet.CAR4 = true;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR4 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR6 = false;
            		sheet.CAR5 = false;
            		sheet.CAR3 = true;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR3 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR6 = false;
            		sheet.CAR5 = false;
            		sheet.CAR4 = false;
            		sheet.CAR2 = true;
            		sheet.CAR1 = true;
            	elseif sheet.CAR2 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR6 = false;
            		sheet.CAR5 = false;
            		sheet.CAR4 = false;
            		sheet.CAR3 = false;
            		sheet.CAR1 = true;	
            	elseif sheet.CAR1 == true then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR6 = false;
            		sheet.CAR5 = false;
            		sheet.CAR4 = false;
            		sheet.CAR3 = false;
            		sheet.CAR2 = false;
            	elseif sheet.CAR1 == false then
            		sheet.CAR10 = false;
            		sheet.CAR9 = false;
            		sheet.CAR8 = false;
            		sheet.CAR7 = false;
            		sheet.CAR6 = false;
            		sheet.CAR5 = false;
            		sheet.CAR4 = false;
            		sheet.CAR3 = false;
            		sheet.CAR2 = false;
            	end;
        end, obj);

    obj._e_event73 = obj.dataLink73:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.BEL10 == true then
            		sheet.BEL9 = true;
            		sheet.BEL8 = true;
            		sheet.BEL7 = true;
            		sheet.BEL6 = true;
            		sheet.BEL5 = true;
            		sheet.BEL4 = true;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL9 == true then
            		sheet.BEL10 = false;
            		sheet.BEL8 = true;
            		sheet.BEL7 = true;
            		sheet.BEL6 = true;
            		sheet.BEL5 = true;
            		sheet.BEL4 = true;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL8 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL7 = true;
            		sheet.BEL6 = true;
            		sheet.BEL5 = true;
            		sheet.BEL4 = true;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL7 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL6 = true;
            		sheet.BEL5 = true;
            		sheet.BEL4 = true;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL6 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL5 = true;
            		sheet.BEL4 = true;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL5 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL6 = false;
            		sheet.BEL4 = true;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL4 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL6 = false;
            		sheet.BEL5 = false;
            		sheet.BEL3 = true;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL3 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL6 = false;
            		sheet.BEL5 = false;
            		sheet.BEL4 = false;
            		sheet.BEL2 = true;
            		sheet.BEL1 = true;
            	elseif sheet.BEL2 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL6 = false;
            		sheet.BEL5 = false;
            		sheet.BEL4 = false;
            		sheet.BEL3 = false;
            		sheet.BEL1 = true;	
            	elseif sheet.BEL1 == true then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL6 = false;
            		sheet.BEL5 = false;
            		sheet.BEL4 = false;
            		sheet.BEL3 = false;
            		sheet.BEL2 = false;
            	elseif sheet.BEL1 == false then
            		sheet.BEL10 = false;
            		sheet.BEL9 = false;
            		sheet.BEL8 = false;
            		sheet.BEL7 = false;
            		sheet.BEL6 = false;
            		sheet.BEL5 = false;
            		sheet.BEL4 = false;
            		sheet.BEL3 = false;
            		sheet.BEL2 = false;
            	end;
        end, obj);

    obj._e_event74 = obj.dataLink74:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.FOF10 == true then
            		sheet.FOF9 = true;
            		sheet.FOF8 = true;
            		sheet.FOF7 = true;
            		sheet.FOF6 = true;
            		sheet.FOF5 = true;
            		sheet.FOF4 = true;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF9 == true then
            		sheet.FOF10 = false;
            		sheet.FOF8 = true;
            		sheet.FOF7 = true;
            		sheet.FOF6 = true;
            		sheet.FOF5 = true;
            		sheet.FOF4 = true;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF8 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF7 = true;
            		sheet.FOF6 = true;
            		sheet.FOF5 = true;
            		sheet.FOF4 = true;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF7 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF6 = true;
            		sheet.FOF5 = true;
            		sheet.FOF4 = true;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF6 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF5 = true;
            		sheet.FOF4 = true;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF5 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF6 = false;
            		sheet.FOF4 = true;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF4 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF6 = false;
            		sheet.FOF5 = false;
            		sheet.FOF3 = true;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF3 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF6 = false;
            		sheet.FOF5 = false;
            		sheet.FOF4 = false;
            		sheet.FOF2 = true;
            		sheet.FOF1 = true;
            	elseif sheet.FOF2 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF6 = false;
            		sheet.FOF5 = false;
            		sheet.FOF4 = false;
            		sheet.FOF3 = false;
            		sheet.FOF1 = true;	
            	elseif sheet.FOF1 == true then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF6 = false;
            		sheet.FOF5 = false;
            		sheet.FOF4 = false;
            		sheet.FOF3 = false;
            		sheet.FOF2 = false;
            	elseif sheet.FOF1 == false then
            		sheet.FOF10 = false;
            		sheet.FOF9 = false;
            		sheet.FOF8 = false;
            		sheet.FOF7 = false;
            		sheet.FOF6 = false;
            		sheet.FOF5 = false;
            		sheet.FOF4 = false;
            		sheet.FOF3 = false;
            		sheet.FOF2 = false;
            	end;
        end, obj);

    obj._e_event75 = obj.dataLink75:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.INT10 == true then
            		sheet.INT9 = true;
            		sheet.INT8 = true;
            		sheet.INT7 = true;
            		sheet.INT6 = true;
            		sheet.INT5 = true;
            		sheet.INT4 = true;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT9 == true then
            		sheet.INT10 = false;
            		sheet.INT8 = true;
            		sheet.INT7 = true;
            		sheet.INT6 = true;
            		sheet.INT5 = true;
            		sheet.INT4 = true;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT8 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT7 = true;
            		sheet.INT6 = true;
            		sheet.INT5 = true;
            		sheet.INT4 = true;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT7 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT6 = true;
            		sheet.INT5 = true;
            		sheet.INT4 = true;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT6 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT5 = true;
            		sheet.INT4 = true;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT5 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT6 = false;
            		sheet.INT4 = true;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT4 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT6 = false;
            		sheet.INT5 = false;
            		sheet.INT3 = true;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT3 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT6 = false;
            		sheet.INT5 = false;
            		sheet.INT4 = false;
            		sheet.INT2 = true;
            		sheet.INT1 = true;
            	elseif sheet.INT2 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT6 = false;
            		sheet.INT5 = false;
            		sheet.INT4 = false;
            		sheet.INT3 = false;
            		sheet.INT1 = true;	
            	elseif sheet.INT1 == true then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT6 = false;
            		sheet.INT5 = false;
            		sheet.INT4 = false;
            		sheet.INT3 = false;
            		sheet.INT2 = false;
            	elseif sheet.INT1 == false then
            		sheet.INT10 = false;
            		sheet.INT9 = false;
            		sheet.INT8 = false;
            		sheet.INT7 = false;
            		sheet.INT6 = false;
            		sheet.INT5 = false;
            		sheet.INT4 = false;
            		sheet.INT3 = false;
            		sheet.INT2 = false;
            	end;
        end, obj);

    obj._e_event76 = obj.dataLink76:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.RES10 == true then
            		sheet.RES9 = true;
            		sheet.RES8 = true;
            		sheet.RES7 = true;
            		sheet.RES6 = true;
            		sheet.RES5 = true;
            		sheet.RES4 = true;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES9 == true then
            		sheet.RES10 = false;
            		sheet.RES8 = true;
            		sheet.RES7 = true;
            		sheet.RES6 = true;
            		sheet.RES5 = true;
            		sheet.RES4 = true;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES8 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES7 = true;
            		sheet.RES6 = true;
            		sheet.RES5 = true;
            		sheet.RES4 = true;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES7 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES6 = true;
            		sheet.RES5 = true;
            		sheet.RES4 = true;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES6 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES5 = true;
            		sheet.RES4 = true;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES5 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES6 = false;
            		sheet.RES4 = true;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES4 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES6 = false;
            		sheet.RES5 = false;
            		sheet.RES3 = true;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES3 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES6 = false;
            		sheet.RES5 = false;
            		sheet.RES4 = false;
            		sheet.RES2 = true;
            		sheet.RES1 = true;
            	elseif sheet.RES2 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES6 = false;
            		sheet.RES5 = false;
            		sheet.RES4 = false;
            		sheet.RES3 = false;
            		sheet.RES1 = true;	
            	elseif sheet.RES1 == true then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES6 = false;
            		sheet.RES5 = false;
            		sheet.RES4 = false;
            		sheet.RES3 = false;
            		sheet.RES2 = false;
            	elseif sheet.RES1 == false then
            		sheet.RES10 = false;
            		sheet.RES9 = false;
            		sheet.RES8 = false;
            		sheet.RES7 = false;
            		sheet.RES6 = false;
            		sheet.RES5 = false;
            		sheet.RES4 = false;
            		sheet.RES3 = false;
            		sheet.RES2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event76);
        __o_rrpgObjs.removeEventListenerById(self._e_event75);
        __o_rrpgObjs.removeEventListenerById(self._e_event74);
        __o_rrpgObjs.removeEventListenerById(self._e_event73);
        __o_rrpgObjs.removeEventListenerById(self._e_event72);
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
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
        if self.dataLink71 ~= nil then self.dataLink71:destroy(); self.dataLink71 = nil; end;
        if self.dataLink64 ~= nil then self.dataLink64:destroy(); self.dataLink64 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink66 ~= nil then self.dataLink66:destroy(); self.dataLink66 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.dataLink69 ~= nil then self.dataLink69:destroy(); self.dataLink69 = nil; end;
        if self.dataLink73 ~= nil then self.dataLink73:destroy(); self.dataLink73 = nil; end;
        if self.dataLink74 ~= nil then self.dataLink74:destroy(); self.dataLink74 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink70 ~= nil then self.dataLink70:destroy(); self.dataLink70 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink72 ~= nil then self.dataLink72:destroy(); self.dataLink72 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink75 ~= nil then self.dataLink75:destroy(); self.dataLink75 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.dataLink76 ~= nil then self.dataLink76:destroy(); self.dataLink76 = nil; end;
        if self.dataLink68 ~= nil then self.dataLink68:destroy(); self.dataLink68 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink65 ~= nil then self.dataLink65:destroy(); self.dataLink65 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.dataLink67 ~= nil then self.dataLink67:destroy(); self.dataLink67 = nil; end;
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
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.dataLink63 ~= nil then self.dataLink63:destroy(); self.dataLink63 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmItemDaLista()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmItemDaLista();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmItemDaLista = {
    newEditor = newfrmItemDaLista, 
    new = newfrmItemDaLista, 
    name = "frmItemDaLista", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmItemDaLista = _frmItemDaLista;
Firecast.registrarForm(_frmItemDaLista);

return _frmItemDaLista;
