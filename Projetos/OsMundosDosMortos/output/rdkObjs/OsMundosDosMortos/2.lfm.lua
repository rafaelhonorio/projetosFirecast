require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_OsMundosDosMortos2()
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
    obj:setName("OsMundosDosMortos2");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setAlign("client");
    obj.image1:setField("backgroundingVerso");
    obj.image1:setStyle("stretch");
    obj.image1:setSRC("");
    obj.image1:setName("image1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(880);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("gray");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(8);
    obj.label1:setTop(5);
    obj.label1:setWidth(138);
    obj.label1:setHeight(20);
    obj.label1:setText("Histórico");
    obj.label1:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setName("label1");

    obj.backgroundingVerso = GUI.fromHandle(_obj_newObject("button"));
    obj.backgroundingVerso:setParent(obj.layout1);
    obj.backgroundingVerso:setName("backgroundingVerso");
    obj.backgroundingVerso:setLeft(830);
    obj.backgroundingVerso:setTop(2);
    obj.backgroundingVerso:setWidth(40);
    obj.backgroundingVerso:setHeight(25);
    obj.backgroundingVerso:setText("BG");
    obj.backgroundingVerso:setCanFocus(false);
    obj.backgroundingVerso:setHint("Altera a imagem de fundo da pagina Verso.");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(40);
    obj.layout2:setWidth(860);
    obj.layout2:setHeight(240);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setLeft(5);
    obj.rectangle2:setTop(0);
    obj.rectangle2:setColor("Gainsboro");
    obj.rectangle2:setWidth(65);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(7);
    obj.label2:setWidth(80);
    obj.label2:setHeight(20);
    obj.label2:setText("Infância");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontSize(16);
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout2);
    obj.textEditor1:setTop(20);
    obj.textEditor1:setWidth(860);
    obj.textEditor1:setHeight(240);
    obj.textEditor1:setField("bginfancia");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(10);
    obj.layout3:setTop(290);
    obj.layout3:setWidth(860);
    obj.layout3:setHeight(240);
    obj.layout3:setName("layout3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setLeft(5);
    obj.rectangle3:setTop(0);
    obj.rectangle3:setColor("Gainsboro");
    obj.rectangle3:setWidth(103);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setLeft(7);
    obj.label3:setWidth(100);
    obj.label3:setHeight(20);
    obj.label3:setText("Adolescência");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontSize(16);
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout3);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(860);
    obj.textEditor2:setHeight(240);
    obj.textEditor2:setField("bgadolescencia");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(10);
    obj.layout4:setTop(540);
    obj.layout4:setWidth(860);
    obj.layout4:setHeight(240);
    obj.layout4:setName("layout4");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout4);
    obj.rectangle4:setLeft(5);
    obj.rectangle4:setTop(0);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(90);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setLeft(7);
    obj.label4:setWidth(90);
    obj.label4:setHeight(20);
    obj.label4:setText("Fase adulta");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontSize(16);
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout4);
    obj.textEditor3:setTop(20);
    obj.textEditor3:setWidth(860);
    obj.textEditor3:setHeight(240);
    obj.textEditor3:setField("bgadulta");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj._e_event0 = obj.backgroundingVerso:addEventListener("onClick",
        function (_)
            Dialogs.selectImageURL('', function(url) sheet.backgroundingVerso = url end)
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

        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.backgroundingVerso ~= nil then self.backgroundingVerso:destroy(); self.backgroundingVerso = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
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

function newOsMundosDosMortos2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_OsMundosDosMortos2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _OsMundosDosMortos2 = {
    newEditor = newOsMundosDosMortos2, 
    new = newOsMundosDosMortos2, 
    name = "OsMundosDosMortos2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

OsMundosDosMortos2 = _OsMundosDosMortos2;
Firecast.registrarForm(_OsMundosDosMortos2);

return _OsMundosDosMortos2;
