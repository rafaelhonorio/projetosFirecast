require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmCodigo3()
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
    obj:setName("frmCodigo3");
    obj:setHeight(0);
    obj:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'bola1forcaQ', 'bola1destrezaQ', 'bola1vigorQ', 'bola1carismaQ', 'bola1manipuQ', 'bola1apareQ', 'bola1percepQ', 'bola1intelQ', 'bola1racioQ'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'bola5forcaQ', 'bola4forcaQ', 'bola3forcaQ', 'bola2forcaQ', 'bola1forcaQ'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'bola5destrezaQ', 'bola4destrezaQ', 'bola3destrezaQ', 'bola2destrezaQ', 'bola1destrezaQ'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'bola5vigorQ', 'bola4vigorQ', 'bola3vigorQ', 'bola2vigorQ', 'bola1vigorQ'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'bola5carismaQ', 'bola4carismaQ', 'bola3carismaQ', 'bola2carismaQ', 'bola1carismaQ'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'bola5manipuQ', 'bola4manipuQ', 'bola3manipuQ', 'bola2manipuQ', 'bola1manipuQ'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'bola5apareQ', 'bola4apareQ', 'bola3apareQ', 'bola2apareQ', 'bola1apareQ'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'bola5percepQ', 'bola4percepQ', 'bola3percepQ', 'bola2percepQ', 'bola1percepQ'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'bola5intelQ', 'bola4intelQ', 'bola3intelQ', 'bola2intelQ', 'bola1intelQ'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'bola5racioQ', 'bola4racioQ', 'bola3racioQ', 'bola2racioQ', 'bola1racioQ'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'bola5prontQ', 'bola4prontQ', 'bola3prontQ', 'bola2prontQ', 'bola1prontQ'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'bola5esporQ', 'bola4esporQ', 'bola3esporQ', 'bola2esporQ', 'bola1esporQ'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'bola5brigaQ', 'bola4brigaQ', 'bola3brigaQ', 'bola2brigaQ', 'bola1brigaQ'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'bola5empatQ', 'bola4empatQ', 'bola3empatQ', 'bola2empatQ', 'bola1empatQ'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'bola5expreQ', 'bola4expreQ', 'bola3expreQ', 'bola2expreQ', 'bola1expreQ'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'bola5intimQ', 'bola4intimQ', 'bola3intimQ', 'bola2intimQ', 'bola1intimQ'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'bola5tinoQ', 'bola4tinoQ', 'bola3tinoQ', 'bola2tinoQ', 'bola1tinoQ'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'bola5liderQ', 'bola4liderQ', 'bola3liderQ', 'bola2liderQ', 'bola1liderQ'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'bola5manhaQ', 'bola4manhaQ', 'bola3manhaQ', 'bola2manhaQ', 'bola1manhaQ'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'bola5labiaQ', 'bola4labiaQ', 'bola3labiaQ', 'bola2labiaQ', 'bola1labiaQ'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'bola5esquiQ', 'bola4esquiQ', 'bola3esquiQ', 'bola2esquiQ', 'bola1esquiQ'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'bola5empcaQ', 'bola4empcaQ', 'bola3empcaQ', 'bola2empcaQ', 'bola1empcaQ'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'bola5ofiQ', 'bola4ofiQ', 'bola3ofiQ', 'bola2ofiQ', 'bola1ofiQ'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'bola5conduQ', 'bola4conduQ', 'bola3conduQ', 'bola2conduQ', 'bola1conduQ'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'bola5etiqueQ', 'bola4etiqueQ', 'bola3etiqueQ', 'bola2etiqueQ', 'bola1etiqueQ'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'bola5armprQ', 'bola4armprQ', 'bola3armprQ', 'bola2armprQ', 'bola1armprQ'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'bola5segurQ', 'bola4segurQ', 'bola3segurQ', 'bola2segurQ', 'bola1segurQ'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'bola5armbrQ', 'bola4armbrQ', 'bola3armbrQ', 'bola2armbrQ', 'bola1armbrQ'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'bola5perfoQ', 'bola4perfoQ', 'bola3perfoQ', 'bola2perfoQ', 'bola1perfoQ'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'bola5furtiQ', 'bola4furtiQ', 'bola3furtiQ', 'bola2furtiQ', 'bola1furtiQ'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'bola5sobreQ', 'bola4sobreQ', 'bola3sobreQ', 'bola2sobreQ', 'bola1sobreQ'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'bola5montaQ', 'bola4montaQ', 'bola3montaQ', 'bola2montaQ', 'bola1montaQ'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'bola5instruQ', 'bola4instruQ', 'bola3instruQ', 'bola2instruQ', 'bola1instruQ'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'bola5compuQ', 'bola4compuQ', 'bola3compuQ', 'bola2compuQ', 'bola1compuQ'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'bola5enigQ', 'bola4enigQ', 'bola3enigQ', 'bola2enigQ', 'bola1enigQ'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'bola5gramaQ', 'bola4gramaQ', 'bola3gramaQ', 'bola2gramaQ', 'bola1gramaQ'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'bola5invesQ', 'bola4invesQ', 'bola3invesQ', 'bola2invesQ', 'bola1invesQ'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'bola5direiQ', 'bola4direiQ', 'bola3direiQ', 'bola2direiQ', 'bola1direiQ'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'bola5medicQ', 'bola4medicQ', 'bola3medicQ', 'bola2medicQ', 'bola1medicQ'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'bola5politQ', 'bola4politQ', 'bola3politQ', 'bola2politQ', 'bola1politQ'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'bola5cienciaQ', 'bola4cienciaQ', 'bola3cienciaQ', 'bola2cienciaQ', 'bola1cienciaQ'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'bola5tecnoQ', 'bola4tecnoQ', 'bola3tecnoQ', 'bola2tecnoQ', 'bola1tecnoQ'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setFields({'bola5linguiQ', 'bola4linguiQ', 'bola3linguiQ', 'bola2linguiQ', 'bola1linguiQ'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setFields({'bola10GlQ', 'bola9GlQ', 'bola8GlQ', 'bola7GlQ', 'bola6GlQ', 'bola5GlQ', 'bola4GlQ', 'bola3GlQ', 'bola2GlQ', 'bola1GlQ'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj);
    obj.dataLink45:setFields({'square10GlQ', 'square9GlQ', 'square8GlQ', 'square7GlQ', 'square6GlQ', 'square5GlQ', 'square4GlQ', 'square3GlQ', 'square2GlQ', 'square1GlQ'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj);
    obj.dataLink46:setFields({'mirror10BanQ', 'mirror9BanQ', 'mirror8BanQ', 'mirror7BanQ', 'mirror6BanQ', 'mirror5BanQ', 'mirror4BanQ', 'mirror3BanQ', 'mirror2BanQ', 'mirror1BanQ'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj);
    obj.dataLink47:setFields({'square10BanQ', 'square9BanQ', 'square8BanQ', 'square7BanQ', 'square6BanQ', 'square5BanQ', 'square4BanQ', 'square3BanQ', 'square2BanQ', 'square1BanQ'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj);
    obj.dataLink48:setFields({'bola10FDVQ', 'bola9FDVQ', 'bola8FDVQ', 'bola7FDVQ', 'bola6FDVQ', 'bola5FDVQ', 'bola4FDVQ', 'bola3FDVQ', 'bola2FDVQ', 'bola1FDVQ'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj);
    obj.dataLink49:setFields({'square10FDVQ', 'square9FDVQ', 'square8FDVQ', 'square7FDVQ', 'square6FDVQ', 'square5FDVQ', 'square4FDVQ', 'square3FDVQ', 'square2FDVQ', 'square1FDVQ'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj);
    obj.dataLink50:setFields({'bola7LetalQ', 'bola6LetalQ', 'bola5LetalQ', 'bola4LetalQ', 'bola3LetalQ', 'bola2LetalQ', 'bola1LetalQ'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj);
    obj.dataLink51:setFields({'bola7AgravadoQ', 'bola6AgravadoQ', 'bola5AgravadoQ', 'bola4AgravadoQ', 'bola3AgravadoQ', 'bola2AgravadoQ', 'bola1AgravadoQ'});
    obj.dataLink51:setName("dataLink51");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5forcaQ == true then
            		sheet.bola4forcaQ = true;
            		sheet.bola3forcaQ = true;
            		sheet.bola2forcaQ = true;
            		sheet.bola1forcaQ = true;
            	elseif sheet.bola4forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola3forcaQ = true;
            		sheet.bola2forcaQ = true;
            		sheet.bola1forcaQ = true;
            	elseif sheet.bola3forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola2forcaQ = true;
            		sheet.bola1forcaQ = true;
            	elseif sheet.bola2forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola3forcaQ = false;
            		sheet.bola1forcaQ = true;	
            	elseif sheet.bola1forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola3forcaQ = false;
            		sheet.bola2forcaQ = false;
            	elseif sheet.bola1forcaQ == false then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola3forcaQ = false;
            		sheet.bola2forcaQ = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5destrezaQ == true then
            		sheet.bola4destrezaQ = true;
            		sheet.bola3destrezaQ = true;
            		sheet.bola2destrezaQ = true;
            		sheet.bola1destrezaQ = true;
            	elseif sheet.bola4destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola3destrezaQ = true;
            		sheet.bola2destrezaQ = true;
            		sheet.bola1destrezaQ = true;
            	elseif sheet.bola3destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola2destrezaQ = true;
            		sheet.bola1destrezaQ = true;
            	elseif sheet.bola2destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola3destrezaQ = false;
            		sheet.bola1destrezaQ = true;	
            	elseif sheet.bola1destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola3destrezaQ = false;
            		sheet.bola2destrezaQ = false;
            	elseif sheet.bola1destrezaQ == false then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola3destrezaQ = false;
            		sheet.bola2destrezaQ = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5vigorQ == true then
            		sheet.bola4vigorQ = true;
            		sheet.bola3vigorQ = true;
            		sheet.bola2vigorQ = true;
            		sheet.bola1vigorQ = true;
            	elseif sheet.bola4vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola3vigorQ = true;
            		sheet.bola2vigorQ = true;
            		sheet.bola1vigorQ = true;
            	elseif sheet.bola3vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola2vigorQ = true;
            		sheet.bola1vigorQ = true;
            	elseif sheet.bola2vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola3vigorQ = false;
            		sheet.bola1vigorQ = true;	
            	elseif sheet.bola1vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola3vigorQ = false;
            		sheet.bola2vigorQ = false;
            	elseif sheet.bola1vigorQ == false then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola3vigorQ = false;
            		sheet.bola2vigorQ = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5carismaQ == true then
            		sheet.bola4carismaQ = true;
            		sheet.bola3carismaQ = true;
            		sheet.bola2carismaQ = true;
            		sheet.bola1carismaQ = true;
            	elseif sheet.bola4carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola3carismaQ = true;
            		sheet.bola2carismaQ = true;
            		sheet.bola1carismaQ = true;
            	elseif sheet.bola3carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola2carismaQ = true;
            		sheet.bola1carismaQ = true;
            	elseif sheet.bola2carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola3carismaQ = false;
            		sheet.bola1carismaQ = true;	
            	elseif sheet.bola1carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola3carismaQ = false;
            		sheet.bola2carismaQ = false;
            	elseif sheet.bola1carismaQ == false then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola3carismaQ = false;
            		sheet.bola2carismaQ = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5manipuQ == true then
            		sheet.bola4manipuQ = true;
            		sheet.bola3manipuQ = true;
            		sheet.bola2manipuQ = true;
            		sheet.bola1manipuQ = true;
            	elseif sheet.bola4manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola3manipuQ = true;
            		sheet.bola2manipuQ = true;
            		sheet.bola1manipuQ = true;
            	elseif sheet.bola3manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola2manipuQ = true;
            		sheet.bola1manipuQ = true;
            	elseif sheet.bola2manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola3manipuQ = false;
            		sheet.bola1manipuQ = true;	
            	elseif sheet.bola1manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola3manipuQ = false;
            		sheet.bola2manipuQ = false;
            	elseif sheet.bola1manipuQ == false then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola3manipuQ = false;
            		sheet.bola2manipuQ = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5apareQ == true then
            		sheet.bola4apareQ = true;
            		sheet.bola3apareQ = true;
            		sheet.bola2apareQ = true;
            		sheet.bola1apareQ = true;
            	elseif sheet.bola4apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola3apareQ = true;
            		sheet.bola2apareQ = true;
            		sheet.bola1apareQ = true;
            	elseif sheet.bola3apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola2apareQ = true;
            		sheet.bola1apareQ = true;
            	elseif sheet.bola2apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola3apareQ = false;
            		sheet.bola1apareQ = true;	
            	elseif sheet.bola1apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola3apareQ = false;
            		sheet.bola2apareQ = false;
            	elseif sheet.bola1apareQ == false then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola3apareQ = false;
            		sheet.bola2apareQ = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5percepQ == true then
            		sheet.bola4percepQ = true;
            		sheet.bola3percepQ = true;
            		sheet.bola2percepQ = true;
            		sheet.bola1percepQ = true;
            	elseif sheet.bola4percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola3percepQ = true;
            		sheet.bola2percepQ = true;
            		sheet.bola1percepQ = true;
            	elseif sheet.bola3percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola2percepQ = true;
            		sheet.bola1percepQ = true;
            	elseif sheet.bola2percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola3percepQ = false;
            		sheet.bola1percepQ = true;	
            	elseif sheet.bola1percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola3percepQ = false;
            		sheet.bola2percepQ = false;
            	elseif sheet.bola1percepQ == false then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola3percepQ = false;
            		sheet.bola2percepQ = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5intelQ == true then
            		sheet.bola4intelQ = true;
            		sheet.bola3intelQ = true;
            		sheet.bola2intelQ = true;
            		sheet.bola1intelQ = true;
            	elseif sheet.bola4intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola3intelQ = true;
            		sheet.bola2intelQ = true;
            		sheet.bola1intelQ = true;
            	elseif sheet.bola3intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola2intelQ = true;
            		sheet.bola1intelQ = true;
            	elseif sheet.bola2intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola3intelQ = false;
            		sheet.bola1intelQ = true;	
            	elseif sheet.bola1intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola3intelQ = false;
            		sheet.bola2intelQ = false;
            	elseif sheet.bola1intelQ == false then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola3intelQ = false;
            		sheet.bola2intelQ = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5racioQ == true then
            		sheet.bola4racioQ = true;
            		sheet.bola3racioQ = true;
            		sheet.bola2racioQ = true;
            		sheet.bola1racioQ = true;
            	elseif sheet.bola4racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola3racioQ = true;
            		sheet.bola2racioQ = true;
            		sheet.bola1racioQ = true;
            	elseif sheet.bola3racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola2racioQ = true;
            		sheet.bola1racioQ = true;
            	elseif sheet.bola2racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola3racioQ = false;
            		sheet.bola1racioQ = true;	
            	elseif sheet.bola1racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola3racioQ = false;
            		sheet.bola2racioQ = false;
            	elseif sheet.bola1racioQ == false then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola3racioQ = false;
            		sheet.bola2racioQ = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5prontQ == true then
            		sheet.bola4prontQ = true;
            		sheet.bola3prontQ = true;
            		sheet.bola2prontQ = true;
            		sheet.bola1prontQ = true;
            	elseif sheet.bola4prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola3prontQ = true;
            		sheet.bola2prontQ = true;
            		sheet.bola1prontQ = true;
            	elseif sheet.bola3prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola2prontQ = true;
            		sheet.bola1prontQ = true;
            	elseif sheet.bola2prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola3prontQ = false;
            		sheet.bola1prontQ = true;	
            	elseif sheet.bola1prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola3prontQ = false;
            		sheet.bola2prontQ = false;
            	elseif sheet.bola1prontQ == false then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola3prontQ = false;
            		sheet.bola2prontQ = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5esporQ == true then
            		sheet.bola4esporQ = true;
            		sheet.bola3esporQ = true;
            		sheet.bola2esporQ = true;
            		sheet.bola1esporQ = true;
            	elseif sheet.bola4esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola3esporQ = true;
            		sheet.bola2esporQ = true;
            		sheet.bola1esporQ = true;
            	elseif sheet.bola3esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola2esporQ = true;
            		sheet.bola1esporQ = true;
            	elseif sheet.bola2esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola3esporQ = false;
            		sheet.bola1esporQ = true;	
            	elseif sheet.bola1esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola3esporQ = false;
            		sheet.bola2esporQ = false;
            	elseif sheet.bola1esporQ == false then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola3esporQ = false;
            		sheet.bola2esporQ = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5brigaQ == true then
            		sheet.bola4brigaQ = true;
            		sheet.bola3brigaQ = true;
            		sheet.bola2brigaQ = true;
            		sheet.bola1brigaQ = true;
            	elseif sheet.bola4brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola3brigaQ = true;
            		sheet.bola2brigaQ = true;
            		sheet.bola1brigaQ = true;
            	elseif sheet.bola3brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola2brigaQ = true;
            		sheet.bola1brigaQ = true;
            	elseif sheet.bola2brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola3brigaQ = false;
            		sheet.bola1brigaQ = true;	
            	elseif sheet.bola1brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola3brigaQ = false;
            		sheet.bola2brigaQ = false;
            	elseif sheet.bola1brigaQ == false then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola3brigaQ = false;
            		sheet.bola2brigaQ = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5empatQ == true then
            		sheet.bola4empatQ = true;
            		sheet.bola3empatQ = true;
            		sheet.bola2empatQ = true;
            		sheet.bola1empatQ = true;
            	elseif sheet.bola4empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola3empatQ = true;
            		sheet.bola2empatQ = true;
            		sheet.bola1empatQ = true;
            	elseif sheet.bola3empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola2empatQ = true;
            		sheet.bola1empatQ = true;
            	elseif sheet.bola2empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola3empatQ = false;
            		sheet.bola1empatQ = true;	
            	elseif sheet.bola1empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola3empatQ = false;
            		sheet.bola2empatQ = false;
            	elseif sheet.bola1empatQ == false then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola3empatQ = false;
            		sheet.bola2empatQ = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5expreQ == true then
            		sheet.bola4expreQ = true;
            		sheet.bola3expreQ = true;
            		sheet.bola2expreQ = true;
            		sheet.bola1expreQ = true;
            	elseif sheet.bola4expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola3expreQ = true;
            		sheet.bola2expreQ = true;
            		sheet.bola1expreQ = true;
            	elseif sheet.bola3expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola2expreQ = true;
            		sheet.bola1expreQ = true;
            	elseif sheet.bola2expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola3expreQ = false;
            		sheet.bola1expreQ = true;	
            	elseif sheet.bola1expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola3expreQ = false;
            		sheet.bola2expreQ = false;
            	elseif sheet.bola1expreQ == false then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola3expreQ = false;
            		sheet.bola2expreQ = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5intimQ == true then
            		sheet.bola4intimQ = true;
            		sheet.bola3intimQ = true;
            		sheet.bola2intimQ = true;
            		sheet.bola1intimQ = true;
            	elseif sheet.bola4intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola3intimQ = true;
            		sheet.bola2intimQ = true;
            		sheet.bola1intimQ = true;
            	elseif sheet.bola3intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola2intimQ = true;
            		sheet.bola1intimQ = true;
            	elseif sheet.bola2intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola3intimQ = false;
            		sheet.bola1intimQ = true;	
            	elseif sheet.bola1intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola3intimQ = false;
            		sheet.bola2intimQ = false;
            	elseif sheet.bola1intimQ == false then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola3intimQ = false;
            		sheet.bola2intimQ = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5tinoQ == true then
            		sheet.bola4tinoQ = true;
            		sheet.bola3tinoQ = true;
            		sheet.bola2tinoQ = true;
            		sheet.bola1tinoQ = true;
            	elseif sheet.bola4tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola3tinoQ = true;
            		sheet.bola2tinoQ = true;
            		sheet.bola1tinoQ = true;
            	elseif sheet.bola3tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola2tinoQ = true;
            		sheet.bola1tinoQ = true;
            	elseif sheet.bola2tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola3tinoQ = false;
            		sheet.bola1tinoQ = true;	
            	elseif sheet.bola1tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola3tinoQ = false;
            		sheet.bola2tinoQ = false;
            	elseif sheet.bola1tinoQ == false then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola3tinoQ = false;
            		sheet.bola2tinoQ = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5liderQ == true then
            		sheet.bola4liderQ = true;
            		sheet.bola3liderQ = true;
            		sheet.bola2liderQ = true;
            		sheet.bola1liderQ = true;
            	elseif sheet.bola4liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola3liderQ = true;
            		sheet.bola2liderQ = true;
            		sheet.bola1liderQ = true;
            	elseif sheet.bola3liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola2liderQ = true;
            		sheet.bola1liderQ = true;
            	elseif sheet.bola2liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola3liderQ = false;
            		sheet.bola1liderQ = true;	
            	elseif sheet.bola1liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola3liderQ = false;
            		sheet.bola2liderQ = false;
            	elseif sheet.bola1liderQ == false then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola3liderQ = false;
            		sheet.bola2liderQ = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5manhaQ == true then
            		sheet.bola4manhaQ = true;
            		sheet.bola3manhaQ = true;
            		sheet.bola2manhaQ = true;
            		sheet.bola1manhaQ = true;
            	elseif sheet.bola4manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola3manhaQ = true;
            		sheet.bola2manhaQ = true;
            		sheet.bola1manhaQ = true;
            	elseif sheet.bola3manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola2manhaQ = true;
            		sheet.bola1manhaQ = true;
            	elseif sheet.bola2manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola3manhaQ = false;
            		sheet.bola1manhaQ = true;	
            	elseif sheet.bola1manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola3manhaQ = false;
            		sheet.bola2manhaQ = false;
            	elseif sheet.bola1manhaQ == false then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola3manhaQ = false;
            		sheet.bola2manhaQ = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5labiaQ == true then
            		sheet.bola4labiaQ = true;
            		sheet.bola3labiaQ = true;
            		sheet.bola2labiaQ = true;
            		sheet.bola1labiaQ = true;
            	elseif sheet.bola4labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola3labiaQ = true;
            		sheet.bola2labiaQ = true;
            		sheet.bola1labiaQ = true;
            	elseif sheet.bola3labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola2labiaQ = true;
            		sheet.bola1labiaQ = true;
            	elseif sheet.bola2labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola3labiaQ = false;
            		sheet.bola1labiaQ = true;	
            	elseif sheet.bola1labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola3labiaQ = false;
            		sheet.bola2labiaQ = false;
            	elseif sheet.bola1labiaQ == false then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola3labiaQ = false;
            		sheet.bola2labiaQ = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5esquiQ == true then
            		sheet.bola4esquiQ = true;
            		sheet.bola3esquiQ = true;
            		sheet.bola2esquiQ = true;
            		sheet.bola1esquiQ = true;
            	elseif sheet.bola4esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola3esquiQ = true;
            		sheet.bola2esquiQ = true;
            		sheet.bola1esquiQ = true;
            	elseif sheet.bola3esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola2esquiQ = true;
            		sheet.bola1esquiQ = true;
            	elseif sheet.bola2esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola3esquiQ = false;
            		sheet.bola1esquiQ = true;	
            	elseif sheet.bola1esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola3esquiQ = false;
            		sheet.bola2esquiQ = false;
            	elseif sheet.bola1esquiQ == false then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola3esquiQ = false;
            		sheet.bola2esquiQ = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5empcaQ == true then
            		sheet.bola4empcaQ = true;
            		sheet.bola3empcaQ = true;
            		sheet.bola2empcaQ = true;
            		sheet.bola1empcaQ = true;
            	elseif sheet.bola4empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola3empcaQ = true;
            		sheet.bola2empcaQ = true;
            		sheet.bola1empcaQ = true;
            	elseif sheet.bola3empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola2empcaQ = true;
            		sheet.bola1empcaQ = true;
            	elseif sheet.bola2empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola3empcaQ = false;
            		sheet.bola1empcaQ = true;	
            	elseif sheet.bola1empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola3empcaQ = false;
            		sheet.bola2empcaQ = false;
            	elseif sheet.bola1empcaQ == false then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola3empcaQ = false;
            		sheet.bola2empcaQ = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5ofiQ == true then
            		sheet.bola4ofiQ = true;
            		sheet.bola3ofiQ = true;
            		sheet.bola2ofiQ = true;
            		sheet.bola1ofiQ = true;
            	elseif sheet.bola4ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola3ofiQ = true;
            		sheet.bola2ofiQ = true;
            		sheet.bola1ofiQ = true;
            	elseif sheet.bola3ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola2ofiQ = true;
            		sheet.bola1ofiQ = true;
            	elseif sheet.bola2ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola3ofiQ = false;
            		sheet.bola1ofiQ = true;	
            	elseif sheet.bola1ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola3ofiQ = false;
            		sheet.bola2ofiQ = false;
            	elseif sheet.bola1ofiQ == false then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola3ofiQ = false;
            		sheet.bola2ofiQ = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5conduQ == true then
            		sheet.bola4conduQ = true;
            		sheet.bola3conduQ = true;
            		sheet.bola2conduQ = true;
            		sheet.bola1conduQ = true;
            	elseif sheet.bola4conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola3conduQ = true;
            		sheet.bola2conduQ = true;
            		sheet.bola1conduQ = true;
            	elseif sheet.bola3conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola2conduQ = true;
            		sheet.bola1conduQ = true;
            	elseif sheet.bola2conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola3conduQ = false;
            		sheet.bola1conduQ = true;	
            	elseif sheet.bola1conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola3conduQ = false;
            		sheet.bola2conduQ = false;
            	elseif sheet.bola1conduQ == false then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola3conduQ = false;
            		sheet.bola2conduQ = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5etiqueQ == true then
            		sheet.bola4etiqueQ = true;
            		sheet.bola3etiqueQ = true;
            		sheet.bola2etiqueQ = true;
            		sheet.bola1etiqueQ = true;
            	elseif sheet.bola4etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola3etiqueQ = true;
            		sheet.bola2etiqueQ = true;
            		sheet.bola1etiqueQ = true;
            	elseif sheet.bola3etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola2etiqueQ = true;
            		sheet.bola1etiqueQ = true;
            	elseif sheet.bola2etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola3etiqueQ = false;
            		sheet.bola1etiqueQ = true;	
            	elseif sheet.bola1etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola3etiqueQ = false;
            		sheet.bola2etiqueQ = false;
            	elseif sheet.bola1etiqueQ == false then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola3etiqueQ = false;
            		sheet.bola2etiqueQ = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5armprQ == true then
            		sheet.bola4armprQ = true;
            		sheet.bola3armprQ = true;
            		sheet.bola2armprQ = true;
            		sheet.bola1armprQ = true;
            	elseif sheet.bola4armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola3armprQ = true;
            		sheet.bola2armprQ = true;
            		sheet.bola1armprQ = true;
            	elseif sheet.bola3armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola2armprQ = true;
            		sheet.bola1armprQ = true;
            	elseif sheet.bola2armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola3armprQ = false;
            		sheet.bola1armprQ = true;	
            	elseif sheet.bola1armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola3armprQ = false;
            		sheet.bola2armprQ = false;
            	elseif sheet.bola1armprQ == false then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola3armprQ = false;
            		sheet.bola2armprQ = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5segurQ == true then
            		sheet.bola4segurQ = true;
            		sheet.bola3segurQ = true;
            		sheet.bola2segurQ = true;
            		sheet.bola1segurQ = true;
            	elseif sheet.bola4segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola3segurQ = true;
            		sheet.bola2segurQ = true;
            		sheet.bola1segurQ = true;
            	elseif sheet.bola3segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola2segurQ = true;
            		sheet.bola1segurQ = true;
            	elseif sheet.bola2segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola3segurQ = false;
            		sheet.bola1segurQ = true;	
            	elseif sheet.bola1segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola3segurQ = false;
            		sheet.bola2segurQ = false;
            	elseif sheet.bola1segurQ == false then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola3segurQ = false;
            		sheet.bola2segurQ = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5armbrQ == true then
            		sheet.bola4armbrQ = true;
            		sheet.bola3armbrQ = true;
            		sheet.bola2armbrQ = true;
            		sheet.bola1armbrQ = true;
            	elseif sheet.bola4armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola3armbrQ = true;
            		sheet.bola2armbrQ = true;
            		sheet.bola1armbrQ = true;
            	elseif sheet.bola3armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola2armbrQ = true;
            		sheet.bola1armbrQ = true;
            	elseif sheet.bola2armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola3armbrQ = false;
            		sheet.bola1armbrQ = true;	
            	elseif sheet.bola1armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola3armbrQ = false;
            		sheet.bola2armbrQ = false;
            	elseif sheet.bola1armbrQ == false then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola3armbrQ = false;
            		sheet.bola2armbrQ = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5perfoQ == true then
            		sheet.bola4perfoQ = true;
            		sheet.bola3perfoQ = true;
            		sheet.bola2perfoQ = true;
            		sheet.bola1perfoQ = true;
            	elseif sheet.bola4perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola3perfoQ = true;
            		sheet.bola2perfoQ = true;
            		sheet.bola1perfoQ = true;
            	elseif sheet.bola3perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola2perfoQ = true;
            		sheet.bola1perfoQ = true;
            	elseif sheet.bola2perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola3perfoQ = false;
            		sheet.bola1perfoQ = true;	
            	elseif sheet.bola1perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola3perfoQ = false;
            		sheet.bola2perfoQ = false;
            	elseif sheet.bola1perfoQ == false then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola3perfoQ = false;
            		sheet.bola2perfoQ = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5furtiQ == true then
            		sheet.bola4furtiQ = true;
            		sheet.bola3furtiQ = true;
            		sheet.bola2furtiQ = true;
            		sheet.bola1furtiQ = true;
            	elseif sheet.bola4furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola3furtiQ = true;
            		sheet.bola2furtiQ = true;
            		sheet.bola1furtiQ = true;
            	elseif sheet.bola3furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola2furtiQ = true;
            		sheet.bola1furtiQ = true;
            	elseif sheet.bola2furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola3furtiQ = false;
            		sheet.bola1furtiQ = true;	
            	elseif sheet.bola1furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola3furtiQ = false;
            		sheet.bola2furtiQ = false;
            	elseif sheet.bola1furtiQ == false then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola3furtiQ = false;
            		sheet.bola2furtiQ = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5sobreQ == true then
            		sheet.bola4sobreQ = true;
            		sheet.bola3sobreQ = true;
            		sheet.bola2sobreQ = true;
            		sheet.bola1sobreQ = true;
            	elseif sheet.bola4sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola3sobreQ = true;
            		sheet.bola2sobreQ = true;
            		sheet.bola1sobreQ = true;
            	elseif sheet.bola3sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola2sobreQ = true;
            		sheet.bola1sobreQ = true;
            	elseif sheet.bola2sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola3sobreQ = false;
            		sheet.bola1sobreQ = true;	
            	elseif sheet.bola1sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola3sobreQ = false;
            		sheet.bola2sobreQ = false;
            	elseif sheet.bola1sobreQ == false then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola3sobreQ = false;
            		sheet.bola2sobreQ = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5montaQ == true then
            		sheet.bola4montaQ = true;
            		sheet.bola3montaQ = true;
            		sheet.bola2montaQ = true;
            		sheet.bola1montaQ = true;
            	elseif sheet.bola4montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola3montaQ = true;
            		sheet.bola2montaQ = true;
            		sheet.bola1montaQ = true;
            	elseif sheet.bola3montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola2montaQ = true;
            		sheet.bola1montaQ = true;
            	elseif sheet.bola2montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola3montaQ = false;
            		sheet.bola1montaQ = true;	
            	elseif sheet.bola1montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola3montaQ = false;
            		sheet.bola2montaQ = false;
            	elseif sheet.bola1montaQ == false then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola3montaQ = false;
            		sheet.bola2montaQ = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5instruQ == true then
            		sheet.bola4instruQ = true;
            		sheet.bola3instruQ = true;
            		sheet.bola2instruQ = true;
            		sheet.bola1instruQ = true;
            	elseif sheet.bola4instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola3instruQ = true;
            		sheet.bola2instruQ = true;
            		sheet.bola1instruQ = true;
            	elseif sheet.bola3instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola2instruQ = true;
            		sheet.bola1instruQ = true;
            	elseif sheet.bola2instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola3instruQ = false;
            		sheet.bola1instruQ = true;	
            	elseif sheet.bola1instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola3instruQ = false;
            		sheet.bola2instruQ = false;
            	elseif sheet.bola1instruQ == false then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola3instruQ = false;
            		sheet.bola2instruQ = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5compuQ == true then
            		sheet.bola4compuQ = true;
            		sheet.bola3compuQ = true;
            		sheet.bola2compuQ = true;
            		sheet.bola1compuQ = true;
            	elseif sheet.bola4compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola3compuQ = true;
            		sheet.bola2compuQ = true;
            		sheet.bola1compuQ = true;
            	elseif sheet.bola3compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola2compuQ = true;
            		sheet.bola1compuQ = true;
            	elseif sheet.bola2compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola3compuQ = false;
            		sheet.bola1compuQ = true;	
            	elseif sheet.bola1compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola3compuQ = false;
            		sheet.bola2compuQ = false;
            	elseif sheet.bola1compuQ == false then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola3compuQ = false;
            		sheet.bola2compuQ = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5enigQ == true then
            		sheet.bola4enigQ = true;
            		sheet.bola3enigQ = true;
            		sheet.bola2enigQ = true;
            		sheet.bola1enigQ = true;
            	elseif sheet.bola4enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola3enigQ = true;
            		sheet.bola2enigQ = true;
            		sheet.bola1enigQ = true;
            	elseif sheet.bola3enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola2enigQ = true;
            		sheet.bola1enigQ = true;
            	elseif sheet.bola2enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola3enigQ = false;
            		sheet.bola1enigQ = true;	
            	elseif sheet.bola1enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola3enigQ = false;
            		sheet.bola2enigQ = false;
            	elseif sheet.bola1enigQ == false then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola3enigQ = false;
            		sheet.bola2enigQ = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5gramaQ == true then
            		sheet.bola4gramaQ = true;
            		sheet.bola3gramaQ = true;
            		sheet.bola2gramaQ = true;
            		sheet.bola1gramaQ = true;
            	elseif sheet.bola4gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola3gramaQ = true;
            		sheet.bola2gramaQ = true;
            		sheet.bola1gramaQ = true;
            	elseif sheet.bola3gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola2gramaQ = true;
            		sheet.bola1gramaQ = true;
            	elseif sheet.bola2gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola3gramaQ = false;
            		sheet.bola1gramaQ = true;	
            	elseif sheet.bola1gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola3gramaQ = false;
            		sheet.bola2gramaQ = false;
            	elseif sheet.bola1gramaQ == false then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola3gramaQ = false;
            		sheet.bola2gramaQ = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5invesQ == true then
            		sheet.bola4invesQ = true;
            		sheet.bola3invesQ = true;
            		sheet.bola2invesQ = true;
            		sheet.bola1invesQ = true;
            	elseif sheet.bola4invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola3invesQ = true;
            		sheet.bola2invesQ = true;
            		sheet.bola1invesQ = true;
            	elseif sheet.bola3invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola2invesQ = true;
            		sheet.bola1invesQ = true;
            	elseif sheet.bola2invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola3invesQ = false;
            		sheet.bola1invesQ = true;	
            	elseif sheet.bola1invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola3invesQ = false;
            		sheet.bola2invesQ = false;
            	elseif sheet.bola1invesQ == false then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola3invesQ = false;
            		sheet.bola2invesQ = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5direiQ == true then
            		sheet.bola4direiQ = true;
            		sheet.bola3direiQ = true;
            		sheet.bola2direiQ = true;
            		sheet.bola1direiQ = true;
            	elseif sheet.bola4direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola3direiQ = true;
            		sheet.bola2direiQ = true;
            		sheet.bola1direiQ = true;
            	elseif sheet.bola3direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola2direiQ = true;
            		sheet.bola1direiQ = true;
            	elseif sheet.bola2direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola3direiQ = false;
            		sheet.bola1direiQ = true;	
            	elseif sheet.bola1direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola3direiQ = false;
            		sheet.bola2direiQ = false;
            	elseif sheet.bola1direiQ == false then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola3direiQ = false;
            		sheet.bola2direiQ = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5medicQ == true then
            		sheet.bola4medicQ = true;
            		sheet.bola3medicQ = true;
            		sheet.bola2medicQ = true;
            		sheet.bola1medicQ = true;
            	elseif sheet.bola4medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola3medicQ = true;
            		sheet.bola2medicQ = true;
            		sheet.bola1medicQ = true;
            	elseif sheet.bola3medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola2medicQ = true;
            		sheet.bola1medicQ = true;
            	elseif sheet.bola2medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola3medicQ = false;
            		sheet.bola1medicQ = true;	
            	elseif sheet.bola1medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola3medicQ = false;
            		sheet.bola2medicQ = false;
            	elseif sheet.bola1medicQ == false then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola3medicQ = false;
            		sheet.bola2medicQ = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5politQ == true then
            		sheet.bola4politQ = true;
            		sheet.bola3politQ = true;
            		sheet.bola2politQ = true;
            		sheet.bola1politQ = true;
            	elseif sheet.bola4politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola3politQ = true;
            		sheet.bola2politQ = true;
            		sheet.bola1politQ = true;
            	elseif sheet.bola3politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola2politQ = true;
            		sheet.bola1politQ = true;
            	elseif sheet.bola2politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola3politQ = false;
            		sheet.bola1politQ = true;	
            	elseif sheet.bola1politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola3politQ = false;
            		sheet.bola2politQ = false;
            	elseif sheet.bola1politQ == false then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola3politQ = false;
            		sheet.bola2politQ = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5cienciaQ == true then
            		sheet.bola4cienciaQ = true;
            		sheet.bola3cienciaQ = true;
            		sheet.bola2cienciaQ = true;
            		sheet.bola1cienciaQ = true;
            	elseif sheet.bola4cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola3cienciaQ = true;
            		sheet.bola2cienciaQ = true;
            		sheet.bola1cienciaQ = true;
            	elseif sheet.bola3cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola2cienciaQ = true;
            		sheet.bola1cienciaQ = true;
            	elseif sheet.bola2cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola3cienciaQ = false;
            		sheet.bola1cienciaQ = true;	
            	elseif sheet.bola1cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola3cienciaQ = false;
            		sheet.bola2cienciaQ = false;
            	elseif sheet.bola1cienciaQ == false then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola3cienciaQ = false;
            		sheet.bola2cienciaQ = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5tecnoQ == true then
            		sheet.bola4tecnoQ = true;
            		sheet.bola3tecnoQ = true;
            		sheet.bola2tecnoQ = true;
            		sheet.bola1tecnoQ = true;
            	elseif sheet.bola4tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola3tecnoQ = true;
            		sheet.bola2tecnoQ = true;
            		sheet.bola1tecnoQ = true;
            	elseif sheet.bola3tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola2tecnoQ = true;
            		sheet.bola1tecnoQ = true;
            	elseif sheet.bola2tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola3tecnoQ = false;
            		sheet.bola1tecnoQ = true;	
            	elseif sheet.bola1tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola3tecnoQ = false;
            		sheet.bola2tecnoQ = false;
            	elseif sheet.bola1tecnoQ == false then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola3tecnoQ = false;
            		sheet.bola2tecnoQ = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5linguiQ == true then
            		sheet.bola4linguiQ = true;
            		sheet.bola3linguiQ = true;
            		sheet.bola2linguiQ = true;
            		sheet.bola1linguiQ = true;
            	elseif sheet.bola4linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola3linguiQ = true;
            		sheet.bola2linguiQ = true;
            		sheet.bola1linguiQ = true;
            	elseif sheet.bola3linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola2linguiQ = true;
            		sheet.bola1linguiQ = true;
            	elseif sheet.bola2linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola3linguiQ = false;
            		sheet.bola1linguiQ = true;	
            	elseif sheet.bola1linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola3linguiQ = false;
            		sheet.bola2linguiQ = false;
            	elseif sheet.bola1linguiQ == false then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola3linguiQ = false;
            		sheet.bola2linguiQ = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola10GlQ == true then
            		sheet.bola9GlQ = true;
            		sheet.bola8GlQ = true;
            		sheet.bola7GlQ = true;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola9GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola8GlQ = true;
            		sheet.bola7GlQ = true;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola8GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola7GlQ = true;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola7GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola6GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola5GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola4GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola3GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola2GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola3GlQ = false;
            		sheet.bola1GlQ = true;	
            	elseif sheet.bola1GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola3GlQ = false;
            		sheet.bola2GlQ = false;
            	elseif sheet.bola1GlQ == false then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola3GlQ = false;
            		sheet.bola2GlQ = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10GlQ == true then
            		sheet.square9GlQ = true;
            		sheet.square8GlQ = true;
            		sheet.square7GlQ = true;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square9GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square8GlQ = true;
            		sheet.square7GlQ = true;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square8GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square7GlQ = true;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square7GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square6GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square5GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square4GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square3GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square2GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square3GlQ = false;
            		sheet.square1GlQ = true;	
            	elseif sheet.square1GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square3GlQ = false;
            		sheet.square2GlQ = false;
            	elseif sheet.square1GlQ == false then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square3GlQ = false;
            		sheet.square2GlQ = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mirror10BanQ == true then
            		sheet.mirror9BanQ = true;
            		sheet.mirror8BanQ = true;
            		sheet.mirror7BanQ = true;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror9BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror8BanQ = true;
            		sheet.mirror7BanQ = true;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror8BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror7BanQ = true;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror7BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror6BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror5BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror4BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror3BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror2BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror3BanQ = false;
            		sheet.mirror1BanQ = true;	
            	elseif sheet.mirror1BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror3BanQ = false;
            		sheet.mirror2BanQ = false;
            	elseif sheet.mirror1BanQ == false then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror3BanQ = false;
            		sheet.mirror2BanQ = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10BanQ == true then
            		sheet.square9BanQ = true;
            		sheet.square8BanQ = true;
            		sheet.square7BanQ = true;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square9BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square8BanQ = true;
            		sheet.square7BanQ = true;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square8BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square7BanQ = true;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square7BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square6BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square5BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square4BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square3BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square2BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square3BanQ = false;
            		sheet.square1BanQ = true;	
            	elseif sheet.square1BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square3BanQ = false;
            		sheet.square2BanQ = false;
            	elseif sheet.square1BanQ == false then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square3BanQ = false;
            		sheet.square2BanQ = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola10FDVQ == true then
            		sheet.bola9FDVQ = true;
            		sheet.bola8FDVQ = true;
            		sheet.bola7FDVQ = true;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola9FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola8FDVQ = true;
            		sheet.bola7FDVQ = true;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola8FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola7FDVQ = true;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola7FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola6FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola5FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola4FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola3FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola2FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola3FDVQ = false;
            		sheet.bola1FDVQ = true;	
            	elseif sheet.bola1FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola3FDVQ = false;
            		sheet.bola2FDVQ = false;
            	elseif sheet.bola1FDVQ == false then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola3FDVQ = false;
            		sheet.bola2FDVQ = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10FDVQ == true then
            		sheet.square9FDVQ = true;
            		sheet.square8FDVQ = true;
            		sheet.square7FDVQ = true;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square9FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square8FDVQ = true;
            		sheet.square7FDVQ = true;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square8FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square7FDVQ = true;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square7FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square6FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square5FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square4FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square3FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square2FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square3FDVQ = false;
            		sheet.square1FDVQ = true;	
            	elseif sheet.square1FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square3FDVQ = false;
            		sheet.square2FDVQ = false;
            	elseif sheet.square1FDVQ == false then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square3FDVQ = false;
            		sheet.square2FDVQ = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola7LetalQ == true then
            		sheet.bola6LetalQ = true;
            		sheet.bola5LetalQ = true;
            		sheet.bola4LetalQ = true;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola6LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola5LetalQ = true;
            		sheet.bola4LetalQ = true;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola5LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola4LetalQ = true;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola4LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola3LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola2LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola3LetalQ = false;
            		sheet.bola1LetalQ = true;	
            	elseif sheet.bola1LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola3LetalQ = false;
            		sheet.bola2LetalQ = false;
            	elseif sheet.bola1LetalQ == false then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola3LetalQ = false;
            		sheet.bola2LetalQ = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola7AgravadoQ == true then
            		sheet.bola6AgravadoQ = true;
            		sheet.bola5AgravadoQ = true;
            		sheet.bola4AgravadoQ = true;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola6AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola5AgravadoQ = true;
            		sheet.bola4AgravadoQ = true;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola5AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola4AgravadoQ = true;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola4AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola3AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola2AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola3AgravadoQ = false;
            		sheet.bola1AgravadoQ = true;	
            	elseif sheet.bola1AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola3AgravadoQ = false;
            		sheet.bola2AgravadoQ = false;
            	elseif sheet.bola1AgravadoQ == false then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola3AgravadoQ = false;
            		sheet.bola2AgravadoQ = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
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
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmCodigo3()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmCodigo3();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmCodigo3 = {
    newEditor = newfrmCodigo3, 
    new = newfrmCodigo3, 
    name = "frmCodigo3", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmCodigo3 = _frmCodigo3;
Firecast.registrarForm(_frmCodigo3);

return _frmCodigo3;
