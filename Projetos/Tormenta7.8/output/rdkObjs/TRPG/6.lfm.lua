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
    obj.layout1:setMargins({left=8,right=8,top=8,bottom=4});
    obj.layout1:setName("layout1");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setText("Adicionar (Ataque)");
    obj.button1:setWidth(170);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setText("Adicionar (Danos)");
    obj.button2:setWidth(170);
    obj.button2:setAlign("left");
    obj.button2:setMargins({left=6});
    obj.button2:setName("button2");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout1);
    obj.button3:setText("Adicionar (Magias)");
    obj.button3:setWidth(170);
    obj.button3:setAlign("left");
    obj.button3:setMargins({left=6});
    obj.button3:setName("button3");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(650);
    obj.layout2:setMargins({left=8, right=8, top=0, bottom=8});
    obj.layout2:setName("layout2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setAlign("left");
    obj.layout3:setWidth(560);
    obj.layout3:setName("layout3");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(20);
    obj.layout4:setName("layout4");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout4);
    obj.label1:setAlign("left");
    obj.label1:setWidth(185);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("ATAQUE");
    obj.label1:setName("label1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout4);
    obj.label2:setAlign("left");
    obj.label2:setWidth(185);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setText("DANOS");
    obj.label2:setName("label2");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout4);
    obj.label3:setAlign("left");
    obj.label3:setWidth(185);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setText("MAGIAS");
    obj.label3:setName("label3");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout3);
    obj.layout5:setAlign("client");
    obj.layout5:setName("layout5");

    obj.rclAtaque = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclAtaque:setParent(obj.layout5);
    obj.rclAtaque:setName("rclAtaque");
    obj.rclAtaque:setField("campoDosItensAtaque");
    obj.rclAtaque:setTemplateForm("frmMacroColuna");
    obj.rclAtaque:setAlign("left");
    obj.rclAtaque:setWidth(185);
    obj.rclAtaque:setSelectable(true);

    obj.rclDanos = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclDanos:setParent(obj.layout5);
    obj.rclDanos:setName("rclDanos");
    obj.rclDanos:setField("campoDosItensDanos");
    obj.rclDanos:setTemplateForm("frmMacroColuna");
    obj.rclDanos:setAlign("left");
    obj.rclDanos:setWidth(185);
    obj.rclDanos:setSelectable(true);

    obj.rclMagias = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias:setParent(obj.layout5);
    obj.rclMagias:setName("rclMagias");
    obj.rclMagias:setField("campoDosItensMagias");
    obj.rclMagias:setTemplateForm("frmMacroColuna");
    obj.rclMagias:setAlign("left");
    obj.rclMagias:setWidth(185);
    obj.rclMagias:setSelectable(true);

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout2);
    obj.layout6:setAlign("left");
    obj.layout6:setWidth(420);
    obj.layout6:setMargins({left=10});
    obj.layout6:setName("layout6");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout6);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("Gray");
    obj.rectangle2:setXradius(8);
    obj.rectangle2:setYradius(8);
    obj.rectangle2:setName("rectangle2");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(28);
    obj.layout7:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout7:setName("layout7");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout7);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("Black");
    obj.rectangle3:setXradius(4);
    obj.rectangle3:setYradius(4);
    obj.rectangle3:setName("rectangle3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout7);
    obj.label4:setAlign("client");
    obj.label4:setFontSize(14);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("white");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setText("Detalhes do Macro");
    obj.label4:setName("label4");

    obj.boxDetalhesDoItem = gui.fromHandle(_obj_newObject("layout"));
    obj.boxDetalhesDoItem:setParent(obj.layout6);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setAlign("client");
    obj.boxDetalhesDoItem:setMargins({left=8,right=8,top=6,bottom=8});
    obj.boxDetalhesDoItem:setVisible(false);

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.boxDetalhesDoItem);
    obj.label5:setAlign("top");
    obj.label5:setHeight(18);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setText("Nome");
    obj.label5:setName("label5");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.boxDetalhesDoItem);
    obj.edit1:setAlign("top");
    obj.edit1:setHeight(26);
    obj.edit1:setField("campoTitulo");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.boxDetalhesDoItem);
    obj.label6:setAlign("top");
    obj.label6:setHeight(18);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setText("Rolagem (Ataque/Dano/etc)");
    obj.label6:setName("label6");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.boxDetalhesDoItem);
    obj.edit2:setAlign("top");
    obj.edit2:setHeight(26);
    obj.edit2:setField("campoSubTitulo");
    obj.edit2:setName("edit2");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.boxDetalhesDoItem);
    obj.label7:setAlign("top");
    obj.label7:setHeight(18);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setText("Descrição");
    obj.label7:setName("label7");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.boxDetalhesDoItem);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("campoDescrição");
    obj.textEditor1:setName("textEditor1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclAtaque:append();
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (self)
            self.rclDanos:append();
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (self)
            self.rclMagias:append();
        end, obj);

    obj._e_event3 = obj.rclAtaque:addEventListener("onSelect",
        function (self)
            self.rclDanos.selectedNode = nil;
            							self.rclMagias.selectedNode = nil;
            							local node = self.rclAtaque.selectedNode;
            							self.boxDetalhesDoItem.node = node;
            							self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event4 = obj.rclDanos:addEventListener("onSelect",
        function (self)
            self.rclAtaque.selectedNode = nil;
            							self.rclMagias.selectedNode = nil;
            							local node = self.rclDanos.selectedNode;
            							self.boxDetalhesDoItem.node = node;
            							self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event5 = obj.rclMagias:addEventListener("onSelect",
        function (self)
            self.rclAtaque.selectedNode = nil;
            							self.rclDanos.selectedNode = nil;
            							local node = self.rclMagias.selectedNode;
            							self.boxDetalhesDoItem.node = node;
            							self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    function obj:_releaseEvents()
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

        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.rclMagias ~= nil then self.rclMagias:destroy(); self.rclMagias = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.rclDanos ~= nil then self.rclDanos:destroy(); self.rclDanos = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rclAtaque ~= nil then self.rclAtaque:destroy(); self.rclAtaque = nil; end;
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
