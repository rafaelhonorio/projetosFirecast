require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmVampiro_Drake_Chronicles3_svg()
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
    obj:setName("frmVampiro_Drake_Chronicles3_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(873);
    obj.rectangle1:setHeight(1216);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(873);
    obj.image1:setHeight(1216);
    obj.image1:setSRC("/Vampiro_Drake_Chronicles/images/3.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(74);
    obj.layout1:setTop(208);
    obj.layout1:setWidth(355);
    obj.layout1:setHeight(117);
    obj.layout1:setName("layout1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(355);
    obj.textEditor1:setHeight(117);
    obj.textEditor1:setField("Fama");
    obj.textEditor1:setName("textEditor1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(445);
    obj.layout2:setTop(208);
    obj.layout2:setWidth(355);
    obj.layout2:setHeight(117);
    obj.layout2:setName("layout2");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setFontColor("#ffffff");
    obj.textEditor2:setWidth(355);
    obj.textEditor2:setHeight(117);
    obj.textEditor2:setField("Recursos");
    obj.textEditor2:setName("textEditor2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(74);
    obj.layout3:setTop(345);
    obj.layout3:setWidth(355);
    obj.layout3:setHeight(117);
    obj.layout3:setName("layout3");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout3);
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setFontSize(16);
    obj.textEditor3:setFontColor("#ffffff");
    obj.textEditor3:setWidth(355);
    obj.textEditor3:setHeight(117);
    obj.textEditor3:setField("Rebanho");
    obj.textEditor3:setName("textEditor3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(445);
    obj.layout4:setTop(345);
    obj.layout4:setWidth(355);
    obj.layout4:setHeight(117);
    obj.layout4:setName("layout4");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout4);
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setFontSize(16);
    obj.textEditor4:setFontColor("#ffffff");
    obj.textEditor4:setWidth(355);
    obj.textEditor4:setHeight(117);
    obj.textEditor4:setField("Lacaios");
    obj.textEditor4:setName("textEditor4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(74);
    obj.layout5:setTop(484);
    obj.layout5:setWidth(355);
    obj.layout5:setHeight(117);
    obj.layout5:setName("layout5");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout5);
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setFontSize(16);
    obj.textEditor5:setFontColor("#ffffff");
    obj.textEditor5:setWidth(355);
    obj.textEditor5:setHeight(117);
    obj.textEditor5:setField("Mentor");
    obj.textEditor5:setName("textEditor5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(445);
    obj.layout6:setTop(484);
    obj.layout6:setWidth(355);
    obj.layout6:setHeight(117);
    obj.layout6:setName("layout6");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout6);
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setFontSize(16);
    obj.textEditor6:setFontColor("#ffffff");
    obj.textEditor6:setWidth(355);
    obj.textEditor6:setHeight(117);
    obj.textEditor6:setField("Status");
    obj.textEditor6:setName("textEditor6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(197);
    obj.layout7:setTop(598);
    obj.layout7:setWidth(168);
    obj.layout7:setHeight(30);
    obj.layout7:setName("layout7");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout7);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(16);
    obj.edit1:setFontColor("#ffffff");
    obj.edit1:setHorzTextAlign("leading");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(168);
    obj.edit1:setHeight(30);
    obj.edit1:setField("TOutros1");
    obj.edit1:setName("edit1");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(569);
    obj.layout8:setTop(598);
    obj.layout8:setWidth(168);
    obj.layout8:setHeight(30);
    obj.layout8:setName("layout8");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout8);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(16);
    obj.edit2:setFontColor("#ffffff");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(168);
    obj.edit2:setHeight(30);
    obj.edit2:setField("TOutros2");
    obj.edit2:setName("edit2");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(74);
    obj.layout9:setTop(629);
    obj.layout9:setWidth(355);
    obj.layout9:setHeight(117);
    obj.layout9:setName("layout9");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout9);
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setFontSize(16);
    obj.textEditor7:setFontColor("#ffffff");
    obj.textEditor7:setWidth(355);
    obj.textEditor7:setHeight(115);
    obj.textEditor7:setField("Outros1");
    obj.textEditor7:setName("textEditor7");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(445);
    obj.layout10:setTop(629);
    obj.layout10:setWidth(355);
    obj.layout10:setHeight(117);
    obj.layout10:setName("layout10");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout10);
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setFontSize(16);
    obj.textEditor8:setFontColor("#ffffff");
    obj.textEditor8:setWidth(355);
    obj.textEditor8:setHeight(115);
    obj.textEditor8:setField("Outros2");
    obj.textEditor8:setName("textEditor8");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(74);
    obj.layout11:setTop(793);
    obj.layout11:setWidth(355);
    obj.layout11:setHeight(117);
    obj.layout11:setName("layout11");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout11);
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setFontSize(16);
    obj.textEditor9:setFontColor("#ffffff");
    obj.textEditor9:setWidth(355);
    obj.textEditor9:setHeight(115);
    obj.textEditor9:setField("Itens");
    obj.textEditor9:setName("textEditor9");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(445);
    obj.layout12:setTop(793);
    obj.layout12:setWidth(355);
    obj.layout12:setHeight(117);
    obj.layout12:setName("layout12");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout12);
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setFontSize(16);
    obj.textEditor10:setFontColor("#ffffff");
    obj.textEditor10:setWidth(355);
    obj.textEditor10:setHeight(115);
    obj.textEditor10:setField("Equipamentos");
    obj.textEditor10:setName("textEditor10");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(74);
    obj.layout13:setTop(928);
    obj.layout13:setWidth(355);
    obj.layout13:setHeight(117);
    obj.layout13:setName("layout13");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout13);
    obj.textEditor11:setTransparent(true);
    obj.textEditor11:setFontSize(16);
    obj.textEditor11:setFontColor("#ffffff");
    obj.textEditor11:setWidth(355);
    obj.textEditor11:setHeight(115);
    obj.textEditor11:setField("Territórios");
    obj.textEditor11:setName("textEditor11");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(445);
    obj.layout14:setTop(928);
    obj.layout14:setWidth(355);
    obj.layout14:setHeight(117);
    obj.layout14:setName("layout14");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout14);
    obj.textEditor12:setTransparent(true);
    obj.textEditor12:setFontSize(16);
    obj.textEditor12:setFontColor("#ffffff");
    obj.textEditor12:setWidth(355);
    obj.textEditor12:setHeight(115);
    obj.textEditor12:setField("Veículos");
    obj.textEditor12:setName("textEditor12");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(74);
    obj.layout15:setTop(1099);
    obj.layout15:setWidth(180);
    obj.layout15:setHeight(93);
    obj.layout15:setName("layout15");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout15);
    obj.textEditor13:setTransparent(true);
    obj.textEditor13:setFontSize(16);
    obj.textEditor13:setFontColor("#ffffff");
    obj.textEditor13:setWidth(180);
    obj.textEditor13:setHeight(93);
    obj.textEditor13:setField("Localização");
    obj.textEditor13:setName("textEditor13");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(275);
    obj.layout16:setTop(1099);
    obj.layout16:setWidth(530);
    obj.layout16:setHeight(93);
    obj.layout16:setName("layout16");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.layout16);
    obj.textEditor14:setTransparent(true);
    obj.textEditor14:setFontSize(16);
    obj.textEditor14:setFontColor("#ffffff");
    obj.textEditor14:setWidth(530);
    obj.textEditor14:setHeight(93);
    obj.textEditor14:setField("Descrição");
    obj.textEditor14:setName("textEditor14");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmVampiro_Drake_Chronicles3_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmVampiro_Drake_Chronicles3_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmVampiro_Drake_Chronicles3_svg = {
    newEditor = newfrmVampiro_Drake_Chronicles3_svg, 
    new = newfrmVampiro_Drake_Chronicles3_svg, 
    name = "frmVampiro_Drake_Chronicles3_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmVampiro_Drake_Chronicles3_svg = _frmVampiro_Drake_Chronicles3_svg;
Firecast.registrarForm(_frmVampiro_Drake_Chronicles3_svg);

return _frmVampiro_Drake_Chronicles3_svg;
