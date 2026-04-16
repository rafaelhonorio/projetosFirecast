require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta06()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

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

    obj.sbMain06 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.sbMain06:setParent(obj);
    obj.sbMain06:setAlign("client");
    obj.sbMain06:setName("sbMain06");

    obj.lytCanvas06 = GUI.fromHandle(_obj_newObject("layout"));
    obj.lytCanvas06:setParent(obj.sbMain06);
    obj.lytCanvas06:setName("lytCanvas06");
    obj.lytCanvas06:setAlign("none");
    obj.lytCanvas06:setLeft(0);
    obj.lytCanvas06:setTop(0);
    obj.lytCanvas06:setWidth(1010);
    obj.lytCanvas06:setHeight(700);
    obj.lytCanvas06:setMargins({left=0,top=0,right=0,bottom=0});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.lytCanvas06);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("LightGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.lytCanvas06);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(1010);
    obj.layout1:setHeight(700);
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(34);
    obj.layout2:setMargins({left=10,right=10,top=10,bottom=6});
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("Gainsboro");
    obj.rectangle2:setXradius(8);
    obj.rectangle2:setYradius(8);
    obj.rectangle2:setName("rectangle2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setAlign("client");
    obj.layout3:setMargins({left=8,right=8,top=6,bottom=6});
    obj.layout3:setName("layout3");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout3);
    obj.button1:setText("Adicionar (Ataque)");
    obj.button1:setWidth(170);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");
    obj.button1:setTextTrimming("none");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout3);
    obj.button2:setText("Adicionar (Danos)");
    obj.button2:setWidth(170);
    obj.button2:setAlign("left");
    obj.button2:setMargins({left=6});
    obj.button2:setName("button2");
    obj.button2:setTextTrimming("none");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout3);
    obj.button3:setText("Adicionar (Magias)");
    obj.button3:setWidth(170);
    obj.button3:setAlign("left");
    obj.button3:setMargins({left=6});
    obj.button3:setName("button3");
    obj.button3:setTextTrimming("none");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setAlign("client");
    obj.layout4:setMargins({left=10, right=10, top=0, bottom=10});
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setAlign("client");
    obj.layout5:setName("layout5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(26);
    obj.layout6:setName("layout6");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout6);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("Black");
    obj.rectangle3:setXradius(6);
    obj.rectangle3:setYradius(6);
    obj.rectangle3:setName("rectangle3");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("client");
    obj.layout7:setMargins({left=6,right=6,top=4,bottom=4});
    obj.layout7:setName("layout7");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout7);
    obj.label1:setAlign("left");
    obj.label1:setWidth(240);
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setFontColor("white");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("ATAQUE");
    obj.label1:setName("label1");
    obj.label1:setTextTrimming("none");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout7);
    obj.label2:setAlign("left");
    obj.label2:setWidth(240);
    lfm_setPropAsString(obj.label2, "fontStyle", "bold");
    obj.label2:setFontColor("white");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setText("DANOS");
    obj.label2:setName("label2");
    obj.label2:setTextTrimming("none");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout7);
    obj.label3:setAlign("client");
    lfm_setPropAsString(obj.label3, "fontStyle", "bold");
    obj.label3:setFontColor("white");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setText("MAGIAS");
    obj.label3:setName("label3");
    obj.label3:setTextTrimming("none");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout5);
    obj.layout8:setAlign("client");
    obj.layout8:setMargins({top=6});
    obj.layout8:setName("layout8");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout8);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setXradius(8);
    obj.rectangle4:setYradius(8);
    obj.rectangle4:setName("rectangle4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout8);
    obj.layout9:setAlign("client");
    obj.layout9:setMargins({left=6,right=6,top=6,bottom=6});
    obj.layout9:setName("layout9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setAlign("left");
    obj.layout10:setWidth(240);
    obj.layout10:setMargins({right=4});
    obj.layout10:setName("layout10");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout10);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("White");
    obj.rectangle5:setXradius(6);
    obj.rectangle5:setYradius(6);
    obj.rectangle5:setName("rectangle5");

    obj.rclAtaque = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclAtaque:setParent(obj.layout10);
    obj.rclAtaque:setName("rclAtaque");
    obj.rclAtaque:setField("campoDosItensAtaque");
    obj.rclAtaque:setTemplateForm("frmMacroColuna");
    obj.rclAtaque:setAlign("client");
    obj.rclAtaque:setSelectable(true);

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setAlign("left");
    obj.layout11:setWidth(240);
    obj.layout11:setMargins({left=2,right=2});
    obj.layout11:setName("layout11");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout11);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("White");
    obj.rectangle6:setXradius(6);
    obj.rectangle6:setYradius(6);
    obj.rectangle6:setName("rectangle6");

    obj.rclDanos = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclDanos:setParent(obj.layout11);
    obj.rclDanos:setName("rclDanos");
    obj.rclDanos:setField("campoDosItensDanos");
    obj.rclDanos:setTemplateForm("frmMacroColuna");
    obj.rclDanos:setAlign("client");
    obj.rclDanos:setSelectable(true);

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout9);
    obj.layout12:setAlign("left");
    obj.layout12:setWidth(220);
    obj.layout12:setMargins({left=4});
    obj.layout12:setName("layout12");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout12);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("White");
    obj.rectangle7:setXradius(6);
    obj.rectangle7:setYradius(6);
    obj.rectangle7:setName("rectangle7");

    obj.rclMagias = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias:setParent(obj.layout12);
    obj.rclMagias:setName("rclMagias");
    obj.rclMagias:setField("campoDosItensMagias");
    obj.rclMagias:setTemplateForm("frmMacroColuna");
    obj.rclMagias:setAlign("client");
    obj.rclMagias:setSelectable(true);

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout4);
    obj.layout13:setAlign("right");
    obj.layout13:setWidth(250);
    obj.layout13:setMargins({left=10});
    obj.layout13:setName("layout13");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout13);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("Gray");
    obj.rectangle8:setXradius(8);
    obj.rectangle8:setYradius(8);
    obj.rectangle8:setName("rectangle8");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout13);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(28);
    obj.layout14:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout14:setName("layout14");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout14);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("Black");
    obj.rectangle9:setXradius(4);
    obj.rectangle9:setYradius(4);
    obj.rectangle9:setName("rectangle9");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout14);
    obj.label4:setAlign("client");
    obj.label4:setFontSize(14);
    lfm_setPropAsString(obj.label4, "fontStyle", "bold");
    obj.label4:setFontColor("white");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setText("Detalhes do Macro");
    obj.label4:setName("label4");
    obj.label4:setTextTrimming("none");

    obj.boxNadaSelecionado = GUI.fromHandle(_obj_newObject("layout"));
    obj.boxNadaSelecionado:setParent(obj.layout13);
    obj.boxNadaSelecionado:setName("boxNadaSelecionado");
    obj.boxNadaSelecionado:setAlign("client");
    obj.boxNadaSelecionado:setMargins({left=10,right=10,top=10,bottom=10});
    obj.boxNadaSelecionado:setVisible(true);

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.boxNadaSelecionado);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setXradius(6);
    obj.rectangle10:setYradius(6);
    obj.rectangle10:setName("rectangle10");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.boxNadaSelecionado);
    obj.label5:setAlign("client");
    lfm_setPropAsString(obj.label5, "fontStyle", "bold");
    obj.label5:setFontColor("Black");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setText("Selecione um item em Ataque, Danos ou Magias para editar.");
    obj.label5:setName("label5");
    obj.label5:setTextTrimming("none");

    obj.dsDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dsDetalhesDoItem:setParent(obj.layout13);
    obj.dsDetalhesDoItem:setName("dsDetalhesDoItem");
    obj.dsDetalhesDoItem:setAlign("client");
    obj.dsDetalhesDoItem:setMargins({left=8,right=8,top=6,bottom=8});
    obj.dsDetalhesDoItem:setVisible(false);

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.dsDetalhesDoItem);
    obj.label6:setAlign("top");
    obj.label6:setHeight(18);
    lfm_setPropAsString(obj.label6, "fontStyle", "bold");
    obj.label6:setFontColor("Black");
    obj.label6:setText("Nome");
    obj.label6:setName("label6");
    obj.label6:setTextTrimming("none");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.dsDetalhesDoItem);
    obj.edit1:setAlign("top");
    obj.edit1:setHeight(26);
    obj.edit1:setField("campoTitulo");
    obj.edit1:setFontColor("Black");
    lfm_setPropAsString(obj.edit1, "fontStyle", "bold");
    obj.edit1:setName("edit1");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.dsDetalhesDoItem);
    obj.label7:setAlign("top");
    obj.label7:setHeight(18);
    lfm_setPropAsString(obj.label7, "fontStyle", "bold");
    obj.label7:setFontColor("Black");
    obj.label7:setText("Rolagem (Ataque/Dano/etc)");
    obj.label7:setName("label7");
    obj.label7:setTextTrimming("none");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.dsDetalhesDoItem);
    obj.edit2:setAlign("top");
    obj.edit2:setHeight(26);
    obj.edit2:setFontColor("Black");
    obj.edit2:setField("campoSubTitulo");
    obj.edit2:setName("edit2");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.dsDetalhesDoItem);
    obj.label8:setAlign("top");
    obj.label8:setHeight(18);
    lfm_setPropAsString(obj.label8, "fontStyle", "bold");
    obj.label8:setFontColor("Black");
    obj.label8:setText("Descrição");
    obj.label8:setName("label8");
    obj.label8:setTextTrimming("none");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.dsDetalhesDoItem);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setFontColor("Black");
    obj.textEditor1:setField("campoDescrição");
    obj.textEditor1:setName("textEditor1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'__recalc06','campoDosItensAtaque','campoDosItensDanos','campoDosItensMagias'});
    obj.dataLink1:setName("dataLink1");


-- === Responsividade (Firecast 8.13 / SDK 3.7) ===
        -- Mantém o layout legado (1010px) e aplica escala automática em telas menores.
        if TRPG_updateScale == nil then
            require("system.lua");
            function TRPG_updateScale(container, canvas)
                if container == nil then return end
                canvas = canvas or (container.parent and (container.parent.lytCanvas or container.parent.page)) or container.lytCanvas or container.page
                if canvas == nil then return end
                local baseW = tonumber(canvas.width) or 1010
                local availW = tonumber(container.width) or (container.parent and tonumber(container.parent.width)) or baseW
                availW = availW - 20
                if availW <= 0 then return end

                local scale = availW / baseW
                if scale > 1 then scale = 1 end
                if scale < 0.60 then scale = 0.60 end  -- evita ficar ilegível demais

                canvas.scale = scale

                local visW = baseW * scale
                local left = (availW + 20 - visW) / 2
                if left < 0 then left = 0 end
                canvas.left = left
            end
        end
        

	
		local function getRootSheet(ctrl)
			if ctrl == nil then return nil end
			return ctrl.sheet -- aqui ctrl DEVE ser o form Tormenta06 (não o template do item)
		end

		function TRPG_touch06(ctrl)
			local r = getRootSheet(ctrl)
			if r == nil then return end
			r.__recalc06 = (tonumber(r.__recalc06) or 0) + 1
		end

		function TRPG_selectMacro(ctrl, node)
			if ctrl == nil then return end
			local ds  = ctrl:findControlByName("dsDetalhesDoItem")
			local box = ctrl:findControlByName("boxNadaSelecionado")

			if ds ~= nil then
				ds.scopeNode = node
				ds.visible = (node ~= nil)
			end
			if box ~= nil then
				box.visible = (node == nil)
			end
		end

		function TRPG_closeMacroDetails(ctrl)
			if ctrl == nil then return end
			local ds  = ctrl:findControlByName("dsDetalhesDoItem")
			local box = ctrl:findControlByName("boxNadaSelecionado")
			if ds ~= nil then
				ds.scopeNode = nil
				ds.visible = false
			end
			if box ~= nil then
				box.visible = true
			end
		end

		local function removeFromList(list, item)
			if type(list) ~= "table" then return false end
			for i = #list, 1, -1 do
				if list[i] == item then
					table.remove(list, i)
					return true
				end
			end
			return false
		end

		-- item aqui é o "sheet" do frmMacroColuna (table)
		function TRPG_deleteMacro(ctrl, item)
			if ctrl == nil or item == nil then return false end

			local root = getRootSheet(ctrl)
			if root == nil then return false end

			-- tenta remover de qualquer uma das 3 listas
			local removed = false
			removed = removeFromList(root.campoDosItensAtaque, item) or removed
			removed = removeFromList(root.campoDosItensDanos,  item) or removed
			removed = removeFromList(root.campoDosItensMagias, item) or removed

			if removed then
				-- limpa seleção das 3 listas (evita apontar pra item removido)
				local a = ctrl:findControlByName("rclAtaque")
				local d = ctrl:findControlByName("rclDanos")
				local m = ctrl:findControlByName("rclMagias")
				if a ~= nil then a.selectedNode = nil end
				if d ~= nil then d.selectedNode = nil end
				if m ~= nil then m.selectedNode = nil end

				TRPG_closeMacroDetails(ctrl)
				TRPG_touch06(ctrl)
				return true
			end

			return false
		end

		if TRPG_rollMacro == nil then
			function TRPG_rollMacro(nodeOrSheet, macroText, label)
				if nodeOrSheet == nil then return end

				local expr = tostring(macroText or "")
				expr = expr:gsub("^%s+",""):gsub("%s+$","")
				expr = expr:gsub(",", ".") -- compat: 1d20+1,5

				if expr == "" then
					showMessage("Preencha a rolagem antes de rolar.")
					return
				end

				-- MUITO comum: usuário digitar "+8" ou "-2" (sem dado).
				-- interpretarRolagem("+8") pode não se comportar como você espera.
				if expr:sub(1,1) == "+" then
					expr = "0" .. expr
				elseif expr:sub(1,1) == "-" then
					expr = "0" .. expr
				end

				local rolagem = Firecast.interpretarRolagem(expr)
				if rolagem == nil then
					showMessage("Rolagem inválida: " .. expr)
					return
				end

				-- se não tiver dado, prefixa 1d20 (igual seu padrão)
				if not rolagem.possuiAlgumDado then
					rolagem = Firecast.interpretarRolagem("1d20"):concatenar(rolagem)
				end

				local mesa = Firecast.getMesaDe(nodeOrSheet)
				local titulo = tostring(label or "Rolagem")

				if mesa ~= nil then
					local chat = mesa.activeChat or mesa.chat
					if chat ~= nil then
						chat:rolarDados(rolagem, titulo)
						return
					end
				end

				rolagem:rolarLocalmente()
				showMessage(titulo .. " = " .. tostring(rolagem.resultado) .. "\n(" .. tostring(rolagem.asString) .. ")")
			end
		end

	
	



    obj._e_event0 = obj:addEventListener("onResize",
        function ()
            TRPG_updateScale(self.sbMain06, self.lytCanvas06);
        end);

    obj._e_event1 = obj:addEventListener("onNodeReady",
        function ()
            TRPG_updateScale(self.sbMain06, self.lytCanvas06);
        end);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (event)
            local n = self.rclAtaque:append();
            							if n ~= nil and (n.campoTitulo == nil or n.campoTitulo == "") then
            								n.campoTitulo = "Novo Macro (Ataque)";
            							end;
            							TRPG_touch06(self);
        end);

    obj._e_event3 = obj.button2:addEventListener("onClick",
        function (event)
            local n = self.rclDanos:append();
            							if n ~= nil and (n.campoTitulo == nil or n.campoTitulo == "") then
            								n.campoTitulo = "Novo Macro (Danos)";
            							end;
            							TRPG_touch06(self);
        end);

    obj._e_event4 = obj.button3:addEventListener("onClick",
        function (event)
            local n = self.rclMagias:append();
            							if n ~= nil and (n.campoTitulo == nil or n.campoTitulo == "") then
            								n.campoTitulo = "Novo Macro (Magias)";
            							end;
            							TRPG_touch06(self);
        end);

    obj._e_event5 = obj.rclAtaque:addEventListener("onSelect",
        function ()
            self.rclDanos.selectedNode = nil;
            										self.rclMagias.selectedNode = nil;
            										TRPG_selectMacro(self, self.rclAtaque.selectedNode);
        end);

    obj._e_event6 = obj.rclDanos:addEventListener("onSelect",
        function ()
            self.rclAtaque.selectedNode = nil;
            										self.rclMagias.selectedNode = nil;
            										TRPG_selectMacro(self, self.rclDanos.selectedNode);
        end);

    obj._e_event7 = obj.rclMagias:addEventListener("onSelect",
        function ()
            self.rclAtaque.selectedNode = nil;
            										self.rclDanos.selectedNode = nil;
            										TRPG_selectMacro(self, self.rclMagias.selectedNode);
        end);

    obj._e_event8 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
        end);

    function obj:_releaseEvents()
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

        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.dsDetalhesDoItem ~= nil then self.dsDetalhesDoItem:destroy(); self.dsDetalhesDoItem = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rclDanos ~= nil then self.rclDanos:destroy(); self.rclDanos = nil; end;
        if self.sbMain06 ~= nil then self.sbMain06:destroy(); self.sbMain06 = nil; end;
        if self.lytCanvas06 ~= nil then self.lytCanvas06:destroy(); self.lytCanvas06 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.boxNadaSelecionado ~= nil then self.boxNadaSelecionado:destroy(); self.boxNadaSelecionado = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rclAtaque ~= nil then self.rclAtaque:destroy(); self.rclAtaque = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rclMagias ~= nil then self.rclMagias:destroy(); self.rclMagias = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta06()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta06();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta06 = {
    newEditor = newTormenta06, 
    new = newTormenta06, 
    name = "Tormenta06", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

Tormenta06 = _Tormenta06;
Firecast.registrarForm(_Tormenta06);

return _Tormenta06;
