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
    obj.dataLink1:setFields({'Gota1for', 'Gota1des', 'Gota1vig', 'Gota1cari', 'Gota1mani', 'Gota1apa', 'Gota1perc', 'Gota1int', 'Gota1rac', 'Gota1CC', 'Gota1AI', 'Gota1Cor'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'Gota8for', 'Gota7for', 'Gota6for', 'Gota5for', 'Gota4for', 'Gota3for', 'Gota2for', 'Gota1for'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'Gota8des', 'Gota7des', 'Gota6des', 'Gota5des', 'Gota4des', 'Gota3des', 'Gota2des', 'Gota1des'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'Gota8vig', 'Gota7vig', 'Gota6vig', 'Gota5vig', 'Gota4vig', 'Gota3vig', 'Gota2vig', 'Gota1vig'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'Gota8cari', 'Gota7cari', 'Gota6cari', 'Gota5cari', 'Gota4cari', 'Gota3cari', 'Gota2cari', 'Gota1cari'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'Gota8mani', 'Gota7mani', 'Gota6mani', 'Gota5mani', 'Gota4mani', 'Gota3mani', 'Gota2mani', 'Gota1mani'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'Gota8apa', 'Gota7apa', 'Gota6apa', 'Gota5apa', 'Gota4apa', 'Gota3apa', 'Gota2apa', 'Gota1apa'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'Gota8perc', 'Gota7perc', 'Gota6perc', 'Gota5perc', 'Gota4perc', 'Gota3perc', 'Gota2perc', 'Gota1perc'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'Gota8int', 'Gota7int', 'Gota6int', 'Gota5int', 'Gota4int', 'Gota3int', 'Gota2int', 'Gota1int'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'Gota8rac', 'Gota7rac', 'Gota6rac', 'Gota5rac', 'Gota4rac', 'Gota3rac', 'Gota2rac', 'Gota1rac'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'Gota8pront', 'Gota7pront', 'Gota6pront', 'Gota5pront', 'Gota4pront', 'Gota3pront', 'Gota2pront', 'Gota1pront'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'Gota8espo', 'Gota7espo', 'Gota6espo', 'Gota5espo', 'Gota4espo', 'Gota3espo', 'Gota2espo', 'Gota1espo'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'Gota8bri', 'Gota7bri', 'Gota6bri', 'Gota5bri', 'Gota4bri', 'Gota3bri', 'Gota2bri', 'Gota1bri'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'Gota8esq', 'Gota7esq', 'Gota6esq', 'Gota5esq', 'Gota4esq', 'Gota3esq', 'Gota2esq', 'Gota1esq'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'Gota8emp', 'Gota7emp', 'Gota6emp', 'Gota5emp', 'Gota4emp', 'Gota3emp', 'Gota2emp', 'Gota1emp'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'Gota8exp', 'Gota7exp', 'Gota6exp', 'Gota5exp', 'Gota4exp', 'Gota3exp', 'Gota2exp', 'Gota1exp'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'Gota8intim', 'Gota7intim', 'Gota6intim', 'Gota5intim', 'Gota4intim', 'Gota3intim', 'Gota2intim', 'Gota1intim'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'Gota8lider', 'Gota7lider', 'Gota6lider', 'Gota5lider', 'Gota4lider', 'Gota3lider', 'Gota2lider', 'Gota1lider'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'Gota8man', 'Gota7man', 'Gota6man', 'Gota5man', 'Gota4man', 'Gota3man', 'Gota2man', 'Gota1man'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'Gota8lab', 'Gota7lab', 'Gota6lab', 'Gota5lab', 'Gota4lab', 'Gota3lab', 'Gota2lab', 'Gota1lab'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'Gota8empani', 'Gota7empani', 'Gota6empani', 'Gota5empani', 'Gota4empani', 'Gota3empani', 'Gota2empani', 'Gota1empani'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'Gota8ofi', 'Gota7ofi', 'Gota6ofi', 'Gota5ofi', 'Gota4ofi', 'Gota3ofi', 'Gota2ofi', 'Gota1ofi'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'Gota8cond', 'Gota7cond', 'Gota6cond', 'Gota5cond', 'Gota4cond', 'Gota3cond', 'Gota2cond', 'Gota1cond'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'Gota8etiq', 'Gota7etiq', 'Gota6etiq', 'Gota5etiq', 'Gota4etiq', 'Gota3etiq', 'Gota2etiq', 'Gota1etiq'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'Gota8adf', 'Gota7adf', 'Gota6adf', 'Gota5adf', 'Gota4adf', 'Gota3adf', 'Gota2adf', 'Gota1adf'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'Gota8ab', 'Gota7ab', 'Gota6ab', 'Gota5ab', 'Gota4ab', 'Gota3ab', 'Gota2ab', 'Gota1ab'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'Gota8perf', 'Gota7perf', 'Gota6perf', 'Gota5perf', 'Gota4perf', 'Gota3perf', 'Gota2perf', 'Gota1perf'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'Gota8seg', 'Gota7seg', 'Gota6seg', 'Gota5seg', 'Gota4seg', 'Gota3seg', 'Gota2seg', 'Gota1seg'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'Gota8furti', 'Gota7furti', 'Gota6furti', 'Gota5furti', 'Gota4furti', 'Gota3furti', 'Gota2furti', 'Gota1furti'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'Gota8sobre', 'Gota7sobre', 'Gota6sobre', 'Gota5sobre', 'Gota4sobre', 'Gota3sobre', 'Gota2sobre', 'Gota1sobre'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'Gota8acad', 'Gota7acad', 'Gota6acad', 'Gota5acad', 'Gota4acad', 'Gota3acad', 'Gota2acad', 'Gota1acad'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'Gota8comp', 'Gota7comp', 'Gota6comp', 'Gota5comp', 'Gota4comp', 'Gota3comp', 'Gota2comp', 'Gota1comp'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'Gota8fina', 'Gota7fina', 'Gota6fina', 'Gota5fina', 'Gota4fina', 'Gota3fina', 'Gota2fina', 'Gota1fina'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'Gota8inves', 'Gota7inves', 'Gota6inves', 'Gota5inves', 'Gota4inves', 'Gota3inves', 'Gota2inves', 'Gota1inves'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'Gota8dir', 'Gota7dir', 'Gota6dir', 'Gota5dir', 'Gota4dir', 'Gota3dir', 'Gota2dir', 'Gota1dir'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'Gota8ling', 'Gota7ling', 'Gota6ling', 'Gota5ling', 'Gota4ling', 'Gota3ling', 'Gota2ling', 'Gota1ling'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'Gota8med', 'Gota7med', 'Gota6med', 'Gota5med', 'Gota4med', 'Gota3med', 'Gota2med', 'Gota1med'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'Gota8ocult', 'Gota7ocult', 'Gota6ocult', 'Gota5ocult', 'Gota4ocult', 'Gota3ocult', 'Gota2ocult', 'Gota1ocult'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'Gota8pol', 'Gota7pol', 'Gota6pol', 'Gota5pol', 'Gota4pol', 'Gota3pol', 'Gota2pol', 'Gota1pol'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'Gota8cie', 'Gota7cie', 'Gota6cie', 'Gota5cie', 'Gota4cie', 'Gota3cie', 'Gota2cie', 'Gota1cie'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'Gota8Ant1', 'Gota7Ant1', 'Gota6Ant1', 'Gota5Ant1', 'Gota4Ant1', 'Gota3Ant1', 'Gota2Ant1', 'Gota1Ant1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'Gota8Ant2', 'Gota7Ant2', 'Gota6Ant2', 'Gota5Ant2', 'Gota4Ant2', 'Gota3Ant2', 'Gota2Ant2', 'Gota1Ant2'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setFields({'Gota8Ant3', 'Gota7Ant3', 'Gota6Ant3', 'Gota5Ant3', 'Gota4Ant3', 'Gota3Ant3', 'Gota2Ant3', 'Gota1Ant3'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setFields({'Gota8Ant4', 'Gota7Ant4', 'Gota6Ant4', 'Gota5Ant4', 'Gota4Ant4', 'Gota3Ant4', 'Gota2Ant4', 'Gota1Ant4'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj);
    obj.dataLink45:setFields({'Gota8Ant5', 'Gota7Ant5', 'Gota6Ant5', 'Gota5Ant5', 'Gota4Ant5', 'Gota3Ant5', 'Gota2Ant5', 'Gota1Ant5'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj);
    obj.dataLink46:setFields({'Gota8Ant6', 'Gota7Ant6', 'Gota6Ant6', 'Gota5Ant6', 'Gota4Ant6', 'Gota3Ant6', 'Gota2Ant6', 'Gota1Ant6'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj);
    obj.dataLink47:setFields({'Gota8Ant7', 'Gota7Ant7', 'Gota6Ant7', 'Gota5Ant7', 'Gota4Ant7', 'Gota3Ant7', 'Gota2Ant7', 'Gota1Ant7'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj);
    obj.dataLink48:setFields({'Gota8Dis1', 'Gota7Dis1', 'Gota6Dis1', 'Gota5Dis1', 'Gota4Dis1', 'Gota3Dis1', 'Gota2Dis1', 'Gota1Dis1'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj);
    obj.dataLink49:setFields({'Gota8Dis2', 'Gota7Dis2', 'Gota6Dis2', 'Gota5Dis2', 'Gota4Dis2', 'Gota3Dis2', 'Gota2Dis2', 'Gota1Dis2'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj);
    obj.dataLink50:setFields({'Gota8Dis3', 'Gota7Dis3', 'Gota6Dis3', 'Gota5Dis3', 'Gota4Dis3', 'Gota3Dis3', 'Gota2Dis3', 'Gota1Dis3'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj);
    obj.dataLink51:setFields({'Gota8Dis4', 'Gota7Dis4', 'Gota6Dis4', 'Gota5Dis4', 'Gota4Dis4', 'Gota3Dis4', 'Gota2Dis4', 'Gota1Dis4'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj);
    obj.dataLink52:setFields({'Gota8Dis5', 'Gota7Dis5', 'Gota6Dis5', 'Gota5Dis5', 'Gota4Dis5', 'Gota3Dis5', 'Gota2Dis5', 'Gota1Dis5'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj);
    obj.dataLink53:setFields({'Gota8Dis6', 'Gota7Dis6', 'Gota6Dis6', 'Gota5Dis6', 'Gota4Dis6', 'Gota3Dis6', 'Gota2Dis6', 'Gota1Dis6'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj);
    obj.dataLink54:setFields({'Gota8Dis7', 'Gota7Dis7', 'Gota6Dis7', 'Gota5Dis7', 'Gota4Dis7', 'Gota3Dis7', 'Gota2Dis7', 'Gota1Dis7'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj);
    obj.dataLink55:setFields({'Gota5CC', 'Gota4CC', 'Gota3CC', 'Gota2CC', 'Gota1CC'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj);
    obj.dataLink56:setFields({'Gota5AI', 'Gota4AI', 'Gota3AI', 'Gota2AI', 'Gota1AI'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj);
    obj.dataLink57:setFields({'Gota5Cor', 'Gota4Cor', 'Gota3Cor', 'Gota2Cor', 'Gota1Cor'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj);
    obj.dataLink58:setFields({'Gota10HT', 'Gota9HT', 'Gota8HT', 'Gota7HT', 'Gota6HT', 'Gota5HT', 'Gota4HT', 'Gota3HT', 'Gota2HT', 'Gota1HT'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj);
    obj.dataLink59:setFields({'Gota10FDV', 'Gota9FDV', 'Gota8FDV', 'Gota7FDV', 'Gota6FDV', 'Gota5FDV', 'Gota4FDV', 'Gota3FDV', 'Gota2FDV', 'Gota1FDV'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj);
    obj.dataLink60:setFields({'SQ10FDV', 'SQ9FDV', 'SQ8FDV', 'SQ7FDV', 'SQ6FDV', 'SQ5FDV', 'SQ4FDV', 'SQ3FDV', 'SQ2FDV', 'SQ1FDV'});
    obj.dataLink60:setName("dataLink60");

    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj);
    obj.dataLink61:setFields({'Gota40PS', 'Gota39PS', 'Gota38PS', 'Gota37PS', 'Gota36PS', 'Gota35PS', 'Gota34PS', 'Gota33PS', 'Gota32PS', 'Gota31PS',
 'Gota30PS', 'Gota29PS', 'Gota28PS', 'Gota27PS', 'Gota26PS', 'Gota25PS', 'Gota24PS', 'Gota23PS', 'Gota22PS', 'Gota21PS', 'Gota20PS',
 'Gota19PS', 'Gota18PS', 'Gota17PS', 'Gota16PS', 'Gota15PS', 'Gota14PS', 'Gota13PS', 'Gota12PS', 'Gota11PS', 'Gota10PS',
 'Gota9PS', 'Gota8PS', 'Gota7PS', 'Gota6PS', 'Gota5PS', 'Gota4PS', 'Gota3PS', 'Gota2PS', 'Gota1PS'});
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj);
    obj.dataLink62:setFields({'Gota7Letal', 'Gota6Letal', 'Gota5Letal', 'Gota4Letal', 'Gota3Letal', 'Gota2Letal', 'Gota1Letal'});
    obj.dataLink62:setName("dataLink62");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj);
    obj.dataLink63:setFields({'Gota7Agravado', 'Gota6Agravado', 'Gota5Agravado', 'Gota4Agravado', 'Gota3Agravado', 'Gota2Agravado', 'Gota1Agravado'});
    obj.dataLink63:setName("dataLink63");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8for == true then
            		sheet.Gota7for = true;
            		sheet.Gota6for = true;
            		sheet.Gota5for = true;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota7for == true then
            		sheet.Gota8for = false;
            		sheet.Gota6for = true;
            		sheet.Gota5for = true;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota6for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota5for = true;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota5for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota4for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota3for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota2for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota3for = false;
            		sheet.Gota1for = true;	
            	elseif sheet.Gota1for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota3for = false;
            		sheet.Gota2for = false;
            	elseif sheet.Gota1for == false then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota3for = false;
            		sheet.Gota2for = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8des == true then
            		sheet.Gota7des = true;
            		sheet.Gota6des = true;
            		sheet.Gota5des = true;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota7des == true then
            		sheet.Gota8des = false;
            		sheet.Gota6des = true;
            		sheet.Gota5des = true;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota6des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota5des = true;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota5des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota4des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota3des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota2des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota3des = false;
            		sheet.Gota1des = true;	
            	elseif sheet.Gota1des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota3des = false;
            		sheet.Gota2des = false;
            	elseif sheet.Gota1des == false then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota3des = false;
            		sheet.Gota2des = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8vig == true then
            		sheet.Gota7vig = true;
            		sheet.Gota6vig = true;
            		sheet.Gota5vig = true;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota7vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota6vig = true;
            		sheet.Gota5vig = true;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota6vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota5vig = true;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota5vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota4vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota3vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota2vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota3vig = false;
            		sheet.Gota1vig = true;	
            	elseif sheet.Gota1vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota3vig = false;
            		sheet.Gota2vig = false;
            	elseif sheet.Gota1vig == false then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota3vig = false;
            		sheet.Gota2vig = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8cari == true then
            		sheet.Gota7cari = true;
            		sheet.Gota6cari = true;
            		sheet.Gota5cari = true;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota7cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota6cari = true;
            		sheet.Gota5cari = true;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota6cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota5cari = true;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota5cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota4cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota3cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota2cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota3cari = false;
            		sheet.Gota1cari = true;	
            	elseif sheet.Gota1cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota3cari = false;
            		sheet.Gota2cari = false;
            	elseif sheet.Gota1cari == false then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota3cari = false;
            		sheet.Gota2cari = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8mani == true then
            		sheet.Gota7mani = true;
            		sheet.Gota6mani = true;
            		sheet.Gota5mani = true;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota7mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota6mani = true;
            		sheet.Gota5mani = true;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota6mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota5mani = true;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota5mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota4mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota3mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota2mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota3mani = false;
            		sheet.Gota1mani = true;	
            	elseif sheet.Gota1mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota3mani = false;
            		sheet.Gota2mani = false;
            	elseif sheet.Gota1mani == false then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota3mani = false;
            		sheet.Gota2mani = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8apa == true then
            		sheet.Gota7apa = true;
            		sheet.Gota6apa = true;
            		sheet.Gota5apa = true;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota7apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota6apa = true;
            		sheet.Gota5apa = true;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota6apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota5apa = true;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota5apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota4apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota3apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota2apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota3apa = false;
            		sheet.Gota1apa = true;	
            	elseif sheet.Gota1apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota3apa = false;
            		sheet.Gota2apa = false;
            	elseif sheet.Gota1apa == false then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota3apa = false;
            		sheet.Gota2apa = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8perc == true then
            		sheet.Gota7perc = true;
            		sheet.Gota6perc = true;
            		sheet.Gota5perc = true;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota7perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota6perc = true;
            		sheet.Gota5perc = true;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota6perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota5perc = true;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota5perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota4perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota3perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota2perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota3perc = false;
            		sheet.Gota1perc = true;	
            	elseif sheet.Gota1perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota3perc = false;
            		sheet.Gota2perc = false;
            	elseif sheet.Gota1perc == false then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota3perc = false;
            		sheet.Gota2perc = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8int == true then
            		sheet.Gota7int = true;
            		sheet.Gota6int = true;
            		sheet.Gota5int = true;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota7int == true then
            		sheet.Gota8int = false;
            		sheet.Gota6int = true;
            		sheet.Gota5int = true;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota6int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota5int = true;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota5int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota4int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota3int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota2int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota3int = false;
            		sheet.Gota1int = true;	
            	elseif sheet.Gota1int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota3int = false;
            		sheet.Gota2int = false;
            	elseif sheet.Gota1int == false then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota3int = false;
            		sheet.Gota2int = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8rac == true then
            		sheet.Gota7rac = true;
            		sheet.Gota6rac = true;
            		sheet.Gota5rac = true;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota7rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota6rac = true;
            		sheet.Gota5rac = true;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota6rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota5rac = true;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota5rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota4rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota3rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota2rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota3rac = false;
            		sheet.Gota1rac = true;	
            	elseif sheet.Gota1rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota3rac = false;
            		sheet.Gota2rac = false;
            	elseif sheet.Gota1rac == false then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota3rac = false;
            		sheet.Gota2rac = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8pront == true then
            		sheet.Gota7pront = true;
            		sheet.Gota6pront = true;
            		sheet.Gota5pront = true;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota7pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota6pront = true;
            		sheet.Gota5pront = true;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota6pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota5pront = true;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota5pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota4pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota3pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota2pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota3pront = false;
            		sheet.Gota1pront = true;	
            	elseif sheet.Gota1pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota3pront = false;
            		sheet.Gota2pront = false;
            	elseif sheet.Gota1pront == false then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota3pront = false;
            		sheet.Gota2pront = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8espo == true then
            		sheet.Gota7espo = true;
            		sheet.Gota6espo = true;
            		sheet.Gota5espo = true;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota7espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota6espo = true;
            		sheet.Gota5espo = true;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota6espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota5espo = true;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota5espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota4espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota3espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota2espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota3espo = false;
            		sheet.Gota1espo = true;	
            	elseif sheet.Gota1espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota3espo = false;
            		sheet.Gota2espo = false;
            	elseif sheet.Gota1espo == false then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota3espo = false;
            		sheet.Gota2espo = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8bri == true then
            		sheet.Gota7bri = true;
            		sheet.Gota6bri = true;
            		sheet.Gota5bri = true;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota7bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota6bri = true;
            		sheet.Gota5bri = true;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota6bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota5bri = true;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota5bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota4bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota3bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota2bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota3bri = false;
            		sheet.Gota1bri = true;	
            	elseif sheet.Gota1bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota3bri = false;
            		sheet.Gota2bri = false;
            	elseif sheet.Gota1bri == false then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota3bri = false;
            		sheet.Gota2bri = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8esq == true then
            		sheet.Gota7esq = true;
            		sheet.Gota6esq = true;
            		sheet.Gota5esq = true;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota7esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota6esq = true;
            		sheet.Gota5esq = true;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota6esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota5esq = true;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota5esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota4esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota3esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota2esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota3esq = false;
            		sheet.Gota1esq = true;	
            	elseif sheet.Gota1esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota3esq = false;
            		sheet.Gota2esq = false;
            	elseif sheet.Gota1esq == false then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota3esq = false;
            		sheet.Gota2esq = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8emp == true then
            		sheet.Gota7emp = true;
            		sheet.Gota6emp = true;
            		sheet.Gota5emp = true;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota7emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota6emp = true;
            		sheet.Gota5emp = true;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota6emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota5emp = true;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota5emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota4emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota3emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota2emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota3emp = false;
            		sheet.Gota1emp = true;	
            	elseif sheet.Gota1emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota3emp = false;
            		sheet.Gota2emp = false;
            	elseif sheet.Gota1emp == false then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota3emp = false;
            		sheet.Gota2emp = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8exp == true then
            		sheet.Gota7exp = true;
            		sheet.Gota6exp = true;
            		sheet.Gota5exp = true;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota7exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota6exp = true;
            		sheet.Gota5exp = true;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota6exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota5exp = true;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota5exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota4exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota3exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota2exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota3exp = false;
            		sheet.Gota1exp = true;	
            	elseif sheet.Gota1exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota3exp = false;
            		sheet.Gota2exp = false;
            	elseif sheet.Gota1exp == false then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota3exp = false;
            		sheet.Gota2exp = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8intim == true then
            		sheet.Gota7intim = true;
            		sheet.Gota6intim = true;
            		sheet.Gota5intim = true;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota7intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota6intim = true;
            		sheet.Gota5intim = true;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota6intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota5intim = true;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota5intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota4intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota3intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota2intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota3intim = false;
            		sheet.Gota1intim = true;	
            	elseif sheet.Gota1intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota3intim = false;
            		sheet.Gota2intim = false;
            	elseif sheet.Gota1intim == false then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota3intim = false;
            		sheet.Gota2intim = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8lider == true then
            		sheet.Gota7lider = true;
            		sheet.Gota6lider = true;
            		sheet.Gota5lider = true;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota7lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota6lider = true;
            		sheet.Gota5lider = true;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota6lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota5lider = true;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota5lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota4lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota3lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota2lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota3lider = false;
            		sheet.Gota1lider = true;	
            	elseif sheet.Gota1lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota3lider = false;
            		sheet.Gota2lider = false;
            	elseif sheet.Gota1lider == false then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota3lider = false;
            		sheet.Gota2lider = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8man == true then
            		sheet.Gota7man = true;
            		sheet.Gota6man = true;
            		sheet.Gota5man = true;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota7man == true then
            		sheet.Gota8man = false;
            		sheet.Gota6man = true;
            		sheet.Gota5man = true;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota6man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota5man = true;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota5man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota4man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota3man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota2man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota3man = false;
            		sheet.Gota1man = true;	
            	elseif sheet.Gota1man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota3man = false;
            		sheet.Gota2man = false;
            	elseif sheet.Gota1man == false then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota3man = false;
            		sheet.Gota2man = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8lab == true then
            		sheet.Gota7lab = true;
            		sheet.Gota6lab = true;
            		sheet.Gota5lab = true;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota7lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota6lab = true;
            		sheet.Gota5lab = true;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota6lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota5lab = true;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota5lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota4lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota3lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota2lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota3lab = false;
            		sheet.Gota1lab = true;	
            	elseif sheet.Gota1lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota3lab = false;
            		sheet.Gota2lab = false;
            	elseif sheet.Gota1lab == false then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota3lab = false;
            		sheet.Gota2lab = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8empani == true then
            		sheet.Gota7empani = true;
            		sheet.Gota6empani = true;
            		sheet.Gota5empani = true;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota7empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota6empani = true;
            		sheet.Gota5empani = true;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota6empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota5empani = true;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota5empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota4empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota3empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota2empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota3empani = false;
            		sheet.Gota1empani = true;	
            	elseif sheet.Gota1empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota3empani = false;
            		sheet.Gota2empani = false;
            	elseif sheet.Gota1empani == false then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota3empani = false;
            		sheet.Gota2empani = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ofi == true then
            		sheet.Gota7ofi = true;
            		sheet.Gota6ofi = true;
            		sheet.Gota5ofi = true;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota7ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota6ofi = true;
            		sheet.Gota5ofi = true;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota6ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota5ofi = true;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota5ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota4ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota3ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota2ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota3ofi = false;
            		sheet.Gota1ofi = true;	
            	elseif sheet.Gota1ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota3ofi = false;
            		sheet.Gota2ofi = false;
            	elseif sheet.Gota1ofi == false then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota3ofi = false;
            		sheet.Gota2ofi = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8cond == true then
            		sheet.Gota7cond = true;
            		sheet.Gota6cond = true;
            		sheet.Gota5cond = true;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota7cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota6cond = true;
            		sheet.Gota5cond = true;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota6cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota5cond = true;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota5cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota4cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota3cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota2cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota3cond = false;
            		sheet.Gota1cond = true;	
            	elseif sheet.Gota1cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota3cond = false;
            		sheet.Gota2cond = false;
            	elseif sheet.Gota1cond == false then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota3cond = false;
            		sheet.Gota2cond = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8etiq == true then
            		sheet.Gota7etiq = true;
            		sheet.Gota6etiq = true;
            		sheet.Gota5etiq = true;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota7etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota6etiq = true;
            		sheet.Gota5etiq = true;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota6etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota5etiq = true;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota5etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota4etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota3etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota2etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota3etiq = false;
            		sheet.Gota1etiq = true;	
            	elseif sheet.Gota1etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota3etiq = false;
            		sheet.Gota2etiq = false;
            	elseif sheet.Gota1etiq == false then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota3etiq = false;
            		sheet.Gota2etiq = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8adf == true then
            		sheet.Gota7adf = true;
            		sheet.Gota6adf = true;
            		sheet.Gota5adf = true;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota7adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota6adf = true;
            		sheet.Gota5adf = true;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota6adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota5adf = true;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota5adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota4adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota3adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota2adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota3adf = false;
            		sheet.Gota1adf = true;	
            	elseif sheet.Gota1adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota3adf = false;
            		sheet.Gota2adf = false;
            	elseif sheet.Gota1adf == false then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota3adf = false;
            		sheet.Gota2adf = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ab == true then
            		sheet.Gota7ab = true;
            		sheet.Gota6ab = true;
            		sheet.Gota5ab = true;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota7ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota6ab = true;
            		sheet.Gota5ab = true;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota6ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota5ab = true;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota5ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota4ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota3ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota2ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota3ab = false;
            		sheet.Gota1ab = true;	
            	elseif sheet.Gota1ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota3ab = false;
            		sheet.Gota2ab = false;
            	elseif sheet.Gota1ab == false then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota3ab = false;
            		sheet.Gota2ab = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8perf == true then
            		sheet.Gota7perf = true;
            		sheet.Gota6perf = true;
            		sheet.Gota5perf = true;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota7perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota6perf = true;
            		sheet.Gota5perf = true;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota6perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota5perf = true;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota5perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota4perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota3perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota2perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota3perf = false;
            		sheet.Gota1perf = true;	
            	elseif sheet.Gota1perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota3perf = false;
            		sheet.Gota2perf = false;
            	elseif sheet.Gota1perf == false then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota3perf = false;
            		sheet.Gota2perf = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8seg == true then
            		sheet.Gota7seg = true;
            		sheet.Gota6seg = true;
            		sheet.Gota5seg = true;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota7seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota6seg = true;
            		sheet.Gota5seg = true;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota6seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota5seg = true;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota5seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota4seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota3seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota2seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota3seg = false;
            		sheet.Gota1seg = true;	
            	elseif sheet.Gota1seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota3seg = false;
            		sheet.Gota2seg = false;
            	elseif sheet.Gota1seg == false then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota3seg = false;
            		sheet.Gota2seg = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8furti == true then
            		sheet.Gota7furti = true;
            		sheet.Gota6furti = true;
            		sheet.Gota5furti = true;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota7furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota6furti = true;
            		sheet.Gota5furti = true;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota6furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota5furti = true;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota5furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota4furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota3furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota2furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota3furti = false;
            		sheet.Gota1furti = true;	
            	elseif sheet.Gota1furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota3furti = false;
            		sheet.Gota2furti = false;
            	elseif sheet.Gota1furti == false then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota3furti = false;
            		sheet.Gota2furti = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8sobre == true then
            		sheet.Gota7sobre = true;
            		sheet.Gota6sobre = true;
            		sheet.Gota5sobre = true;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota7sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota6sobre = true;
            		sheet.Gota5sobre = true;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota6sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota5sobre = true;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota5sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota4sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota3sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota2sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota3sobre = false;
            		sheet.Gota1sobre = true;	
            	elseif sheet.Gota1sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota3sobre = false;
            		sheet.Gota2sobre = false;
            	elseif sheet.Gota1sobre == false then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota3sobre = false;
            		sheet.Gota2sobre = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8acad == true then
            		sheet.Gota7acad = true;
            		sheet.Gota6acad = true;
            		sheet.Gota5acad = true;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota7acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota6acad = true;
            		sheet.Gota5acad = true;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota6acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota5acad = true;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota5acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota4acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota3acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota2acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota3acad = false;
            		sheet.Gota1acad = true;	
            	elseif sheet.Gota1acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota3acad = false;
            		sheet.Gota2acad = false;
            	elseif sheet.Gota1acad == false then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota3acad = false;
            		sheet.Gota2acad = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8comp == true then
            		sheet.Gota7comp = true;
            		sheet.Gota6comp = true;
            		sheet.Gota5comp = true;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota7comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota6comp = true;
            		sheet.Gota5comp = true;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota6comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota5comp = true;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota5comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota4comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota3comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota2comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota3comp = false;
            		sheet.Gota1comp = true;	
            	elseif sheet.Gota1comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota3comp = false;
            		sheet.Gota2comp = false;
            	elseif sheet.Gota1comp == false then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota3comp = false;
            		sheet.Gota2comp = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8fina == true then
            		sheet.Gota7fina = true;
            		sheet.Gota6fina = true;
            		sheet.Gota5fina = true;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota7fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota6fina = true;
            		sheet.Gota5fina = true;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota6fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota5fina = true;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota5fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota4fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota3fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota2fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota3fina = false;
            		sheet.Gota1fina = true;	
            	elseif sheet.Gota1fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota3fina = false;
            		sheet.Gota2fina = false;
            	elseif sheet.Gota1fina == false then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota3fina = false;
            		sheet.Gota2fina = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8inves == true then
            		sheet.Gota7inves = true;
            		sheet.Gota6inves = true;
            		sheet.Gota5inves = true;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota7inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota6inves = true;
            		sheet.Gota5inves = true;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota6inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota5inves = true;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota5inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota4inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota3inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota2inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota3inves = false;
            		sheet.Gota1inves = true;	
            	elseif sheet.Gota1inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota3inves = false;
            		sheet.Gota2inves = false;
            	elseif sheet.Gota1inves == false then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota3inves = false;
            		sheet.Gota2inves = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8dir == true then
            		sheet.Gota7dir = true;
            		sheet.Gota6dir = true;
            		sheet.Gota5dir = true;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota7dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota6dir = true;
            		sheet.Gota5dir = true;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota6dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota5dir = true;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota5dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota4dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota3dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota2dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota3dir = false;
            		sheet.Gota1dir = true;	
            	elseif sheet.Gota1dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota3dir = false;
            		sheet.Gota2dir = false;
            	elseif sheet.Gota1dir == false then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota3dir = false;
            		sheet.Gota2dir = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ling == true then
            		sheet.Gota7ling = true;
            		sheet.Gota6ling = true;
            		sheet.Gota5ling = true;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota7ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota6ling = true;
            		sheet.Gota5ling = true;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota6ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota5ling = true;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota5ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota4ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota3ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota2ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota3ling = false;
            		sheet.Gota1ling = true;	
            	elseif sheet.Gota1ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota3ling = false;
            		sheet.Gota2ling = false;
            	elseif sheet.Gota1ling == false then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota3ling = false;
            		sheet.Gota2ling = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8med == true then
            		sheet.Gota7med = true;
            		sheet.Gota6med = true;
            		sheet.Gota5med = true;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota7med == true then
            		sheet.Gota8med = false;
            		sheet.Gota6med = true;
            		sheet.Gota5med = true;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota6med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota5med = true;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota5med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota4med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota3med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota2med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota3med = false;
            		sheet.Gota1med = true;	
            	elseif sheet.Gota1med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota3med = false;
            		sheet.Gota2med = false;
            	elseif sheet.Gota1med == false then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota3med = false;
            		sheet.Gota2med = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ocult == true then
            		sheet.Gota7ocult = true;
            		sheet.Gota6ocult = true;
            		sheet.Gota5ocult = true;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota7ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota6ocult = true;
            		sheet.Gota5ocult = true;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota6ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota5ocult = true;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota5ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota4ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota3ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota2ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota3ocult = false;
            		sheet.Gota1ocult = true;	
            	elseif sheet.Gota1ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota3ocult = false;
            		sheet.Gota2ocult = false;
            	elseif sheet.Gota1ocult == false then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota3ocult = false;
            		sheet.Gota2ocult = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8pol == true then
            		sheet.Gota7pol = true;
            		sheet.Gota6pol = true;
            		sheet.Gota5pol = true;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota7pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota6pol = true;
            		sheet.Gota5pol = true;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota6pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota5pol = true;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota5pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota4pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota3pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota2pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota3pol = false;
            		sheet.Gota1pol = true;	
            	elseif sheet.Gota1pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota3pol = false;
            		sheet.Gota2pol = false;
            	elseif sheet.Gota1pol == false then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota3pol = false;
            		sheet.Gota2pol = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8cie == true then
            		sheet.Gota7cie = true;
            		sheet.Gota6cie = true;
            		sheet.Gota5cie = true;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota7cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota6cie = true;
            		sheet.Gota5cie = true;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota6cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota5cie = true;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota5cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota4cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota3cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota2cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota3cie = false;
            		sheet.Gota1cie = true;	
            	elseif sheet.Gota1cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota3cie = false;
            		sheet.Gota2cie = false;
            	elseif sheet.Gota1cie == false then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota3cie = false;
            		sheet.Gota2cie = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant1 == true then
            		sheet.Gota7Ant1 = true;
            		sheet.Gota6Ant1 = true;
            		sheet.Gota5Ant1 = true;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota7Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota6Ant1 = true;
            		sheet.Gota5Ant1 = true;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota6Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota5Ant1 = true;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota5Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota4Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota3Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota2Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota3Ant1 = false;
            		sheet.Gota1Ant1 = true;	
            	elseif sheet.Gota1Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota3Ant1 = false;
            		sheet.Gota2Ant1 = false;
            	elseif sheet.Gota1Ant1 == false then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota3Ant1 = false;
            		sheet.Gota2Ant1 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant2 == true then
            		sheet.Gota7Ant2 = true;
            		sheet.Gota6Ant2 = true;
            		sheet.Gota5Ant2 = true;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota7Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota6Ant2 = true;
            		sheet.Gota5Ant2 = true;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota6Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota5Ant2 = true;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota5Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota4Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota3Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota2Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota3Ant2 = false;
            		sheet.Gota1Ant2 = true;	
            	elseif sheet.Gota1Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota3Ant2 = false;
            		sheet.Gota2Ant2 = false;
            	elseif sheet.Gota1Ant2 == false then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota3Ant2 = false;
            		sheet.Gota2Ant2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant3 == true then
            		sheet.Gota7Ant3 = true;
            		sheet.Gota6Ant3 = true;
            		sheet.Gota5Ant3 = true;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota7Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota6Ant3 = true;
            		sheet.Gota5Ant3 = true;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota6Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota5Ant3 = true;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota5Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota4Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota3Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota2Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota3Ant3 = false;
            		sheet.Gota1Ant3 = true;	
            	elseif sheet.Gota1Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota3Ant3 = false;
            		sheet.Gota2Ant3 = false;
            	elseif sheet.Gota1Ant3 == false then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota3Ant3 = false;
            		sheet.Gota2Ant3 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant4 == true then
            		sheet.Gota7Ant4 = true;
            		sheet.Gota6Ant4 = true;
            		sheet.Gota5Ant4 = true;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota7Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota6Ant4 = true;
            		sheet.Gota5Ant4 = true;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota6Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota5Ant4 = true;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota5Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota4Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota3Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota2Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota3Ant4 = false;
            		sheet.Gota1Ant4 = true;	
            	elseif sheet.Gota1Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota3Ant4 = false;
            		sheet.Gota2Ant4 = false;
            	elseif sheet.Gota1Ant4 == false then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota3Ant4 = false;
            		sheet.Gota2Ant4 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant5 == true then
            		sheet.Gota7Ant5 = true;
            		sheet.Gota6Ant5 = true;
            		sheet.Gota5Ant5 = true;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota7Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota6Ant5 = true;
            		sheet.Gota5Ant5 = true;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota6Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota5Ant5 = true;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota5Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota4Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota3Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota2Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota3Ant5 = false;
            		sheet.Gota1Ant5 = true;	
            	elseif sheet.Gota1Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota3Ant5 = false;
            		sheet.Gota2Ant5 = false;
            	elseif sheet.Gota1Ant5 == false then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota3Ant5 = false;
            		sheet.Gota2Ant5 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant6 == true then
            		sheet.Gota7Ant6 = true;
            		sheet.Gota6Ant6 = true;
            		sheet.Gota5Ant6 = true;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota7Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota6Ant6 = true;
            		sheet.Gota5Ant6 = true;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota6Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota5Ant6 = true;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota5Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota4Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota3Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota2Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota3Ant6 = false;
            		sheet.Gota1Ant6 = true;	
            	elseif sheet.Gota1Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota3Ant6 = false;
            		sheet.Gota2Ant6 = false;
            	elseif sheet.Gota1Ant6 == false then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota3Ant6 = false;
            		sheet.Gota2Ant6 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant7 == true then
            		sheet.Gota7Ant7 = true;
            		sheet.Gota6Ant7 = true;
            		sheet.Gota5Ant7 = true;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota7Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota6Ant7 = true;
            		sheet.Gota5Ant7 = true;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota6Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota5Ant7 = true;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota5Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota4Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota3Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota2Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota3Ant7 = false;
            		sheet.Gota1Ant7 = true;	
            	elseif sheet.Gota1Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota3Ant7 = false;
            		sheet.Gota2Ant7 = false;
            	elseif sheet.Gota1Ant7 == false then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota3Ant7 = false;
            		sheet.Gota2Ant7 = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis1 == true then
            		sheet.Gota7Dis1 = true;
            		sheet.Gota6Dis1 = true;
            		sheet.Gota5Dis1 = true;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota7Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota6Dis1 = true;
            		sheet.Gota5Dis1 = true;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota6Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota5Dis1 = true;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota5Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota4Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota3Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota2Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota3Dis1 = false;
            		sheet.Gota1Dis1 = true;	
            	elseif sheet.Gota1Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota3Dis1 = false;
            		sheet.Gota2Dis1 = false;
            	elseif sheet.Gota1Dis1 == false then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota3Dis1 = false;
            		sheet.Gota2Dis1 = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis2 == true then
            		sheet.Gota7Dis2 = true;
            		sheet.Gota6Dis2 = true;
            		sheet.Gota5Dis2 = true;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota7Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota6Dis2 = true;
            		sheet.Gota5Dis2 = true;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota6Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota5Dis2 = true;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota5Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota4Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota3Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota2Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota3Dis2 = false;
            		sheet.Gota1Dis2 = true;	
            	elseif sheet.Gota1Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota3Dis2 = false;
            		sheet.Gota2Dis2 = false;
            	elseif sheet.Gota1Dis2 == false then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota3Dis2 = false;
            		sheet.Gota2Dis2 = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis3 == true then
            		sheet.Gota7Dis3 = true;
            		sheet.Gota6Dis3 = true;
            		sheet.Gota5Dis3 = true;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota7Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota6Dis3 = true;
            		sheet.Gota5Dis3 = true;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota6Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota5Dis3 = true;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota5Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota4Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota3Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota2Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota3Dis3 = false;
            		sheet.Gota1Dis3 = true;	
            	elseif sheet.Gota1Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota3Dis3 = false;
            		sheet.Gota2Dis3 = false;
            	elseif sheet.Gota1Dis3 == false then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota3Dis3 = false;
            		sheet.Gota2Dis3 = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis4 == true then
            		sheet.Gota7Dis4 = true;
            		sheet.Gota6Dis4 = true;
            		sheet.Gota5Dis4 = true;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota7Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota6Dis4 = true;
            		sheet.Gota5Dis4 = true;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota6Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota5Dis4 = true;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota5Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota4Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota3Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota2Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota3Dis4 = false;
            		sheet.Gota1Dis4 = true;	
            	elseif sheet.Gota1Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota3Dis4 = false;
            		sheet.Gota2Dis4 = false;
            	elseif sheet.Gota1Dis4 == false then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota3Dis4 = false;
            		sheet.Gota2Dis4 = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis5 == true then
            		sheet.Gota7Dis5 = true;
            		sheet.Gota6Dis5 = true;
            		sheet.Gota5Dis5 = true;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota7Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota6Dis5 = true;
            		sheet.Gota5Dis5 = true;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota6Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota5Dis5 = true;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota5Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota4Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota3Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota2Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota3Dis5 = false;
            		sheet.Gota1Dis5 = true;	
            	elseif sheet.Gota1Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota3Dis5 = false;
            		sheet.Gota2Dis5 = false;
            	elseif sheet.Gota1Dis5 == false then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota3Dis5 = false;
            		sheet.Gota2Dis5 = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis6 == true then
            		sheet.Gota7Dis6 = true;
            		sheet.Gota6Dis6 = true;
            		sheet.Gota5Dis6 = true;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota7Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota6Dis6 = true;
            		sheet.Gota5Dis6 = true;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota6Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota5Dis6 = true;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota5Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota4Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota3Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota2Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota3Dis6 = false;
            		sheet.Gota1Dis6 = true;	
            	elseif sheet.Gota1Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota3Dis6 = false;
            		sheet.Gota2Dis6 = false;
            	elseif sheet.Gota1Dis6 == false then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota3Dis6 = false;
            		sheet.Gota2Dis6 = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis7 == true then
            		sheet.Gota7Dis7 = true;
            		sheet.Gota6Dis7 = true;
            		sheet.Gota5Dis7 = true;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota7Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota6Dis7 = true;
            		sheet.Gota5Dis7 = true;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota6Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota5Dis7 = true;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota5Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota4Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota3Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota2Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota3Dis7 = false;
            		sheet.Gota1Dis7 = true;	
            	elseif sheet.Gota1Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota3Dis7 = false;
            		sheet.Gota2Dis7 = false;
            	elseif sheet.Gota1Dis7 == false then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota3Dis7 = false;
            		sheet.Gota2Dis7 = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota5CC == true then
            		sheet.Gota4CC = true;
            		sheet.Gota3CC = true;
            		sheet.Gota2CC = true;
            		sheet.Gota1CC = true;
            	elseif sheet.Gota4CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota3CC = true;
            		sheet.Gota2CC = true;
            		sheet.Gota1CC = true;
            	elseif sheet.Gota3CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota2CC = true;
            		sheet.Gota1CC = true;
            	elseif sheet.Gota2CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota3CC = false;
            		sheet.Gota1CC = true;	
            	elseif sheet.Gota1CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota3CC = false;
            		sheet.Gota2CC = false;
            	elseif sheet.Gota1CC == false then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota3CC = false;
            		sheet.Gota2CC = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota5AI == true then
            		sheet.Gota4AI = true;
            		sheet.Gota3AI = true;
            		sheet.Gota2AI = true;
            		sheet.Gota1AI = true;
            	elseif sheet.Gota4AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota3AI = true;
            		sheet.Gota2AI = true;
            		sheet.Gota1AI = true;
            	elseif sheet.Gota3AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota2AI = true;
            		sheet.Gota1AI = true;
            	elseif sheet.Gota2AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota3AI = false;
            		sheet.Gota1AI = true;	
            	elseif sheet.Gota1AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota3AI = false;
            		sheet.Gota2AI = false;
            	elseif sheet.Gota1AI == false then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota3AI = false;
            		sheet.Gota2AI = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota5Cor == true then
            		sheet.Gota4Cor = true;
            		sheet.Gota3Cor = true;
            		sheet.Gota2Cor = true;
            		sheet.Gota1Cor = true;
            	elseif sheet.Gota4Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota3Cor = true;
            		sheet.Gota2Cor = true;
            		sheet.Gota1Cor = true;
            	elseif sheet.Gota3Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota2Cor = true;
            		sheet.Gota1Cor = true;
            	elseif sheet.Gota2Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota3Cor = false;
            		sheet.Gota1Cor = true;	
            	elseif sheet.Gota1Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota3Cor = false;
            		sheet.Gota2Cor = false;
            	elseif sheet.Gota1Cor == false then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota3Cor = false;
            		sheet.Gota2Cor = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota10HT == true then
            		sheet.Gota9HT = true;
            		sheet.Gota8HT = true;
            		sheet.Gota7HT = true;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota9HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota8HT = true;
            		sheet.Gota7HT = true;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota8HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota7HT = true;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota7HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota6HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota5HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota4HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota3HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota2HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota3HT = false;
            		sheet.Gota1HT = true;	
            	elseif sheet.Gota1HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota3HT = false;
            		sheet.Gota2HT = false;
            	elseif sheet.Gota1HT == false then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota3HT = false;
            		sheet.Gota2HT = false;
            	end;
        end, obj);

    obj._e_event57 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota10FDV == true then
            		sheet.Gota9FDV = true;
            		sheet.Gota8FDV = true;
            		sheet.Gota7FDV = true;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota9FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota8FDV = true;
            		sheet.Gota7FDV = true;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota8FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota7FDV = true;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota7FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota6FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota5FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota4FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota3FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota2FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota3FDV = false;
            		sheet.Gota1FDV = true;	
            	elseif sheet.Gota1FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota3FDV = false;
            		sheet.Gota2FDV = false;
            	elseif sheet.Gota1FDV == false then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota3FDV = false;
            		sheet.Gota2FDV = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.SQ10FDV == true then
            		sheet.SQ9FDV = true;
            		sheet.SQ8FDV = true;
            		sheet.SQ7FDV = true;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ9FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ8FDV = true;
            		sheet.SQ7FDV = true;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ8FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ7FDV = true;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ7FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ6FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ5FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ4FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ3FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ2FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ3FDV = false;
            		sheet.SQ1FDV = true;	
            	elseif sheet.SQ1FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ3FDV = false;
            		sheet.SQ2FDV = false;
            	elseif sheet.SQ1FDV == false then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ3FDV = false;
            		sheet.SQ2FDV = false;
            	end;
        end, obj);

    obj._e_event59 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota40PS == true then
            		sheet.Gota39PS = true;
            		sheet.Gota38PS = true;
            		sheet.Gota37PS = true;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota39PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota38PS = true;
            		sheet.Gota37PS = true;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota38PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota37PS = true;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota37PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota36PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota35PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota34PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota33PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota32PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota31PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota30PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota29PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota28PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota27PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota26PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota25PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota24PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota23PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota22PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota21PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota20PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota19PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota18PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota17PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota16PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota15PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota14PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota13PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota12PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota11PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota10PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota9PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota8PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota7PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota6PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota5PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota4PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota3PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota2PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota3PS = false;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota1PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota3PS = false;
            		sheet.Gota2PS = false;
            	elseif sheet.Gota1PS == false then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota3PS = false;
            		sheet.Gota2PS = false;
            	end;
        end, obj);

    obj._e_event60 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota7Letal == true then
            		sheet.Gota6Letal = true;
            		sheet.Gota5Letal = true;
            		sheet.Gota4Letal = true;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota6Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota5Letal = true;
            		sheet.Gota4Letal = true;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota5Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota4Letal = true;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota4Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota3Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota2Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota3Letal = false;
            		sheet.Gota1Letal = true;	
            	elseif sheet.Gota1Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota3Letal = false;
            		sheet.Gota2Letal = false;
            	elseif sheet.Gota1Letal == false then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota3Letal = false;
            		sheet.Gota2Letal = false;
            	end;
        end, obj);

    obj._e_event61 = obj.dataLink63:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota7Agravado == true then
            		sheet.Gota6Agravado = true;
            		sheet.Gota5Agravado = true;
            		sheet.Gota4Agravado = true;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota6Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota5Agravado = true;
            		sheet.Gota4Agravado = true;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota5Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota4Agravado = true;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota4Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota3Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota2Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota3Agravado = false;
            		sheet.Gota1Agravado = true;	
            	elseif sheet.Gota1Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota3Agravado = false;
            		sheet.Gota2Agravado = false;
            	elseif sheet.Gota1Agravado == false then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota3Agravado = false;
            		sheet.Gota2Agravado = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
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
