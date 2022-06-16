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
    obj.dataLink1:setFields({'bola1forca', 'bola1destreza', 'bola1vigor', 'bola1carisma', 'bola1manipu', 'bola1apare', 'bola1percep', 'bola1intel', 'bola1racio'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'bola5forca', 'bola4forca', 'bola3forca', 'bola2forca', 'bola1forca'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'bola5destreza', 'bola4destreza', 'bola3destreza', 'bola2destreza', 'bola1destreza'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'bola5vigor', 'bola4vigor', 'bola3vigor', 'bola2vigor', 'bola1vigor'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'bola5carisma', 'bola4carisma', 'bola3carisma', 'bola2carisma', 'bola1carisma'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'bola5manipu', 'bola4manipu', 'bola3manipu', 'bola2manipu', 'bola1manipu'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'bola5apare', 'bola4apare', 'bola3apare', 'bola2apare', 'bola1apare'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'bola5percep', 'bola4percep', 'bola3percep', 'bola2percep', 'bola1percep'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'bola5intel', 'bola4intel', 'bola3intel', 'bola2intel', 'bola1intel'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'bola5racio', 'bola4racio', 'bola3racio', 'bola2racio', 'bola1racio'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'bola5pront', 'bola4pront', 'bola3pront', 'bola2pront', 'bola1pront'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'bola5espor', 'bola4espor', 'bola3espor', 'bola2espor', 'bola1espor'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'bola5briga', 'bola4briga', 'bola3briga', 'bola2briga', 'bola1briga'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'bola5empat', 'bola4empat', 'bola3empat', 'bola2empat', 'bola1empat'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'bola5expre', 'bola4expre', 'bola3expre', 'bola2expre', 'bola1expre'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'bola5intim', 'bola4intim', 'bola3intim', 'bola2intim', 'bola1intim'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'bola5tino', 'bola4tino', 'bola3tino', 'bola2tino', 'bola1tino'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'bola5lider', 'bola4lider', 'bola3lider', 'bola2lider', 'bola1lider'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'bola5manha', 'bola4manha', 'bola3manha', 'bola2manha', 'bola1manha'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'bola5labia', 'bola4labia', 'bola3labia', 'bola2labia', 'bola1labia'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'bola5esqui', 'bola4esqui', 'bola3esqui', 'bola2esqui', 'bola1esqui'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'bola5empca', 'bola4empca', 'bola3empca', 'bola2empca', 'bola1empca'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'bola5ofi', 'bola4ofi', 'bola3ofi', 'bola2ofi', 'bola1ofi'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'bola5condu', 'bola4condu', 'bola3condu', 'bola2condu', 'bola1condu'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'bola5etique', 'bola4etique', 'bola3etique', 'bola2etique', 'bola1etique'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'bola5armpr', 'bola4armpr', 'bola3armpr', 'bola2armpr', 'bola1armpr'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'bola5segur', 'bola4segur', 'bola3segur', 'bola2segur', 'bola1segur'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'bola5armbr', 'bola4armbr', 'bola3armbr', 'bola2armbr', 'bola1armbr'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'bola5perfo', 'bola4perfo', 'bola3perfo', 'bola2perfo', 'bola1perfo'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'bola5furti', 'bola4furti', 'bola3furti', 'bola2furti', 'bola1furti'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'bola5sobre', 'bola4sobre', 'bola3sobre', 'bola2sobre', 'bola1sobre'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'bola5monta', 'bola4monta', 'bola3monta', 'bola2monta', 'bola1monta'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'bola5instru', 'bola4instru', 'bola3instru', 'bola2instru', 'bola1instru'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'bola5compu', 'bola4compu', 'bola3compu', 'bola2compu', 'bola1compu'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'bola5enig', 'bola4enig', 'bola3enig', 'bola2enig', 'bola1enig'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'bola5grama', 'bola4grama', 'bola3grama', 'bola2grama', 'bola1grama'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'bola5inves', 'bola4inves', 'bola3inves', 'bola2inves', 'bola1inves'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'bola5direi', 'bola4direi', 'bola3direi', 'bola2direi', 'bola1direi'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'bola5medic', 'bola4medic', 'bola3medic', 'bola2medic', 'bola1medic'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'bola5polit', 'bola4polit', 'bola3polit', 'bola2polit', 'bola1polit'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'bola5ciencia', 'bola4ciencia', 'bola3ciencia', 'bola2ciencia', 'bola1ciencia'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'bola5tecno', 'bola4tecno', 'bola3tecno', 'bola2tecno', 'bola1tecno'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setFields({'bola5lingui', 'bola4lingui', 'bola3lingui', 'bola2lingui', 'bola1lingui'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setFields({'bola5Antecedentes1', 'bola4Antecedentes1', 'bola3Antecedentes1', 'bola2Antecedentes1', 'bola1Antecedentes1'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj);
    obj.dataLink45:setFields({'bola5Antecedentes2', 'bola4Antecedentes2', 'bola3Antecedentes2', 'bola2Antecedentes2', 'bola1Antecedentes2'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj);
    obj.dataLink46:setFields({'bola5Antecedentes3', 'bola4Antecedentes3', 'bola3Antecedentes3', 'bola2Antecedentes3', 'bola1Antecedentes3'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj);
    obj.dataLink47:setFields({'bola5Antecedentes4', 'bola4Antecedentes4', 'bola3Antecedentes4', 'bola2Antecedentes4', 'bola1Antecedentes4'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj);
    obj.dataLink48:setFields({'bola5Antecedentes5', 'bola4Antecedentes5', 'bola3Antecedentes5', 'bola2Antecedentes5', 'bola1Antecedentes5'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj);
    obj.dataLink49:setFields({'bola5Antecedentes6', 'bola4Antecedentes6', 'bola3Antecedentes6', 'bola2Antecedentes6', 'bola1Antecedentes6'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj);
    obj.dataLink50:setFields({'bola5Artes1', 'bola4Artes1', 'bola3Artes1', 'bola2Artes1', 'bola1Artes1'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj);
    obj.dataLink51:setFields({'bola5Artes2', 'bola4Artes2', 'bola3Artes2', 'bola2Artes2', 'bola1Artes2'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj);
    obj.dataLink52:setFields({'bola5Artes3', 'bola4Artes3', 'bola3Artes3', 'bola2Artes3', 'bola1Artes3'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj);
    obj.dataLink53:setFields({'bola5Artes4', 'bola4Artes4', 'bola3Artes4', 'bola2Artes4', 'bola1Artes4'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj);
    obj.dataLink54:setFields({'bola5Artes5', 'bola4Artes5', 'bola3Artes5', 'bola2Artes5', 'bola1Artes5'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj);
    obj.dataLink55:setFields({'bola5Artes6', 'bola4Artes6', 'bola3Artes6', 'bola2Artes6', 'bola1Artes6'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj);
    obj.dataLink56:setFields({'bola5Ator', 'bola4Ator', 'bola3Ator', 'bola2Ator', 'bola1Ator'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj);
    obj.dataLink57:setFields({'bola5Fada', 'bola4Fada', 'bola3Fada', 'bola2Fada', 'bola1Fada'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj);
    obj.dataLink58:setFields({'bola5Natureza', 'bola4Natureza', 'bola3Natureza', 'bola2Natureza', 'bola1Natureza'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj);
    obj.dataLink59:setFields({'bola5Acessorio', 'bola4Acessorio', 'bola3Acessorio', 'bola2Acessorio', 'bola1Acessorio'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj);
    obj.dataLink60:setFields({'bola5Cena', 'bola4Cena', 'bola3Cena', 'bola2Cena', 'bola1Cena'});
    obj.dataLink60:setName("dataLink60");

    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj);
    obj.dataLink61:setFields({'bola5Tempo', 'bola4Tempo', 'bola3Tempo', 'bola2Tempo', 'bola1Tempo'});
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj);
    obj.dataLink62:setFields({'bola10Gl', 'bola9Gl', 'bola8Gl', 'bola7Gl', 'bola6Gl', 'bola5Gl', 'bola4Gl', 'bola3Gl', 'bola2Gl', 'bola1Gl'});
    obj.dataLink62:setName("dataLink62");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj);
    obj.dataLink63:setFields({'square10Gl', 'square9Gl', 'square8Gl', 'square7Gl', 'square6Gl', 'square5Gl', 'square4Gl', 'square3Gl', 'square2Gl', 'square1Gl'});
    obj.dataLink63:setName("dataLink63");

    obj.dataLink64 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink64:setParent(obj);
    obj.dataLink64:setFields({'bola10FDV', 'bola9FDV', 'bola8FDV', 'bola7FDV', 'bola6FDV', 'bola5FDV', 'bola4FDV', 'bola3FDV', 'bola2FDV', 'bola1FDV'});
    obj.dataLink64:setName("dataLink64");

    obj.dataLink65 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink65:setParent(obj);
    obj.dataLink65:setFields({'square10FDV', 'square9FDV', 'square8FDV', 'square7FDV', 'square6FDV', 'square5FDV', 'square4FDV', 'square3FDV', 'square2FDV', 'square1FDV'});
    obj.dataLink65:setName("dataLink65");

    obj.dataLink66 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink66:setParent(obj);
    obj.dataLink66:setFields({'ghost10Pes', 'ghost9Pes', 'ghost8Pes', 'ghost7Pes', 'ghost6Pes', 'ghost5Pes', 'ghost4Pes', 'ghost3Pes', 'ghost2Pes', 'ghost1Pes'});
    obj.dataLink66:setName("dataLink66");

    obj.dataLink67 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink67:setParent(obj);
    obj.dataLink67:setFields({'mirror10', 'mirror9', 'mirror8', 'mirror7', 'mirror6', 'mirror5', 'mirror4', 'mirror3', 'mirror2', 'mirror1'});
    obj.dataLink67:setName("dataLink67");

    obj.dataLink68 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink68:setParent(obj);
    obj.dataLink68:setFields({'square10Ban', 'square9Ban', 'square8Ban', 'square7Ban', 'square6Ban', 'square5Ban', 'square4Ban', 'square3Ban', 'square2Ban', 'square1Ban'});
    obj.dataLink68:setName("dataLink68");

    obj.dataLink69 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink69:setParent(obj);
    obj.dataLink69:setFields({'bola7Letal', 'bola6Letal', 'bola5Letal', 'bola4Letal', 'bola3Letal', 'bola2Letal', 'bola1Letal'});
    obj.dataLink69:setName("dataLink69");

    obj.dataLink70 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink70:setParent(obj);
    obj.dataLink70:setFields({'bola7Agravado', 'bola6Agravado', 'bola5Agravado', 'bola4Agravado', 'bola3Agravado', 'bola2Agravado', 'bola1Agravado'});
    obj.dataLink70:setName("dataLink70");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5forca == true then
            		sheet.bola4forca = true;
            		sheet.bola3forca = true;
            		sheet.bola2forca = true;
            		sheet.bola1forca = true;
            	elseif sheet.bola4forca == true then
            		sheet.bola5forca = false;
            		sheet.bola3forca = true;
            		sheet.bola2forca = true;
            		sheet.bola1forca = true;
            	elseif sheet.bola3forca == true then
            		sheet.bola5forca = false;
            		sheet.bola4forca = false;
            		sheet.bola2forca = true;
            		sheet.bola1forca = true;
            	elseif sheet.bola2forca == true then
            		sheet.bola5forca = false;
            		sheet.bola4forca = false;
            		sheet.bola3forca = false;
            		sheet.bola1forca = true;	
            	elseif sheet.bola1forca == true then
            		sheet.bola5forca = false;
            		sheet.bola4forca = false;
            		sheet.bola3forca = false;
            		sheet.bola2forca = false;
            	elseif sheet.bola1forca == false then
            		sheet.bola5forca = false;
            		sheet.bola4forca = false;
            		sheet.bola3forca = false;
            		sheet.bola2forca = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5destreza == true then
            		sheet.bola4destreza = true;
            		sheet.bola3destreza = true;
            		sheet.bola2destreza = true;
            		sheet.bola1destreza = true;
            	elseif sheet.bola4destreza == true then
            		sheet.bola5destreza = false;
            		sheet.bola3destreza = true;
            		sheet.bola2destreza = true;
            		sheet.bola1destreza = true;
            	elseif sheet.bola3destreza == true then
            		sheet.bola5destreza = false;
            		sheet.bola4destreza = false;
            		sheet.bola2destreza = true;
            		sheet.bola1destreza = true;
            	elseif sheet.bola2destreza == true then
            		sheet.bola5destreza = false;
            		sheet.bola4destreza = false;
            		sheet.bola3destreza = false;
            		sheet.bola1destreza = true;	
            	elseif sheet.bola1destreza == true then
            		sheet.bola5destreza = false;
            		sheet.bola4destreza = false;
            		sheet.bola3destreza = false;
            		sheet.bola2destreza = false;
            	elseif sheet.bola1destreza == false then
            		sheet.bola5destreza = false;
            		sheet.bola4destreza = false;
            		sheet.bola3destreza = false;
            		sheet.bola2destreza = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5vigor == true then
            		sheet.bola4vigor = true;
            		sheet.bola3vigor = true;
            		sheet.bola2vigor = true;
            		sheet.bola1vigor = true;
            	elseif sheet.bola4vigor == true then
            		sheet.bola5vigor = false;
            		sheet.bola3vigor = true;
            		sheet.bola2vigor = true;
            		sheet.bola1vigor = true;
            	elseif sheet.bola3vigor == true then
            		sheet.bola5vigor = false;
            		sheet.bola4vigor = false;
            		sheet.bola2vigor = true;
            		sheet.bola1vigor = true;
            	elseif sheet.bola2vigor == true then
            		sheet.bola5vigor = false;
            		sheet.bola4vigor = false;
            		sheet.bola3vigor = false;
            		sheet.bola1vigor = true;	
            	elseif sheet.bola1vigor == true then
            		sheet.bola5vigor = false;
            		sheet.bola4vigor = false;
            		sheet.bola3vigor = false;
            		sheet.bola2vigor = false;
            	elseif sheet.bola1vigor == false then
            		sheet.bola5vigor = false;
            		sheet.bola4vigor = false;
            		sheet.bola3vigor = false;
            		sheet.bola2vigor = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5carisma == true then
            		sheet.bola4carisma = true;
            		sheet.bola3carisma = true;
            		sheet.bola2carisma = true;
            		sheet.bola1carisma = true;
            	elseif sheet.bola4carisma == true then
            		sheet.bola5carisma = false;
            		sheet.bola3carisma = true;
            		sheet.bola2carisma = true;
            		sheet.bola1carisma = true;
            	elseif sheet.bola3carisma == true then
            		sheet.bola5carisma = false;
            		sheet.bola4carisma = false;
            		sheet.bola2carisma = true;
            		sheet.bola1carisma = true;
            	elseif sheet.bola2carisma == true then
            		sheet.bola5carisma = false;
            		sheet.bola4carisma = false;
            		sheet.bola3carisma = false;
            		sheet.bola1carisma = true;	
            	elseif sheet.bola1carisma == true then
            		sheet.bola5carisma = false;
            		sheet.bola4carisma = false;
            		sheet.bola3carisma = false;
            		sheet.bola2carisma = false;
            	elseif sheet.bola1carisma == false then
            		sheet.bola5carisma = false;
            		sheet.bola4carisma = false;
            		sheet.bola3carisma = false;
            		sheet.bola2carisma = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5manipu == true then
            		sheet.bola4manipu = true;
            		sheet.bola3manipu = true;
            		sheet.bola2manipu = true;
            		sheet.bola1manipu = true;
            	elseif sheet.bola4manipu == true then
            		sheet.bola5manipu = false;
            		sheet.bola3manipu = true;
            		sheet.bola2manipu = true;
            		sheet.bola1manipu = true;
            	elseif sheet.bola3manipu == true then
            		sheet.bola5manipu = false;
            		sheet.bola4manipu = false;
            		sheet.bola2manipu = true;
            		sheet.bola1manipu = true;
            	elseif sheet.bola2manipu == true then
            		sheet.bola5manipu = false;
            		sheet.bola4manipu = false;
            		sheet.bola3manipu = false;
            		sheet.bola1manipu = true;	
            	elseif sheet.bola1manipu == true then
            		sheet.bola5manipu = false;
            		sheet.bola4manipu = false;
            		sheet.bola3manipu = false;
            		sheet.bola2manipu = false;
            	elseif sheet.bola1manipu == false then
            		sheet.bola5manipu = false;
            		sheet.bola4manipu = false;
            		sheet.bola3manipu = false;
            		sheet.bola2manipu = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5apare == true then
            		sheet.bola4apare = true;
            		sheet.bola3apare = true;
            		sheet.bola2apare = true;
            		sheet.bola1apare = true;
            	elseif sheet.bola4apare == true then
            		sheet.bola5apare = false;
            		sheet.bola3apare = true;
            		sheet.bola2apare = true;
            		sheet.bola1apare = true;
            	elseif sheet.bola3apare == true then
            		sheet.bola5apare = false;
            		sheet.bola4apare = false;
            		sheet.bola2apare = true;
            		sheet.bola1apare = true;
            	elseif sheet.bola2apare == true then
            		sheet.bola5apare = false;
            		sheet.bola4apare = false;
            		sheet.bola3apare = false;
            		sheet.bola1apare = true;	
            	elseif sheet.bola1apare == true then
            		sheet.bola5apare = false;
            		sheet.bola4apare = false;
            		sheet.bola3apare = false;
            		sheet.bola2apare = false;
            	elseif sheet.bola1apare == false then
            		sheet.bola5apare = false;
            		sheet.bola4apare = false;
            		sheet.bola3apare = false;
            		sheet.bola2apare = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5percep == true then
            		sheet.bola4percep = true;
            		sheet.bola3percep = true;
            		sheet.bola2percep = true;
            		sheet.bola1percep = true;
            	elseif sheet.bola4percep == true then
            		sheet.bola5percep = false;
            		sheet.bola3percep = true;
            		sheet.bola2percep = true;
            		sheet.bola1percep = true;
            	elseif sheet.bola3percep == true then
            		sheet.bola5percep = false;
            		sheet.bola4percep = false;
            		sheet.bola2percep = true;
            		sheet.bola1percep = true;
            	elseif sheet.bola2percep == true then
            		sheet.bola5percep = false;
            		sheet.bola4percep = false;
            		sheet.bola3percep = false;
            		sheet.bola1percep = true;	
            	elseif sheet.bola1percep == true then
            		sheet.bola5percep = false;
            		sheet.bola4percep = false;
            		sheet.bola3percep = false;
            		sheet.bola2percep = false;
            	elseif sheet.bola1percep == false then
            		sheet.bola5percep = false;
            		sheet.bola4percep = false;
            		sheet.bola3percep = false;
            		sheet.bola2percep = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5intel == true then
            		sheet.bola4intel = true;
            		sheet.bola3intel = true;
            		sheet.bola2intel = true;
            		sheet.bola1intel = true;
            	elseif sheet.bola4intel == true then
            		sheet.bola5intel = false;
            		sheet.bola3intel = true;
            		sheet.bola2intel = true;
            		sheet.bola1intel = true;
            	elseif sheet.bola3intel == true then
            		sheet.bola5intel = false;
            		sheet.bola4intel = false;
            		sheet.bola2intel = true;
            		sheet.bola1intel = true;
            	elseif sheet.bola2intel == true then
            		sheet.bola5intel = false;
            		sheet.bola4intel = false;
            		sheet.bola3intel = false;
            		sheet.bola1intel = true;	
            	elseif sheet.bola1intel == true then
            		sheet.bola5intel = false;
            		sheet.bola4intel = false;
            		sheet.bola3intel = false;
            		sheet.bola2intel = false;
            	elseif sheet.bola1intel == false then
            		sheet.bola5intel = false;
            		sheet.bola4intel = false;
            		sheet.bola3intel = false;
            		sheet.bola2intel = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5racio == true then
            		sheet.bola4racio = true;
            		sheet.bola3racio = true;
            		sheet.bola2racio = true;
            		sheet.bola1racio = true;
            	elseif sheet.bola4racio == true then
            		sheet.bola5racio = false;
            		sheet.bola3racio = true;
            		sheet.bola2racio = true;
            		sheet.bola1racio = true;
            	elseif sheet.bola3racio == true then
            		sheet.bola5racio = false;
            		sheet.bola4racio = false;
            		sheet.bola2racio = true;
            		sheet.bola1racio = true;
            	elseif sheet.bola2racio == true then
            		sheet.bola5racio = false;
            		sheet.bola4racio = false;
            		sheet.bola3racio = false;
            		sheet.bola1racio = true;	
            	elseif sheet.bola1racio == true then
            		sheet.bola5racio = false;
            		sheet.bola4racio = false;
            		sheet.bola3racio = false;
            		sheet.bola2racio = false;
            	elseif sheet.bola1racio == false then
            		sheet.bola5racio = false;
            		sheet.bola4racio = false;
            		sheet.bola3racio = false;
            		sheet.bola2racio = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5pront == true then
            		sheet.bola4pront = true;
            		sheet.bola3pront = true;
            		sheet.bola2pront = true;
            		sheet.bola1pront = true;
            	elseif sheet.bola4pront == true then
            		sheet.bola5pront = false;
            		sheet.bola3pront = true;
            		sheet.bola2pront = true;
            		sheet.bola1pront = true;
            	elseif sheet.bola3pront == true then
            		sheet.bola5pront = false;
            		sheet.bola4pront = false;
            		sheet.bola2pront = true;
            		sheet.bola1pront = true;
            	elseif sheet.bola2pront == true then
            		sheet.bola5pront = false;
            		sheet.bola4pront = false;
            		sheet.bola3pront = false;
            		sheet.bola1pront = true;	
            	elseif sheet.bola1pront == true then
            		sheet.bola5pront = false;
            		sheet.bola4pront = false;
            		sheet.bola3pront = false;
            		sheet.bola2pront = false;
            	elseif sheet.bola1pront == false then
            		sheet.bola5pront = false;
            		sheet.bola4pront = false;
            		sheet.bola3pront = false;
            		sheet.bola2pront = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5espor == true then
            		sheet.bola4espor = true;
            		sheet.bola3espor = true;
            		sheet.bola2espor = true;
            		sheet.bola1espor = true;
            	elseif sheet.bola4espor == true then
            		sheet.bola5espor = false;
            		sheet.bola3espor = true;
            		sheet.bola2espor = true;
            		sheet.bola1espor = true;
            	elseif sheet.bola3espor == true then
            		sheet.bola5espor = false;
            		sheet.bola4espor = false;
            		sheet.bola2espor = true;
            		sheet.bola1espor = true;
            	elseif sheet.bola2espor == true then
            		sheet.bola5espor = false;
            		sheet.bola4espor = false;
            		sheet.bola3espor = false;
            		sheet.bola1espor = true;	
            	elseif sheet.bola1espor == true then
            		sheet.bola5espor = false;
            		sheet.bola4espor = false;
            		sheet.bola3espor = false;
            		sheet.bola2espor = false;
            	elseif sheet.bola1espor == false then
            		sheet.bola5espor = false;
            		sheet.bola4espor = false;
            		sheet.bola3espor = false;
            		sheet.bola2espor = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5briga == true then
            		sheet.bola4briga = true;
            		sheet.bola3briga = true;
            		sheet.bola2briga = true;
            		sheet.bola1briga = true;
            	elseif sheet.bola4briga == true then
            		sheet.bola5briga = false;
            		sheet.bola3briga = true;
            		sheet.bola2briga = true;
            		sheet.bola1briga = true;
            	elseif sheet.bola3briga == true then
            		sheet.bola5briga = false;
            		sheet.bola4briga = false;
            		sheet.bola2briga = true;
            		sheet.bola1briga = true;
            	elseif sheet.bola2briga == true then
            		sheet.bola5briga = false;
            		sheet.bola4briga = false;
            		sheet.bola3briga = false;
            		sheet.bola1briga = true;	
            	elseif sheet.bola1briga == true then
            		sheet.bola5briga = false;
            		sheet.bola4briga = false;
            		sheet.bola3briga = false;
            		sheet.bola2briga = false;
            	elseif sheet.bola1briga == false then
            		sheet.bola5briga = false;
            		sheet.bola4briga = false;
            		sheet.bola3briga = false;
            		sheet.bola2briga = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5empat == true then
            		sheet.bola4empat = true;
            		sheet.bola3empat = true;
            		sheet.bola2empat = true;
            		sheet.bola1empat = true;
            	elseif sheet.bola4empat == true then
            		sheet.bola5empat = false;
            		sheet.bola3empat = true;
            		sheet.bola2empat = true;
            		sheet.bola1empat = true;
            	elseif sheet.bola3empat == true then
            		sheet.bola5empat = false;
            		sheet.bola4empat = false;
            		sheet.bola2empat = true;
            		sheet.bola1empat = true;
            	elseif sheet.bola2empat == true then
            		sheet.bola5empat = false;
            		sheet.bola4empat = false;
            		sheet.bola3empat = false;
            		sheet.bola1empat = true;	
            	elseif sheet.bola1empat == true then
            		sheet.bola5empat = false;
            		sheet.bola4empat = false;
            		sheet.bola3empat = false;
            		sheet.bola2empat = false;
            	elseif sheet.bola1empat == false then
            		sheet.bola5empat = false;
            		sheet.bola4empat = false;
            		sheet.bola3empat = false;
            		sheet.bola2empat = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5expre == true then
            		sheet.bola4expre = true;
            		sheet.bola3expre = true;
            		sheet.bola2expre = true;
            		sheet.bola1expre = true;
            	elseif sheet.bola4expre == true then
            		sheet.bola5expre = false;
            		sheet.bola3expre = true;
            		sheet.bola2expre = true;
            		sheet.bola1expre = true;
            	elseif sheet.bola3expre == true then
            		sheet.bola5expre = false;
            		sheet.bola4expre = false;
            		sheet.bola2expre = true;
            		sheet.bola1expre = true;
            	elseif sheet.bola2expre == true then
            		sheet.bola5expre = false;
            		sheet.bola4expre = false;
            		sheet.bola3expre = false;
            		sheet.bola1expre = true;	
            	elseif sheet.bola1expre == true then
            		sheet.bola5expre = false;
            		sheet.bola4expre = false;
            		sheet.bola3expre = false;
            		sheet.bola2expre = false;
            	elseif sheet.bola1expre == false then
            		sheet.bola5expre = false;
            		sheet.bola4expre = false;
            		sheet.bola3expre = false;
            		sheet.bola2expre = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5intim == true then
            		sheet.bola4intim = true;
            		sheet.bola3intim = true;
            		sheet.bola2intim = true;
            		sheet.bola1intim = true;
            	elseif sheet.bola4intim == true then
            		sheet.bola5intim = false;
            		sheet.bola3intim = true;
            		sheet.bola2intim = true;
            		sheet.bola1intim = true;
            	elseif sheet.bola3intim == true then
            		sheet.bola5intim = false;
            		sheet.bola4intim = false;
            		sheet.bola2intim = true;
            		sheet.bola1intim = true;
            	elseif sheet.bola2intim == true then
            		sheet.bola5intim = false;
            		sheet.bola4intim = false;
            		sheet.bola3intim = false;
            		sheet.bola1intim = true;	
            	elseif sheet.bola1intim == true then
            		sheet.bola5intim = false;
            		sheet.bola4intim = false;
            		sheet.bola3intim = false;
            		sheet.bola2intim = false;
            	elseif sheet.bola1intim == false then
            		sheet.bola5intim = false;
            		sheet.bola4intim = false;
            		sheet.bola3intim = false;
            		sheet.bola2intim = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5tino == true then
            		sheet.bola4tino = true;
            		sheet.bola3tino = true;
            		sheet.bola2tino = true;
            		sheet.bola1tino = true;
            	elseif sheet.bola4tino == true then
            		sheet.bola5tino = false;
            		sheet.bola3tino = true;
            		sheet.bola2tino = true;
            		sheet.bola1tino = true;
            	elseif sheet.bola3tino == true then
            		sheet.bola5tino = false;
            		sheet.bola4tino = false;
            		sheet.bola2tino = true;
            		sheet.bola1tino = true;
            	elseif sheet.bola2tino == true then
            		sheet.bola5tino = false;
            		sheet.bola4tino = false;
            		sheet.bola3tino = false;
            		sheet.bola1tino = true;	
            	elseif sheet.bola1tino == true then
            		sheet.bola5tino = false;
            		sheet.bola4tino = false;
            		sheet.bola3tino = false;
            		sheet.bola2tino = false;
            	elseif sheet.bola1tino == false then
            		sheet.bola5tino = false;
            		sheet.bola4tino = false;
            		sheet.bola3tino = false;
            		sheet.bola2tino = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5lider == true then
            		sheet.bola4lider = true;
            		sheet.bola3lider = true;
            		sheet.bola2lider = true;
            		sheet.bola1lider = true;
            	elseif sheet.bola4lider == true then
            		sheet.bola5lider = false;
            		sheet.bola3lider = true;
            		sheet.bola2lider = true;
            		sheet.bola1lider = true;
            	elseif sheet.bola3lider == true then
            		sheet.bola5lider = false;
            		sheet.bola4lider = false;
            		sheet.bola2lider = true;
            		sheet.bola1lider = true;
            	elseif sheet.bola2lider == true then
            		sheet.bola5lider = false;
            		sheet.bola4lider = false;
            		sheet.bola3lider = false;
            		sheet.bola1lider = true;	
            	elseif sheet.bola1lider == true then
            		sheet.bola5lider = false;
            		sheet.bola4lider = false;
            		sheet.bola3lider = false;
            		sheet.bola2lider = false;
            	elseif sheet.bola1lider == false then
            		sheet.bola5lider = false;
            		sheet.bola4lider = false;
            		sheet.bola3lider = false;
            		sheet.bola2lider = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5manha == true then
            		sheet.bola4manha = true;
            		sheet.bola3manha = true;
            		sheet.bola2manha = true;
            		sheet.bola1manha = true;
            	elseif sheet.bola4manha == true then
            		sheet.bola5manha = false;
            		sheet.bola3manha = true;
            		sheet.bola2manha = true;
            		sheet.bola1manha = true;
            	elseif sheet.bola3manha == true then
            		sheet.bola5manha = false;
            		sheet.bola4manha = false;
            		sheet.bola2manha = true;
            		sheet.bola1manha = true;
            	elseif sheet.bola2manha == true then
            		sheet.bola5manha = false;
            		sheet.bola4manha = false;
            		sheet.bola3manha = false;
            		sheet.bola1manha = true;	
            	elseif sheet.bola1manha == true then
            		sheet.bola5manha = false;
            		sheet.bola4manha = false;
            		sheet.bola3manha = false;
            		sheet.bola2manha = false;
            	elseif sheet.bola1manha == false then
            		sheet.bola5manha = false;
            		sheet.bola4manha = false;
            		sheet.bola3manha = false;
            		sheet.bola2manha = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5labia == true then
            		sheet.bola4labia = true;
            		sheet.bola3labia = true;
            		sheet.bola2labia = true;
            		sheet.bola1labia = true;
            	elseif sheet.bola4labia == true then
            		sheet.bola5labia = false;
            		sheet.bola3labia = true;
            		sheet.bola2labia = true;
            		sheet.bola1labia = true;
            	elseif sheet.bola3labia == true then
            		sheet.bola5labia = false;
            		sheet.bola4labia = false;
            		sheet.bola2labia = true;
            		sheet.bola1labia = true;
            	elseif sheet.bola2labia == true then
            		sheet.bola5labia = false;
            		sheet.bola4labia = false;
            		sheet.bola3labia = false;
            		sheet.bola1labia = true;	
            	elseif sheet.bola1labia == true then
            		sheet.bola5labia = false;
            		sheet.bola4labia = false;
            		sheet.bola3labia = false;
            		sheet.bola2labia = false;
            	elseif sheet.bola1labia == false then
            		sheet.bola5labia = false;
            		sheet.bola4labia = false;
            		sheet.bola3labia = false;
            		sheet.bola2labia = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5esqui == true then
            		sheet.bola4esqui = true;
            		sheet.bola3esqui = true;
            		sheet.bola2esqui = true;
            		sheet.bola1esqui = true;
            	elseif sheet.bola4esqui == true then
            		sheet.bola5esqui = false;
            		sheet.bola3esqui = true;
            		sheet.bola2esqui = true;
            		sheet.bola1esqui = true;
            	elseif sheet.bola3esqui == true then
            		sheet.bola5esqui = false;
            		sheet.bola4esqui = false;
            		sheet.bola2esqui = true;
            		sheet.bola1esqui = true;
            	elseif sheet.bola2esqui == true then
            		sheet.bola5esqui = false;
            		sheet.bola4esqui = false;
            		sheet.bola3esqui = false;
            		sheet.bola1esqui = true;	
            	elseif sheet.bola1esqui == true then
            		sheet.bola5esqui = false;
            		sheet.bola4esqui = false;
            		sheet.bola3esqui = false;
            		sheet.bola2esqui = false;
            	elseif sheet.bola1esqui == false then
            		sheet.bola5esqui = false;
            		sheet.bola4esqui = false;
            		sheet.bola3esqui = false;
            		sheet.bola2esqui = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5empca == true then
            		sheet.bola4empca = true;
            		sheet.bola3empca = true;
            		sheet.bola2empca = true;
            		sheet.bola1empca = true;
            	elseif sheet.bola4empca == true then
            		sheet.bola5empca = false;
            		sheet.bola3empca = true;
            		sheet.bola2empca = true;
            		sheet.bola1empca = true;
            	elseif sheet.bola3empca == true then
            		sheet.bola5empca = false;
            		sheet.bola4empca = false;
            		sheet.bola2empca = true;
            		sheet.bola1empca = true;
            	elseif sheet.bola2empca == true then
            		sheet.bola5empca = false;
            		sheet.bola4empca = false;
            		sheet.bola3empca = false;
            		sheet.bola1empca = true;	
            	elseif sheet.bola1empca == true then
            		sheet.bola5empca = false;
            		sheet.bola4empca = false;
            		sheet.bola3empca = false;
            		sheet.bola2empca = false;
            	elseif sheet.bola1empca == false then
            		sheet.bola5empca = false;
            		sheet.bola4empca = false;
            		sheet.bola3empca = false;
            		sheet.bola2empca = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5ofi == true then
            		sheet.bola4ofi = true;
            		sheet.bola3ofi = true;
            		sheet.bola2ofi = true;
            		sheet.bola1ofi = true;
            	elseif sheet.bola4ofi == true then
            		sheet.bola5ofi = false;
            		sheet.bola3ofi = true;
            		sheet.bola2ofi = true;
            		sheet.bola1ofi = true;
            	elseif sheet.bola3ofi == true then
            		sheet.bola5ofi = false;
            		sheet.bola4ofi = false;
            		sheet.bola2ofi = true;
            		sheet.bola1ofi = true;
            	elseif sheet.bola2ofi == true then
            		sheet.bola5ofi = false;
            		sheet.bola4ofi = false;
            		sheet.bola3ofi = false;
            		sheet.bola1ofi = true;	
            	elseif sheet.bola1ofi == true then
            		sheet.bola5ofi = false;
            		sheet.bola4ofi = false;
            		sheet.bola3ofi = false;
            		sheet.bola2ofi = false;
            	elseif sheet.bola1ofi == false then
            		sheet.bola5ofi = false;
            		sheet.bola4ofi = false;
            		sheet.bola3ofi = false;
            		sheet.bola2ofi = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5condu == true then
            		sheet.bola4condu = true;
            		sheet.bola3condu = true;
            		sheet.bola2condu = true;
            		sheet.bola1condu = true;
            	elseif sheet.bola4condu == true then
            		sheet.bola5condu = false;
            		sheet.bola3condu = true;
            		sheet.bola2condu = true;
            		sheet.bola1condu = true;
            	elseif sheet.bola3condu == true then
            		sheet.bola5condu = false;
            		sheet.bola4condu = false;
            		sheet.bola2condu = true;
            		sheet.bola1condu = true;
            	elseif sheet.bola2condu == true then
            		sheet.bola5condu = false;
            		sheet.bola4condu = false;
            		sheet.bola3condu = false;
            		sheet.bola1condu = true;	
            	elseif sheet.bola1condu == true then
            		sheet.bola5condu = false;
            		sheet.bola4condu = false;
            		sheet.bola3condu = false;
            		sheet.bola2condu = false;
            	elseif sheet.bola1condu == false then
            		sheet.bola5condu = false;
            		sheet.bola4condu = false;
            		sheet.bola3condu = false;
            		sheet.bola2condu = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5etique == true then
            		sheet.bola4etique = true;
            		sheet.bola3etique = true;
            		sheet.bola2etique = true;
            		sheet.bola1etique = true;
            	elseif sheet.bola4etique == true then
            		sheet.bola5etique = false;
            		sheet.bola3etique = true;
            		sheet.bola2etique = true;
            		sheet.bola1etique = true;
            	elseif sheet.bola3etique == true then
            		sheet.bola5etique = false;
            		sheet.bola4etique = false;
            		sheet.bola2etique = true;
            		sheet.bola1etique = true;
            	elseif sheet.bola2etique == true then
            		sheet.bola5etique = false;
            		sheet.bola4etique = false;
            		sheet.bola3etique = false;
            		sheet.bola1etique = true;	
            	elseif sheet.bola1etique == true then
            		sheet.bola5etique = false;
            		sheet.bola4etique = false;
            		sheet.bola3etique = false;
            		sheet.bola2etique = false;
            	elseif sheet.bola1etique == false then
            		sheet.bola5etique = false;
            		sheet.bola4etique = false;
            		sheet.bola3etique = false;
            		sheet.bola2etique = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5armpr == true then
            		sheet.bola4armpr = true;
            		sheet.bola3armpr = true;
            		sheet.bola2armpr = true;
            		sheet.bola1armpr = true;
            	elseif sheet.bola4armpr == true then
            		sheet.bola5armpr = false;
            		sheet.bola3armpr = true;
            		sheet.bola2armpr = true;
            		sheet.bola1armpr = true;
            	elseif sheet.bola3armpr == true then
            		sheet.bola5armpr = false;
            		sheet.bola4armpr = false;
            		sheet.bola2armpr = true;
            		sheet.bola1armpr = true;
            	elseif sheet.bola2armpr == true then
            		sheet.bola5armpr = false;
            		sheet.bola4armpr = false;
            		sheet.bola3armpr = false;
            		sheet.bola1armpr = true;	
            	elseif sheet.bola1armpr == true then
            		sheet.bola5armpr = false;
            		sheet.bola4armpr = false;
            		sheet.bola3armpr = false;
            		sheet.bola2armpr = false;
            	elseif sheet.bola1armpr == false then
            		sheet.bola5armpr = false;
            		sheet.bola4armpr = false;
            		sheet.bola3armpr = false;
            		sheet.bola2armpr = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5segur == true then
            		sheet.bola4segur = true;
            		sheet.bola3segur = true;
            		sheet.bola2segur = true;
            		sheet.bola1segur = true;
            	elseif sheet.bola4segur == true then
            		sheet.bola5segur = false;
            		sheet.bola3segur = true;
            		sheet.bola2segur = true;
            		sheet.bola1segur = true;
            	elseif sheet.bola3segur == true then
            		sheet.bola5segur = false;
            		sheet.bola4segur = false;
            		sheet.bola2segur = true;
            		sheet.bola1segur = true;
            	elseif sheet.bola2segur == true then
            		sheet.bola5segur = false;
            		sheet.bola4segur = false;
            		sheet.bola3segur = false;
            		sheet.bola1segur = true;	
            	elseif sheet.bola1segur == true then
            		sheet.bola5segur = false;
            		sheet.bola4segur = false;
            		sheet.bola3segur = false;
            		sheet.bola2segur = false;
            	elseif sheet.bola1segur == false then
            		sheet.bola5segur = false;
            		sheet.bola4segur = false;
            		sheet.bola3segur = false;
            		sheet.bola2segur = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5armbr == true then
            		sheet.bola4armbr = true;
            		sheet.bola3armbr = true;
            		sheet.bola2armbr = true;
            		sheet.bola1armbr = true;
            	elseif sheet.bola4armbr == true then
            		sheet.bola5armbr = false;
            		sheet.bola3armbr = true;
            		sheet.bola2armbr = true;
            		sheet.bola1armbr = true;
            	elseif sheet.bola3armbr == true then
            		sheet.bola5armbr = false;
            		sheet.bola4armbr = false;
            		sheet.bola2armbr = true;
            		sheet.bola1armbr = true;
            	elseif sheet.bola2armbr == true then
            		sheet.bola5armbr = false;
            		sheet.bola4armbr = false;
            		sheet.bola3armbr = false;
            		sheet.bola1armbr = true;	
            	elseif sheet.bola1armbr == true then
            		sheet.bola5armbr = false;
            		sheet.bola4armbr = false;
            		sheet.bola3armbr = false;
            		sheet.bola2armbr = false;
            	elseif sheet.bola1armbr == false then
            		sheet.bola5armbr = false;
            		sheet.bola4armbr = false;
            		sheet.bola3armbr = false;
            		sheet.bola2armbr = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5perfo == true then
            		sheet.bola4perfo = true;
            		sheet.bola3perfo = true;
            		sheet.bola2perfo = true;
            		sheet.bola1perfo = true;
            	elseif sheet.bola4perfo == true then
            		sheet.bola5perfo = false;
            		sheet.bola3perfo = true;
            		sheet.bola2perfo = true;
            		sheet.bola1perfo = true;
            	elseif sheet.bola3perfo == true then
            		sheet.bola5perfo = false;
            		sheet.bola4perfo = false;
            		sheet.bola2perfo = true;
            		sheet.bola1perfo = true;
            	elseif sheet.bola2perfo == true then
            		sheet.bola5perfo = false;
            		sheet.bola4perfo = false;
            		sheet.bola3perfo = false;
            		sheet.bola1perfo = true;	
            	elseif sheet.bola1perfo == true then
            		sheet.bola5perfo = false;
            		sheet.bola4perfo = false;
            		sheet.bola3perfo = false;
            		sheet.bola2perfo = false;
            	elseif sheet.bola1perfo == false then
            		sheet.bola5perfo = false;
            		sheet.bola4perfo = false;
            		sheet.bola3perfo = false;
            		sheet.bola2perfo = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5furti == true then
            		sheet.bola4furti = true;
            		sheet.bola3furti = true;
            		sheet.bola2furti = true;
            		sheet.bola1furti = true;
            	elseif sheet.bola4furti == true then
            		sheet.bola5furti = false;
            		sheet.bola3furti = true;
            		sheet.bola2furti = true;
            		sheet.bola1furti = true;
            	elseif sheet.bola3furti == true then
            		sheet.bola5furti = false;
            		sheet.bola4furti = false;
            		sheet.bola2furti = true;
            		sheet.bola1furti = true;
            	elseif sheet.bola2furti == true then
            		sheet.bola5furti = false;
            		sheet.bola4furti = false;
            		sheet.bola3furti = false;
            		sheet.bola1furti = true;	
            	elseif sheet.bola1furti == true then
            		sheet.bola5furti = false;
            		sheet.bola4furti = false;
            		sheet.bola3furti = false;
            		sheet.bola2furti = false;
            	elseif sheet.bola1furti == false then
            		sheet.bola5furti = false;
            		sheet.bola4furti = false;
            		sheet.bola3furti = false;
            		sheet.bola2furti = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5sobre == true then
            		sheet.bola4sobre = true;
            		sheet.bola3sobre = true;
            		sheet.bola2sobre = true;
            		sheet.bola1sobre = true;
            	elseif sheet.bola4sobre == true then
            		sheet.bola5sobre = false;
            		sheet.bola3sobre = true;
            		sheet.bola2sobre = true;
            		sheet.bola1sobre = true;
            	elseif sheet.bola3sobre == true then
            		sheet.bola5sobre = false;
            		sheet.bola4sobre = false;
            		sheet.bola2sobre = true;
            		sheet.bola1sobre = true;
            	elseif sheet.bola2sobre == true then
            		sheet.bola5sobre = false;
            		sheet.bola4sobre = false;
            		sheet.bola3sobre = false;
            		sheet.bola1sobre = true;	
            	elseif sheet.bola1sobre == true then
            		sheet.bola5sobre = false;
            		sheet.bola4sobre = false;
            		sheet.bola3sobre = false;
            		sheet.bola2sobre = false;
            	elseif sheet.bola1sobre == false then
            		sheet.bola5sobre = false;
            		sheet.bola4sobre = false;
            		sheet.bola3sobre = false;
            		sheet.bola2sobre = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5monta == true then
            		sheet.bola4monta = true;
            		sheet.bola3monta = true;
            		sheet.bola2monta = true;
            		sheet.bola1monta = true;
            	elseif sheet.bola4monta == true then
            		sheet.bola5monta = false;
            		sheet.bola3monta = true;
            		sheet.bola2monta = true;
            		sheet.bola1monta = true;
            	elseif sheet.bola3monta == true then
            		sheet.bola5monta = false;
            		sheet.bola4monta = false;
            		sheet.bola2monta = true;
            		sheet.bola1monta = true;
            	elseif sheet.bola2monta == true then
            		sheet.bola5monta = false;
            		sheet.bola4monta = false;
            		sheet.bola3monta = false;
            		sheet.bola1monta = true;	
            	elseif sheet.bola1monta == true then
            		sheet.bola5monta = false;
            		sheet.bola4monta = false;
            		sheet.bola3monta = false;
            		sheet.bola2monta = false;
            	elseif sheet.bola1monta == false then
            		sheet.bola5monta = false;
            		sheet.bola4monta = false;
            		sheet.bola3monta = false;
            		sheet.bola2monta = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5instru == true then
            		sheet.bola4instru = true;
            		sheet.bola3instru = true;
            		sheet.bola2instru = true;
            		sheet.bola1instru = true;
            	elseif sheet.bola4instru == true then
            		sheet.bola5instru = false;
            		sheet.bola3instru = true;
            		sheet.bola2instru = true;
            		sheet.bola1instru = true;
            	elseif sheet.bola3instru == true then
            		sheet.bola5instru = false;
            		sheet.bola4instru = false;
            		sheet.bola2instru = true;
            		sheet.bola1instru = true;
            	elseif sheet.bola2instru == true then
            		sheet.bola5instru = false;
            		sheet.bola4instru = false;
            		sheet.bola3instru = false;
            		sheet.bola1instru = true;	
            	elseif sheet.bola1instru == true then
            		sheet.bola5instru = false;
            		sheet.bola4instru = false;
            		sheet.bola3instru = false;
            		sheet.bola2instru = false;
            	elseif sheet.bola1instru == false then
            		sheet.bola5instru = false;
            		sheet.bola4instru = false;
            		sheet.bola3instru = false;
            		sheet.bola2instru = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5compu == true then
            		sheet.bola4compu = true;
            		sheet.bola3compu = true;
            		sheet.bola2compu = true;
            		sheet.bola1compu = true;
            	elseif sheet.bola4compu == true then
            		sheet.bola5compu = false;
            		sheet.bola3compu = true;
            		sheet.bola2compu = true;
            		sheet.bola1compu = true;
            	elseif sheet.bola3compu == true then
            		sheet.bola5compu = false;
            		sheet.bola4compu = false;
            		sheet.bola2compu = true;
            		sheet.bola1compu = true;
            	elseif sheet.bola2compu == true then
            		sheet.bola5compu = false;
            		sheet.bola4compu = false;
            		sheet.bola3compu = false;
            		sheet.bola1compu = true;	
            	elseif sheet.bola1compu == true then
            		sheet.bola5compu = false;
            		sheet.bola4compu = false;
            		sheet.bola3compu = false;
            		sheet.bola2compu = false;
            	elseif sheet.bola1compu == false then
            		sheet.bola5compu = false;
            		sheet.bola4compu = false;
            		sheet.bola3compu = false;
            		sheet.bola2compu = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5enig == true then
            		sheet.bola4enig = true;
            		sheet.bola3enig = true;
            		sheet.bola2enig = true;
            		sheet.bola1enig = true;
            	elseif sheet.bola4enig == true then
            		sheet.bola5enig = false;
            		sheet.bola3enig = true;
            		sheet.bola2enig = true;
            		sheet.bola1enig = true;
            	elseif sheet.bola3enig == true then
            		sheet.bola5enig = false;
            		sheet.bola4enig = false;
            		sheet.bola2enig = true;
            		sheet.bola1enig = true;
            	elseif sheet.bola2enig == true then
            		sheet.bola5enig = false;
            		sheet.bola4enig = false;
            		sheet.bola3enig = false;
            		sheet.bola1enig = true;	
            	elseif sheet.bola1enig == true then
            		sheet.bola5enig = false;
            		sheet.bola4enig = false;
            		sheet.bola3enig = false;
            		sheet.bola2enig = false;
            	elseif sheet.bola1enig == false then
            		sheet.bola5enig = false;
            		sheet.bola4enig = false;
            		sheet.bola3enig = false;
            		sheet.bola2enig = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5grama == true then
            		sheet.bola4grama = true;
            		sheet.bola3grama = true;
            		sheet.bola2grama = true;
            		sheet.bola1grama = true;
            	elseif sheet.bola4grama == true then
            		sheet.bola5grama = false;
            		sheet.bola3grama = true;
            		sheet.bola2grama = true;
            		sheet.bola1grama = true;
            	elseif sheet.bola3grama == true then
            		sheet.bola5grama = false;
            		sheet.bola4grama = false;
            		sheet.bola2grama = true;
            		sheet.bola1grama = true;
            	elseif sheet.bola2grama == true then
            		sheet.bola5grama = false;
            		sheet.bola4grama = false;
            		sheet.bola3grama = false;
            		sheet.bola1grama = true;	
            	elseif sheet.bola1grama == true then
            		sheet.bola5grama = false;
            		sheet.bola4grama = false;
            		sheet.bola3grama = false;
            		sheet.bola2grama = false;
            	elseif sheet.bola1grama == false then
            		sheet.bola5grama = false;
            		sheet.bola4grama = false;
            		sheet.bola3grama = false;
            		sheet.bola2grama = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5inves == true then
            		sheet.bola4inves = true;
            		sheet.bola3inves = true;
            		sheet.bola2inves = true;
            		sheet.bola1inves = true;
            	elseif sheet.bola4inves == true then
            		sheet.bola5inves = false;
            		sheet.bola3inves = true;
            		sheet.bola2inves = true;
            		sheet.bola1inves = true;
            	elseif sheet.bola3inves == true then
            		sheet.bola5inves = false;
            		sheet.bola4inves = false;
            		sheet.bola2inves = true;
            		sheet.bola1inves = true;
            	elseif sheet.bola2inves == true then
            		sheet.bola5inves = false;
            		sheet.bola4inves = false;
            		sheet.bola3inves = false;
            		sheet.bola1inves = true;	
            	elseif sheet.bola1inves == true then
            		sheet.bola5inves = false;
            		sheet.bola4inves = false;
            		sheet.bola3inves = false;
            		sheet.bola2inves = false;
            	elseif sheet.bola1inves == false then
            		sheet.bola5inves = false;
            		sheet.bola4inves = false;
            		sheet.bola3inves = false;
            		sheet.bola2inves = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5direi == true then
            		sheet.bola4direi = true;
            		sheet.bola3direi = true;
            		sheet.bola2direi = true;
            		sheet.bola1direi = true;
            	elseif sheet.bola4direi == true then
            		sheet.bola5direi = false;
            		sheet.bola3direi = true;
            		sheet.bola2direi = true;
            		sheet.bola1direi = true;
            	elseif sheet.bola3direi == true then
            		sheet.bola5direi = false;
            		sheet.bola4direi = false;
            		sheet.bola2direi = true;
            		sheet.bola1direi = true;
            	elseif sheet.bola2direi == true then
            		sheet.bola5direi = false;
            		sheet.bola4direi = false;
            		sheet.bola3direi = false;
            		sheet.bola1direi = true;	
            	elseif sheet.bola1direi == true then
            		sheet.bola5direi = false;
            		sheet.bola4direi = false;
            		sheet.bola3direi = false;
            		sheet.bola2direi = false;
            	elseif sheet.bola1direi == false then
            		sheet.bola5direi = false;
            		sheet.bola4direi = false;
            		sheet.bola3direi = false;
            		sheet.bola2direi = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5medic == true then
            		sheet.bola4medic = true;
            		sheet.bola3medic = true;
            		sheet.bola2medic = true;
            		sheet.bola1medic = true;
            	elseif sheet.bola4medic == true then
            		sheet.bola5medic = false;
            		sheet.bola3medic = true;
            		sheet.bola2medic = true;
            		sheet.bola1medic = true;
            	elseif sheet.bola3medic == true then
            		sheet.bola5medic = false;
            		sheet.bola4medic = false;
            		sheet.bola2medic = true;
            		sheet.bola1medic = true;
            	elseif sheet.bola2medic == true then
            		sheet.bola5medic = false;
            		sheet.bola4medic = false;
            		sheet.bola3medic = false;
            		sheet.bola1medic = true;	
            	elseif sheet.bola1medic == true then
            		sheet.bola5medic = false;
            		sheet.bola4medic = false;
            		sheet.bola3medic = false;
            		sheet.bola2medic = false;
            	elseif sheet.bola1medic == false then
            		sheet.bola5medic = false;
            		sheet.bola4medic = false;
            		sheet.bola3medic = false;
            		sheet.bola2medic = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5polit == true then
            		sheet.bola4polit = true;
            		sheet.bola3polit = true;
            		sheet.bola2polit = true;
            		sheet.bola1polit = true;
            	elseif sheet.bola4polit == true then
            		sheet.bola5polit = false;
            		sheet.bola3polit = true;
            		sheet.bola2polit = true;
            		sheet.bola1polit = true;
            	elseif sheet.bola3polit == true then
            		sheet.bola5polit = false;
            		sheet.bola4polit = false;
            		sheet.bola2polit = true;
            		sheet.bola1polit = true;
            	elseif sheet.bola2polit == true then
            		sheet.bola5polit = false;
            		sheet.bola4polit = false;
            		sheet.bola3polit = false;
            		sheet.bola1polit = true;	
            	elseif sheet.bola1polit == true then
            		sheet.bola5polit = false;
            		sheet.bola4polit = false;
            		sheet.bola3polit = false;
            		sheet.bola2polit = false;
            	elseif sheet.bola1polit == false then
            		sheet.bola5polit = false;
            		sheet.bola4polit = false;
            		sheet.bola3polit = false;
            		sheet.bola2polit = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5ciencia == true then
            		sheet.bola4ciencia = true;
            		sheet.bola3ciencia = true;
            		sheet.bola2ciencia = true;
            		sheet.bola1ciencia = true;
            	elseif sheet.bola4ciencia == true then
            		sheet.bola5ciencia = false;
            		sheet.bola3ciencia = true;
            		sheet.bola2ciencia = true;
            		sheet.bola1ciencia = true;
            	elseif sheet.bola3ciencia == true then
            		sheet.bola5ciencia = false;
            		sheet.bola4ciencia = false;
            		sheet.bola2ciencia = true;
            		sheet.bola1ciencia = true;
            	elseif sheet.bola2ciencia == true then
            		sheet.bola5ciencia = false;
            		sheet.bola4ciencia = false;
            		sheet.bola3ciencia = false;
            		sheet.bola1ciencia = true;	
            	elseif sheet.bola1ciencia == true then
            		sheet.bola5ciencia = false;
            		sheet.bola4ciencia = false;
            		sheet.bola3ciencia = false;
            		sheet.bola2ciencia = false;
            	elseif sheet.bola1ciencia == false then
            		sheet.bola5ciencia = false;
            		sheet.bola4ciencia = false;
            		sheet.bola3ciencia = false;
            		sheet.bola2ciencia = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5tecno == true then
            		sheet.bola4tecno = true;
            		sheet.bola3tecno = true;
            		sheet.bola2tecno = true;
            		sheet.bola1tecno = true;
            	elseif sheet.bola4tecno == true then
            		sheet.bola5tecno = false;
            		sheet.bola3tecno = true;
            		sheet.bola2tecno = true;
            		sheet.bola1tecno = true;
            	elseif sheet.bola3tecno == true then
            		sheet.bola5tecno = false;
            		sheet.bola4tecno = false;
            		sheet.bola2tecno = true;
            		sheet.bola1tecno = true;
            	elseif sheet.bola2tecno == true then
            		sheet.bola5tecno = false;
            		sheet.bola4tecno = false;
            		sheet.bola3tecno = false;
            		sheet.bola1tecno = true;	
            	elseif sheet.bola1tecno == true then
            		sheet.bola5tecno = false;
            		sheet.bola4tecno = false;
            		sheet.bola3tecno = false;
            		sheet.bola2tecno = false;
            	elseif sheet.bola1tecno == false then
            		sheet.bola5tecno = false;
            		sheet.bola4tecno = false;
            		sheet.bola3tecno = false;
            		sheet.bola2tecno = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5lingui == true then
            		sheet.bola4lingui = true;
            		sheet.bola3lingui = true;
            		sheet.bola2lingui = true;
            		sheet.bola1lingui = true;
            	elseif sheet.bola4lingui == true then
            		sheet.bola5lingui = false;
            		sheet.bola3lingui = true;
            		sheet.bola2lingui = true;
            		sheet.bola1lingui = true;
            	elseif sheet.bola3lingui == true then
            		sheet.bola5lingui = false;
            		sheet.bola4lingui = false;
            		sheet.bola2lingui = true;
            		sheet.bola1lingui = true;
            	elseif sheet.bola2lingui == true then
            		sheet.bola5lingui = false;
            		sheet.bola4lingui = false;
            		sheet.bola3lingui = false;
            		sheet.bola1lingui = true;	
            	elseif sheet.bola1lingui == true then
            		sheet.bola5lingui = false;
            		sheet.bola4lingui = false;
            		sheet.bola3lingui = false;
            		sheet.bola2lingui = false;
            	elseif sheet.bola1lingui == false then
            		sheet.bola5lingui = false;
            		sheet.bola4lingui = false;
            		sheet.bola3lingui = false;
            		sheet.bola2lingui = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Antecedentes1 == true then
            		sheet.bola4Antecedentes1 = true;
            		sheet.bola3Antecedentes1 = true;
            		sheet.bola2Antecedentes1 = true;
            		sheet.bola1Antecedentes1 = true;
            	elseif sheet.bola4Antecedentes1 == true then
            		sheet.bola5Antecedentes1 = false;
            		sheet.bola3Antecedentes1 = true;
            		sheet.bola2Antecedentes1 = true;
            		sheet.bola1Antecedentes1 = true;
            	elseif sheet.bola3Antecedentes1 == true then
            		sheet.bola5Antecedentes1 = false;
            		sheet.bola4Antecedentes1 = false;
            		sheet.bola2Antecedentes1 = true;
            		sheet.bola1Antecedentes1 = true;
            	elseif sheet.bola2Antecedentes1 == true then
            		sheet.bola5Antecedentes1 = false;
            		sheet.bola4Antecedentes1 = false;
            		sheet.bola3Antecedentes1 = false;
            		sheet.bola1Antecedentes1 = true;	
            	elseif sheet.bola1Antecedentes1 == true then
            		sheet.bola5Antecedentes1 = false;
            		sheet.bola4Antecedentes1 = false;
            		sheet.bola3Antecedentes1 = false;
            		sheet.bola2Antecedentes1 = false;
            	elseif sheet.bola1Antecedentes1 == false then
            		sheet.bola5Antecedentes1 = false;
            		sheet.bola4Antecedentes1 = false;
            		sheet.bola3Antecedentes1 = false;
            		sheet.bola2Antecedentes1 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Antecedentes2 == true then
            		sheet.bola4Antecedentes2 = true;
            		sheet.bola3Antecedentes2 = true;
            		sheet.bola2Antecedentes2 = true;
            		sheet.bola1Antecedentes2 = true;
            	elseif sheet.bola4Antecedentes2 == true then
            		sheet.bola5Antecedentes2 = false;
            		sheet.bola3Antecedentes2 = true;
            		sheet.bola2Antecedentes2 = true;
            		sheet.bola1Antecedentes2 = true;
            	elseif sheet.bola3Antecedentes2 == true then
            		sheet.bola5Antecedentes2 = false;
            		sheet.bola4Antecedentes2 = false;
            		sheet.bola2Antecedentes2 = true;
            		sheet.bola1Antecedentes2 = true;
            	elseif sheet.bola2Antecedentes2 == true then
            		sheet.bola5Antecedentes2 = false;
            		sheet.bola4Antecedentes2 = false;
            		sheet.bola3Antecedentes2 = false;
            		sheet.bola1Antecedentes2 = true;	
            	elseif sheet.bola1Antecedentes2 == true then
            		sheet.bola5Antecedentes2 = false;
            		sheet.bola4Antecedentes2 = false;
            		sheet.bola3Antecedentes2 = false;
            		sheet.bola2Antecedentes2 = false;
            	elseif sheet.bola1Antecedentes2 == false then
            		sheet.bola5Antecedentes2 = false;
            		sheet.bola4Antecedentes2 = false;
            		sheet.bola3Antecedentes2 = false;
            		sheet.bola2Antecedentes2 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Antecedentes3 == true then
            		sheet.bola4Antecedentes3 = true;
            		sheet.bola3Antecedentes3 = true;
            		sheet.bola2Antecedentes3 = true;
            		sheet.bola1Antecedentes3 = true;
            	elseif sheet.bola4Antecedentes3 == true then
            		sheet.bola5Antecedentes3 = false;
            		sheet.bola3Antecedentes3 = true;
            		sheet.bola2Antecedentes3 = true;
            		sheet.bola1Antecedentes3 = true;
            	elseif sheet.bola3Antecedentes3 == true then
            		sheet.bola5Antecedentes3 = false;
            		sheet.bola4Antecedentes3 = false;
            		sheet.bola2Antecedentes3 = true;
            		sheet.bola1Antecedentes3 = true;
            	elseif sheet.bola2Antecedentes3 == true then
            		sheet.bola5Antecedentes3 = false;
            		sheet.bola4Antecedentes3 = false;
            		sheet.bola3Antecedentes3 = false;
            		sheet.bola1Antecedentes3 = true;	
            	elseif sheet.bola1Antecedentes3 == true then
            		sheet.bola5Antecedentes3 = false;
            		sheet.bola4Antecedentes3 = false;
            		sheet.bola3Antecedentes3 = false;
            		sheet.bola2Antecedentes3 = false;
            	elseif sheet.bola1Antecedentes3 == false then
            		sheet.bola5Antecedentes3 = false;
            		sheet.bola4Antecedentes3 = false;
            		sheet.bola3Antecedentes3 = false;
            		sheet.bola2Antecedentes3 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Antecedentes4 == true then
            		sheet.bola4Antecedentes4 = true;
            		sheet.bola3Antecedentes4 = true;
            		sheet.bola2Antecedentes4 = true;
            		sheet.bola1Antecedentes4 = true;
            	elseif sheet.bola4Antecedentes4 == true then
            		sheet.bola5Antecedentes4 = false;
            		sheet.bola3Antecedentes4 = true;
            		sheet.bola2Antecedentes4 = true;
            		sheet.bola1Antecedentes4 = true;
            	elseif sheet.bola3Antecedentes4 == true then
            		sheet.bola5Antecedentes4 = false;
            		sheet.bola4Antecedentes4 = false;
            		sheet.bola2Antecedentes4 = true;
            		sheet.bola1Antecedentes4 = true;
            	elseif sheet.bola2Antecedentes4 == true then
            		sheet.bola5Antecedentes4 = false;
            		sheet.bola4Antecedentes4 = false;
            		sheet.bola3Antecedentes4 = false;
            		sheet.bola1Antecedentes4 = true;	
            	elseif sheet.bola1Antecedentes4 == true then
            		sheet.bola5Antecedentes4 = false;
            		sheet.bola4Antecedentes4 = false;
            		sheet.bola3Antecedentes4 = false;
            		sheet.bola2Antecedentes4 = false;
            	elseif sheet.bola1Antecedentes4 == false then
            		sheet.bola5Antecedentes4 = false;
            		sheet.bola4Antecedentes4 = false;
            		sheet.bola3Antecedentes4 = false;
            		sheet.bola2Antecedentes4 = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Antecedentes5 == true then
            		sheet.bola4Antecedentes5 = true;
            		sheet.bola3Antecedentes5 = true;
            		sheet.bola2Antecedentes5 = true;
            		sheet.bola1Antecedentes5 = true;
            	elseif sheet.bola4Antecedentes5 == true then
            		sheet.bola5Antecedentes5 = false;
            		sheet.bola3Antecedentes5 = true;
            		sheet.bola2Antecedentes5 = true;
            		sheet.bola1Antecedentes5 = true;
            	elseif sheet.bola3Antecedentes5 == true then
            		sheet.bola5Antecedentes5 = false;
            		sheet.bola4Antecedentes5 = false;
            		sheet.bola2Antecedentes5 = true;
            		sheet.bola1Antecedentes5 = true;
            	elseif sheet.bola2Antecedentes5 == true then
            		sheet.bola5Antecedentes5 = false;
            		sheet.bola4Antecedentes5 = false;
            		sheet.bola3Antecedentes5 = false;
            		sheet.bola1Antecedentes5 = true;	
            	elseif sheet.bola1Antecedentes5 == true then
            		sheet.bola5Antecedentes5 = false;
            		sheet.bola4Antecedentes5 = false;
            		sheet.bola3Antecedentes5 = false;
            		sheet.bola2Antecedentes5 = false;
            	elseif sheet.bola1Antecedentes5 == false then
            		sheet.bola5Antecedentes5 = false;
            		sheet.bola4Antecedentes5 = false;
            		sheet.bola3Antecedentes5 = false;
            		sheet.bola2Antecedentes5 = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Antecedentes6 == true then
            		sheet.bola4Antecedentes6 = true;
            		sheet.bola3Antecedentes6 = true;
            		sheet.bola2Antecedentes6 = true;
            		sheet.bola1Antecedentes6 = true;
            	elseif sheet.bola4Antecedentes6 == true then
            		sheet.bola5Antecedentes6 = false;
            		sheet.bola3Antecedentes6 = true;
            		sheet.bola2Antecedentes6 = true;
            		sheet.bola1Antecedentes6 = true;
            	elseif sheet.bola3Antecedentes6 == true then
            		sheet.bola5Antecedentes6 = false;
            		sheet.bola4Antecedentes6 = false;
            		sheet.bola2Antecedentes6 = true;
            		sheet.bola1Antecedentes6 = true;
            	elseif sheet.bola2Antecedentes6 == true then
            		sheet.bola5Antecedentes6 = false;
            		sheet.bola4Antecedentes6 = false;
            		sheet.bola3Antecedentes6 = false;
            		sheet.bola1Antecedentes6 = true;	
            	elseif sheet.bola1Antecedentes6 == true then
            		sheet.bola5Antecedentes6 = false;
            		sheet.bola4Antecedentes6 = false;
            		sheet.bola3Antecedentes6 = false;
            		sheet.bola2Antecedentes6 = false;
            	elseif sheet.bola1Antecedentes6 == false then
            		sheet.bola5Antecedentes6 = false;
            		sheet.bola4Antecedentes6 = false;
            		sheet.bola3Antecedentes6 = false;
            		sheet.bola2Antecedentes6 = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Artes1 == true then
            		sheet.bola4Artes1 = true;
            		sheet.bola3Artes1 = true;
            		sheet.bola2Artes1 = true;
            		sheet.bola1Artes1 = true;
            	elseif sheet.bola4Artes1 == true then
            		sheet.bola5Artes1 = false;
            		sheet.bola3Artes1 = true;
            		sheet.bola2Artes1 = true;
            		sheet.bola1Artes1 = true;
            	elseif sheet.bola3Artes1 == true then
            		sheet.bola5Artes1 = false;
            		sheet.bola4Artes1 = false;
            		sheet.bola2Artes1 = true;
            		sheet.bola1Artes1 = true;
            	elseif sheet.bola2Artes1 == true then
            		sheet.bola5Artes1 = false;
            		sheet.bola4Artes1 = false;
            		sheet.bola3Artes1 = false;
            		sheet.bola1Artes1 = true;	
            	elseif sheet.bola1Artes1 == true then
            		sheet.bola5Artes1 = false;
            		sheet.bola4Artes1 = false;
            		sheet.bola3Artes1 = false;
            		sheet.bola2Artes1 = false;
            	elseif sheet.bola1Artes1 == false then
            		sheet.bola5Artes1 = false;
            		sheet.bola4Artes1 = false;
            		sheet.bola3Artes1 = false;
            		sheet.bola2Artes1 = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Artes2 == true then
            		sheet.bola4Artes2 = true;
            		sheet.bola3Artes2 = true;
            		sheet.bola2Artes2 = true;
            		sheet.bola1Artes2 = true;
            	elseif sheet.bola4Artes2 == true then
            		sheet.bola5Artes2 = false;
            		sheet.bola3Artes2 = true;
            		sheet.bola2Artes2 = true;
            		sheet.bola1Artes2 = true;
            	elseif sheet.bola3Artes2 == true then
            		sheet.bola5Artes2 = false;
            		sheet.bola4Artes2 = false;
            		sheet.bola2Artes2 = true;
            		sheet.bola1Artes2 = true;
            	elseif sheet.bola2Artes2 == true then
            		sheet.bola5Artes2 = false;
            		sheet.bola4Artes2 = false;
            		sheet.bola3Artes2 = false;
            		sheet.bola1Artes2 = true;	
            	elseif sheet.bola1Artes2 == true then
            		sheet.bola5Artes2 = false;
            		sheet.bola4Artes2 = false;
            		sheet.bola3Artes2 = false;
            		sheet.bola2Artes2 = false;
            	elseif sheet.bola1Artes2 == false then
            		sheet.bola5Artes2 = false;
            		sheet.bola4Artes2 = false;
            		sheet.bola3Artes2 = false;
            		sheet.bola2Artes2 = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Artes3 == true then
            		sheet.bola4Artes3 = true;
            		sheet.bola3Artes3 = true;
            		sheet.bola2Artes3 = true;
            		sheet.bola1Artes3 = true;
            	elseif sheet.bola4Artes3 == true then
            		sheet.bola5Artes3 = false;
            		sheet.bola3Artes3 = true;
            		sheet.bola2Artes3 = true;
            		sheet.bola1Artes3 = true;
            	elseif sheet.bola3Artes3 == true then
            		sheet.bola5Artes3 = false;
            		sheet.bola4Artes3 = false;
            		sheet.bola2Artes3 = true;
            		sheet.bola1Artes3 = true;
            	elseif sheet.bola2Artes3 == true then
            		sheet.bola5Artes3 = false;
            		sheet.bola4Artes3 = false;
            		sheet.bola3Artes3 = false;
            		sheet.bola1Artes3 = true;	
            	elseif sheet.bola1Artes3 == true then
            		sheet.bola5Artes3 = false;
            		sheet.bola4Artes3 = false;
            		sheet.bola3Artes3 = false;
            		sheet.bola2Artes3 = false;
            	elseif sheet.bola1Artes3 == false then
            		sheet.bola5Artes3 = false;
            		sheet.bola4Artes3 = false;
            		sheet.bola3Artes3 = false;
            		sheet.bola2Artes3 = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Artes4 == true then
            		sheet.bola4Artes4 = true;
            		sheet.bola3Artes4 = true;
            		sheet.bola2Artes4 = true;
            		sheet.bola1Artes4 = true;
            	elseif sheet.bola4Artes4 == true then
            		sheet.bola5Artes4 = false;
            		sheet.bola3Artes4 = true;
            		sheet.bola2Artes4 = true;
            		sheet.bola1Artes4 = true;
            	elseif sheet.bola3Artes4 == true then
            		sheet.bola5Artes4 = false;
            		sheet.bola4Artes4 = false;
            		sheet.bola2Artes4 = true;
            		sheet.bola1Artes4 = true;
            	elseif sheet.bola2Artes4 == true then
            		sheet.bola5Artes4 = false;
            		sheet.bola4Artes4 = false;
            		sheet.bola3Artes4 = false;
            		sheet.bola1Artes4 = true;	
            	elseif sheet.bola1Artes4 == true then
            		sheet.bola5Artes4 = false;
            		sheet.bola4Artes4 = false;
            		sheet.bola3Artes4 = false;
            		sheet.bola2Artes4 = false;
            	elseif sheet.bola1Artes4 == false then
            		sheet.bola5Artes4 = false;
            		sheet.bola4Artes4 = false;
            		sheet.bola3Artes4 = false;
            		sheet.bola2Artes4 = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Artes5 == true then
            		sheet.bola4Artes5 = true;
            		sheet.bola3Artes5 = true;
            		sheet.bola2Artes5 = true;
            		sheet.bola1Artes5 = true;
            	elseif sheet.bola4Artes5 == true then
            		sheet.bola5Artes5 = false;
            		sheet.bola3Artes5 = true;
            		sheet.bola2Artes5 = true;
            		sheet.bola1Artes5 = true;
            	elseif sheet.bola3Artes5 == true then
            		sheet.bola5Artes5 = false;
            		sheet.bola4Artes5 = false;
            		sheet.bola2Artes5 = true;
            		sheet.bola1Artes5 = true;
            	elseif sheet.bola2Artes5 == true then
            		sheet.bola5Artes5 = false;
            		sheet.bola4Artes5 = false;
            		sheet.bola3Artes5 = false;
            		sheet.bola1Artes5 = true;	
            	elseif sheet.bola1Artes5 == true then
            		sheet.bola5Artes5 = false;
            		sheet.bola4Artes5 = false;
            		sheet.bola3Artes5 = false;
            		sheet.bola2Artes5 = false;
            	elseif sheet.bola1Artes5 == false then
            		sheet.bola5Artes5 = false;
            		sheet.bola4Artes5 = false;
            		sheet.bola3Artes5 = false;
            		sheet.bola2Artes5 = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Artes6 == true then
            		sheet.bola4Artes6 = true;
            		sheet.bola3Artes6 = true;
            		sheet.bola2Artes6 = true;
            		sheet.bola1Artes6 = true;
            	elseif sheet.bola4Artes6 == true then
            		sheet.bola5Artes6 = false;
            		sheet.bola3Artes6 = true;
            		sheet.bola2Artes6 = true;
            		sheet.bola1Artes6 = true;
            	elseif sheet.bola3Artes6 == true then
            		sheet.bola5Artes6 = false;
            		sheet.bola4Artes6 = false;
            		sheet.bola2Artes6 = true;
            		sheet.bola1Artes6 = true;
            	elseif sheet.bola2Artes6 == true then
            		sheet.bola5Artes6 = false;
            		sheet.bola4Artes6 = false;
            		sheet.bola3Artes6 = false;
            		sheet.bola1Artes6 = true;	
            	elseif sheet.bola1Artes6 == true then
            		sheet.bola5Artes6 = false;
            		sheet.bola4Artes6 = false;
            		sheet.bola3Artes6 = false;
            		sheet.bola2Artes6 = false;
            	elseif sheet.bola1Artes6 == false then
            		sheet.bola5Artes6 = false;
            		sheet.bola4Artes6 = false;
            		sheet.bola3Artes6 = false;
            		sheet.bola2Artes6 = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Ator == true then
            		sheet.bola4Ator = true;
            		sheet.bola3Ator = true;
            		sheet.bola2Ator = true;
            		sheet.bola1Ator = true;
            	elseif sheet.bola4Ator == true then
            		sheet.bola5Ator = false;
            		sheet.bola3Ator = true;
            		sheet.bola2Ator = true;
            		sheet.bola1Ator = true;
            	elseif sheet.bola3Ator == true then
            		sheet.bola5Ator = false;
            		sheet.bola4Ator = false;
            		sheet.bola2Ator = true;
            		sheet.bola1Ator = true;
            	elseif sheet.bola2Ator == true then
            		sheet.bola5Ator = false;
            		sheet.bola4Ator = false;
            		sheet.bola3Ator = false;
            		sheet.bola1Ator = true;	
            	elseif sheet.bola1Ator == true then
            		sheet.bola5Ator = false;
            		sheet.bola4Ator = false;
            		sheet.bola3Ator = false;
            		sheet.bola2Ator = false;
            	elseif sheet.bola1Ator == false then
            		sheet.bola5Ator = false;
            		sheet.bola4Ator = false;
            		sheet.bola3Ator = false;
            		sheet.bola2Ator = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Fada == true then
            		sheet.bola4Fada = true;
            		sheet.bola3Fada = true;
            		sheet.bola2Fada = true;
            		sheet.bola1Fada = true;
            	elseif sheet.bola4Fada == true then
            		sheet.bola5Fada = false;
            		sheet.bola3Fada = true;
            		sheet.bola2Fada = true;
            		sheet.bola1Fada = true;
            	elseif sheet.bola3Fada == true then
            		sheet.bola5Fada = false;
            		sheet.bola4Fada = false;
            		sheet.bola2Fada = true;
            		sheet.bola1Fada = true;
            	elseif sheet.bola2Fada == true then
            		sheet.bola5Fada = false;
            		sheet.bola4Fada = false;
            		sheet.bola3Fada = false;
            		sheet.bola1Fada = true;	
            	elseif sheet.bola1Fada == true then
            		sheet.bola5Fada = false;
            		sheet.bola4Fada = false;
            		sheet.bola3Fada = false;
            		sheet.bola2Fada = false;
            	elseif sheet.bola1Fada == false then
            		sheet.bola5Fada = false;
            		sheet.bola4Fada = false;
            		sheet.bola3Fada = false;
            		sheet.bola2Fada = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Natureza == true then
            		sheet.bola4Natureza = true;
            		sheet.bola3Natureza = true;
            		sheet.bola2Natureza = true;
            		sheet.bola1Natureza = true;
            	elseif sheet.bola4Natureza == true then
            		sheet.bola5Natureza = false;
            		sheet.bola3Natureza = true;
            		sheet.bola2Natureza = true;
            		sheet.bola1Natureza = true;
            	elseif sheet.bola3Natureza == true then
            		sheet.bola5Natureza = false;
            		sheet.bola4Natureza = false;
            		sheet.bola2Natureza = true;
            		sheet.bola1Natureza = true;
            	elseif sheet.bola2Natureza == true then
            		sheet.bola5Natureza = false;
            		sheet.bola4Natureza = false;
            		sheet.bola3Natureza = false;
            		sheet.bola1Natureza = true;	
            	elseif sheet.bola1Natureza == true then
            		sheet.bola5Natureza = false;
            		sheet.bola4Natureza = false;
            		sheet.bola3Natureza = false;
            		sheet.bola2Natureza = false;
            	elseif sheet.bola1Natureza == false then
            		sheet.bola5Natureza = false;
            		sheet.bola4Natureza = false;
            		sheet.bola3Natureza = false;
            		sheet.bola2Natureza = false;
            	end;
        end, obj);

    obj._e_event57 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Acessorio == true then
            		sheet.bola4Acessorio = true;
            		sheet.bola3Acessorio = true;
            		sheet.bola2Acessorio = true;
            		sheet.bola1Acessorio = true;
            	elseif sheet.bola4Acessorio == true then
            		sheet.bola5Acessorio = false;
            		sheet.bola3Acessorio = true;
            		sheet.bola2Acessorio = true;
            		sheet.bola1Acessorio = true;
            	elseif sheet.bola3Acessorio == true then
            		sheet.bola5Acessorio = false;
            		sheet.bola4Acessorio = false;
            		sheet.bola2Acessorio = true;
            		sheet.bola1Acessorio = true;
            	elseif sheet.bola2Acessorio == true then
            		sheet.bola5Acessorio = false;
            		sheet.bola4Acessorio = false;
            		sheet.bola3Acessorio = false;
            		sheet.bola1Acessorio = true;	
            	elseif sheet.bola1Acessorio == true then
            		sheet.bola5Acessorio = false;
            		sheet.bola4Acessorio = false;
            		sheet.bola3Acessorio = false;
            		sheet.bola2Acessorio = false;
            	elseif sheet.bola1Acessorio == false then
            		sheet.bola5Acessorio = false;
            		sheet.bola4Acessorio = false;
            		sheet.bola3Acessorio = false;
            		sheet.bola2Acessorio = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Cena == true then
            		sheet.bola4Cena = true;
            		sheet.bola3Cena = true;
            		sheet.bola2Cena = true;
            		sheet.bola1Cena = true;
            	elseif sheet.bola4Cena == true then
            		sheet.bola5Cena = false;
            		sheet.bola3Cena = true;
            		sheet.bola2Cena = true;
            		sheet.bola1Cena = true;
            	elseif sheet.bola3Cena == true then
            		sheet.bola5Cena = false;
            		sheet.bola4Cena = false;
            		sheet.bola2Cena = true;
            		sheet.bola1Cena = true;
            	elseif sheet.bola2Cena == true then
            		sheet.bola5Cena = false;
            		sheet.bola4Cena = false;
            		sheet.bola3Cena = false;
            		sheet.bola1Cena = true;	
            	elseif sheet.bola1Cena == true then
            		sheet.bola5Cena = false;
            		sheet.bola4Cena = false;
            		sheet.bola3Cena = false;
            		sheet.bola2Cena = false;
            	elseif sheet.bola1Cena == false then
            		sheet.bola5Cena = false;
            		sheet.bola4Cena = false;
            		sheet.bola3Cena = false;
            		sheet.bola2Cena = false;
            	end;
        end, obj);

    obj._e_event59 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5Tempo == true then
            		sheet.bola4Tempo = true;
            		sheet.bola3Tempo = true;
            		sheet.bola2Tempo = true;
            		sheet.bola1Tempo = true;
            	elseif sheet.bola4Tempo == true then
            		sheet.bola5Tempo = false;
            		sheet.bola3Tempo = true;
            		sheet.bola2Tempo = true;
            		sheet.bola1Tempo = true;
            	elseif sheet.bola3Tempo == true then
            		sheet.bola5Tempo = false;
            		sheet.bola4Tempo = false;
            		sheet.bola2Tempo = true;
            		sheet.bola1Tempo = true;
            	elseif sheet.bola2Tempo == true then
            		sheet.bola5Tempo = false;
            		sheet.bola4Tempo = false;
            		sheet.bola3Tempo = false;
            		sheet.bola1Tempo = true;	
            	elseif sheet.bola1Tempo == true then
            		sheet.bola5Tempo = false;
            		sheet.bola4Tempo = false;
            		sheet.bola3Tempo = false;
            		sheet.bola2Tempo = false;
            	elseif sheet.bola1Tempo == false then
            		sheet.bola5Tempo = false;
            		sheet.bola4Tempo = false;
            		sheet.bola3Tempo = false;
            		sheet.bola2Tempo = false;
            	end;
        end, obj);

    obj._e_event60 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola10Gl == true then
            		sheet.bola9Gl = true;
            		sheet.bola8Gl = true;
            		sheet.bola7Gl = true;
            		sheet.bola6Gl = true;
            		sheet.bola5Gl = true;
            		sheet.bola4Gl = true;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola9Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola8Gl = true;
            		sheet.bola7Gl = true;
            		sheet.bola6Gl = true;
            		sheet.bola5Gl = true;
            		sheet.bola4Gl = true;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola8Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola7Gl = true;
            		sheet.bola6Gl = true;
            		sheet.bola5Gl = true;
            		sheet.bola4Gl = true;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola7Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola6Gl = true;
            		sheet.bola5Gl = true;
            		sheet.bola4Gl = true;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola6Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola5Gl = true;
            		sheet.bola4Gl = true;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola5Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola6Gl = false;
            		sheet.bola4Gl = true;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola4Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola6Gl = false;
            		sheet.bola5Gl = false;
            		sheet.bola3Gl = true;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola3Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola6Gl = false;
            		sheet.bola5Gl = false;
            		sheet.bola4Gl = false;
            		sheet.bola2Gl = true;
            		sheet.bola1Gl = true;
            	elseif sheet.bola2Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola6Gl = false;
            		sheet.bola5Gl = false;
            		sheet.bola4Gl = false;
            		sheet.bola3Gl = false;
            		sheet.bola1Gl = true;	
            	elseif sheet.bola1Gl == true then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola6Gl = false;
            		sheet.bola5Gl = false;
            		sheet.bola4Gl = false;
            		sheet.bola3Gl = false;
            		sheet.bola2Gl = false;
            	elseif sheet.bola1Gl == false then
            		sheet.bola10Gl = false;
            		sheet.bola9Gl = false;
            		sheet.bola8Gl = false;
            		sheet.bola7Gl = false;
            		sheet.bola6Gl = false;
            		sheet.bola5Gl = false;
            		sheet.bola4Gl = false;
            		sheet.bola3Gl = false;
            		sheet.bola2Gl = false;
            	end;
        end, obj);

    obj._e_event61 = obj.dataLink63:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Gl == true then
            		sheet.square9Gl = true;
            		sheet.square8Gl = true;
            		sheet.square7Gl = true;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square9Gl == true then
            		sheet.square10Gl = false;
            		sheet.square8Gl = true;
            		sheet.square7Gl = true;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square8Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square7Gl = true;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square7Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square6Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square5Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square4Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square3Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square2Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square3Gl = false;
            		sheet.square1Gl = true;	
            	elseif sheet.square1Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square3Gl = false;
            		sheet.square2Gl = false;
            	elseif sheet.square1Gl == false then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square3Gl = false;
            		sheet.square2Gl = false;
            	end;
        end, obj);

    obj._e_event62 = obj.dataLink64:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola10FDV == true then
            		sheet.bola9FDV = true;
            		sheet.bola8FDV = true;
            		sheet.bola7FDV = true;
            		sheet.bola6FDV = true;
            		sheet.bola5FDV = true;
            		sheet.bola4FDV = true;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola9FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola8FDV = true;
            		sheet.bola7FDV = true;
            		sheet.bola6FDV = true;
            		sheet.bola5FDV = true;
            		sheet.bola4FDV = true;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola8FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola7FDV = true;
            		sheet.bola6FDV = true;
            		sheet.bola5FDV = true;
            		sheet.bola4FDV = true;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola7FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola6FDV = true;
            		sheet.bola5FDV = true;
            		sheet.bola4FDV = true;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola6FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola5FDV = true;
            		sheet.bola4FDV = true;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola5FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola6FDV = false;
            		sheet.bola4FDV = true;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola4FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola6FDV = false;
            		sheet.bola5FDV = false;
            		sheet.bola3FDV = true;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola3FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola6FDV = false;
            		sheet.bola5FDV = false;
            		sheet.bola4FDV = false;
            		sheet.bola2FDV = true;
            		sheet.bola1FDV = true;
            	elseif sheet.bola2FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola6FDV = false;
            		sheet.bola5FDV = false;
            		sheet.bola4FDV = false;
            		sheet.bola3FDV = false;
            		sheet.bola1FDV = true;	
            	elseif sheet.bola1FDV == true then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola6FDV = false;
            		sheet.bola5FDV = false;
            		sheet.bola4FDV = false;
            		sheet.bola3FDV = false;
            		sheet.bola2FDV = false;
            	elseif sheet.bola1FDV == false then
            		sheet.bola10FDV = false;
            		sheet.bola9FDV = false;
            		sheet.bola8FDV = false;
            		sheet.bola7FDV = false;
            		sheet.bola6FDV = false;
            		sheet.bola5FDV = false;
            		sheet.bola4FDV = false;
            		sheet.bola3FDV = false;
            		sheet.bola2FDV = false;
            	end;
        end, obj);

    obj._e_event63 = obj.dataLink65:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10FDV == true then
            		sheet.square9FDV = true;
            		sheet.square8FDV = true;
            		sheet.square7FDV = true;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square9FDV == true then
            		sheet.square10FDV = false;
            		sheet.square8FDV = true;
            		sheet.square7FDV = true;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square8FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square7FDV = true;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square7FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square6FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square5FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square4FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square3FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square2FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square3FDV = false;
            		sheet.square1FDV = true;	
            	elseif sheet.square1FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square3FDV = false;
            		sheet.square2FDV = false;
            	elseif sheet.square1FDV == false then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square3FDV = false;
            		sheet.square2FDV = false;
            	end;
        end, obj);

    obj._e_event64 = obj.dataLink66:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ghost10Pes == true then
            		sheet.ghost9Pes = true;
            		sheet.ghost8Pes = true;
            		sheet.ghost7Pes = true;
            		sheet.ghost6Pes = true;
            		sheet.ghost5Pes = true;
            		sheet.ghost4Pes = true;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost9Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost8Pes = true;
            		sheet.ghost7Pes = true;
            		sheet.ghost6Pes = true;
            		sheet.ghost5Pes = true;
            		sheet.ghost4Pes = true;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost8Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost7Pes = true;
            		sheet.ghost6Pes = true;
            		sheet.ghost5Pes = true;
            		sheet.ghost4Pes = true;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost7Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost6Pes = true;
            		sheet.ghost5Pes = true;
            		sheet.ghost4Pes = true;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost6Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost5Pes = true;
            		sheet.ghost4Pes = true;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost5Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost6Pes = false;
            		sheet.ghost4Pes = true;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost4Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost6Pes = false;
            		sheet.ghost5Pes = false;
            		sheet.ghost3Pes = true;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost3Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost6Pes = false;
            		sheet.ghost5Pes = false;
            		sheet.ghost4Pes = false;
            		sheet.ghost2Pes = true;
            		sheet.ghost1Pes = true;
            	elseif sheet.ghost2Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost6Pes = false;
            		sheet.ghost5Pes = false;
            		sheet.ghost4Pes = false;
            		sheet.ghost3Pes = false;
            		sheet.ghost1Pes = true;	
            	elseif sheet.ghost1Pes == true then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost6Pes = false;
            		sheet.ghost5Pes = false;
            		sheet.ghost4Pes = false;
            		sheet.ghost3Pes = false;
            		sheet.ghost2Pes = false;
            	elseif sheet.ghost1Pes == false then
            		sheet.ghost10Pes = false;
            		sheet.ghost9Pes = false;
            		sheet.ghost8Pes = false;
            		sheet.ghost7Pes = false;
            		sheet.ghost6Pes = false;
            		sheet.ghost5Pes = false;
            		sheet.ghost4Pes = false;
            		sheet.ghost3Pes = false;
            		sheet.ghost2Pes = false;
            	end;
        end, obj);

    obj._e_event65 = obj.dataLink67:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mirror10 == true then
            		sheet.mirror9 = true;
            		sheet.mirror8 = true;
            		sheet.mirror7 = true;
            		sheet.mirror6 = true;
            		sheet.mirror5 = true;
            		sheet.mirror4 = true;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror9 == true then
            		sheet.mirror10 = false;
            		sheet.mirror8 = true;
            		sheet.mirror7 = true;
            		sheet.mirror6 = true;
            		sheet.mirror5 = true;
            		sheet.mirror4 = true;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror8 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror7 = true;
            		sheet.mirror6 = true;
            		sheet.mirror5 = true;
            		sheet.mirror4 = true;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror7 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror6 = true;
            		sheet.mirror5 = true;
            		sheet.mirror4 = true;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror6 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror5 = true;
            		sheet.mirror4 = true;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror5 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror6 = false;
            		sheet.mirror4 = true;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror4 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror6 = false;
            		sheet.mirror5 = false;
            		sheet.mirror3 = true;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror3 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror6 = false;
            		sheet.mirror5 = false;
            		sheet.mirror4 = false;
            		sheet.mirror2 = true;
            		sheet.mirror1 = true;
            	elseif sheet.mirror2 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror6 = false;
            		sheet.mirror5 = false;
            		sheet.mirror4 = false;
            		sheet.mirror3 = false;
            		sheet.mirror1 = true;	
            	elseif sheet.mirror1 == true then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror6 = false;
            		sheet.mirror5 = false;
            		sheet.mirror4 = false;
            		sheet.mirror3 = false;
            		sheet.mirror2 = false;
            	elseif sheet.mirror1 == false then
            		sheet.mirror10 = false;
            		sheet.mirror9 = false;
            		sheet.mirror8 = false;
            		sheet.mirror7 = false;
            		sheet.mirror6 = false;
            		sheet.mirror5 = false;
            		sheet.mirror4 = false;
            		sheet.mirror3 = false;
            		sheet.mirror2 = false;
            	end;
        end, obj);

    obj._e_event66 = obj.dataLink68:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Ban == true then
            		sheet.square9Ban = true;
            		sheet.square8Ban = true;
            		sheet.square7Ban = true;
            		sheet.square6Ban = true;
            		sheet.square5Ban = true;
            		sheet.square4Ban = true;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square9Ban == true then
            		sheet.square10Ban = false;
            		sheet.square8Ban = true;
            		sheet.square7Ban = true;
            		sheet.square6Ban = true;
            		sheet.square5Ban = true;
            		sheet.square4Ban = true;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square8Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square7Ban = true;
            		sheet.square6Ban = true;
            		sheet.square5Ban = true;
            		sheet.square4Ban = true;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square7Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square6Ban = true;
            		sheet.square5Ban = true;
            		sheet.square4Ban = true;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square6Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square5Ban = true;
            		sheet.square4Ban = true;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square5Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square6Ban = false;
            		sheet.square4Ban = true;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square4Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square6Ban = false;
            		sheet.square5Ban = false;
            		sheet.square3Ban = true;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square3Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square6Ban = false;
            		sheet.square5Ban = false;
            		sheet.square4Ban = false;
            		sheet.square2Ban = true;
            		sheet.square1Ban = true;
            	elseif sheet.square2Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square6Ban = false;
            		sheet.square5Ban = false;
            		sheet.square4Ban = false;
            		sheet.square3Ban = false;
            		sheet.square1Ban = true;	
            	elseif sheet.square1Ban == true then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square6Ban = false;
            		sheet.square5Ban = false;
            		sheet.square4Ban = false;
            		sheet.square3Ban = false;
            		sheet.square2Ban = false;
            	elseif sheet.square1Ban == false then
            		sheet.square10Ban = false;
            		sheet.square9Ban = false;
            		sheet.square8Ban = false;
            		sheet.square7Ban = false;
            		sheet.square6Ban = false;
            		sheet.square5Ban = false;
            		sheet.square4Ban = false;
            		sheet.square3Ban = false;
            		sheet.square2Ban = false;
            	end;
        end, obj);

    obj._e_event67 = obj.dataLink69:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola7Letal == true then
            		sheet.bola6Letal = true;
            		sheet.bola5Letal = true;
            		sheet.bola4Letal = true;
            		sheet.bola3Letal = true;
            		sheet.bola2Letal = true;
            		sheet.bola1Letal = true;
            	elseif sheet.bola6Letal == true then
            		sheet.bola7Letal = false;
            		sheet.bola5Letal = true;
            		sheet.bola4Letal = true;
            		sheet.bola3Letal = true;
            		sheet.bola2Letal = true;
            		sheet.bola1Letal = true;
            	elseif sheet.bola5Letal == true then
            		sheet.bola7Letal = false;
            		sheet.bola6Letal = false;
            		sheet.bola4Letal = true;
            		sheet.bola3Letal = true;
            		sheet.bola2Letal = true;
            		sheet.bola1Letal = true;
            	elseif sheet.bola4Letal == true then
            		sheet.bola7Letal = false;
            		sheet.bola6Letal = false;
            		sheet.bola5Letal = false;
            		sheet.bola3Letal = true;
            		sheet.bola2Letal = true;
            		sheet.bola1Letal = true;
            	elseif sheet.bola3Letal == true then
            		sheet.bola7Letal = false;
            		sheet.bola6Letal = false;
            		sheet.bola5Letal = false;
            		sheet.bola4Letal = false;
            		sheet.bola2Letal = true;
            		sheet.bola1Letal = true;
            	elseif sheet.bola2Letal == true then
            		sheet.bola7Letal = false;
            		sheet.bola6Letal = false;
            		sheet.bola5Letal = false;
            		sheet.bola4Letal = false;
            		sheet.bola3Letal = false;
            		sheet.bola1Letal = true;	
            	elseif sheet.bola1Letal == true then
            		sheet.bola7Letal = false;
            		sheet.bola6Letal = false;
            		sheet.bola5Letal = false;
            		sheet.bola4Letal = false;
            		sheet.bola3Letal = false;
            		sheet.bola2Letal = false;
            	elseif sheet.bola1Letal == false then
            		sheet.bola7Letal = false;
            		sheet.bola6Letal = false;
            		sheet.bola5Letal = false;
            		sheet.bola4Letal = false;
            		sheet.bola3Letal = false;
            		sheet.bola2Letal = false;
            	end;
        end, obj);

    obj._e_event68 = obj.dataLink70:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola7Agravado == true then
            		sheet.bola6Agravado = true;
            		sheet.bola5Agravado = true;
            		sheet.bola4Agravado = true;
            		sheet.bola3Agravado = true;
            		sheet.bola2Agravado = true;
            		sheet.bola1Agravado = true;
            	elseif sheet.bola6Agravado == true then
            		sheet.bola7Agravado = false;
            		sheet.bola5Agravado = true;
            		sheet.bola4Agravado = true;
            		sheet.bola3Agravado = true;
            		sheet.bola2Agravado = true;
            		sheet.bola1Agravado = true;
            	elseif sheet.bola5Agravado == true then
            		sheet.bola7Agravado = false;
            		sheet.bola6Agravado = false;
            		sheet.bola4Agravado = true;
            		sheet.bola3Agravado = true;
            		sheet.bola2Agravado = true;
            		sheet.bola1Agravado = true;
            	elseif sheet.bola4Agravado == true then
            		sheet.bola7Agravado = false;
            		sheet.bola6Agravado = false;
            		sheet.bola5Agravado = false;
            		sheet.bola3Agravado = true;
            		sheet.bola2Agravado = true;
            		sheet.bola1Agravado = true;
            	elseif sheet.bola3Agravado == true then
            		sheet.bola7Agravado = false;
            		sheet.bola6Agravado = false;
            		sheet.bola5Agravado = false;
            		sheet.bola4Agravado = false;
            		sheet.bola2Agravado = true;
            		sheet.bola1Agravado = true;
            	elseif sheet.bola2Agravado == true then
            		sheet.bola7Agravado = false;
            		sheet.bola6Agravado = false;
            		sheet.bola5Agravado = false;
            		sheet.bola4Agravado = false;
            		sheet.bola3Agravado = false;
            		sheet.bola1Agravado = true;	
            	elseif sheet.bola1Agravado == true then
            		sheet.bola7Agravado = false;
            		sheet.bola6Agravado = false;
            		sheet.bola5Agravado = false;
            		sheet.bola4Agravado = false;
            		sheet.bola3Agravado = false;
            		sheet.bola2Agravado = false;
            	elseif sheet.bola1Agravado == false then
            		sheet.bola7Agravado = false;
            		sheet.bola6Agravado = false;
            		sheet.bola5Agravado = false;
            		sheet.bola4Agravado = false;
            		sheet.bola3Agravado = false;
            		sheet.bola2Agravado = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink70 ~= nil then self.dataLink70:destroy(); self.dataLink70 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
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
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.dataLink68 ~= nil then self.dataLink68:destroy(); self.dataLink68 = nil; end;
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
