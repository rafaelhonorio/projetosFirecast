require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newTormenta06()
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
    obj:setName("Tormenta06");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("LightGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({bottom=4});
    obj.layout1:setName("layout1");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setText("Adicionar Novo Ataque/Macro");
    obj.button1:setWidth(250);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setAlign("client");
    obj.layout2:setMargins({left=8, right=8, top=0, bottom=8});
    obj.layout2:setName("layout2");

    obj.rclListaDosItens = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.layout2);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("left");
    obj.rclListaDosItens:setWidth(560);
    obj.rclListaDosItens:setHeight(650);
    obj.rclListaDosItens:setSelectable(true);

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setLeft(300);
    obj.layout3:setWidth(390);
    obj.layout3:setHeight(650);
    obj.layout3:setName("layout3");

    obj.boxDetalhesDoItem = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.layout3);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setAlign("top");
    obj.boxDetalhesDoItem:setWidth(420);
    obj.boxDetalhesDoItem:setHeight(180);

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.boxDetalhesDoItem);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#999999");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle2:setName("rectangle2");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle2);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(30);
    obj.layout4:setMargins({bottom=4});
    obj.layout4:setName("layout4");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout4);
    obj.label1:setAlign("left");
    obj.label1:setText("Ataque/Macro:");
    obj.label1:setFontColor("black");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout4);
    obj.edit1:setAlign("client");
    obj.edit1:setField("campoTitulo");
    obj.edit1:setFontColor("black");
    obj.edit1:setName("edit1");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle2);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(30);
    obj.layout5:setMargins({bottom=4});
    obj.layout5:setName("layout5");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout5);
    obj.label2:setAlign("left");
    obj.label2:setText("Macro:");
    obj.label2:setFontColor("black");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edtMacro = gui.fromHandle(_obj_newObject("edit"));
    obj.edtMacro:setParent(obj.layout5);
    obj.edtMacro:setAlign("left");
    obj.edtMacro:setWidth(260);
    obj.edtMacro:setField("campoSubTitulo");
    obj.edtMacro:setName("edtMacro");
    obj.edtMacro:setFontColor("black");
    obj.edtMacro:setMargins({left=6});

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout5);
    obj.button2:setAlign("left");
    obj.button2:setWidth(25);
    obj.button2:setHeight(25);
    obj.button2:setText("🎲");
    obj.button2:setFontSize(14);
    obj.button2:setFontColor("black");
    obj.button2:setCanFocus(false);
    obj.button2:setCursor("handPoint");
    obj.button2:setMargins({left=6});
    obj.button2:setHint("Rolar este macro na mesa");
    obj.button2:setName("button2");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle2);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(100);
    obj.layout6:setName("layout6");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout6);
    obj.label3:setAlign("left");
    obj.label3:setText("Descrição:");
    obj.label3:setFontColor("black");
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("campoDescrição");
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setName("textEditor1");



			if TRPG_rollMacro == nil then
				function TRPG_rollMacro(nodeOrSheet, macroText, label)
					if nodeOrSheet == nil then return end

					local expr = tostring(macroText or ""):gsub("^%s+", ""):gsub("%s+$", "")
					if expr == "" then
						showMessage("Preencha o macro antes de rolar.")
						return
					end

					local rolagem = rrpg.interpretarRolagem(expr)
					if rolagem == nil then
						showMessage("Rolagem inválida: " .. expr)
						return
					end

					-- se não tiver dado, prefixa 1d20
					if not rolagem.possuiAlgumDado then
						rolagem = rrpg.interpretarRolagem("1d20"):concatenar(rolagem)
					end

					local mesa = rrpg.getMesaDe(nodeOrSheet)
					local titulo = tostring(label or "Rolagem")

					if mesa ~= nil then
						local chat = mesa.activeChat or mesa.chat
						if chat ~= nil then
							chat:rolarDados(rolagem, titulo)
							return
						end
					end

					-- fallback: rolar local e exibir
					rolagem:rolarLocalmente()
					showMessage(titulo .. " = " .. tostring(rolagem.resultado) .. "\n(" .. tostring(rolagem.asString) .. ")")
				end
			end

		


    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclListaDosItens:append();
        end, obj);

    obj._e_event1 = obj.rclListaDosItens:addEventListener("onSelect",
        function (self)
            local node = self.rclListaDosItens.selectedNode;
            					self.boxDetalhesDoItem.node = node;
            					self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (self)
            local nd = self.boxDetalhesDoItem.node;
            									if nd ~= nil then
            										TRPG_rollMacro(nd, nd.campoSubTitulo, nd.campoTitulo or "Ataque/Macro");
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

        if self.edtMacro ~= nil then self.edtMacro:destroy(); self.edtMacro = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Tormenta06 = {
    newEditor = newTormenta06, 
    new = newTormenta06, 
    name = "Tormenta06", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta06 = _Tormenta06;
rrpg.registrarForm(_Tormenta06);

return _Tormenta06;
