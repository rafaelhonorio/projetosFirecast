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
    obj.layout1:setHitTest(true);
    obj.layout1:setCursor("handPoint");
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("Transparent");
    obj.rectangle1:setHitTest(false);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("client");
    obj.label1:setField("campoTitulo");
    obj.label1:setFontSize(11);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setWordWrap(false);
    obj.label1:setTextTrimming("character");
    obj.label1:setHorzTextAlign("leading");
    obj.label1:setVertTextAlign("center");
    obj.label1:setFontColor("Black");
    obj.label1:setHitTest(false);
    obj.label1:setName("label1");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("right");
    obj.button1:setWidth(24);
    obj.button1:setText("X");
    obj.button1:setHint("Excluir macro");
    obj.button1:setFontColor("black");
    obj.button1:setCanFocus(false);
    obj.button1:setName("button1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setAlign("right");
    obj.button2:setWidth(32);
    obj.button2:setText("🎲");
    obj.button2:setHint("Rolar");
    obj.button2:setCanFocus(false);
    obj.button2:setName("button2");

    obj._e_event0 = obj.layout1:addEventListener("onClick",
        function (self)
            -- se veio de um botão, não seleciona
            			if event ~= nil and event.handled == true then return end;
            
            			local node = sheet;
            
            			local rl = self;
            			while (rl ~= nil) and (rl.getClassName ~= nil) and (rl:getClassName() ~= "recordList") do
            				rl = rl:getParent();
            			end;
            
            			if rl ~= nil then
            				rl.selectedNode = node;
            			end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (self)
            if event ~= nil then event.handled = true end;
            
            				local nodeToDelete = sheet;
            				if nodeToDelete == nil then return end;
            
            				Dialogs.confirmYesNo("Deseja realmente excluir este macro?",
            				function(confirmado)
            					if not confirmado then return end;
            
            					-- tenta deletar o nodo do item
            					pcall(function()
            					ndb.deleteNode(nodeToDelete);
            					end);
            
            					-- sobe até a tela 6 (onde existem dsDetalhesDoItem / boxNadaSelecionado)
            					local tela = self;
            					while tela ~= nil do
            					if (tela.findControlByName ~= nil) and (tela:findControlByName("dsDetalhesDoItem") ~= nil) then
            						break;
            					end;
            					tela = tela:getParent();
            					end;
            
            					-- fecha painel de detalhes e limpa seleções
            					if tela ~= nil then
            					local ds  = tela:findControlByName("dsDetalhesDoItem");
            					local box = tela:findControlByName("boxNadaSelecionado");
            					if ds ~= nil then
            						ds.scopeNode = nil;
            						ds.visible = false;
            					end;
            					if box ~= nil then
            						box.visible = true;
            					end;
            
            					local r1 = tela:findControlByName("rclAtaque");
            					local r2 = tela:findControlByName("rclDanos");
            					local r3 = tela:findControlByName("rclMagias");
            					if r1 ~= nil then r1.selectedNode = nil end;
            					if r2 ~= nil then r2.selectedNode = nil end;
            					if r3 ~= nil then r3.selectedNode = nil end;
            
            					-- força refresh igual seu padrão
            					if TRPG_touch06 ~= nil then
            						TRPG_touch06(tela);
            					else
            						local root = ndb.getRoot(nodeToDelete);
            						if root ~= nil then
            						root.__recalc06 = (tonumber(root.__recalc06) or 0) + 1;
            						end;
            					end;
            					end;
            				end);
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (self)
            if event ~= nil then event.handled = true end;
            
            				local node = sheet;
            				if node ~= nil then
            				TRPG_rollMacro(node, node.campoSubTitulo, node.campoTitulo or "Macro");
            				end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
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
