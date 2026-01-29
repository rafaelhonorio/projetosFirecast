require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmMacroColuna()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
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
    obj:setName("frmMacroColuna");
    obj:setHeight(28);
    obj:setTheme("light");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setHeight(28);
    obj.layout1:setMargins({left=2,right=2,top=1,bottom=1});
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("Transparent");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("client");
    obj.label1:setField("nome");
    obj.label1:setFontSize(11);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setWordWrap(false);
    obj.label1:setTextTrimming("character");
    obj.label1:setHorzTextAlign("leading");
    obj.label1:setVertTextAlign("center");
    obj.label1:setName("label1");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("right");
    obj.button1:setWidth(32);
    obj.button1:setText("🎲");
    obj.button1:setHint("Rolar");
    obj.button1:setName("button1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            local node = sheet;
            				-- tenta rolar pelo padrão de macros do seu projeto
            				if node ~= nil then
            					-- Se você tiver um campo de rolagem, use ele:
            					-- Ex.: node.rolagem / node.macro / node.comando
            					local cmd = node.rolagem or node.macro or node.comando;
            					if cmd ~= nil and cmd ~= "" then
            						if sheet ~= nil and sheet.getMesaDeRPG ~= nil then
            							local mesa = sheet:getMesaDeRPG();
            							if mesa ~= nil then mesa.activeChat:rolarDados(cmd); end;
            						end;
            					end;
            				end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmMacroColuna = {
    newEditor = newfrmMacroColuna, 
    new = newfrmMacroColuna, 
    name = "frmMacroColuna", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMacroColuna = _frmMacroColuna;
rrpg.registrarForm(_frmMacroColuna);

return _frmMacroColuna;
