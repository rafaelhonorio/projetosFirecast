require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPokeRPGT4_svg()
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
    obj:setName("frmPokeRPGT4_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(952);
    obj.rectangle1:setHeight(1347);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(952);
    obj.image1:setHeight(1347);
    obj.image1:setSRC("/PokeRPGT/images/4.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(44);
    obj.layout1:setTop(277);
    obj.layout1:setWidth(873);
    obj.layout1:setHeight(541);
    obj.layout1:setName("layout1");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout1);
    obj.richEdit1:setWidth(873);
    obj.richEdit1:setHeight(541);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "transparent");
    obj.richEdit1:setField("ant2");
    obj.richEdit1:setName("richEdit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(125);
    obj.layout2:setTop(886);
    obj.layout2:setWidth(338);
    obj.layout2:setHeight(370);
    obj.layout2:setName("layout2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout2);
    obj.image2:setField("imagemDoPersonagem");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setWidth(338);
    obj.image2:setHeight(370);
    obj.image2:setName("image2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(800);
    obj.layout3:setWidth(900);
    obj.layout3:setHeight(900);
    obj.layout3:setName("layout3");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout3);
    obj.edit1:setField("infos_1");
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(16);
    obj.edit1:setFontColor("#ffffff");
    obj.edit1:setHorzTextAlign("leading");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(486);
    obj.edit1:setTop(85);
    obj.edit1:setWidth(220);
    obj.edit1:setHeight(32);
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout3);
    obj.edit2:setField("infos_2");
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(16);
    obj.edit2:setFontColor("#ffffff");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(486);
    obj.edit2:setTop(131);
    obj.edit2:setWidth(220);
    obj.edit2:setHeight(32);
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setField("infos_3");
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(16);
    obj.edit3:setFontColor("#ffffff");
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(486);
    obj.edit3:setTop(182);
    obj.edit3:setWidth(220);
    obj.edit3:setHeight(32);
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout3);
    obj.edit4:setField("infos_4");
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(16);
    obj.edit4:setFontColor("#ffffff");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(486);
    obj.edit4:setTop(228);
    obj.edit4:setWidth(220);
    obj.edit4:setHeight(32);
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout3);
    obj.edit5:setField("infos_5");
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(16);
    obj.edit5:setFontColor("#ffffff");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(486);
    obj.edit5:setTop(274);
    obj.edit5:setWidth(220);
    obj.edit5:setHeight(32);
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout3);
    obj.edit6:setField("infos_6");
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(16);
    obj.edit6:setFontColor("#ffffff");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(486);
    obj.edit6:setTop(321);
    obj.edit6:setWidth(220);
    obj.edit6:setHeight(32);
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout3);
    obj.edit7:setField("infos_7");
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(16);
    obj.edit7:setFontColor("#ffffff");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(486);
    obj.edit7:setTop(371);
    obj.edit7:setWidth(220);
    obj.edit7:setHeight(32);
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout3);
    obj.edit8:setField("infos_8");
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(16);
    obj.edit8:setFontColor("#ffffff");
    obj.edit8:setHorzTextAlign("leading");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(486);
    obj.edit8:setTop(417);
    obj.edit8:setWidth(220);
    obj.edit8:setHeight(32);
    obj.edit8:setName("edit8");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(700);
    obj.layout4:setTop(800);
    obj.layout4:setWidth(900);
    obj.layout4:setHeight(900);
    obj.layout4:setName("layout4");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout4);
    obj.image3:setField("imagemDoPokemon1");
    obj.image3:setEditable(true);
    obj.image3:setStyle("autoFit");
    obj.image3:setLeft(22);
    obj.image3:setTop(86);
    obj.image3:setWidth(89);
    obj.image3:setHeight(109);
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout4);
    obj.image4:setField("imagemDoPokemon2");
    obj.image4:setEditable(true);
    obj.image4:setStyle("autoFit");
    obj.image4:setLeft(120);
    obj.image4:setTop(86);
    obj.image4:setWidth(89);
    obj.image4:setHeight(109);
    obj.image4:setName("image4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.layout4);
    obj.image5:setField("imagemDoPokemon3");
    obj.image5:setEditable(true);
    obj.image5:setStyle("autoFit");
    obj.image5:setLeft(22);
    obj.image5:setTop(204);
    obj.image5:setWidth(89);
    obj.image5:setHeight(109);
    obj.image5:setName("image5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.layout4);
    obj.image6:setField("imagemDoPokemon4");
    obj.image6:setEditable(true);
    obj.image6:setStyle("autoFit");
    obj.image6:setLeft(120);
    obj.image6:setTop(204);
    obj.image6:setWidth(89);
    obj.image6:setHeight(109);
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.layout4);
    obj.image7:setField("imagemDoPokemon5");
    obj.image7:setEditable(true);
    obj.image7:setStyle("autoFit");
    obj.image7:setLeft(22);
    obj.image7:setTop(322);
    obj.image7:setWidth(89);
    obj.image7:setHeight(109);
    obj.image7:setName("image7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.layout4);
    obj.image8:setField("imagemDoPokemon6");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setLeft(120);
    obj.image8:setTop(322);
    obj.image8:setWidth(89);
    obj.image8:setHeight(109);
    obj.image8:setName("image8");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPokeRPGT4_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPokeRPGT4_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPokeRPGT4_svg = {
    newEditor = newfrmPokeRPGT4_svg, 
    new = newfrmPokeRPGT4_svg, 
    name = "frmPokeRPGT4_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmPokeRPGT4_svg = _frmPokeRPGT4_svg;
Firecast.registrarForm(_frmPokeRPGT4_svg);

return _frmPokeRPGT4_svg;
