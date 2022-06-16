require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmLobisomen3_svg()
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
    obj:setName("frmLobisomen3_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(892);
    obj.rectangle1:setHeight(1263);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(892);
    obj.image1:setHeight(1263);
    obj.image1:setSRC("/Lobisomen - Drake's Chronicles/images/3.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(150);
    obj.layout1:setTop(167);
    obj.layout1:setWidth(300);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(16);
    obj.edit1:setFontColor("#ffffff");
    obj.edit1:setHorzTextAlign("leading");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(300);
    obj.edit1:setHeight(30);
    obj.edit1:setField("Natureza");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(585);
    obj.layout2:setTop(167);
    obj.layout2:setWidth(230);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(16);
    obj.edit2:setFontColor("#ffffff");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(230);
    obj.edit2:setHeight(30);
    obj.edit2:setField("Comportamento");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(585);
    obj.layout3:setTop(769);
    obj.layout3:setWidth(165);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(16);
    obj.edit3:setFontColor("#ffffff");
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(165);
    obj.edit3:setHeight(30);
    obj.edit3:setField("NomeOutros");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(117);
    obj.layout4:setTop(1081);
    obj.layout4:setWidth(320);
    obj.layout4:setHeight(30);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(16);
    obj.edit4:setFontColor("#ffffff");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(320);
    obj.edit4:setHeight(30);
    obj.edit4:setField("NomeS");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(225);
    obj.layout5:setTop(1104);
    obj.layout5:setWidth(215);
    obj.layout5:setHeight(30);
    obj.layout5:setName("layout5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(16);
    obj.edit5:setFontColor("#ffffff");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(215);
    obj.edit5:setHeight(30);
    obj.edit5:setField("LocalizacaoS");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(111);
    obj.layout6:setTop(1127);
    obj.layout6:setWidth(40);
    obj.layout6:setHeight(30);
    obj.layout6:setName("layout6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(16);
    obj.edit6:setFontColor("#ffffff");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(40);
    obj.edit6:setHeight(30);
    obj.edit6:setField("NivelS");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(190);
    obj.layout7:setTop(1127);
    obj.layout7:setWidth(250);
    obj.layout7:setHeight(30);
    obj.layout7:setName("layout7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(16);
    obj.edit7:setFontColor("#ffffff");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(250);
    obj.edit7:setHeight(30);
    obj.edit7:setField("TipoS");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(119);
    obj.layout8:setTop(1147);
    obj.layout8:setWidth(320);
    obj.layout8:setHeight(30);
    obj.layout8:setName("layout8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(16);
    obj.edit8:setFontColor("#ffffff");
    obj.edit8:setHorzTextAlign("leading");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(320);
    obj.edit8:setHeight(30);
    obj.edit8:setField("TotemS");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(111);
    obj.layout9:setTop(1168);
    obj.layout9:setWidth(330);
    obj.layout9:setHeight(30);
    obj.layout9:setName("layout9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(16);
    obj.edit9:setFontColor("#ffffff");
    obj.edit9:setHorzTextAlign("leading");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(330);
    obj.edit9:setHeight(30);
    obj.edit9:setField("LiderS");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(520);
    obj.layout10:setTop(920);
    obj.layout10:setWidth(60);
    obj.layout10:setHeight(30);
    obj.layout10:setName("layout10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(16);
    obj.edit10:setFontColor("#ffffff");
    obj.edit10:setHorzTextAlign("leading");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(60);
    obj.edit10:setHeight(30);
    obj.edit10:setField("TotalE");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(586);
    obj.layout11:setTop(1063);
    obj.layout11:setWidth(60);
    obj.layout11:setHeight(30);
    obj.layout11:setName("layout11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(16);
    obj.edit11:setFontColor("#ffffff");
    obj.edit11:setHorzTextAlign("leading");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(60);
    obj.edit11:setHeight(30);
    obj.edit11:setField("TotalGE");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(70);
    obj.layout12:setTop(263);
    obj.layout12:setWidth(185);
    obj.layout12:setHeight(118);
    obj.layout12:setName("layout12");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout12);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(185);
    obj.textEditor1:setHeight(118);
    obj.textEditor1:setField("Qualidades");
    obj.textEditor1:setName("textEditor1");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(275);
    obj.layout13:setTop(263);
    obj.layout13:setWidth(97);
    obj.layout13:setHeight(118);
    obj.layout13:setName("layout13");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout13);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setFontColor("#ffffff");
    obj.textEditor2:setWidth(97);
    obj.textEditor2:setHeight(118);
    obj.textEditor2:setField("TipoQ");
    obj.textEditor2:setName("textEditor2");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(389);
    obj.layout14:setTop(263);
    obj.layout14:setWidth(50);
    obj.layout14:setHeight(118);
    obj.layout14:setName("layout14");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout14);
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setFontSize(16);
    obj.textEditor3:setFontColor("#ffffff");
    obj.textEditor3:setWidth(50);
    obj.textEditor3:setHeight(118);
    obj.textEditor3:setField("Custo");
    obj.textEditor3:setName("textEditor3");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(457);
    obj.layout15:setTop(264);
    obj.layout15:setWidth(185);
    obj.layout15:setHeight(117);
    obj.layout15:setName("layout15");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout15);
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setFontSize(16);
    obj.textEditor4:setFontColor("#ffffff");
    obj.textEditor4:setWidth(185);
    obj.textEditor4:setHeight(117);
    obj.textEditor4:setField("Defeitos");
    obj.textEditor4:setName("textEditor4");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(663);
    obj.layout16:setTop(264);
    obj.layout16:setWidth(98);
    obj.layout16:setHeight(117);
    obj.layout16:setName("layout16");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout16);
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setFontSize(16);
    obj.textEditor5:setFontColor("#ffffff");
    obj.textEditor5:setWidth(98);
    obj.textEditor5:setHeight(117);
    obj.textEditor5:setField("TipoD");
    obj.textEditor5:setName("textEditor5");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(775);
    obj.layout17:setTop(264);
    obj.layout17:setWidth(58);
    obj.layout17:setHeight(117);
    obj.layout17:setName("layout17");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout17);
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setFontSize(16);
    obj.textEditor6:setFontColor("#ffffff");
    obj.textEditor6:setWidth(58);
    obj.textEditor6:setHeight(117);
    obj.textEditor6:setField("Bonus");
    obj.textEditor6:setName("textEditor6");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(70);
    obj.layout18:setTop(440);
    obj.layout18:setWidth(361);
    obj.layout18:setHeight(98);
    obj.layout18:setName("layout18");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout18);
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setFontSize(16);
    obj.textEditor7:setFontColor("#ffffff");
    obj.textEditor7:setWidth(361);
    obj.textEditor7:setHeight(98);
    obj.textEditor7:setField("Aliados");
    obj.textEditor7:setName("textEditor7");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(457);
    obj.layout19:setTop(440);
    obj.layout19:setWidth(361);
    obj.layout19:setHeight(98);
    obj.layout19:setName("layout19");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout19);
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setFontSize(16);
    obj.textEditor8:setFontColor("#ffffff");
    obj.textEditor8:setWidth(361);
    obj.textEditor8:setHeight(98);
    obj.textEditor8:setField("Mentor");
    obj.textEditor8:setName("textEditor8");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(70);
    obj.layout20:setTop(561);
    obj.layout20:setWidth(361);
    obj.layout20:setHeight(98);
    obj.layout20:setName("layout20");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout20);
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setFontSize(16);
    obj.textEditor9:setFontColor("#ffffff");
    obj.textEditor9:setWidth(361);
    obj.textEditor9:setHeight(98);
    obj.textEditor9:setField("Ancestrais");
    obj.textEditor9:setName("textEditor9");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(457);
    obj.layout21:setTop(561);
    obj.layout21:setWidth(361);
    obj.layout21:setHeight(98);
    obj.layout21:setName("layout21");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout21);
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setFontSize(16);
    obj.textEditor10:setFontColor("#ffffff");
    obj.textEditor10:setWidth(361);
    obj.textEditor10:setHeight(98);
    obj.textEditor10:setField("RaçaPura");
    obj.textEditor10:setName("textEditor10");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(70);
    obj.layout22:setTop(680);
    obj.layout22:setWidth(361);
    obj.layout22:setHeight(98);
    obj.layout22:setName("layout22");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout22);
    obj.textEditor11:setTransparent(true);
    obj.textEditor11:setFontSize(16);
    obj.textEditor11:setFontColor("#ffffff");
    obj.textEditor11:setWidth(361);
    obj.textEditor11:setHeight(98);
    obj.textEditor11:setField("Contatos");
    obj.textEditor11:setName("textEditor11");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(457);
    obj.layout23:setTop(680);
    obj.layout23:setWidth(361);
    obj.layout23:setHeight(98);
    obj.layout23:setName("layout23");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout23);
    obj.textEditor12:setTransparent(true);
    obj.textEditor12:setFontSize(16);
    obj.textEditor12:setFontColor("#ffffff");
    obj.textEditor12:setWidth(361);
    obj.textEditor12:setHeight(98);
    obj.textEditor12:setField("Recursos");
    obj.textEditor12:setName("textEditor12");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(70);
    obj.layout24:setTop(801);
    obj.layout24:setWidth(361);
    obj.layout24:setHeight(98);
    obj.layout24:setName("layout24");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout24);
    obj.textEditor13:setTransparent(true);
    obj.textEditor13:setFontSize(16);
    obj.textEditor13:setFontColor("#ffffff");
    obj.textEditor13:setWidth(361);
    obj.textEditor13:setHeight(98);
    obj.textEditor13:setField("Parentes");
    obj.textEditor13:setName("textEditor13");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(457);
    obj.layout25:setTop(801);
    obj.layout25:setWidth(361);
    obj.layout25:setHeight(98);
    obj.layout25:setName("layout25");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.layout25);
    obj.textEditor14:setTransparent(true);
    obj.textEditor14:setFontSize(16);
    obj.textEditor14:setFontColor("#ffffff");
    obj.textEditor14:setWidth(361);
    obj.textEditor14:setHeight(98);
    obj.textEditor14:setField("Outros");
    obj.textEditor14:setName("textEditor14");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(70);
    obj.layout26:setTop(947);
    obj.layout26:setWidth(370);
    obj.layout26:setHeight(43);
    obj.layout26:setName("layout26");

    obj.textEditor15 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.layout26);
    obj.textEditor15:setTransparent(true);
    obj.textEditor15:setFontSize(16);
    obj.textEditor15:setFontColor("#ffffff");
    obj.textEditor15:setWidth(370);
    obj.textEditor15:setHeight(43);
    obj.textEditor15:setField("Equipamento");
    obj.textEditor15:setName("textEditor15");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(70);
    obj.layout27:setTop(1009);
    obj.layout27:setWidth(370);
    obj.layout27:setHeight(43);
    obj.layout27:setName("layout27");

    obj.textEditor16 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor16:setParent(obj.layout27);
    obj.textEditor16:setTransparent(true);
    obj.textEditor16:setFontSize(16);
    obj.textEditor16:setFontColor("#ffffff");
    obj.textEditor16:setWidth(370);
    obj.textEditor16:setHeight(43);
    obj.textEditor16:setField("Bens");
    obj.textEditor16:setName("textEditor16");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(460);
    obj.layout28:setTop(970);
    obj.layout28:setWidth(365);
    obj.layout28:setHeight(88);
    obj.layout28:setName("layout28");

    obj.textEditor17 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor17:setParent(obj.layout28);
    obj.textEditor17:setTransparent(true);
    obj.textEditor17:setFontSize(16);
    obj.textEditor17:setFontColor("#ffffff");
    obj.textEditor17:setWidth(365);
    obj.textEditor17:setHeight(88);
    obj.textEditor17:setField("Adquirido");
    obj.textEditor17:setName("textEditor17");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(460);
    obj.layout29:setTop(1109);
    obj.layout29:setWidth(365);
    obj.layout29:setHeight(88);
    obj.layout29:setName("layout29");

    obj.textEditor18 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor18:setParent(obj.layout29);
    obj.textEditor18:setTransparent(true);
    obj.textEditor18:setFontSize(16);
    obj.textEditor18:setFontColor("#ffffff");
    obj.textEditor18:setWidth(365);
    obj.textEditor18:setHeight(88);
    obj.textEditor18:setField("Gasto");
    obj.textEditor18:setName("textEditor18");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.textEditor16 ~= nil then self.textEditor16:destroy(); self.textEditor16 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.textEditor18 ~= nil then self.textEditor18:destroy(); self.textEditor18 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.textEditor17 ~= nil then self.textEditor17:destroy(); self.textEditor17 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmLobisomen3_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmLobisomen3_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmLobisomen3_svg = {
    newEditor = newfrmLobisomen3_svg, 
    new = newfrmLobisomen3_svg, 
    name = "frmLobisomen3_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmLobisomen3_svg = _frmLobisomen3_svg;
Firecast.registrarForm(_frmLobisomen3_svg);

return _frmLobisomen3_svg;
