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
    obj:setTheme("dark");
    obj:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("DimGray");
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
    obj.rectangle2:setLeft(280);
    obj.rectangle2:setTop(3);
    obj.rectangle2:setColor("Gainsboro");
    obj.rectangle2:setWidth(77);
    obj.rectangle2:setHeight(28);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(285);
    obj.label1:setTop(6);
    obj.label1:setWidth(100);
    obj.label1:setHeight(20);
    obj.label1:setFontSize(18.0);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setText("História");
    obj.label1:setName("label1");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout1);
    obj.richEdit1:setLeft(10);
    obj.richEdit1:setTop(27);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "animateImages",  "true");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("background");
    obj.richEdit1:setWidth(712);
    obj.richEdit1:setHeight(272);
    obj.richEdit1:setName("richEdit1");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setLeft(795);
    obj.rectangle3:setTop(3);
    obj.rectangle3:setColor("Gainsboro");
    obj.rectangle3:setWidth(115);
    obj.rectangle3:setHeight(28);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(799);
    obj.label2:setTop(6);
    obj.label2:setWidth(110);
    obj.label2:setHeight(20);
    obj.label2:setFontSize(18.0);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setText("Informações");
    obj.label2:setName("label2");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setLeft(723);
    obj.textEditor1:setTop(27);
    obj.textEditor1:setWidth(280);
    obj.textEditor1:setHeight(202);
    obj.textEditor1:setField("informacoes");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout1);
    obj.rectangle4:setLeft(723);
    obj.rectangle4:setTop(230);
    obj.rectangle4:setColor("#333333");
    obj.rectangle4:setWidth(258);
    obj.rectangle4:setHeight(70);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout1);
    obj.rectangle5:setLeft(727);
    obj.rectangle5:setTop(235);
    obj.rectangle5:setColor("#696969");
    obj.rectangle5:setWidth(248);
    obj.rectangle5:setHeight(60);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(21);
    obj.layout2:setTop(316);
    obj.layout2:setWidth(969);
    obj.layout2:setHeight(358);
    obj.layout2:setName("layout2");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout2);
    obj.rectangle6:setLeft(86);
    obj.rectangle6:setTop(3);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(128);
    obj.rectangle6:setHeight(28);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(90);
    obj.label3:setTop(6);
    obj.label3:setWidth(120);
    obj.label3:setHeight(20);
    obj.label3:setFontSize(18.0);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setText("Personalidade");
    obj.label3:setName("label3");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setLeft(0);
    obj.textEditor2:setTop(30);
    obj.textEditor2:setWidth(300);
    obj.textEditor2:setHeight(328);
    obj.textEditor2:setField("personalidade");
    obj.textEditor2:setName("textEditor2");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout2);
    obj.rectangle7:setLeft(435);
    obj.rectangle7:setTop(3);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(93);
    obj.rectangle7:setHeight(28);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(439);
    obj.label4:setTop(6);
    obj.label4:setWidth(100);
    obj.label4:setHeight(20);
    obj.label4:setFontSize(18.0);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setText("Aparência");
    obj.label4:setName("label4");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout2);
    obj.textEditor3:setLeft(334);
    obj.textEditor3:setTop(30);
    obj.textEditor3:setWidth(300);
    obj.textEditor3:setHeight(328);
    obj.textEditor3:setField("aparencia");
    obj.textEditor3:setName("textEditor3");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout2);
    obj.rectangle8:setLeft(770);
    obj.rectangle8:setTop(3);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(97);
    obj.rectangle8:setHeight(28);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout2);
    obj.label5:setLeft(774);
    obj.label5:setTop(6);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setFontSize(18.0);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setText("Anotações");
    obj.label5:setName("label5");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout2);
    obj.textEditor4:setLeft(669);
    obj.textEditor4:setTop(30);
    obj.textEditor4:setWidth(300);
    obj.textEditor4:setHeight(328);
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
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
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
