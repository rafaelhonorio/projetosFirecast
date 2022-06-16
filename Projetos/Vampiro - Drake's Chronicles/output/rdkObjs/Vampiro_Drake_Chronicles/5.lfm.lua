require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmVampiro_Drake_Chronicles5_svg()
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
    obj:setName("frmVampiro_Drake_Chronicles5_svg");
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
    obj.image1:setSRC("/Vampiro_Drake_Chronicles/images/5.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(77);
    obj.layout1:setTop(233);
    obj.layout1:setWidth(228);
    obj.layout1:setHeight(116);
    obj.layout1:setName("layout1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(228);
    obj.textEditor1:setHeight(116);
    obj.textEditor1:setField("FonteAliados");
    obj.textEditor1:setName("textEditor1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(326);
    obj.layout2:setTop(233);
    obj.layout2:setWidth(228);
    obj.layout2:setHeight(116);
    obj.layout2:setName("layout2");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setFontColor("#ffffff");
    obj.textEditor2:setWidth(228);
    obj.textEditor2:setHeight(116);
    obj.textEditor2:setField("ÁreaAliados");
    obj.textEditor2:setName("textEditor2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(573);
    obj.layout3:setTop(233);
    obj.layout3:setWidth(228);
    obj.layout3:setHeight(116);
    obj.layout3:setName("layout3");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout3);
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setFontSize(16);
    obj.textEditor3:setFontColor("#ffffff");
    obj.textEditor3:setWidth(228);
    obj.textEditor3:setHeight(116);
    obj.textEditor3:setField("DadosAliados");
    obj.textEditor3:setName("textEditor3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(77);
    obj.layout4:setTop(394);
    obj.layout4:setWidth(228);
    obj.layout4:setHeight(116);
    obj.layout4:setName("layout4");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout4);
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setFontSize(16);
    obj.textEditor4:setFontColor("#ffffff");
    obj.textEditor4:setWidth(228);
    obj.textEditor4:setHeight(116);
    obj.textEditor4:setField("FonteContatos");
    obj.textEditor4:setName("textEditor4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(326);
    obj.layout5:setTop(394);
    obj.layout5:setWidth(228);
    obj.layout5:setHeight(116);
    obj.layout5:setName("layout5");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout5);
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setFontSize(16);
    obj.textEditor5:setFontColor("#ffffff");
    obj.textEditor5:setWidth(228);
    obj.textEditor5:setHeight(116);
    obj.textEditor5:setField("ÁreaContatos");
    obj.textEditor5:setName("textEditor5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(573);
    obj.layout6:setTop(394);
    obj.layout6:setWidth(228);
    obj.layout6:setHeight(116);
    obj.layout6:setName("layout6");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout6);
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setFontSize(16);
    obj.textEditor6:setFontColor("#ffffff");
    obj.textEditor6:setWidth(228);
    obj.textEditor6:setHeight(116);
    obj.textEditor6:setField("DadosContatos");
    obj.textEditor6:setName("textEditor6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(77);
    obj.layout7:setTop(555);
    obj.layout7:setWidth(228);
    obj.layout7:setHeight(116);
    obj.layout7:setName("layout7");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout7);
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setFontSize(16);
    obj.textEditor7:setFontColor("#ffffff");
    obj.textEditor7:setWidth(228);
    obj.textEditor7:setHeight(116);
    obj.textEditor7:setField("FonteInfluência");
    obj.textEditor7:setName("textEditor7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(326);
    obj.layout8:setTop(555);
    obj.layout8:setWidth(228);
    obj.layout8:setHeight(116);
    obj.layout8:setName("layout8");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout8);
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setFontSize(16);
    obj.textEditor8:setFontColor("#ffffff");
    obj.textEditor8:setWidth(228);
    obj.textEditor8:setHeight(116);
    obj.textEditor8:setField("ÁreaInfluência");
    obj.textEditor8:setName("textEditor8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(573);
    obj.layout9:setTop(555);
    obj.layout9:setWidth(228);
    obj.layout9:setHeight(116);
    obj.layout9:setName("layout9");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout9);
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setFontSize(16);
    obj.textEditor9:setFontColor("#ffffff");
    obj.textEditor9:setWidth(228);
    obj.textEditor9:setHeight(116);
    obj.textEditor9:setField("DadosInfluência");
    obj.textEditor9:setName("textEditor9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(77);
    obj.layout10:setTop(717);
    obj.layout10:setWidth(228);
    obj.layout10:setHeight(116);
    obj.layout10:setName("layout10");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout10);
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setFontSize(16);
    obj.textEditor10:setFontColor("#ffffff");
    obj.textEditor10:setWidth(228);
    obj.textEditor10:setHeight(116);
    obj.textEditor10:setField("FonteFMilitar");
    obj.textEditor10:setName("textEditor10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(326);
    obj.layout11:setTop(717);
    obj.layout11:setWidth(228);
    obj.layout11:setHeight(116);
    obj.layout11:setName("layout11");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout11);
    obj.textEditor11:setTransparent(true);
    obj.textEditor11:setFontSize(16);
    obj.textEditor11:setFontColor("#ffffff");
    obj.textEditor11:setWidth(228);
    obj.textEditor11:setHeight(116);
    obj.textEditor11:setField("ÁreaFMilitar");
    obj.textEditor11:setName("textEditor11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(573);
    obj.layout12:setTop(717);
    obj.layout12:setWidth(228);
    obj.layout12:setHeight(116);
    obj.layout12:setName("layout12");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout12);
    obj.textEditor12:setTransparent(true);
    obj.textEditor12:setFontSize(16);
    obj.textEditor12:setFontColor("#ffffff");
    obj.textEditor12:setWidth(228);
    obj.textEditor12:setHeight(116);
    obj.textEditor12:setField("DadosFMilitar");
    obj.textEditor12:setName("textEditor12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(77);
    obj.layout13:setTop(884);
    obj.layout13:setWidth(228);
    obj.layout13:setHeight(116);
    obj.layout13:setName("layout13");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout13);
    obj.textEditor13:setTransparent(true);
    obj.textEditor13:setFontSize(16);
    obj.textEditor13:setFontColor("#ffffff");
    obj.textEditor13:setWidth(228);
    obj.textEditor13:setHeight(116);
    obj.textEditor13:setField("NomeAS");
    obj.textEditor13:setName("textEditor13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(326);
    obj.layout14:setTop(884);
    obj.layout14:setWidth(228);
    obj.layout14:setHeight(116);
    obj.layout14:setName("layout14");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.layout14);
    obj.textEditor14:setTransparent(true);
    obj.textEditor14:setFontSize(16);
    obj.textEditor14:setFontColor("#ffffff");
    obj.textEditor14:setWidth(228);
    obj.textEditor14:setHeight(116);
    obj.textEditor14:setField("NatAS");
    obj.textEditor14:setName("textEditor14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(573);
    obj.layout15:setTop(884);
    obj.layout15:setWidth(228);
    obj.layout15:setHeight(116);
    obj.layout15:setName("layout15");

    obj.textEditor15 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.layout15);
    obj.textEditor15:setTransparent(true);
    obj.textEditor15:setFontSize(16);
    obj.textEditor15:setFontColor("#ffffff");
    obj.textEditor15:setWidth(228);
    obj.textEditor15:setHeight(116);
    obj.textEditor15:setField("AcordosAS");
    obj.textEditor15:setName("textEditor15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(77);
    obj.layout16:setTop(1030);
    obj.layout16:setWidth(725);
    obj.layout16:setHeight(163);
    obj.layout16:setName("layout16");

    obj.textEditor16 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor16:setParent(obj.layout16);
    obj.textEditor16:setTransparent(true);
    obj.textEditor16:setFontSize(16);
    obj.textEditor16:setFontColor("#ffffff");
    obj.textEditor16:setWidth(725);
    obj.textEditor16:setHeight(163);
    obj.textEditor16:setField("OutrasFontes");
    obj.textEditor16:setName("textEditor16");

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
        if self.textEditor16 ~= nil then self.textEditor16:destroy(); self.textEditor16 = nil; end;
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
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmVampiro_Drake_Chronicles5_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmVampiro_Drake_Chronicles5_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmVampiro_Drake_Chronicles5_svg = {
    newEditor = newfrmVampiro_Drake_Chronicles5_svg, 
    new = newfrmVampiro_Drake_Chronicles5_svg, 
    name = "frmVampiro_Drake_Chronicles5_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmVampiro_Drake_Chronicles5_svg = _frmVampiro_Drake_Chronicles5_svg;
Firecast.registrarForm(_frmVampiro_Drake_Chronicles5_svg);

return _frmVampiro_Drake_Chronicles5_svg;
