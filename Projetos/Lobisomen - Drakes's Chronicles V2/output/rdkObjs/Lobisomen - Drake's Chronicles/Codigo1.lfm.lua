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
    obj.dataLink1:setFields({'Pata1forca', 'Pata1destreza', 'Pata1vigor', 'Pata1carisma', 'Pata1manipu', 'Pata1apare', 'Pata1percep', 'Pata1intel', 'Pata1racio'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'Pata5forca', 'Pata4forca', 'Pata3forca', 'Pata2forca', 'Pata1forca'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'Pata5destreza', 'Pata4destreza', 'Pata3destreza', 'Pata2destreza', 'Pata1destreza'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'Pata5vigor', 'Pata4vigor', 'Pata3vigor', 'Pata2vigor', 'Pata1vigor'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'Pata5carisma', 'Pata4carisma', 'Pata3carisma', 'Pata2carisma', 'Pata1carisma'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'Pata5manipu', 'Pata4manipu', 'Pata3manipu', 'Pata2manipu', 'Pata1manipu'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'Pata5apare', 'Pata4apare', 'Pata3apare', 'Pata2apare', 'Pata1apare'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'Pata5percep', 'Pata4percep', 'Pata3percep', 'Pata2percep', 'Pata1percep'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'Pata5intel', 'Pata4intel', 'Pata3intel', 'Pata2intel', 'Pata1intel'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'Pata5racio', 'Pata4racio', 'Pata3racio', 'Pata2racio', 'Pata1racio'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'Pata5pront', 'Pata4pront', 'Pata3pront', 'Pata2pront', 'Pata1pront'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'Pata5espor', 'Pata4espor', 'Pata3espor', 'Pata2espor', 'Pata1espor'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'Pata5briga', 'Pata4briga', 'Pata3briga', 'Pata2briga', 'Pata1briga'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'Pata5esqui', 'Pata4esqui', 'Pata3esqui', 'Pata2esqui', 'Pata1esqui'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'Pata5empat', 'Pata4empat', 'Pata3empat', 'Pata2empat', 'Pata1empat'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'Pata5expre', 'Pata4expre', 'Pata3expre', 'Pata2expre', 'Pata1expre'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'Pata5intim', 'Pata4intim', 'Pata3intim', 'Pata2intim', 'Pata1intim'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'Pata5insti', 'Pata4insti', 'Pata3insti', 'Pata2insti', 'Pata1insti'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'Pata5manha', 'Pata4manha', 'Pata3manha', 'Pata2manha', 'Pata1manha'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'Pata5labia', 'Pata4labia', 'Pata3labia', 'Pata2labia', 'Pata1labia'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'Pata5empca', 'Pata4empca', 'Pata3empca', 'Pata2empca', 'Pata1empca'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'Pata5ofi', 'Pata4ofi', 'Pata3ofi', 'Pata2ofi', 'Pata1ofi'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'Pata5condu', 'Pata4condu', 'Pata3condu', 'Pata2condu', 'Pata1condu'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'Pata5etique', 'Pata4etique', 'Pata3etique', 'Pata2etique', 'Pata1etique'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'Pata5armfg', 'Pata4armfg', 'Pata3armfg', 'Pata2armfg', 'Pata1armfg'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'Pata5armbr', 'Pata4armbr', 'Pata3armbr', 'Pata2armbr', 'Pata1armbr'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'Pata5lider', 'Pata4lider', 'Pata3lider', 'Pata2lider', 'Pata1lider'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'Pata5perfo', 'Pata4perfo', 'Pata3perfo', 'Pata2perfo', 'Pata1perfo'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'Pata5furti', 'Pata4furti', 'Pata3furti', 'Pata2furti', 'Pata1furti'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'Pata5sobre', 'Pata4sobre', 'Pata3sobre', 'Pata2sobre', 'Pata1sobre'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'Pata5compu', 'Pata4compu', 'Pata3compu', 'Pata2compu', 'Pata1compu'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'Pata5enig', 'Pata4enig', 'Pata3enig', 'Pata2enig', 'Pata1enig'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'Pata5inves', 'Pata4inves', 'Pata3inves', 'Pata2inves', 'Pata1inves'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'Pata5direi', 'Pata4direi', 'Pata3direi', 'Pata2direi', 'Pata1direi'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'Pata5lingu', 'Pata4lingu', 'Pata3lingu', 'Pata2lingu', 'Pata1lingu'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'Pata5medic', 'Pata4medic', 'Pata3medic', 'Pata2medic', 'Pata1medic'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'Pata5ocult', 'Pata4ocult', 'Pata3ocult', 'Pata2ocult', 'Pata1ocult'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'Pata5polit', 'Pata4polit', 'Pata3polit', 'Pata2polit', 'Pata1polit'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'Pata5ritua', 'Pata4ritua', 'Pata3ritua', 'Pata2ritua', 'Pata1ritua'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'Pata5ciencia', 'Pata4ciencia', 'Pata3ciencia', 'Pata2ciencia', 'Pata1ciencia'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'Pata5Ant1', 'Pata4Ant1', 'Pata3Ant1', 'Pata2Ant1', 'Pata1Ant1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'Pata5Ant2', 'Pata4Ant2', 'Pata3Ant2', 'Pata2Ant2', 'Pata1Ant2'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setFields({'Pata5Ant3', 'Pata4Ant3', 'Pata3Ant3', 'Pata2Ant3', 'Pata1Ant3'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setFields({'Pata5Ant4', 'Pata4Ant4', 'Pata3Ant4', 'Pata2Ant4', 'Pata1Ant4'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj);
    obj.dataLink45:setFields({'Pata5Ant5', 'Pata4Ant5', 'Pata3Ant5', 'Pata2Ant5', 'Pata1Ant5'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj);
    obj.dataLink46:setFields({'Pata5Ant6', 'Pata4Ant6', 'Pata3Ant6', 'Pata2Ant6', 'Pata1Ant6'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj);
    obj.dataLink47:setFields({'Pata10Gl', 'Pata9Gl', 'Pata8Gl', 'Pata7Gl', 'Pata6Gl', 'Pata5Gl', 'Pata4Gl', 'Pata3Gl', 'Pata2Gl', 'Pata1Gl'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj);
    obj.dataLink48:setFields({'square10Gl', 'square9Gl', 'square8Gl', 'square7Gl', 'square6Gl', 'square5Gl', 'square4Gl', 'square3Gl', 'square2Gl', 'square1Gl'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj);
    obj.dataLink49:setFields({'Pata10Hon', 'Pata9Hon', 'Pata8Hon', 'Pata7Hon', 'Pata6Hon', 'Pata5Hon', 'Pata4Hon', 'Pata3Hon', 'Pata2Hon', 'Pata1Hon'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj);
    obj.dataLink50:setFields({'square10Hon', 'square9Hon', 'square8Hon', 'square7Hon', 'square6Hon', 'square5Hon', 'square4Hon', 'square3Hon', 'square2Hon', 'square1Hon'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj);
    obj.dataLink51:setFields({'Pata10Sab', 'Pata9Sab', 'Pata8Sab', 'Pata7Sab', 'Pata6Sab', 'Pata5Sab', 'Pata4Sab', 'Pata3Sab', 'Pata2Sab', 'Pata1Sab'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj);
    obj.dataLink52:setFields({'square10Sab', 'square9Sab', 'square8Sab', 'square7Sab', 'square6Sab', 'square5Sab', 'square4Sab', 'square3Sab', 'square2Sab', 'square1Sab'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj);
    obj.dataLink53:setFields({'Pata10F', 'Pata9F', 'Pata8F', 'Pata7F', 'Pata6F', 'Pata5F', 'Pata4F', 'Pata3F', 'Pata2F', 'Pata1F'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj);
    obj.dataLink54:setFields({'square10F', 'square9F', 'square8F', 'square7F', 'square6F', 'square5F', 'square4F', 'square3F', 'square2F', 'square1F'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj);
    obj.dataLink55:setFields({'Pata10Gno', 'Pata9Gno', 'Pata8Gno', 'Pata7Gno', 'Pata6Gno', 'Pata5Gno', 'Pata4Gno', 'Pata3Gno', 'Pata2Gno', 'Pata1Gno'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj);
    obj.dataLink56:setFields({'square10Gno', 'square9Gno', 'square8Gno', 'square7Gno', 'square6Gno', 'square5Gno', 'square4Gno', 'square3Gno', 'square2Gno', 'square1Gno'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj);
    obj.dataLink57:setFields({'Pata10FDV', 'Pata9FDV', 'Pata8FDV', 'Pata7FDV', 'Pata6FDV', 'Pata5FDV', 'Pata4FDV', 'Pata3FDV', 'Pata2FDV', 'Pata1FDV'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj);
    obj.dataLink58:setFields({'square10FDV', 'square9FDV', 'square8FDV', 'square7FDV', 'square6FDV', 'square5FDV', 'square4FDV', 'square3FDV', 'square2FDV', 'square1FDV'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj);
    obj.dataLink59:setFields({'Pata7Letal', 'Pata6Letal', 'Pata5Letal', 'Pata4Letal', 'Pata3Letal', 'Pata2Letal', 'Pata1Letal'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj);
    obj.dataLink60:setFields({'Pata7Agravado', 'Pata6Agravado', 'Pata5Agravado', 'Pata4Agravado', 'Pata3Agravado', 'Pata2Agravado', 'Pata1Agravado'});
    obj.dataLink60:setName("dataLink60");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5forca == true then
            		sheet.Pata4forca = true;
            		sheet.Pata3forca = true;
            		sheet.Pata2forca = true;
            		sheet.Pata1forca = true;
            	elseif sheet.Pata4forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata3forca = true;
            		sheet.Pata2forca = true;
            		sheet.Pata1forca = true;
            	elseif sheet.Pata3forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata2forca = true;
            		sheet.Pata1forca = true;
            	elseif sheet.Pata2forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata3forca = false;
            		sheet.Pata1forca = true;	
            	elseif sheet.Pata1forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata3forca = false;
            		sheet.Pata2forca = false;
            	elseif sheet.Pata1forca == false then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata3forca = false;
            		sheet.Pata2forca = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5destreza == true then
            		sheet.Pata4destreza = true;
            		sheet.Pata3destreza = true;
            		sheet.Pata2destreza = true;
            		sheet.Pata1destreza = true;
            	elseif sheet.Pata4destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata3destreza = true;
            		sheet.Pata2destreza = true;
            		sheet.Pata1destreza = true;
            	elseif sheet.Pata3destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata2destreza = true;
            		sheet.Pata1destreza = true;
            	elseif sheet.Pata2destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata3destreza = false;
            		sheet.Pata1destreza = true;	
            	elseif sheet.Pata1destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata3destreza = false;
            		sheet.Pata2destreza = false;
            	elseif sheet.Pata1destreza == false then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata3destreza = false;
            		sheet.Pata2destreza = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5vigor == true then
            		sheet.Pata4vigor = true;
            		sheet.Pata3vigor = true;
            		sheet.Pata2vigor = true;
            		sheet.Pata1vigor = true;
            	elseif sheet.Pata4vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata3vigor = true;
            		sheet.Pata2vigor = true;
            		sheet.Pata1vigor = true;
            	elseif sheet.Pata3vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata2vigor = true;
            		sheet.Pata1vigor = true;
            	elseif sheet.Pata2vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata3vigor = false;
            		sheet.Pata1vigor = true;	
            	elseif sheet.Pata1vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata3vigor = false;
            		sheet.Pata2vigor = false;
            	elseif sheet.Pata1vigor == false then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata3vigor = false;
            		sheet.Pata2vigor = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5carisma == true then
            		sheet.Pata4carisma = true;
            		sheet.Pata3carisma = true;
            		sheet.Pata2carisma = true;
            		sheet.Pata1carisma = true;
            	elseif sheet.Pata4carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata3carisma = true;
            		sheet.Pata2carisma = true;
            		sheet.Pata1carisma = true;
            	elseif sheet.Pata3carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata2carisma = true;
            		sheet.Pata1carisma = true;
            	elseif sheet.Pata2carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata3carisma = false;
            		sheet.Pata1carisma = true;	
            	elseif sheet.Pata1carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata3carisma = false;
            		sheet.Pata2carisma = false;
            	elseif sheet.Pata1carisma == false then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata3carisma = false;
            		sheet.Pata2carisma = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5manipu == true then
            		sheet.Pata4manipu = true;
            		sheet.Pata3manipu = true;
            		sheet.Pata2manipu = true;
            		sheet.Pata1manipu = true;
            	elseif sheet.Pata4manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata3manipu = true;
            		sheet.Pata2manipu = true;
            		sheet.Pata1manipu = true;
            	elseif sheet.Pata3manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata2manipu = true;
            		sheet.Pata1manipu = true;
            	elseif sheet.Pata2manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata3manipu = false;
            		sheet.Pata1manipu = true;	
            	elseif sheet.Pata1manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata3manipu = false;
            		sheet.Pata2manipu = false;
            	elseif sheet.Pata1manipu == false then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata3manipu = false;
            		sheet.Pata2manipu = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5apare == true then
            		sheet.Pata4apare = true;
            		sheet.Pata3apare = true;
            		sheet.Pata2apare = true;
            		sheet.Pata1apare = true;
            	elseif sheet.Pata4apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata3apare = true;
            		sheet.Pata2apare = true;
            		sheet.Pata1apare = true;
            	elseif sheet.Pata3apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata2apare = true;
            		sheet.Pata1apare = true;
            	elseif sheet.Pata2apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata3apare = false;
            		sheet.Pata1apare = true;	
            	elseif sheet.Pata1apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata3apare = false;
            		sheet.Pata2apare = false;
            	elseif sheet.Pata1apare == false then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata3apare = false;
            		sheet.Pata2apare = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5percep == true then
            		sheet.Pata4percep = true;
            		sheet.Pata3percep = true;
            		sheet.Pata2percep = true;
            		sheet.Pata1percep = true;
            	elseif sheet.Pata4percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata3percep = true;
            		sheet.Pata2percep = true;
            		sheet.Pata1percep = true;
            	elseif sheet.Pata3percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata2percep = true;
            		sheet.Pata1percep = true;
            	elseif sheet.Pata2percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata3percep = false;
            		sheet.Pata1percep = true;	
            	elseif sheet.Pata1percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata3percep = false;
            		sheet.Pata2percep = false;
            	elseif sheet.Pata1percep == false then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata3percep = false;
            		sheet.Pata2percep = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5intel == true then
            		sheet.Pata4intel = true;
            		sheet.Pata3intel = true;
            		sheet.Pata2intel = true;
            		sheet.Pata1intel = true;
            	elseif sheet.Pata4intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata3intel = true;
            		sheet.Pata2intel = true;
            		sheet.Pata1intel = true;
            	elseif sheet.Pata3intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata2intel = true;
            		sheet.Pata1intel = true;
            	elseif sheet.Pata2intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata3intel = false;
            		sheet.Pata1intel = true;	
            	elseif sheet.Pata1intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata3intel = false;
            		sheet.Pata2intel = false;
            	elseif sheet.Pata1intel == false then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata3intel = false;
            		sheet.Pata2intel = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5racio == true then
            		sheet.Pata4racio = true;
            		sheet.Pata3racio = true;
            		sheet.Pata2racio = true;
            		sheet.Pata1racio = true;
            	elseif sheet.Pata4racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata3racio = true;
            		sheet.Pata2racio = true;
            		sheet.Pata1racio = true;
            	elseif sheet.Pata3racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata2racio = true;
            		sheet.Pata1racio = true;
            	elseif sheet.Pata2racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata3racio = false;
            		sheet.Pata1racio = true;	
            	elseif sheet.Pata1racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata3racio = false;
            		sheet.Pata2racio = false;
            	elseif sheet.Pata1racio == false then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata3racio = false;
            		sheet.Pata2racio = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5pront == true then
            		sheet.Pata4pront = true;
            		sheet.Pata3pront = true;
            		sheet.Pata2pront = true;
            		sheet.Pata1pront = true;
            	elseif sheet.Pata4pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata3pront = true;
            		sheet.Pata2pront = true;
            		sheet.Pata1pront = true;
            	elseif sheet.Pata3pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata2pront = true;
            		sheet.Pata1pront = true;
            	elseif sheet.Pata2pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata3pront = false;
            		sheet.Pata1pront = true;	
            	elseif sheet.Pata1pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata3pront = false;
            		sheet.Pata2pront = false;
            	elseif sheet.Pata1pront == false then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata3pront = false;
            		sheet.Pata2pront = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5espor == true then
            		sheet.Pata4espor = true;
            		sheet.Pata3espor = true;
            		sheet.Pata2espor = true;
            		sheet.Pata1espor = true;
            	elseif sheet.Pata4espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata3espor = true;
            		sheet.Pata2espor = true;
            		sheet.Pata1espor = true;
            	elseif sheet.Pata3espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata2espor = true;
            		sheet.Pata1espor = true;
            	elseif sheet.Pata2espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata3espor = false;
            		sheet.Pata1espor = true;	
            	elseif sheet.Pata1espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata3espor = false;
            		sheet.Pata2espor = false;
            	elseif sheet.Pata1espor == false then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata3espor = false;
            		sheet.Pata2espor = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5briga == true then
            		sheet.Pata4briga = true;
            		sheet.Pata3briga = true;
            		sheet.Pata2briga = true;
            		sheet.Pata1briga = true;
            	elseif sheet.Pata4briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata3briga = true;
            		sheet.Pata2briga = true;
            		sheet.Pata1briga = true;
            	elseif sheet.Pata3briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata2briga = true;
            		sheet.Pata1briga = true;
            	elseif sheet.Pata2briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata3briga = false;
            		sheet.Pata1briga = true;	
            	elseif sheet.Pata1briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata3briga = false;
            		sheet.Pata2briga = false;
            	elseif sheet.Pata1briga == false then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata3briga = false;
            		sheet.Pata2briga = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5esqui == true then
            		sheet.Pata4esqui = true;
            		sheet.Pata3esqui = true;
            		sheet.Pata2esqui = true;
            		sheet.Pata1esqui = true;
            	elseif sheet.Pata4esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata3esqui = true;
            		sheet.Pata2esqui = true;
            		sheet.Pata1esqui = true;
            	elseif sheet.Pata3esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata2esqui = true;
            		sheet.Pata1esqui = true;
            	elseif sheet.Pata2esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata3esqui = false;
            		sheet.Pata1esqui = true;	
            	elseif sheet.Pata1esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata3esqui = false;
            		sheet.Pata2esqui = false;
            	elseif sheet.Pata1esqui == false then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata3esqui = false;
            		sheet.Pata2esqui = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5empat == true then
            		sheet.Pata4empat = true;
            		sheet.Pata3empat = true;
            		sheet.Pata2empat = true;
            		sheet.Pata1empat = true;
            	elseif sheet.Pata4empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata3empat = true;
            		sheet.Pata2empat = true;
            		sheet.Pata1empat = true;
            	elseif sheet.Pata3empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata2empat = true;
            		sheet.Pata1empat = true;
            	elseif sheet.Pata2empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata3empat = false;
            		sheet.Pata1empat = true;	
            	elseif sheet.Pata1empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata3empat = false;
            		sheet.Pata2empat = false;
            	elseif sheet.Pata1empat == false then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata3empat = false;
            		sheet.Pata2empat = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5expre == true then
            		sheet.Pata4expre = true;
            		sheet.Pata3expre = true;
            		sheet.Pata2expre = true;
            		sheet.Pata1expre = true;
            	elseif sheet.Pata4expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata3expre = true;
            		sheet.Pata2expre = true;
            		sheet.Pata1expre = true;
            	elseif sheet.Pata3expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata2expre = true;
            		sheet.Pata1expre = true;
            	elseif sheet.Pata2expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata3expre = false;
            		sheet.Pata1expre = true;	
            	elseif sheet.Pata1expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata3expre = false;
            		sheet.Pata2expre = false;
            	elseif sheet.Pata1expre == false then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata3expre = false;
            		sheet.Pata2expre = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5intim == true then
            		sheet.Pata4intim = true;
            		sheet.Pata3intim = true;
            		sheet.Pata2intim = true;
            		sheet.Pata1intim = true;
            	elseif sheet.Pata4intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata3intim = true;
            		sheet.Pata2intim = true;
            		sheet.Pata1intim = true;
            	elseif sheet.Pata3intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata2intim = true;
            		sheet.Pata1intim = true;
            	elseif sheet.Pata2intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata3intim = false;
            		sheet.Pata1intim = true;	
            	elseif sheet.Pata1intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata3intim = false;
            		sheet.Pata2intim = false;
            	elseif sheet.Pata1intim == false then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata3intim = false;
            		sheet.Pata2intim = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5insti == true then
            		sheet.Pata4insti = true;
            		sheet.Pata3insti = true;
            		sheet.Pata2insti = true;
            		sheet.Pata1insti = true;
            	elseif sheet.Pata4insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata3insti = true;
            		sheet.Pata2insti = true;
            		sheet.Pata1insti = true;
            	elseif sheet.Pata3insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata2insti = true;
            		sheet.Pata1insti = true;
            	elseif sheet.Pata2insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata3insti = false;
            		sheet.Pata1insti = true;	
            	elseif sheet.Pata1insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata3insti = false;
            		sheet.Pata2insti = false;
            	elseif sheet.Pata1insti == false then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata3insti = false;
            		sheet.Pata2insti = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5manha == true then
            		sheet.Pata4manha = true;
            		sheet.Pata3manha = true;
            		sheet.Pata2manha = true;
            		sheet.Pata1manha = true;
            	elseif sheet.Pata4manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata3manha = true;
            		sheet.Pata2manha = true;
            		sheet.Pata1manha = true;
            	elseif sheet.Pata3manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata2manha = true;
            		sheet.Pata1manha = true;
            	elseif sheet.Pata2manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata3manha = false;
            		sheet.Pata1manha = true;	
            	elseif sheet.Pata1manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata3manha = false;
            		sheet.Pata2manha = false;
            	elseif sheet.Pata1manha == false then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata3manha = false;
            		sheet.Pata2manha = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5labia == true then
            		sheet.Pata4labia = true;
            		sheet.Pata3labia = true;
            		sheet.Pata2labia = true;
            		sheet.Pata1labia = true;
            	elseif sheet.Pata4labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata3labia = true;
            		sheet.Pata2labia = true;
            		sheet.Pata1labia = true;
            	elseif sheet.Pata3labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata2labia = true;
            		sheet.Pata1labia = true;
            	elseif sheet.Pata2labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata3labia = false;
            		sheet.Pata1labia = true;	
            	elseif sheet.Pata1labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata3labia = false;
            		sheet.Pata2labia = false;
            	elseif sheet.Pata1labia == false then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata3labia = false;
            		sheet.Pata2labia = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5empca == true then
            		sheet.Pata4empca = true;
            		sheet.Pata3empca = true;
            		sheet.Pata2empca = true;
            		sheet.Pata1empca = true;
            	elseif sheet.Pata4empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata3empca = true;
            		sheet.Pata2empca = true;
            		sheet.Pata1empca = true;
            	elseif sheet.Pata3empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata2empca = true;
            		sheet.Pata1empca = true;
            	elseif sheet.Pata2empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata3empca = false;
            		sheet.Pata1empca = true;	
            	elseif sheet.Pata1empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata3empca = false;
            		sheet.Pata2empca = false;
            	elseif sheet.Pata1empca == false then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata3empca = false;
            		sheet.Pata2empca = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ofi == true then
            		sheet.Pata4ofi = true;
            		sheet.Pata3ofi = true;
            		sheet.Pata2ofi = true;
            		sheet.Pata1ofi = true;
            	elseif sheet.Pata4ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata3ofi = true;
            		sheet.Pata2ofi = true;
            		sheet.Pata1ofi = true;
            	elseif sheet.Pata3ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata2ofi = true;
            		sheet.Pata1ofi = true;
            	elseif sheet.Pata2ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata3ofi = false;
            		sheet.Pata1ofi = true;	
            	elseif sheet.Pata1ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata3ofi = false;
            		sheet.Pata2ofi = false;
            	elseif sheet.Pata1ofi == false then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata3ofi = false;
            		sheet.Pata2ofi = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5condu == true then
            		sheet.Pata4condu = true;
            		sheet.Pata3condu = true;
            		sheet.Pata2condu = true;
            		sheet.Pata1condu = true;
            	elseif sheet.Pata4condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata3condu = true;
            		sheet.Pata2condu = true;
            		sheet.Pata1condu = true;
            	elseif sheet.Pata3condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata2condu = true;
            		sheet.Pata1condu = true;
            	elseif sheet.Pata2condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata3condu = false;
            		sheet.Pata1condu = true;	
            	elseif sheet.Pata1condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata3condu = false;
            		sheet.Pata2condu = false;
            	elseif sheet.Pata1condu == false then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata3condu = false;
            		sheet.Pata2condu = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5etique == true then
            		sheet.Pata4etique = true;
            		sheet.Pata3etique = true;
            		sheet.Pata2etique = true;
            		sheet.Pata1etique = true;
            	elseif sheet.Pata4etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata3etique = true;
            		sheet.Pata2etique = true;
            		sheet.Pata1etique = true;
            	elseif sheet.Pata3etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata2etique = true;
            		sheet.Pata1etique = true;
            	elseif sheet.Pata2etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata3etique = false;
            		sheet.Pata1etique = true;	
            	elseif sheet.Pata1etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata3etique = false;
            		sheet.Pata2etique = false;
            	elseif sheet.Pata1etique == false then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata3etique = false;
            		sheet.Pata2etique = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5armfg == true then
            		sheet.Pata4armfg = true;
            		sheet.Pata3armfg = true;
            		sheet.Pata2armfg = true;
            		sheet.Pata1armfg = true;
            	elseif sheet.Pata4armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata3armfg = true;
            		sheet.Pata2armfg = true;
            		sheet.Pata1armfg = true;
            	elseif sheet.Pata3armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata2armfg = true;
            		sheet.Pata1armfg = true;
            	elseif sheet.Pata2armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata3armfg = false;
            		sheet.Pata1armfg = true;	
            	elseif sheet.Pata1armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata3armfg = false;
            		sheet.Pata2armfg = false;
            	elseif sheet.Pata1armfg == false then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata3armfg = false;
            		sheet.Pata2armfg = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5armbr == true then
            		sheet.Pata4armbr = true;
            		sheet.Pata3armbr = true;
            		sheet.Pata2armbr = true;
            		sheet.Pata1armbr = true;
            	elseif sheet.Pata4armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata3armbr = true;
            		sheet.Pata2armbr = true;
            		sheet.Pata1armbr = true;
            	elseif sheet.Pata3armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata2armbr = true;
            		sheet.Pata1armbr = true;
            	elseif sheet.Pata2armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata3armbr = false;
            		sheet.Pata1armbr = true;	
            	elseif sheet.Pata1armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata3armbr = false;
            		sheet.Pata2armbr = false;
            	elseif sheet.Pata1armbr == false then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata3armbr = false;
            		sheet.Pata2armbr = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5lider == true then
            		sheet.Pata4lider = true;
            		sheet.Pata3lider = true;
            		sheet.Pata2lider = true;
            		sheet.Pata1lider = true;
            	elseif sheet.Pata4lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata3lider = true;
            		sheet.Pata2lider = true;
            		sheet.Pata1lider = true;
            	elseif sheet.Pata3lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata2lider = true;
            		sheet.Pata1lider = true;
            	elseif sheet.Pata2lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata3lider = false;
            		sheet.Pata1lider = true;	
            	elseif sheet.Pata1lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata3lider = false;
            		sheet.Pata2lider = false;
            	elseif sheet.Pata1lider == false then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata3lider = false;
            		sheet.Pata2lider = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5perfo == true then
            		sheet.Pata4perfo = true;
            		sheet.Pata3perfo = true;
            		sheet.Pata2perfo = true;
            		sheet.Pata1perfo = true;
            	elseif sheet.Pata4perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata3perfo = true;
            		sheet.Pata2perfo = true;
            		sheet.Pata1perfo = true;
            	elseif sheet.Pata3perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata2perfo = true;
            		sheet.Pata1perfo = true;
            	elseif sheet.Pata2perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata3perfo = false;
            		sheet.Pata1perfo = true;	
            	elseif sheet.Pata1perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata3perfo = false;
            		sheet.Pata2perfo = false;
            	elseif sheet.Pata1perfo == false then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata3perfo = false;
            		sheet.Pata2perfo = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5furti == true then
            		sheet.Pata4furti = true;
            		sheet.Pata3furti = true;
            		sheet.Pata2furti = true;
            		sheet.Pata1furti = true;
            	elseif sheet.Pata4furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata3furti = true;
            		sheet.Pata2furti = true;
            		sheet.Pata1furti = true;
            	elseif sheet.Pata3furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata2furti = true;
            		sheet.Pata1furti = true;
            	elseif sheet.Pata2furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata3furti = false;
            		sheet.Pata1furti = true;	
            	elseif sheet.Pata1furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata3furti = false;
            		sheet.Pata2furti = false;
            	elseif sheet.Pata1furti == false then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata3furti = false;
            		sheet.Pata2furti = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5sobre == true then
            		sheet.Pata4sobre = true;
            		sheet.Pata3sobre = true;
            		sheet.Pata2sobre = true;
            		sheet.Pata1sobre = true;
            	elseif sheet.Pata4sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata3sobre = true;
            		sheet.Pata2sobre = true;
            		sheet.Pata1sobre = true;
            	elseif sheet.Pata3sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata2sobre = true;
            		sheet.Pata1sobre = true;
            	elseif sheet.Pata2sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata3sobre = false;
            		sheet.Pata1sobre = true;	
            	elseif sheet.Pata1sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata3sobre = false;
            		sheet.Pata2sobre = false;
            	elseif sheet.Pata1sobre == false then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata3sobre = false;
            		sheet.Pata2sobre = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5compu == true then
            		sheet.Pata4compu = true;
            		sheet.Pata3compu = true;
            		sheet.Pata2compu = true;
            		sheet.Pata1compu = true;
            	elseif sheet.Pata4compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata3compu = true;
            		sheet.Pata2compu = true;
            		sheet.Pata1compu = true;
            	elseif sheet.Pata3compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata2compu = true;
            		sheet.Pata1compu = true;
            	elseif sheet.Pata2compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata3compu = false;
            		sheet.Pata1compu = true;	
            	elseif sheet.Pata1compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata3compu = false;
            		sheet.Pata2compu = false;
            	elseif sheet.Pata1compu == false then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata3compu = false;
            		sheet.Pata2compu = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5enig == true then
            		sheet.Pata4enig = true;
            		sheet.Pata3enig = true;
            		sheet.Pata2enig = true;
            		sheet.Pata1enig = true;
            	elseif sheet.Pata4enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata3enig = true;
            		sheet.Pata2enig = true;
            		sheet.Pata1enig = true;
            	elseif sheet.Pata3enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata2enig = true;
            		sheet.Pata1enig = true;
            	elseif sheet.Pata2enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata3enig = false;
            		sheet.Pata1enig = true;	
            	elseif sheet.Pata1enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata3enig = false;
            		sheet.Pata2enig = false;
            	elseif sheet.Pata1enig == false then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata3enig = false;
            		sheet.Pata2enig = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5inves == true then
            		sheet.Pata4inves = true;
            		sheet.Pata3inves = true;
            		sheet.Pata2inves = true;
            		sheet.Pata1inves = true;
            	elseif sheet.Pata4inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata3inves = true;
            		sheet.Pata2inves = true;
            		sheet.Pata1inves = true;
            	elseif sheet.Pata3inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata2inves = true;
            		sheet.Pata1inves = true;
            	elseif sheet.Pata2inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata3inves = false;
            		sheet.Pata1inves = true;	
            	elseif sheet.Pata1inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata3inves = false;
            		sheet.Pata2inves = false;
            	elseif sheet.Pata1inves == false then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata3inves = false;
            		sheet.Pata2inves = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5direi == true then
            		sheet.Pata4direi = true;
            		sheet.Pata3direi = true;
            		sheet.Pata2direi = true;
            		sheet.Pata1direi = true;
            	elseif sheet.Pata4direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata3direi = true;
            		sheet.Pata2direi = true;
            		sheet.Pata1direi = true;
            	elseif sheet.Pata3direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata2direi = true;
            		sheet.Pata1direi = true;
            	elseif sheet.Pata2direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata3direi = false;
            		sheet.Pata1direi = true;	
            	elseif sheet.Pata1direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata3direi = false;
            		sheet.Pata2direi = false;
            	elseif sheet.Pata1direi == false then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata3direi = false;
            		sheet.Pata2direi = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5lingu == true then
            		sheet.Pata4lingu = true;
            		sheet.Pata3lingu = true;
            		sheet.Pata2lingu = true;
            		sheet.Pata1lingu = true;
            	elseif sheet.Pata4lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata3lingu = true;
            		sheet.Pata2lingu = true;
            		sheet.Pata1lingu = true;
            	elseif sheet.Pata3lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata2lingu = true;
            		sheet.Pata1lingu = true;
            	elseif sheet.Pata2lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata3lingu = false;
            		sheet.Pata1lingu = true;	
            	elseif sheet.Pata1lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata3lingu = false;
            		sheet.Pata2lingu = false;
            	elseif sheet.Pata1lingu == false then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata3lingu = false;
            		sheet.Pata2lingu = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5medic == true then
            		sheet.Pata4medic = true;
            		sheet.Pata3medic = true;
            		sheet.Pata2medic = true;
            		sheet.Pata1medic = true;
            	elseif sheet.Pata4medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata3medic = true;
            		sheet.Pata2medic = true;
            		sheet.Pata1medic = true;
            	elseif sheet.Pata3medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata2medic = true;
            		sheet.Pata1medic = true;
            	elseif sheet.Pata2medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata3medic = false;
            		sheet.Pata1medic = true;	
            	elseif sheet.Pata1medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata3medic = false;
            		sheet.Pata2medic = false;
            	elseif sheet.Pata1medic == false then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata3medic = false;
            		sheet.Pata2medic = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ocult == true then
            		sheet.Pata4ocult = true;
            		sheet.Pata3ocult = true;
            		sheet.Pata2ocult = true;
            		sheet.Pata1ocult = true;
            	elseif sheet.Pata4ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata3ocult = true;
            		sheet.Pata2ocult = true;
            		sheet.Pata1ocult = true;
            	elseif sheet.Pata3ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata2ocult = true;
            		sheet.Pata1ocult = true;
            	elseif sheet.Pata2ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata3ocult = false;
            		sheet.Pata1ocult = true;	
            	elseif sheet.Pata1ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata3ocult = false;
            		sheet.Pata2ocult = false;
            	elseif sheet.Pata1ocult == false then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata3ocult = false;
            		sheet.Pata2ocult = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5polit == true then
            		sheet.Pata4polit = true;
            		sheet.Pata3polit = true;
            		sheet.Pata2polit = true;
            		sheet.Pata1polit = true;
            	elseif sheet.Pata4polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata3polit = true;
            		sheet.Pata2polit = true;
            		sheet.Pata1polit = true;
            	elseif sheet.Pata3polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata2polit = true;
            		sheet.Pata1polit = true;
            	elseif sheet.Pata2polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata3polit = false;
            		sheet.Pata1polit = true;	
            	elseif sheet.Pata1polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata3polit = false;
            		sheet.Pata2polit = false;
            	elseif sheet.Pata1polit == false then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata3polit = false;
            		sheet.Pata2polit = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ritua == true then
            		sheet.Pata4ritua = true;
            		sheet.Pata3ritua = true;
            		sheet.Pata2ritua = true;
            		sheet.Pata1ritua = true;
            	elseif sheet.Pata4ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata3ritua = true;
            		sheet.Pata2ritua = true;
            		sheet.Pata1ritua = true;
            	elseif sheet.Pata3ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata2ritua = true;
            		sheet.Pata1ritua = true;
            	elseif sheet.Pata2ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata3ritua = false;
            		sheet.Pata1ritua = true;	
            	elseif sheet.Pata1ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata3ritua = false;
            		sheet.Pata2ritua = false;
            	elseif sheet.Pata1ritua == false then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata3ritua = false;
            		sheet.Pata2ritua = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ciencia == true then
            		sheet.Pata4ciencia = true;
            		sheet.Pata3ciencia = true;
            		sheet.Pata2ciencia = true;
            		sheet.Pata1ciencia = true;
            	elseif sheet.Pata4ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata3ciencia = true;
            		sheet.Pata2ciencia = true;
            		sheet.Pata1ciencia = true;
            	elseif sheet.Pata3ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata2ciencia = true;
            		sheet.Pata1ciencia = true;
            	elseif sheet.Pata2ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata3ciencia = false;
            		sheet.Pata1ciencia = true;	
            	elseif sheet.Pata1ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata3ciencia = false;
            		sheet.Pata2ciencia = false;
            	elseif sheet.Pata1ciencia == false then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata3ciencia = false;
            		sheet.Pata2ciencia = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant1 == true then
            		sheet.Pata4Ant1 = true;
            		sheet.Pata3Ant1 = true;
            		sheet.Pata2Ant1 = true;
            		sheet.Pata1Ant1 = true;
            	elseif sheet.Pata4Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata3Ant1 = true;
            		sheet.Pata2Ant1 = true;
            		sheet.Pata1Ant1 = true;
            	elseif sheet.Pata3Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata2Ant1 = true;
            		sheet.Pata1Ant1 = true;
            	elseif sheet.Pata2Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata3Ant1 = false;
            		sheet.Pata1Ant1 = true;	
            	elseif sheet.Pata1Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata3Ant1 = false;
            		sheet.Pata2Ant1 = false;
            	elseif sheet.Pata1Ant1 == false then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata3Ant1 = false;
            		sheet.Pata2Ant1 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant2 == true then
            		sheet.Pata4Ant2 = true;
            		sheet.Pata3Ant2 = true;
            		sheet.Pata2Ant2 = true;
            		sheet.Pata1Ant2 = true;
            	elseif sheet.Pata4Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata3Ant2 = true;
            		sheet.Pata2Ant2 = true;
            		sheet.Pata1Ant2 = true;
            	elseif sheet.Pata3Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata2Ant2 = true;
            		sheet.Pata1Ant2 = true;
            	elseif sheet.Pata2Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata3Ant2 = false;
            		sheet.Pata1Ant2 = true;	
            	elseif sheet.Pata1Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata3Ant2 = false;
            		sheet.Pata2Ant2 = false;
            	elseif sheet.Pata1Ant2 == false then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata3Ant2 = false;
            		sheet.Pata2Ant2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant3 == true then
            		sheet.Pata4Ant3 = true;
            		sheet.Pata3Ant3 = true;
            		sheet.Pata2Ant3 = true;
            		sheet.Pata1Ant3 = true;
            	elseif sheet.Pata4Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata3Ant3 = true;
            		sheet.Pata2Ant3 = true;
            		sheet.Pata1Ant3 = true;
            	elseif sheet.Pata3Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata2Ant3 = true;
            		sheet.Pata1Ant3 = true;
            	elseif sheet.Pata2Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata3Ant3 = false;
            		sheet.Pata1Ant3 = true;	
            	elseif sheet.Pata1Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata3Ant3 = false;
            		sheet.Pata2Ant3 = false;
            	elseif sheet.Pata1Ant3 == false then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata3Ant3 = false;
            		sheet.Pata2Ant3 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant4 == true then
            		sheet.Pata4Ant4 = true;
            		sheet.Pata3Ant4 = true;
            		sheet.Pata2Ant4 = true;
            		sheet.Pata1Ant4 = true;
            	elseif sheet.Pata4Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata3Ant4 = true;
            		sheet.Pata2Ant4 = true;
            		sheet.Pata1Ant4 = true;
            	elseif sheet.Pata3Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata2Ant4 = true;
            		sheet.Pata1Ant4 = true;
            	elseif sheet.Pata2Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata3Ant4 = false;
            		sheet.Pata1Ant4 = true;	
            	elseif sheet.Pata1Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata3Ant4 = false;
            		sheet.Pata2Ant4 = false;
            	elseif sheet.Pata1Ant4 == false then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata3Ant4 = false;
            		sheet.Pata2Ant4 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant5 == true then
            		sheet.Pata4Ant5 = true;
            		sheet.Pata3Ant5 = true;
            		sheet.Pata2Ant5 = true;
            		sheet.Pata1Ant5 = true;
            	elseif sheet.Pata4Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata3Ant5 = true;
            		sheet.Pata2Ant5 = true;
            		sheet.Pata1Ant5 = true;
            	elseif sheet.Pata3Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata2Ant5 = true;
            		sheet.Pata1Ant5 = true;
            	elseif sheet.Pata2Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata3Ant5 = false;
            		sheet.Pata1Ant5 = true;	
            	elseif sheet.Pata1Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata3Ant5 = false;
            		sheet.Pata2Ant5 = false;
            	elseif sheet.Pata1Ant5 == false then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata3Ant5 = false;
            		sheet.Pata2Ant5 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant6 == true then
            		sheet.Pata4Ant6 = true;
            		sheet.Pata3Ant6 = true;
            		sheet.Pata2Ant6 = true;
            		sheet.Pata1Ant6 = true;
            	elseif sheet.Pata4Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata3Ant6 = true;
            		sheet.Pata2Ant6 = true;
            		sheet.Pata1Ant6 = true;
            	elseif sheet.Pata3Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata2Ant6 = true;
            		sheet.Pata1Ant6 = true;
            	elseif sheet.Pata2Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata3Ant6 = false;
            		sheet.Pata1Ant6 = true;	
            	elseif sheet.Pata1Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata3Ant6 = false;
            		sheet.Pata2Ant6 = false;
            	elseif sheet.Pata1Ant6 == false then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata3Ant6 = false;
            		sheet.Pata2Ant6 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Gl == true then
            		sheet.Pata9Gl = true;
            		sheet.Pata8Gl = true;
            		sheet.Pata7Gl = true;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata9Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata8Gl = true;
            		sheet.Pata7Gl = true;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata8Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata7Gl = true;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata7Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata6Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata5Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata4Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata3Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata2Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata3Gl = false;
            		sheet.Pata1Gl = true;	
            	elseif sheet.Pata1Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata3Gl = false;
            		sheet.Pata2Gl = false;
            	elseif sheet.Pata1Gl == false then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata3Gl = false;
            		sheet.Pata2Gl = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
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

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Hon == true then
            		sheet.Pata9Hon = true;
            		sheet.Pata8Hon = true;
            		sheet.Pata7Hon = true;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata9Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata8Hon = true;
            		sheet.Pata7Hon = true;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata8Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata7Hon = true;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata7Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata6Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata5Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata4Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata3Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata2Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata3Hon = false;
            		sheet.Pata1Hon = true;	
            	elseif sheet.Pata1Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata3Hon = false;
            		sheet.Pata2Hon = false;
            	elseif sheet.Pata1Hon == false then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata3Hon = false;
            		sheet.Pata2Hon = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Hon == true then
            		sheet.square9Hon = true;
            		sheet.square8Hon = true;
            		sheet.square7Hon = true;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square9Hon == true then
            		sheet.square10Hon = false;
            		sheet.square8Hon = true;
            		sheet.square7Hon = true;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square8Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square7Hon = true;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square7Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square6Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square5Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square4Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square3Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square2Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square3Hon = false;
            		sheet.square1Hon = true;	
            	elseif sheet.square1Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square3Hon = false;
            		sheet.square2Hon = false;
            	elseif sheet.square1Hon == false then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square3Hon = false;
            		sheet.square2Hon = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Sab == true then
            		sheet.Pata9Sab = true;
            		sheet.Pata8Sab = true;
            		sheet.Pata7Sab = true;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata9Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata8Sab = true;
            		sheet.Pata7Sab = true;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata8Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata7Sab = true;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata7Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata6Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata5Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata4Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata3Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata2Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata3Sab = false;
            		sheet.Pata1Sab = true;	
            	elseif sheet.Pata1Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata3Sab = false;
            		sheet.Pata2Sab = false;
            	elseif sheet.Pata1Sab == false then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata3Sab = false;
            		sheet.Pata2Sab = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Sab == true then
            		sheet.square9Sab = true;
            		sheet.square8Sab = true;
            		sheet.square7Sab = true;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square9Sab == true then
            		sheet.square10Sab = false;
            		sheet.square8Sab = true;
            		sheet.square7Sab = true;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square8Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square7Sab = true;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square7Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square6Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square5Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square4Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square3Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square2Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square3Sab = false;
            		sheet.square1Sab = true;	
            	elseif sheet.square1Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square3Sab = false;
            		sheet.square2Sab = false;
            	elseif sheet.square1Sab == false then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square3Sab = false;
            		sheet.square2Sab = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10F == true then
            		sheet.Pata9F = true;
            		sheet.Pata8F = true;
            		sheet.Pata7F = true;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata9F == true then
            		sheet.Pata10F = false;
            		sheet.Pata8F = true;
            		sheet.Pata7F = true;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata8F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata7F = true;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata7F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata6F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata5F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata4F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata3F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata2F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata3F = false;
            		sheet.Pata1F = true;	
            	elseif sheet.Pata1F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata3F = false;
            		sheet.Pata2F = false;
            	elseif sheet.Pata1F == false then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata3F = false;
            		sheet.Pata2F = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10F == true then
            		sheet.square9F = true;
            		sheet.square8F = true;
            		sheet.square7F = true;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square9F == true then
            		sheet.square10F = false;
            		sheet.square8F = true;
            		sheet.square7F = true;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square8F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square7F = true;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square7F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square6F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square5F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square4F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square3F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square2F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square3F = false;
            		sheet.square1F = true;	
            	elseif sheet.square1F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square3F = false;
            		sheet.square2F = false;
            	elseif sheet.square1F == false then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square3F = false;
            		sheet.square2F = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Gno == true then
            		sheet.Pata9Gno = true;
            		sheet.Pata8Gno = true;
            		sheet.Pata7Gno = true;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata9Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata8Gno = true;
            		sheet.Pata7Gno = true;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata8Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata7Gno = true;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata7Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata6Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata5Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata4Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata3Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata2Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata3Gno = false;
            		sheet.Pata1Gno = true;	
            	elseif sheet.Pata1Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata3Gno = false;
            		sheet.Pata2Gno = false;
            	elseif sheet.Pata1Gno == false then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata3Gno = false;
            		sheet.Pata2Gno = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Gno == true then
            		sheet.square9Gno = true;
            		sheet.square8Gno = true;
            		sheet.square7Gno = true;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square9Gno == true then
            		sheet.square10Gno = false;
            		sheet.square8Gno = true;
            		sheet.square7Gno = true;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square8Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square7Gno = true;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square7Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square6Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square5Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square4Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square3Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square2Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square3Gno = false;
            		sheet.square1Gno = true;	
            	elseif sheet.square1Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square3Gno = false;
            		sheet.square2Gno = false;
            	elseif sheet.square1Gno == false then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square3Gno = false;
            		sheet.square2Gno = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10FDV == true then
            		sheet.Pata9FDV = true;
            		sheet.Pata8FDV = true;
            		sheet.Pata7FDV = true;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata9FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata8FDV = true;
            		sheet.Pata7FDV = true;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata8FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata7FDV = true;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata7FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata6FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata5FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata4FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata3FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata2FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata3FDV = false;
            		sheet.Pata1FDV = true;	
            	elseif sheet.Pata1FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata3FDV = false;
            		sheet.Pata2FDV = false;
            	elseif sheet.Pata1FDV == false then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata3FDV = false;
            		sheet.Pata2FDV = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink58:addEventListener("onChange",
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

    obj._e_event57 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata7Letal == true then
            		sheet.Pata6Letal = true;
            		sheet.Pata5Letal = true;
            		sheet.Pata4Letal = true;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata6Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata5Letal = true;
            		sheet.Pata4Letal = true;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata5Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata4Letal = true;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata4Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata3Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata2Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata3Letal = false;
            		sheet.Pata1Letal = true;	
            	elseif sheet.Pata1Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata3Letal = false;
            		sheet.Pata2Letal = false;
            	elseif sheet.Pata1Letal == false then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata3Letal = false;
            		sheet.Pata2Letal = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata7Agravado == true then
            		sheet.Pata6Agravado = true;
            		sheet.Pata5Agravado = true;
            		sheet.Pata4Agravado = true;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata6Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata5Agravado = true;
            		sheet.Pata4Agravado = true;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata5Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata4Agravado = true;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata4Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata3Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata2Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata3Agravado = false;
            		sheet.Pata1Agravado = true;	
            	elseif sheet.Pata1Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata3Agravado = false;
            		sheet.Pata2Agravado = false;
            	elseif sheet.Pata1Agravado == false then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata3Agravado = false;
            		sheet.Pata2Agravado = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
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
