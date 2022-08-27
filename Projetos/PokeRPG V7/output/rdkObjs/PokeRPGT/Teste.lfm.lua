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
    obj.dataLink1:setFields({'vitalidade_12', 'vitalidade_11', 'vitalidade_10', 'vitalidade_9', 'vitalidade_8', 'vitalidade_7', 'vitalidade_6', 'vitalidade_5', 'vitalidade_4', 'vitalidade_3', 'vitalidade_2', 'vitalidade_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'acoesDiarias_12', 'acoesDiarias_11', 'acoesDiarias_10', 'acoesDiarias_9', 'acoesDiarias_8', 'acoesDiarias_7', 'acoesDiarias_6', 'acoesDiarias_5', 'acoesDiarias_4', 'acoesDiarias_3', 'acoesDiarias_2', 'acoesDiarias_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'forca_9', 'forca_8', 'forca_7', 'forca_6', 'forca_5', 'forca_4', 'forca_3', 'forca_2', 'forca_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'percepcao_9', 'percepcao_8', 'percepcao_7', 'percepcao_6', 'percepcao_5', 'percepcao_4', 'percepcao_3', 'percepcao_2', 'percepcao_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'carisma_9', 'carisma_8', 'carisma_7', 'carisma_6', 'carisma_5', 'carisma_4', 'carisma_3', 'carisma_2', 'carisma_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'destreza_9', 'destreza_8', 'destreza_7', 'destreza_6', 'destreza_5', 'destreza_4', 'destreza_3', 'destreza_2', 'destreza_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'intimidacao_9', 'intimidacao_8', 'intimidacao_7', 'intimidacao_6', 'intimidacao_5', 'intimidacao_4', 'intimidacao_3', 'intimidacao_2', 'intimidacao_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'manipulacao_9', 'manipulacao_8', 'manipulacao_7', 'manipulacao_6', 'manipulacao_5', 'manipulacao_4', 'manipulacao_3', 'manipulacao_2', 'manipulacao_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'inteligencia_9', 'inteligencia_8', 'inteligencia_7', 'inteligencia_6', 'inteligencia_5', 'inteligencia_4', 'inteligencia_3', 'inteligencia_2', 'inteligencia_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'vigor_9', 'vigor_8', 'vigor_7', 'vigor_6', 'vigor_5', 'vigor_4', 'vigor_3', 'vigor_2', 'vigor_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'raciocinio_9', 'raciocinio_8', 'raciocinio_7', 'raciocinio_6', 'raciocinio_5', 'raciocinio_4', 'raciocinio_3', 'raciocinio_2', 'raciocinio_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'aparencia_9', 'aparencia_8', 'aparencia_7', 'aparencia_6', 'aparencia_5', 'aparencia_4', 'aparencia_3', 'aparencia_2', 'aparencia_1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'prontidao_9', 'prontidao_8', 'prontidao_7', 'prontidao_6', 'prontidao_5', 'prontidao_4', 'prontidao_3', 'prontidao_2', 'prontidao_1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'academicos_9', 'academicos_8', 'academicos_7', 'academicos_6', 'academicos_5', 'academicos_4', 'academicos_3', 'academicos_2', 'academicos_1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'empatiaPokemon_9', 'empatiaPokemon_8', 'empatiaPokemon_7', 'empatiaPokemon_6', 'empatiaPokemon_5', 'empatiaPokemon_4', 'empatiaPokemon_3', 'empatiaPokemon_2', 'empatiaPokemon_1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'esportes_9', 'esportes_8', 'esportes_7', 'esportes_6', 'esportes_5', 'esportes_4', 'esportes_3', 'esportes_2', 'esportes_1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'computador_9', 'computador_8', 'computador_7', 'computador_6', 'computador_5', 'computador_4', 'computador_3', 'computador_2', 'computador_1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'oficios_9', 'oficios_8', 'oficios_7', 'oficios_6', 'oficios_5', 'oficios_4', 'oficios_3', 'oficios_2', 'oficios_1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'briga_9', 'briga_8', 'briga_7', 'briga_6', 'briga_5', 'briga_4', 'briga_3', 'briga_2', 'briga_1'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({'habitats_9', 'habitats_8', 'habitats_7', 'habitats_6', 'habitats_5', 'habitats_4', 'habitats_3', 'habitats_2', 'habitats_1'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'esquiva_9', 'esquiva_8', 'esquiva_7', 'esquiva_6', 'esquiva_5', 'esquiva_4', 'esquiva_3', 'esquiva_2', 'esquiva_1'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'investigacao_9', 'investigacao_8', 'investigacao_7', 'investigacao_6', 'investigacao_5', 'investigacao_4', 'investigacao_3', 'investigacao_2', 'investigacao_1'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'etiqueta_9', 'etiqueta_8', 'etiqueta_7', 'etiqueta_6', 'etiqueta_5', 'etiqueta_4', 'etiqueta_3', 'etiqueta_2', 'etiqueta_1'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj);
    obj.dataLink24:setFields({'empatia_9', 'empatia_8', 'empatia_7', 'empatia_6', 'empatia_5', 'empatia_4', 'empatia_3', 'empatia_2', 'empatia_1'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj);
    obj.dataLink25:setFields({'atuacao_9', 'atuacao_8', 'atuacao_7', 'atuacao_6', 'atuacao_5', 'atuacao_4', 'atuacao_3', 'atuacao_2', 'atuacao_1'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj);
    obj.dataLink26:setFields({'direito_9', 'direito_8', 'direito_7', 'direito_6', 'direito_5', 'direito_4', 'direito_3', 'direito_2', 'direito_1'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj);
    obj.dataLink27:setFields({'expressao_9', 'expressao_8', 'expressao_7', 'expressao_6', 'expressao_5', 'expressao_4', 'expressao_3', 'expressao_2', 'expressao_1'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj);
    obj.dataLink28:setFields({'seguranca_9', 'seguranca_8', 'seguranca_7', 'seguranca_6', 'seguranca_5', 'seguranca_4', 'seguranca_3', 'seguranca_2', 'seguranca_1'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj);
    obj.dataLink29:setFields({'intimidacao_9', 'intimidacao_8', 'intimidacao_7', 'intimidacao_6', 'intimidacao_5', 'intimidacao_4', 'intimidacao_3', 'intimidacao_2', 'intimidacao_1'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj);
    obj.dataLink30:setFields({'medicina_9', 'medicina_8', 'medicina_7', 'medicina_6', 'medicina_5', 'medicina_4', 'medicina_3', 'medicina_2', 'medicina_1'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj);
    obj.dataLink31:setFields({'furtividade_9', 'furtividade_8', 'furtividade_7', 'furtividade_6', 'furtividade_5', 'furtividade_4', 'furtividade_3', 'furtividade_2', 'furtividade_1'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj);
    obj.dataLink32:setFields({'lideranca_9', 'lideranca_8', 'lideranca_7', 'lideranca_6', 'lideranca_5', 'lideranca_4', 'lideranca_3', 'lideranca_2', 'lideranca_1'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj);
    obj.dataLink33:setFields({'ciencia_9', 'ciencia_8', 'ciencia_7', 'ciencia_6', 'ciencia_5', 'ciencia_4', 'ciencia_3', 'ciencia_2', 'ciencia_1'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj);
    obj.dataLink34:setFields({'sobrevivencia_9', 'sobrevivencia_8', 'sobrevivencia_7', 'sobrevivencia_6', 'sobrevivencia_5', 'sobrevivencia_4', 'sobrevivencia_3', 'sobrevivencia_2', 'sobrevivencia_1'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj);
    obj.dataLink35:setFields({'culinaria_9', 'culinaria_8', 'culinaria_7', 'culinaria_6', 'culinaria_5', 'culinaria_4', 'culinaria_3', 'culinaria_2', 'culinaria_1'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj);
    obj.dataLink36:setFields({'caca_9', 'caca_8', 'caca_7', 'caca_6', 'caca_5', 'caca_4', 'caca_3', 'caca_2', 'caca_1'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj);
    obj.dataLink37:setFields({'coragem_12', 'coragem_11', 'coragem_10', 'coragem_9', 'coragem_8', 'coragem_7', 'coragem_6', 'coragem_5', 'coragem_4', 'coragem_3', 'coragem_2', 'coragem_1'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj);
    obj.dataLink38:setFields({'conviccao_12', 'conviccao_11', 'conviccao_10', 'conviccao_9', 'conviccao_8', 'conviccao_7', 'conviccao_6', 'conviccao_5', 'conviccao_4', 'conviccao_3', 'conviccao_2', 'conviccao_1'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj);
    obj.dataLink39:setFields({'forcaDeVontade_12', 'forcaDeVontade_11', 'forcaDeVontade_10', 'forcaDeVontade_9', 'forcaDeVontade_8', 'forcaDeVontade_7', 'forcaDeVontade_6', 'forcaDeVontade_5', 'forcaDeVontade_4', 'forcaDeVontade_3', 'forcaDeVontade_2', 'forcaDeVontade_1'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj);
    obj.dataLink40:setFields({'famaBoa_10', 'famaBoa_9', 'famaBoa_8', 'famaBoa_7', 'famaBoa_6', 'famaBoa_5', 'famaBoa_4', 'famaBoa_3', 'famaBoa_2', 'famaBoa_1'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj);
    obj.dataLink41:setFields({'reconhecimento_10', 'reconhecimento_9', 'reconhecimento_8', 'reconhecimento_7', 'reconhecimento_6', 'reconhecimento_5', 'reconhecimento_4', 'reconhecimento_3', 'reconhecimento_2', 'reconhecimento_1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj);
    obj.dataLink42:setFields({'influenciaBoa_10', 'influenciaBoa_9', 'influenciaBoa_8', 'influenciaBoa_7', 'influenciaBoa_6', 'influenciaBoa_5', 'influenciaBoa_4', 'influenciaBoa_3', 'influenciaBoa_2', 'influenciaBoa_1'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj);
    obj.dataLink43:setFields({'famaRuim_10', 'famaRuim_9', 'famaRuim_8', 'famaRuim_7', 'famaRuim_6', 'famaRuim_5', 'famaRuim_4', 'famaRuim_3', 'famaRuim_2', 'famaRuim_1'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj);
    obj.dataLink44:setFields({'influenciaRuim_10', 'influenciaRuim_9', 'influenciaRuim_8', 'influenciaRuim_7', 'influenciaRuim_6', 'influenciaRuim_5', 'influenciaRuim_4', 'influenciaRuim_3', 'influenciaRuim_2', 'influenciaRuim_1'});
    obj.dataLink44:setName("dataLink44");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vitalidade_12 == true then
            		sheet.vitalidade_11 = true;
            		sheet.vitalidade_10 = true;
            		sheet.vitalidade_9 = true;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_11 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_10 = true;
            		sheet.vitalidade_9 = true;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_10 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_9 = true;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_9 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_8 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_7 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_6 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_5 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_4 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_3 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_2 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_3 = false;
            		sheet.vitalidade_1 = true;	
            	elseif sheet.vitalidade_1 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_3 = false;
            		sheet.vitalidade_2 = false;
            	elseif sheet.vitalidade_1 == false then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_3 = false;
            		sheet.vitalidade_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.acoesDiarias_12 == true then
            		sheet.acoesDiarias_11 = true;
            		sheet.acoesDiarias_10 = true;
            		sheet.acoesDiarias_9 = true;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_11 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_10 = true;
            		sheet.acoesDiarias_9 = true;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_10 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_9 = true;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_9 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_8 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_7 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_6 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_5 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_4 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_3 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_2 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_3 = false;
            		sheet.acoesDiarias_1 = true;	
            	elseif sheet.acoesDiarias_1 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_3 = false;
            		sheet.acoesDiarias_2 = false;
            	elseif sheet.acoesDiarias_1 == false then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_3 = false;
            		sheet.acoesDiarias_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.forca_9 == true then
            		sheet.forca_8 = true;
            		sheet.forca_7 = true;
            		sheet.forca_6 = true;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_8 == true then
            		sheet.forca_9 = false;
            		sheet.forca_7 = true;
            		sheet.forca_6 = true;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_7 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_6 = true;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_6 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_5 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_4 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_3 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_2 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_3 = false;
            		sheet.forca_1 = true;	
            	elseif sheet.forca_1 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_3 = false;
            		sheet.forca_2 = false;
            	elseif sheet.forca_1 == false then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_3 = false;
            		sheet.forca_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.percepcao_9 == true then
            		sheet.percepcao_8 = true;
            		sheet.percepcao_7 = true;
            		sheet.percepcao_6 = true;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_8 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_7 = true;
            		sheet.percepcao_6 = true;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_7 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_6 = true;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_6 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_5 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_4 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_3 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_2 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_3 = false;
            		sheet.percepcao_1 = true;	
            	elseif sheet.percepcao_1 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_3 = false;
            		sheet.percepcao_2 = false;
            	elseif sheet.percepcao_1 == false then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_3 = false;
            		sheet.percepcao_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.carisma_9 == true then
            		sheet.carisma_8 = true;
            		sheet.carisma_7 = true;
            		sheet.carisma_6 = true;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_8 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_7 = true;
            		sheet.carisma_6 = true;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_7 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_6 = true;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_6 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_5 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_4 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_3 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_2 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_3 = false;
            		sheet.carisma_1 = true;	
            	elseif sheet.carisma_1 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_3 = false;
            		sheet.carisma_2 = false;
            	elseif sheet.carisma_1 == false then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_3 = false;
            		sheet.carisma_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.destreza_9 == true then
            		sheet.destreza_8 = true;
            		sheet.destreza_7 = true;
            		sheet.destreza_6 = true;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_8 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_7 = true;
            		sheet.destreza_6 = true;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_7 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_6 = true;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_6 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_5 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_4 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_3 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_2 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_3 = false;
            		sheet.destreza_1 = true;	
            	elseif sheet.destreza_1 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_3 = false;
            		sheet.destreza_2 = false;
            	elseif sheet.destreza_1 == false then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_3 = false;
            		sheet.destreza_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.intimidacao_9 == true then
            		sheet.intimidacao_8 = true;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_8 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_7 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_6 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_5 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_4 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_3 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_2 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_1 = true;	
            	elseif sheet.intimidacao_1 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	elseif sheet.intimidacao_1 == false then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.manipulacao_9 == true then
            		sheet.manipulacao_8 = true;
            		sheet.manipulacao_7 = true;
            		sheet.manipulacao_6 = true;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_8 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_7 = true;
            		sheet.manipulacao_6 = true;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_7 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_6 = true;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_6 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_5 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_4 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_3 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_2 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_3 = false;
            		sheet.manipulacao_1 = true;	
            	elseif sheet.manipulacao_1 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_3 = false;
            		sheet.manipulacao_2 = false;
            	elseif sheet.manipulacao_1 == false then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_3 = false;
            		sheet.manipulacao_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.inteligencia_9 == true then
            		sheet.inteligencia_8 = true;
            		sheet.inteligencia_7 = true;
            		sheet.inteligencia_6 = true;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_8 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_7 = true;
            		sheet.inteligencia_6 = true;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_7 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_6 = true;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_6 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_5 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_4 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_3 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_2 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_3 = false;
            		sheet.inteligencia_1 = true;	
            	elseif sheet.inteligencia_1 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_3 = false;
            		sheet.inteligencia_2 = false;
            	elseif sheet.inteligencia_1 == false then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_3 = false;
            		sheet.inteligencia_2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vigor_9 == true then
            		sheet.vigor_8 = true;
            		sheet.vigor_7 = true;
            		sheet.vigor_6 = true;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_8 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_7 = true;
            		sheet.vigor_6 = true;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_7 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_6 = true;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_6 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_5 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_4 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_3 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_2 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_3 = false;
            		sheet.vigor_1 = true;	
            	elseif sheet.vigor_1 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_3 = false;
            		sheet.vigor_2 = false;
            	elseif sheet.vigor_1 == false then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_3 = false;
            		sheet.vigor_2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.raciocinio_9 == true then
            		sheet.raciocinio_8 = true;
            		sheet.raciocinio_7 = true;
            		sheet.raciocinio_6 = true;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_8 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_7 = true;
            		sheet.raciocinio_6 = true;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_7 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_6 = true;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_6 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_5 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_4 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_3 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_2 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_3 = false;
            		sheet.raciocinio_1 = true;	
            	elseif sheet.raciocinio_1 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_3 = false;
            		sheet.raciocinio_2 = false;
            	elseif sheet.raciocinio_1 == false then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_3 = false;
            		sheet.raciocinio_2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.aparencia_9 == true then
            		sheet.aparencia_8 = true;
            		sheet.aparencia_7 = true;
            		sheet.aparencia_6 = true;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_8 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_7 = true;
            		sheet.aparencia_6 = true;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_7 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_6 = true;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_6 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_5 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_4 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_3 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_2 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_3 = false;
            		sheet.aparencia_1 = true;	
            	elseif sheet.aparencia_1 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_3 = false;
            		sheet.aparencia_2 = false;
            	elseif sheet.aparencia_1 == false then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_3 = false;
            		sheet.aparencia_2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.prontidao_9 == true then
            		sheet.prontidao_8 = true;
            		sheet.prontidao_7 = true;
            		sheet.prontidao_6 = true;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_8 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_7 = true;
            		sheet.prontidao_6 = true;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_7 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_6 = true;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_6 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_5 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_4 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_3 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_2 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_3 = false;
            		sheet.prontidao_1 = true;	
            	elseif sheet.prontidao_1 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_3 = false;
            		sheet.prontidao_2 = false;
            	elseif sheet.prontidao_1 == false then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_3 = false;
            		sheet.prontidao_2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.academicos_9 == true then
            		sheet.academicos_8 = true;
            		sheet.academicos_7 = true;
            		sheet.academicos_6 = true;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_8 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_7 = true;
            		sheet.academicos_6 = true;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_7 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_6 = true;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_6 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_5 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_4 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_3 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_2 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_3 = false;
            		sheet.academicos_1 = true;	
            	elseif sheet.academicos_1 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_3 = false;
            		sheet.academicos_2 = false;
            	elseif sheet.academicos_1 == false then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_3 = false;
            		sheet.academicos_2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.empatiaPokemon_9 == true then
            		sheet.empatiaPokemon_8 = true;
            		sheet.empatiaPokemon_7 = true;
            		sheet.empatiaPokemon_6 = true;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_8 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_7 = true;
            		sheet.empatiaPokemon_6 = true;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_7 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_6 = true;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_6 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_5 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_4 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_3 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_2 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_3 = false;
            		sheet.empatiaPokemon_1 = true;	
            	elseif sheet.empatiaPokemon_1 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_3 = false;
            		sheet.empatiaPokemon_2 = false;
            	elseif sheet.empatiaPokemon_1 == false then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_3 = false;
            		sheet.empatiaPokemon_2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esportes_9 == true then
            		sheet.esportes_8 = true;
            		sheet.esportes_7 = true;
            		sheet.esportes_6 = true;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_8 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_7 = true;
            		sheet.esportes_6 = true;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_7 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_6 = true;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_6 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_5 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_4 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_3 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_2 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_3 = false;
            		sheet.esportes_1 = true;	
            	elseif sheet.esportes_1 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_3 = false;
            		sheet.esportes_2 = false;
            	elseif sheet.esportes_1 == false then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_3 = false;
            		sheet.esportes_2 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.computador_9 == true then
            		sheet.computador_8 = true;
            		sheet.computador_7 = true;
            		sheet.computador_6 = true;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_8 == true then
            		sheet.computador_9 = false;
            		sheet.computador_7 = true;
            		sheet.computador_6 = true;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_7 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_6 = true;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_6 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_5 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_4 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_3 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_2 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_3 = false;
            		sheet.computador_1 = true;	
            	elseif sheet.computador_1 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_3 = false;
            		sheet.computador_2 = false;
            	elseif sheet.computador_1 == false then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_3 = false;
            		sheet.computador_2 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.oficios_9 == true then
            		sheet.oficios_8 = true;
            		sheet.oficios_7 = true;
            		sheet.oficios_6 = true;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_8 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_7 = true;
            		sheet.oficios_6 = true;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_7 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_6 = true;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_6 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_5 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_4 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_3 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_2 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_3 = false;
            		sheet.oficios_1 = true;	
            	elseif sheet.oficios_1 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_3 = false;
            		sheet.oficios_2 = false;
            	elseif sheet.oficios_1 == false then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_3 = false;
            		sheet.oficios_2 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.briga_9 == true then
            		sheet.briga_8 = true;
            		sheet.briga_7 = true;
            		sheet.briga_6 = true;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_8 == true then
            		sheet.briga_9 = false;
            		sheet.briga_7 = true;
            		sheet.briga_6 = true;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_7 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_6 = true;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_6 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_5 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_4 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_3 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_2 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_3 = false;
            		sheet.briga_1 = true;	
            	elseif sheet.briga_1 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_3 = false;
            		sheet.briga_2 = false;
            	elseif sheet.briga_1 == false then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_3 = false;
            		sheet.briga_2 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.habitats_9 == true then
            		sheet.habitats_8 = true;
            		sheet.habitats_7 = true;
            		sheet.habitats_6 = true;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_8 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_7 = true;
            		sheet.habitats_6 = true;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_7 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_6 = true;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_6 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_5 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_4 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_3 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_2 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_3 = false;
            		sheet.habitats_1 = true;	
            	elseif sheet.habitats_1 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_3 = false;
            		sheet.habitats_2 = false;
            	elseif sheet.habitats_1 == false then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_3 = false;
            		sheet.habitats_2 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esquiva_9 == true then
            		sheet.esquiva_8 = true;
            		sheet.esquiva_7 = true;
            		sheet.esquiva_6 = true;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_8 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_7 = true;
            		sheet.esquiva_6 = true;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_7 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_6 = true;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_6 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_5 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_4 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_3 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_2 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_3 = false;
            		sheet.esquiva_1 = true;	
            	elseif sheet.esquiva_1 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_3 = false;
            		sheet.esquiva_2 = false;
            	elseif sheet.esquiva_1 == false then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_3 = false;
            		sheet.esquiva_2 = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.investigacao_9 == true then
            		sheet.investigacao_8 = true;
            		sheet.investigacao_7 = true;
            		sheet.investigacao_6 = true;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_8 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_7 = true;
            		sheet.investigacao_6 = true;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_7 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_6 = true;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_6 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_5 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_4 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_3 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_2 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_3 = false;
            		sheet.investigacao_1 = true;	
            	elseif sheet.investigacao_1 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_3 = false;
            		sheet.investigacao_2 = false;
            	elseif sheet.investigacao_1 == false then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_3 = false;
            		sheet.investigacao_2 = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.etiqueta_9 == true then
            		sheet.etiqueta_8 = true;
            		sheet.etiqueta_7 = true;
            		sheet.etiqueta_6 = true;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_8 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_7 = true;
            		sheet.etiqueta_6 = true;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_7 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_6 = true;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_6 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_5 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_4 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_3 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_2 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_3 = false;
            		sheet.etiqueta_1 = true;	
            	elseif sheet.etiqueta_1 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_3 = false;
            		sheet.etiqueta_2 = false;
            	elseif sheet.etiqueta_1 == false then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_3 = false;
            		sheet.etiqueta_2 = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.empatia_9 == true then
            		sheet.empatia_8 = true;
            		sheet.empatia_7 = true;
            		sheet.empatia_6 = true;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_8 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_7 = true;
            		sheet.empatia_6 = true;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_7 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_6 = true;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_6 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_5 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_4 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_3 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_2 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_3 = false;
            		sheet.empatia_1 = true;	
            	elseif sheet.empatia_1 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_3 = false;
            		sheet.empatia_2 = false;
            	elseif sheet.empatia_1 == false then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_3 = false;
            		sheet.empatia_2 = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.atuacao_9 == true then
            		sheet.atuacao_8 = true;
            		sheet.atuacao_7 = true;
            		sheet.atuacao_6 = true;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_8 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_7 = true;
            		sheet.atuacao_6 = true;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_7 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_6 = true;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_6 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_5 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_4 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_3 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_2 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_3 = false;
            		sheet.atuacao_1 = true;	
            	elseif sheet.atuacao_1 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_3 = false;
            		sheet.atuacao_2 = false;
            	elseif sheet.atuacao_1 == false then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_3 = false;
            		sheet.atuacao_2 = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.direito_9 == true then
            		sheet.direito_8 = true;
            		sheet.direito_7 = true;
            		sheet.direito_6 = true;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_8 == true then
            		sheet.direito_9 = false;
            		sheet.direito_7 = true;
            		sheet.direito_6 = true;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_7 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_6 = true;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_6 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_5 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_4 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_3 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_2 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_3 = false;
            		sheet.direito_1 = true;	
            	elseif sheet.direito_1 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_3 = false;
            		sheet.direito_2 = false;
            	elseif sheet.direito_1 == false then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_3 = false;
            		sheet.direito_2 = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.expressao_9 == true then
            		sheet.expressao_8 = true;
            		sheet.expressao_7 = true;
            		sheet.expressao_6 = true;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_8 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_7 = true;
            		sheet.expressao_6 = true;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_7 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_6 = true;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_6 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_5 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_4 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_3 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_2 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_3 = false;
            		sheet.expressao_1 = true;	
            	elseif sheet.expressao_1 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_3 = false;
            		sheet.expressao_2 = false;
            	elseif sheet.expressao_1 == false then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_3 = false;
            		sheet.expressao_2 = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.seguranca_9 == true then
            		sheet.seguranca_8 = true;
            		sheet.seguranca_7 = true;
            		sheet.seguranca_6 = true;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_8 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_7 = true;
            		sheet.seguranca_6 = true;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_7 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_6 = true;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_6 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_5 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_4 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_3 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_2 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_3 = false;
            		sheet.seguranca_1 = true;	
            	elseif sheet.seguranca_1 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_3 = false;
            		sheet.seguranca_2 = false;
            	elseif sheet.seguranca_1 == false then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_3 = false;
            		sheet.seguranca_2 = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.intimidacao_9 == true then
            		sheet.intimidacao_8 = true;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_8 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_7 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_6 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_5 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_4 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_3 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_2 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_1 = true;	
            	elseif sheet.intimidacao_1 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	elseif sheet.intimidacao_1 == false then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.medicina_9 == true then
            		sheet.medicina_8 = true;
            		sheet.medicina_7 = true;
            		sheet.medicina_6 = true;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_8 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_7 = true;
            		sheet.medicina_6 = true;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_7 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_6 = true;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_6 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_5 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_4 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_3 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_2 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_3 = false;
            		sheet.medicina_1 = true;	
            	elseif sheet.medicina_1 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_3 = false;
            		sheet.medicina_2 = false;
            	elseif sheet.medicina_1 == false then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_3 = false;
            		sheet.medicina_2 = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.furtividade_9 == true then
            		sheet.furtividade_8 = true;
            		sheet.furtividade_7 = true;
            		sheet.furtividade_6 = true;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_8 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_7 = true;
            		sheet.furtividade_6 = true;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_7 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_6 = true;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_6 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_5 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_4 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_3 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_2 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_3 = false;
            		sheet.furtividade_1 = true;	
            	elseif sheet.furtividade_1 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_3 = false;
            		sheet.furtividade_2 = false;
            	elseif sheet.furtividade_1 == false then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_3 = false;
            		sheet.furtividade_2 = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.lideranca_9 == true then
            		sheet.lideranca_8 = true;
            		sheet.lideranca_7 = true;
            		sheet.lideranca_6 = true;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_8 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_7 = true;
            		sheet.lideranca_6 = true;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_7 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_6 = true;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_6 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_5 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_4 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_3 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_2 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_3 = false;
            		sheet.lideranca_1 = true;	
            	elseif sheet.lideranca_1 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_3 = false;
            		sheet.lideranca_2 = false;
            	elseif sheet.lideranca_1 == false then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_3 = false;
            		sheet.lideranca_2 = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ciencia_9 == true then
            		sheet.ciencia_8 = true;
            		sheet.ciencia_7 = true;
            		sheet.ciencia_6 = true;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_8 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_7 = true;
            		sheet.ciencia_6 = true;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_7 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_6 = true;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_6 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_5 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_4 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_3 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_2 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_3 = false;
            		sheet.ciencia_1 = true;	
            	elseif sheet.ciencia_1 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_3 = false;
            		sheet.ciencia_2 = false;
            	elseif sheet.ciencia_1 == false then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_3 = false;
            		sheet.ciencia_2 = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.sobrevivencia_9 == true then
            		sheet.sobrevivencia_8 = true;
            		sheet.sobrevivencia_7 = true;
            		sheet.sobrevivencia_6 = true;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_8 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_7 = true;
            		sheet.sobrevivencia_6 = true;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_7 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_6 = true;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_6 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_5 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_4 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_3 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_2 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_3 = false;
            		sheet.sobrevivencia_1 = true;	
            	elseif sheet.sobrevivencia_1 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_3 = false;
            		sheet.sobrevivencia_2 = false;
            	elseif sheet.sobrevivencia_1 == false then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_3 = false;
            		sheet.sobrevivencia_2 = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.culinaria_9 == true then
            		sheet.culinaria_8 = true;
            		sheet.culinaria_7 = true;
            		sheet.culinaria_6 = true;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_8 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_7 = true;
            		sheet.culinaria_6 = true;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_7 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_6 = true;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_6 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_5 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_4 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_3 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_2 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_3 = false;
            		sheet.culinaria_1 = true;	
            	elseif sheet.culinaria_1 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_3 = false;
            		sheet.culinaria_2 = false;
            	elseif sheet.culinaria_1 == false then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_3 = false;
            		sheet.culinaria_2 = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.caca_9 == true then
            		sheet.caca_8 = true;
            		sheet.caca_7 = true;
            		sheet.caca_6 = true;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_8 == true then
            		sheet.caca_9 = false;
            		sheet.caca_7 = true;
            		sheet.caca_6 = true;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_7 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_6 = true;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_6 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_5 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_4 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_3 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_2 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_3 = false;
            		sheet.caca_1 = true;	
            	elseif sheet.caca_1 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_3 = false;
            		sheet.caca_2 = false;
            	elseif sheet.caca_1 == false then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_3 = false;
            		sheet.caca_2 = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.coragem_12 == true then
            		sheet.coragem_11 = true;
            		sheet.coragem_10 = true;
            		sheet.coragem_9 = true;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_11 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_10 = true;
            		sheet.coragem_9 = true;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_10 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_9 = true;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_9 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_8 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_7 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_6 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_5 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_4 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_3 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_2 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_3 = false;
            		sheet.coragem_1 = true;	
            	elseif sheet.coragem_1 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_3 = false;
            		sheet.coragem_2 = false;
            	elseif sheet.coragem_1 == false then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_3 = false;
            		sheet.coragem_2 = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.conviccao_12 == true then
            		sheet.conviccao_11 = true;
            		sheet.conviccao_10 = true;
            		sheet.conviccao_9 = true;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_11 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_10 = true;
            		sheet.conviccao_9 = true;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_10 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_9 = true;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_9 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_8 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_7 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_6 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_5 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_4 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_3 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_2 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_3 = false;
            		sheet.conviccao_1 = true;	
            	elseif sheet.conviccao_1 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_3 = false;
            		sheet.conviccao_2 = false;
            	elseif sheet.conviccao_1 == false then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_3 = false;
            		sheet.conviccao_2 = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.forcaDeVontade_12 == true then
            		sheet.forcaDeVontade_11 = true;
            		sheet.forcaDeVontade_10 = true;
            		sheet.forcaDeVontade_9 = true;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_11 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_10 = true;
            		sheet.forcaDeVontade_9 = true;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_10 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_9 = true;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_9 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_8 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_7 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_6 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_5 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_4 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_3 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_2 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_3 = false;
            		sheet.forcaDeVontade_1 = true;	
            	elseif sheet.forcaDeVontade_1 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_3 = false;
            		sheet.forcaDeVontade_2 = false;
            	elseif sheet.forcaDeVontade_1 == false then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_3 = false;
            		sheet.forcaDeVontade_2 = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.famaBoa_10 == true then
            		sheet.famaBoa_9 = true;
            		sheet.famaBoa_8 = true;
            		sheet.famaBoa_7 = true;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_9 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_8 = true;
            		sheet.famaBoa_7 = true;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_8 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_7 = true;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_7 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_6 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_5 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_4 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_3 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_2 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_3 = false;
            		sheet.famaBoa_1 = true;	
            	elseif sheet.famaBoa_1 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_3 = false;
            		sheet.famaBoa_2 = false;
            	elseif sheet.famaBoa_1 == false then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_3 = false;
            		sheet.famaBoa_2 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.reconhecimento_10 == true then
            		sheet.reconhecimento_9 = true;
            		sheet.reconhecimento_8 = true;
            		sheet.reconhecimento_7 = true;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_9 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_8 = true;
            		sheet.reconhecimento_7 = true;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_8 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_7 = true;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_7 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_6 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_5 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_4 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_3 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_2 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_3 = false;
            		sheet.reconhecimento_1 = true;	
            	elseif sheet.reconhecimento_1 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_3 = false;
            		sheet.reconhecimento_2 = false;
            	elseif sheet.reconhecimento_1 == false then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_3 = false;
            		sheet.reconhecimento_2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.influenciaBoa_10 == true then
            		sheet.influenciaBoa_9 = true;
            		sheet.influenciaBoa_8 = true;
            		sheet.influenciaBoa_7 = true;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_9 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_8 = true;
            		sheet.influenciaBoa_7 = true;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_8 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_7 = true;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_7 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_6 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_5 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_4 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_3 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_2 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_3 = false;
            		sheet.influenciaBoa_1 = true;	
            	elseif sheet.influenciaBoa_1 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_3 = false;
            		sheet.influenciaBoa_2 = false;
            	elseif sheet.influenciaBoa_1 == false then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_3 = false;
            		sheet.influenciaBoa_2 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.famaRuim_10 == true then
            		sheet.famaRuim_9 = true;
            		sheet.famaRuim_8 = true;
            		sheet.famaRuim_7 = true;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_9 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_8 = true;
            		sheet.famaRuim_7 = true;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_8 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_7 = true;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_7 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_6 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_5 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_4 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_3 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_2 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_3 = false;
            		sheet.famaRuim_1 = true;	
            	elseif sheet.famaRuim_1 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_3 = false;
            		sheet.famaRuim_2 = false;
            	elseif sheet.famaRuim_1 == false then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_3 = false;
            		sheet.famaRuim_2 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.influenciaRuim_10 == true then
            		sheet.influenciaRuim_9 = true;
            		sheet.influenciaRuim_8 = true;
            		sheet.influenciaRuim_7 = true;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_9 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_8 = true;
            		sheet.influenciaRuim_7 = true;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_8 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_7 = true;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_7 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_6 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_5 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_4 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_3 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_2 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_3 = false;
            		sheet.influenciaRuim_1 = true;	
            	elseif sheet.influenciaRuim_1 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_3 = false;
            		sheet.influenciaRuim_2 = false;
            	elseif sheet.influenciaRuim_1 == false then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_3 = false;
            		sheet.influenciaRuim_2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
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
