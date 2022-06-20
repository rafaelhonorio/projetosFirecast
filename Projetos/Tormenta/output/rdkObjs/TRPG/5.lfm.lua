require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta05()
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
    obj:setName("Tormenta05");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("LightGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(8);
    obj.layout1:setWidth(980);
    obj.layout1:setHeight(300);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(1);
    obj.rectangle2:setTop(230);
    obj.rectangle2:setColor("#333333");
    obj.rectangle2:setWidth(280);
    obj.rectangle2:setHeight(70);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setLeft(5);
    obj.rectangle3:setTop(235);
    obj.rectangle3:setColor("#999999");
    obj.rectangle3:setWidth(270);
    obj.rectangle3:setHeight(60);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout1);
    obj.rectangle4:setLeft(15);
    obj.rectangle4:setTop(238);
    obj.rectangle4:setColor("Black");
    obj.rectangle4:setWidth(120);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(37);
    obj.label1:setTop(233);
    obj.label1:setWidth(75);
    obj.label1:setHeight(25);
    obj.label1:setFontSize(14);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("white");
    obj.label1:setText("EXP ATUAL");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(36);
    obj.label2:setTop(243);
    obj.label2:setWidth(120);
    obj.label2:setHeight(25);
    obj.label2:setFontSize(10);
    obj.label2:setFontColor("white");
    obj.label2:setText("Experiência Atual");
    obj.label2:setName("label2");

    obj.XPAtual = GUI.fromHandle(_obj_newObject("edit"));
    obj.XPAtual:setParent(obj.layout1);
    obj.XPAtual:setLeft(146);
    obj.XPAtual:setTop(238);
    obj.XPAtual:setWidth(120);
    obj.XPAtual:setHeight(25);
    obj.XPAtual:setName("XPAtual");
    obj.XPAtual:setField("XPAtual");
    obj.XPAtual:setType("number");
    obj.XPAtual:setHorzTextAlign("center");
    obj.XPAtual:setFontColor("black");
    obj.XPAtual:setFontSize(15.0);
    lfm_setPropAsString(obj.XPAtual, "fontStyle",  "bold");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout1);
    obj.rectangle5:setLeft(15);
    obj.rectangle5:setTop(266);
    obj.rectangle5:setColor("Black");
    obj.rectangle5:setWidth(120);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setLeft(38);
    obj.label3:setTop(261);
    obj.label3:setWidth(75);
    obj.label3:setHeight(25);
    obj.label3:setFontSize(14);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("white");
    obj.label3:setText("EXP NIVEL");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setLeft(18);
    obj.label4:setTop(271);
    obj.label4:setWidth(120);
    obj.label4:setHeight(25);
    obj.label4:setFontSize(10);
    obj.label4:setFontColor("white");
    obj.label4:setText("Experiência Próximo Nível");
    obj.label4:setName("label4");

    obj.XPNivel = GUI.fromHandle(_obj_newObject("edit"));
    obj.XPNivel:setParent(obj.layout1);
    obj.XPNivel:setLeft(146);
    obj.XPNivel:setTop(266);
    obj.XPNivel:setWidth(120);
    obj.XPNivel:setHeight(25);
    obj.XPNivel:setName("XPNivel");
    obj.XPNivel:setField("XPNivel");
    obj.XPNivel:setType("number");
    obj.XPNivel:setHorzTextAlign("center");
    obj.XPNivel:setFontColor("black");
    obj.XPNivel:setFontSize(15.0);
    lfm_setPropAsString(obj.XPNivel, "fontStyle",  "bold");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout1);
    obj.rectangle6:setLeft(84);
    obj.rectangle6:setTop(3);
    obj.rectangle6:setColor("Black");
    obj.rectangle6:setWidth(115);
    obj.rectangle6:setHeight(28);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setLeft(90);
    obj.label5:setTop(5);
    obj.label5:setWidth(110);
    obj.label5:setHeight(20);
    obj.label5:setFontSize(18.0);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("white");
    obj.label5:setText("Informações");
    obj.label5:setName("label5");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setLeft(1);
    obj.textEditor1:setTop(27);
    obj.textEditor1:setWidth(280);
    obj.textEditor1:setHeight(202);
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setField("informacoes");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout1);
    obj.rectangle7:setLeft(600);
    obj.rectangle7:setTop(3);
    obj.rectangle7:setColor("Black");
    obj.rectangle7:setWidth(77);
    obj.rectangle7:setHeight(28);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setLeft(605);
    obj.label6:setTop(6);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    obj.label6:setFontSize(18.0);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("white");
    obj.label6:setText("História");
    obj.label6:setName("label6");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout1);
    obj.richEdit1:setLeft(300);
    obj.richEdit1:setTop(27);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#ffffff");
    lfm_setPropAsString(obj.richEdit1, "animateImages",  "true");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "black");
    obj.richEdit1:setField("background");
    obj.richEdit1:setWidth(712);
    obj.richEdit1:setHeight(272);
    obj.richEdit1:setName("richEdit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(21);
    obj.layout2:setTop(316);
    obj.layout2:setWidth(969);
    obj.layout2:setHeight(358);
    obj.layout2:setName("layout2");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout2);
    obj.rectangle8:setLeft(86);
    obj.rectangle8:setTop(3);
    obj.rectangle8:setColor("Black");
    obj.rectangle8:setWidth(128);
    obj.rectangle8:setHeight(28);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout2);
    obj.label7:setLeft(90);
    obj.label7:setTop(6);
    obj.label7:setWidth(120);
    obj.label7:setHeight(20);
    obj.label7:setFontSize(18.0);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("white");
    obj.label7:setText("Personalidade");
    obj.label7:setName("label7");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setLeft(0);
    obj.textEditor2:setTop(30);
    obj.textEditor2:setWidth(300);
    obj.textEditor2:setHeight(328);
    obj.textEditor2:setFontColor("black");
    obj.textEditor2:setField("personalidade");
    obj.textEditor2:setName("textEditor2");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout2);
    obj.rectangle9:setLeft(435);
    obj.rectangle9:setTop(3);
    obj.rectangle9:setColor("Black");
    obj.rectangle9:setWidth(93);
    obj.rectangle9:setHeight(28);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout2);
    obj.label8:setLeft(439);
    obj.label8:setTop(6);
    obj.label8:setWidth(100);
    obj.label8:setHeight(20);
    obj.label8:setFontSize(18.0);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("white");
    obj.label8:setText("Aparência");
    obj.label8:setName("label8");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout2);
    obj.textEditor3:setLeft(334);
    obj.textEditor3:setTop(30);
    obj.textEditor3:setWidth(300);
    obj.textEditor3:setHeight(328);
    obj.textEditor3:setFontColor("black");
    obj.textEditor3:setField("aparencia");
    obj.textEditor3:setName("textEditor3");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout2);
    obj.rectangle10:setLeft(770);
    obj.rectangle10:setTop(3);
    obj.rectangle10:setColor("Black");
    obj.rectangle10:setWidth(97);
    obj.rectangle10:setHeight(28);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout2);
    obj.label9:setLeft(774);
    obj.label9:setTop(6);
    obj.label9:setWidth(100);
    obj.label9:setHeight(20);
    obj.label9:setFontSize(18.0);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("white");
    obj.label9:setText("Anotações");
    obj.label9:setName("label9");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout2);
    obj.textEditor4:setLeft(669);
    obj.textEditor4:setTop(30);
    obj.textEditor4:setWidth(300);
    obj.textEditor4:setHeight(328);
    obj.textEditor4:setFontColor("black");
    obj.textEditor4:setField("anotacoes");
    obj.textEditor4:setName("textEditor4");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.XPNivel ~= nil then self.XPNivel:destroy(); self.XPNivel = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.XPAtual ~= nil then self.XPAtual:destroy(); self.XPAtual = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta05()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta05();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta05 = {
    newEditor = newTormenta05, 
    new = newTormenta05, 
    name = "Tormenta05", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta05 = _Tormenta05;
Firecast.registrarForm(_Tormenta05);

return _Tormenta05;
