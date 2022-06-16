require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmLobisomen1_svg()
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
    obj:setName("frmLobisomen1_svg");
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
    obj.image1:setSRC("/Lobisomen - Drake's Chronicles/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(120);
    obj.layout1:setTop(167);
    obj.layout1:setWidth(175);
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
    obj.edit1:setWidth(175);
    obj.edit1:setHeight(30);
    obj.edit1:setField("NomeLobisomen");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(138);
    obj.layout2:setTop(195);
    obj.layout2:setWidth(165);
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
    obj.edit2:setWidth(165);
    obj.edit2:setHeight(30);
    obj.edit2:setField("Jogador");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(133);
    obj.layout3:setTop(222);
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
    obj.edit3:setField("Cronica");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(370);
    obj.layout4:setTop(167);
    obj.layout4:setWidth(190);
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
    obj.edit4:setWidth(190);
    obj.edit4:setHeight(30);
    obj.edit4:setField("RaçaLobisomen");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(393);
    obj.layout5:setTop(195);
    obj.layout5:setWidth(165);
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
    obj.edit5:setWidth(165);
    obj.edit5:setHeight(30);
    obj.edit5:setField("Augurio");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(375);
    obj.layout6:setTop(222);
    obj.layout6:setWidth(190);
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
    obj.edit6:setWidth(190);
    obj.edit6:setHeight(30);
    obj.edit6:setField("Tribo");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(723);
    obj.layout7:setTop(167);
    obj.layout7:setWidth(100);
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
    obj.edit7:setWidth(100);
    obj.edit7:setHeight(30);
    obj.edit7:setField("NomeMatilha");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(730);
    obj.layout8:setTop(195);
    obj.layout8:setWidth(100);
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
    obj.edit8:setWidth(100);
    obj.edit8:setHeight(30);
    obj.edit8:setField("TotemMatilha");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(655);
    obj.layout9:setTop(222);
    obj.layout9:setWidth(170);
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
    obj.edit9:setWidth(170);
    obj.edit9:setHeight(30);
    obj.edit9:setField("Conceito");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(70);
    obj.layout10:setTop(724);
    obj.layout10:setWidth(165);
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
    obj.edit10:setWidth(165);
    obj.edit10:setHeight(30);
    obj.edit10:setField("Antecedente1");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(70);
    obj.layout11:setTop(745);
    obj.layout11:setWidth(165);
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
    obj.edit11:setWidth(165);
    obj.edit11:setHeight(30);
    obj.edit11:setField("Antecedente2");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(70);
    obj.layout12:setTop(766);
    obj.layout12:setWidth(165);
    obj.layout12:setHeight(30);
    obj.layout12:setName("layout12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(16);
    obj.edit12:setFontColor("#ffffff");
    obj.edit12:setHorzTextAlign("leading");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(165);
    obj.edit12:setHeight(30);
    obj.edit12:setField("Antecedente3");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(70);
    obj.layout13:setTop(789);
    obj.layout13:setWidth(165);
    obj.layout13:setHeight(30);
    obj.layout13:setName("layout13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(16);
    obj.edit13:setFontColor("#ffffff");
    obj.edit13:setHorzTextAlign("leading");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(165);
    obj.edit13:setHeight(30);
    obj.edit13:setField("Antecedente4");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(70);
    obj.layout14:setTop(809);
    obj.layout14:setWidth(165);
    obj.layout14:setHeight(30);
    obj.layout14:setName("layout14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout14);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(16);
    obj.edit14:setFontColor("#ffffff");
    obj.edit14:setHorzTextAlign("leading");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(165);
    obj.edit14:setHeight(30);
    obj.edit14:setField("Antecedente5");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(70);
    obj.layout15:setTop(832);
    obj.layout15:setWidth(165);
    obj.layout15:setHeight(30);
    obj.layout15:setName("layout15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(16);
    obj.edit15:setFontColor("#ffffff");
    obj.edit15:setHorzTextAlign("leading");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(165);
    obj.edit15:setHeight(30);
    obj.edit15:setField("Antecedente6");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(330);
    obj.layout16:setTop(724);
    obj.layout16:setWidth(230);
    obj.layout16:setHeight(30);
    obj.layout16:setName("layout16");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout16);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(16);
    obj.edit16:setFontColor("#ffffff");
    obj.edit16:setHorzTextAlign("leading");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(230);
    obj.edit16:setHeight(30);
    obj.edit16:setField("Dons1");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(330);
    obj.layout17:setTop(745);
    obj.layout17:setWidth(230);
    obj.layout17:setHeight(30);
    obj.layout17:setName("layout17");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout17);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(16);
    obj.edit17:setFontColor("#ffffff");
    obj.edit17:setHorzTextAlign("leading");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(230);
    obj.edit17:setHeight(30);
    obj.edit17:setField("Dons2");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(330);
    obj.layout18:setTop(766);
    obj.layout18:setWidth(230);
    obj.layout18:setHeight(30);
    obj.layout18:setName("layout18");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout18);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(16);
    obj.edit18:setFontColor("#ffffff");
    obj.edit18:setHorzTextAlign("leading");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(230);
    obj.edit18:setHeight(30);
    obj.edit18:setField("Dons3");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(330);
    obj.layout19:setTop(789);
    obj.layout19:setWidth(230);
    obj.layout19:setHeight(30);
    obj.layout19:setName("layout19");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout19);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(16);
    obj.edit19:setFontColor("#ffffff");
    obj.edit19:setHorzTextAlign("leading");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(230);
    obj.edit19:setHeight(30);
    obj.edit19:setField("Dons4");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(330);
    obj.layout20:setTop(809);
    obj.layout20:setWidth(230);
    obj.layout20:setHeight(30);
    obj.layout20:setName("layout20");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout20);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(16);
    obj.edit20:setFontColor("#ffffff");
    obj.edit20:setHorzTextAlign("leading");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(230);
    obj.edit20:setHeight(30);
    obj.edit20:setField("Dons5");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(330);
    obj.layout21:setTop(829);
    obj.layout21:setWidth(230);
    obj.layout21:setHeight(30);
    obj.layout21:setName("layout21");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout21);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(16);
    obj.edit21:setFontColor("#ffffff");
    obj.edit21:setHorzTextAlign("leading");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(230);
    obj.edit21:setHeight(30);
    obj.edit21:setField("Dons6");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(590);
    obj.layout22:setTop(724);
    obj.layout22:setWidth(230);
    obj.layout22:setHeight(30);
    obj.layout22:setName("layout22");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout22);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(16);
    obj.edit22:setFontColor("#ffffff");
    obj.edit22:setHorzTextAlign("leading");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(230);
    obj.edit22:setHeight(30);
    obj.edit22:setField("Dons7");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(590);
    obj.layout23:setTop(745);
    obj.layout23:setWidth(230);
    obj.layout23:setHeight(30);
    obj.layout23:setName("layout23");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout23);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(16);
    obj.edit23:setFontColor("#ffffff");
    obj.edit23:setHorzTextAlign("leading");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(230);
    obj.edit23:setHeight(30);
    obj.edit23:setField("Dons8");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(590);
    obj.layout24:setTop(766);
    obj.layout24:setWidth(230);
    obj.layout24:setHeight(30);
    obj.layout24:setName("layout24");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout24);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(16);
    obj.edit24:setFontColor("#ffffff");
    obj.edit24:setHorzTextAlign("leading");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(230);
    obj.edit24:setHeight(30);
    obj.edit24:setField("Dons9");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(590);
    obj.layout25:setTop(789);
    obj.layout25:setWidth(230);
    obj.layout25:setHeight(30);
    obj.layout25:setName("layout25");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout25);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(16);
    obj.edit25:setFontColor("#ffffff");
    obj.edit25:setHorzTextAlign("leading");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(230);
    obj.edit25:setHeight(30);
    obj.edit25:setField("Dons10");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(590);
    obj.layout26:setTop(809);
    obj.layout26:setWidth(230);
    obj.layout26:setHeight(30);
    obj.layout26:setName("layout26");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout26);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(16);
    obj.edit26:setFontColor("#ffffff");
    obj.edit26:setHorzTextAlign("leading");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(230);
    obj.edit26:setHeight(30);
    obj.edit26:setField("Dons11");
    obj.edit26:setName("edit26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(590);
    obj.layout27:setTop(829);
    obj.layout27:setWidth(230);
    obj.layout27:setHeight(30);
    obj.layout27:setName("layout27");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout27);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(16);
    obj.edit27:setFontColor("#ffffff");
    obj.edit27:setHorzTextAlign("leading");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(230);
    obj.edit27:setHeight(30);
    obj.edit27:setField("Dons12");
    obj.edit27:setName("edit27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(70);
    obj.layout28:setTop(1173);
    obj.layout28:setWidth(230);
    obj.layout28:setHeight(30);
    obj.layout28:setName("layout28");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout28);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(16);
    obj.edit28:setFontColor("#ffffff");
    obj.edit28:setHorzTextAlign("leading");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(230);
    obj.edit28:setHeight(30);
    obj.edit28:setField("Posto");
    obj.edit28:setName("edit28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(234);
    obj.layout29:setTop(321);
    obj.layout29:setWidth(18);
    obj.layout29:setHeight(18);
    obj.layout29:setName("layout29");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout29);
    obj.imageCheckBox1:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox1:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox1:setWidth(18);
    obj.imageCheckBox1:setHeight(18);
    obj.imageCheckBox1:setField("Pata1forca");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(234);
    obj.layout30:setTop(344);
    obj.layout30:setWidth(18);
    obj.layout30:setHeight(18);
    obj.layout30:setName("layout30");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout30);
    obj.imageCheckBox2:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox2:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox2:setWidth(18);
    obj.imageCheckBox2:setHeight(18);
    obj.imageCheckBox2:setField("Pata1destreza");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(234);
    obj.layout31:setTop(364);
    obj.layout31:setWidth(18);
    obj.layout31:setHeight(18);
    obj.layout31:setName("layout31");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout31);
    obj.imageCheckBox3:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox3:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox3:setWidth(18);
    obj.imageCheckBox3:setHeight(18);
    obj.imageCheckBox3:setField("Pata1vigor");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(495);
    obj.layout32:setTop(321);
    obj.layout32:setWidth(18);
    obj.layout32:setHeight(18);
    obj.layout32:setName("layout32");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout32);
    obj.imageCheckBox4:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox4:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox4:setWidth(18);
    obj.imageCheckBox4:setHeight(18);
    obj.imageCheckBox4:setField("Pata1carisma");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(495);
    obj.layout33:setTop(344);
    obj.layout33:setWidth(18);
    obj.layout33:setHeight(18);
    obj.layout33:setName("layout33");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout33);
    obj.imageCheckBox5:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox5:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox5:setWidth(18);
    obj.imageCheckBox5:setHeight(18);
    obj.imageCheckBox5:setField("Pata1manipu");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(495);
    obj.layout34:setTop(364);
    obj.layout34:setWidth(18);
    obj.layout34:setHeight(18);
    obj.layout34:setName("layout34");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout34);
    obj.imageCheckBox6:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox6:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox6:setWidth(18);
    obj.imageCheckBox6:setHeight(18);
    obj.imageCheckBox6:setField("Pata1apare");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(751);
    obj.layout35:setTop(321);
    obj.layout35:setWidth(18);
    obj.layout35:setHeight(18);
    obj.layout35:setName("layout35");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout35);
    obj.imageCheckBox7:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox7:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox7:setWidth(18);
    obj.imageCheckBox7:setHeight(18);
    obj.imageCheckBox7:setField("Pata1percep");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(751);
    obj.layout36:setTop(344);
    obj.layout36:setWidth(18);
    obj.layout36:setHeight(18);
    obj.layout36:setName("layout36");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout36);
    obj.imageCheckBox8:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox8:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox8:setWidth(18);
    obj.imageCheckBox8:setHeight(18);
    obj.imageCheckBox8:setField("Pata1intel");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(751);
    obj.layout37:setTop(364);
    obj.layout37:setWidth(18);
    obj.layout37:setHeight(18);
    obj.layout37:setName("layout37");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout37);
    obj.imageCheckBox9:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox9:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox9:setWidth(18);
    obj.imageCheckBox9:setHeight(18);
    obj.imageCheckBox9:setField("Pata1racio");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(234);
    obj.layout38:setTop(451);
    obj.layout38:setWidth(18);
    obj.layout38:setHeight(18);
    obj.layout38:setName("layout38");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout38);
    obj.imageCheckBox10:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox10:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox10:setWidth(18);
    obj.imageCheckBox10:setHeight(18);
    obj.imageCheckBox10:setField("Pata1pront");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(234);
    obj.layout39:setTop(473);
    obj.layout39:setWidth(18);
    obj.layout39:setHeight(18);
    obj.layout39:setName("layout39");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout39);
    obj.imageCheckBox11:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox11:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox11:setWidth(18);
    obj.imageCheckBox11:setHeight(18);
    obj.imageCheckBox11:setField("Pata1espor");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(234);
    obj.layout40:setTop(495);
    obj.layout40:setWidth(18);
    obj.layout40:setHeight(18);
    obj.layout40:setName("layout40");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout40);
    obj.imageCheckBox12:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox12:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox12:setWidth(18);
    obj.imageCheckBox12:setHeight(18);
    obj.imageCheckBox12:setField("Pata1briga");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(234);
    obj.layout41:setTop(516);
    obj.layout41:setWidth(18);
    obj.layout41:setHeight(18);
    obj.layout41:setName("layout41");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout41);
    obj.imageCheckBox13:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox13:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox13:setWidth(18);
    obj.imageCheckBox13:setHeight(18);
    obj.imageCheckBox13:setField("Pata1esqui");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(234);
    obj.layout42:setTop(536);
    obj.layout42:setWidth(18);
    obj.layout42:setHeight(18);
    obj.layout42:setName("layout42");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout42);
    obj.imageCheckBox14:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox14:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox14:setWidth(18);
    obj.imageCheckBox14:setHeight(18);
    obj.imageCheckBox14:setField("Pata1empat");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(234);
    obj.layout43:setTop(558);
    obj.layout43:setWidth(18);
    obj.layout43:setHeight(18);
    obj.layout43:setName("layout43");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout43);
    obj.imageCheckBox15:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox15:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox15:setWidth(18);
    obj.imageCheckBox15:setHeight(18);
    obj.imageCheckBox15:setField("Pata1expre");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(234);
    obj.layout44:setTop(579);
    obj.layout44:setWidth(18);
    obj.layout44:setHeight(18);
    obj.layout44:setName("layout44");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout44);
    obj.imageCheckBox16:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox16:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox16:setWidth(18);
    obj.imageCheckBox16:setHeight(18);
    obj.imageCheckBox16:setField("Pata1intim");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(234);
    obj.layout45:setTop(599);
    obj.layout45:setWidth(18);
    obj.layout45:setHeight(18);
    obj.layout45:setName("layout45");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout45);
    obj.imageCheckBox17:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox17:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox17:setWidth(18);
    obj.imageCheckBox17:setHeight(18);
    obj.imageCheckBox17:setField("Pata1insti");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(234);
    obj.layout46:setTop(619);
    obj.layout46:setWidth(18);
    obj.layout46:setHeight(18);
    obj.layout46:setName("layout46");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout46);
    obj.imageCheckBox18:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox18:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox18:setWidth(18);
    obj.imageCheckBox18:setHeight(18);
    obj.imageCheckBox18:setField("Pata1manha");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(234);
    obj.layout47:setTop(641);
    obj.layout47:setWidth(18);
    obj.layout47:setHeight(18);
    obj.layout47:setName("layout47");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout47);
    obj.imageCheckBox19:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox19:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox19:setWidth(18);
    obj.imageCheckBox19:setHeight(18);
    obj.imageCheckBox19:setField("Pata1labia");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(495);
    obj.layout48:setTop(451);
    obj.layout48:setWidth(18);
    obj.layout48:setHeight(18);
    obj.layout48:setName("layout48");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout48);
    obj.imageCheckBox20:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox20:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox20:setWidth(18);
    obj.imageCheckBox20:setHeight(18);
    obj.imageCheckBox20:setField("Pata1empca");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(495);
    obj.layout49:setTop(473);
    obj.layout49:setWidth(18);
    obj.layout49:setHeight(18);
    obj.layout49:setName("layout49");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout49);
    obj.imageCheckBox21:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox21:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox21:setWidth(18);
    obj.imageCheckBox21:setHeight(18);
    obj.imageCheckBox21:setField("Pata1ofi");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(495);
    obj.layout50:setTop(495);
    obj.layout50:setWidth(18);
    obj.layout50:setHeight(18);
    obj.layout50:setName("layout50");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout50);
    obj.imageCheckBox22:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox22:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox22:setWidth(18);
    obj.imageCheckBox22:setHeight(18);
    obj.imageCheckBox22:setField("Pata1condu");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(495);
    obj.layout51:setTop(516);
    obj.layout51:setWidth(18);
    obj.layout51:setHeight(18);
    obj.layout51:setName("layout51");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout51);
    obj.imageCheckBox23:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox23:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox23:setWidth(18);
    obj.imageCheckBox23:setHeight(18);
    obj.imageCheckBox23:setField("Pata1etique");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(495);
    obj.layout52:setTop(536);
    obj.layout52:setWidth(18);
    obj.layout52:setHeight(18);
    obj.layout52:setName("layout52");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout52);
    obj.imageCheckBox24:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox24:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox24:setWidth(18);
    obj.imageCheckBox24:setHeight(18);
    obj.imageCheckBox24:setField("Pata1armfg");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(495);
    obj.layout53:setTop(558);
    obj.layout53:setWidth(18);
    obj.layout53:setHeight(18);
    obj.layout53:setName("layout53");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout53);
    obj.imageCheckBox25:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox25:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox25:setWidth(18);
    obj.imageCheckBox25:setHeight(18);
    obj.imageCheckBox25:setField("Pata1armbr");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(495);
    obj.layout54:setTop(579);
    obj.layout54:setWidth(18);
    obj.layout54:setHeight(18);
    obj.layout54:setName("layout54");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout54);
    obj.imageCheckBox26:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox26:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox26:setWidth(18);
    obj.imageCheckBox26:setHeight(18);
    obj.imageCheckBox26:setField("Pata1lider");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(495);
    obj.layout55:setTop(599);
    obj.layout55:setWidth(18);
    obj.layout55:setHeight(18);
    obj.layout55:setName("layout55");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout55);
    obj.imageCheckBox27:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox27:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox27:setWidth(18);
    obj.imageCheckBox27:setHeight(18);
    obj.imageCheckBox27:setField("Pata1perfo");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(495);
    obj.layout56:setTop(619);
    obj.layout56:setWidth(18);
    obj.layout56:setHeight(18);
    obj.layout56:setName("layout56");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout56);
    obj.imageCheckBox28:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox28:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox28:setWidth(18);
    obj.imageCheckBox28:setHeight(18);
    obj.imageCheckBox28:setField("Pata1furti");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(495);
    obj.layout57:setTop(641);
    obj.layout57:setWidth(18);
    obj.layout57:setHeight(18);
    obj.layout57:setName("layout57");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout57);
    obj.imageCheckBox29:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox29:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox29:setWidth(18);
    obj.imageCheckBox29:setHeight(18);
    obj.imageCheckBox29:setField("Pata1sobre");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(751);
    obj.layout58:setTop(451);
    obj.layout58:setWidth(18);
    obj.layout58:setHeight(18);
    obj.layout58:setName("layout58");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout58);
    obj.imageCheckBox30:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox30:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox30:setWidth(18);
    obj.imageCheckBox30:setHeight(18);
    obj.imageCheckBox30:setField("Pata1compu");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(751);
    obj.layout59:setTop(473);
    obj.layout59:setWidth(18);
    obj.layout59:setHeight(18);
    obj.layout59:setName("layout59");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout59);
    obj.imageCheckBox31:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox31:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox31:setWidth(18);
    obj.imageCheckBox31:setHeight(18);
    obj.imageCheckBox31:setField("Pata1enig");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(751);
    obj.layout60:setTop(495);
    obj.layout60:setWidth(18);
    obj.layout60:setHeight(18);
    obj.layout60:setName("layout60");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout60);
    obj.imageCheckBox32:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox32:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox32:setWidth(18);
    obj.imageCheckBox32:setHeight(18);
    obj.imageCheckBox32:setField("Pata1inves");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(751);
    obj.layout61:setTop(516);
    obj.layout61:setWidth(18);
    obj.layout61:setHeight(18);
    obj.layout61:setName("layout61");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout61);
    obj.imageCheckBox33:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox33:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox33:setWidth(18);
    obj.imageCheckBox33:setHeight(18);
    obj.imageCheckBox33:setField("Pata1direi");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(751);
    obj.layout62:setTop(536);
    obj.layout62:setWidth(18);
    obj.layout62:setHeight(18);
    obj.layout62:setName("layout62");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout62);
    obj.imageCheckBox34:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox34:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox34:setWidth(18);
    obj.imageCheckBox34:setHeight(18);
    obj.imageCheckBox34:setField("Pata1lingu");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(751);
    obj.layout63:setTop(558);
    obj.layout63:setWidth(18);
    obj.layout63:setHeight(18);
    obj.layout63:setName("layout63");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout63);
    obj.imageCheckBox35:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox35:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox35:setWidth(18);
    obj.imageCheckBox35:setHeight(18);
    obj.imageCheckBox35:setField("Pata1medic");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(751);
    obj.layout64:setTop(579);
    obj.layout64:setWidth(18);
    obj.layout64:setHeight(18);
    obj.layout64:setName("layout64");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout64);
    obj.imageCheckBox36:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox36:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox36:setWidth(18);
    obj.imageCheckBox36:setHeight(18);
    obj.imageCheckBox36:setField("Pata1ocult");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(751);
    obj.layout65:setTop(599);
    obj.layout65:setWidth(18);
    obj.layout65:setHeight(18);
    obj.layout65:setName("layout65");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout65);
    obj.imageCheckBox37:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox37:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox37:setWidth(18);
    obj.imageCheckBox37:setHeight(18);
    obj.imageCheckBox37:setField("Pata1polit");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(751);
    obj.layout66:setTop(619);
    obj.layout66:setWidth(18);
    obj.layout66:setHeight(18);
    obj.layout66:setName("layout66");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout66);
    obj.imageCheckBox38:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox38:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox38:setWidth(18);
    obj.imageCheckBox38:setHeight(18);
    obj.imageCheckBox38:setField("Pata1ritua");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(751);
    obj.layout67:setTop(641);
    obj.layout67:setWidth(18);
    obj.layout67:setHeight(18);
    obj.layout67:setName("layout67");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout67);
    obj.imageCheckBox39:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox39:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox39:setWidth(18);
    obj.imageCheckBox39:setHeight(18);
    obj.imageCheckBox39:setField("Pata1ciencia");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(234);
    obj.layout68:setTop(731);
    obj.layout68:setWidth(18);
    obj.layout68:setHeight(18);
    obj.layout68:setName("layout68");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout68);
    obj.imageCheckBox40:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox40:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox40:setWidth(18);
    obj.imageCheckBox40:setHeight(18);
    obj.imageCheckBox40:setField("Pata1Ant1");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(234);
    obj.layout69:setTop(752);
    obj.layout69:setWidth(18);
    obj.layout69:setHeight(18);
    obj.layout69:setName("layout69");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout69);
    obj.imageCheckBox41:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox41:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox41:setWidth(18);
    obj.imageCheckBox41:setHeight(18);
    obj.imageCheckBox41:setField("Pata1Ant2");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(234);
    obj.layout70:setTop(773);
    obj.layout70:setWidth(18);
    obj.layout70:setHeight(18);
    obj.layout70:setName("layout70");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout70);
    obj.imageCheckBox42:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox42:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox42:setWidth(18);
    obj.imageCheckBox42:setHeight(18);
    obj.imageCheckBox42:setField("Pata1Ant3");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(234);
    obj.layout71:setTop(794);
    obj.layout71:setWidth(18);
    obj.layout71:setHeight(18);
    obj.layout71:setName("layout71");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout71);
    obj.imageCheckBox43:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox43:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox43:setWidth(18);
    obj.imageCheckBox43:setHeight(18);
    obj.imageCheckBox43:setField("Pata1Ant4");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(234);
    obj.layout72:setTop(816);
    obj.layout72:setWidth(18);
    obj.layout72:setHeight(18);
    obj.layout72:setName("layout72");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout72);
    obj.imageCheckBox44:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox44:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox44:setWidth(18);
    obj.imageCheckBox44:setHeight(18);
    obj.imageCheckBox44:setField("Pata1Ant5");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(234);
    obj.layout73:setTop(837);
    obj.layout73:setWidth(18);
    obj.layout73:setHeight(18);
    obj.layout73:setName("layout73");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout73);
    obj.imageCheckBox45:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox45:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox45:setWidth(18);
    obj.imageCheckBox45:setHeight(18);
    obj.imageCheckBox45:setField("Pata1Ant6");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(70);
    obj.layout74:setTop(942);
    obj.layout74:setWidth(18);
    obj.layout74:setHeight(18);
    obj.layout74:setName("layout74");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout74);
    obj.imageCheckBox46:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox46:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox46:setWidth(18);
    obj.imageCheckBox46:setHeight(18);
    obj.imageCheckBox46:setField("Pata1Gl");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(190);
    obj.layout75:setTop(942);
    obj.layout75:setWidth(18);
    obj.layout75:setHeight(18);
    obj.layout75:setName("layout75");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout75);
    obj.imageCheckBox47:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox47:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox47:setWidth(18);
    obj.imageCheckBox47:setHeight(18);
    obj.imageCheckBox47:setField("Pata6Gl");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(70);
    obj.layout76:setTop(964);
    obj.layout76:setWidth(18);
    obj.layout76:setHeight(18);
    obj.layout76:setName("layout76");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout76);
    obj.imageCheckBox48:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox48:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox48:setWidth(18);
    obj.imageCheckBox48:setHeight(18);
    obj.imageCheckBox48:setField("square1Gl");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(192);
    obj.layout77:setTop(964);
    obj.layout77:setWidth(18);
    obj.layout77:setHeight(18);
    obj.layout77:setName("layout77");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout77);
    obj.imageCheckBox49:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox49:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox49:setWidth(18);
    obj.imageCheckBox49:setHeight(18);
    obj.imageCheckBox49:setField("square6Gl");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(70);
    obj.layout78:setTop(1019);
    obj.layout78:setWidth(18);
    obj.layout78:setHeight(18);
    obj.layout78:setName("layout78");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout78);
    obj.imageCheckBox50:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox50:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox50:setWidth(18);
    obj.imageCheckBox50:setHeight(18);
    obj.imageCheckBox50:setField("Pata1Hon");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(190);
    obj.layout79:setTop(1019);
    obj.layout79:setWidth(18);
    obj.layout79:setHeight(18);
    obj.layout79:setName("layout79");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout79);
    obj.imageCheckBox51:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox51:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox51:setWidth(18);
    obj.imageCheckBox51:setHeight(18);
    obj.imageCheckBox51:setField("Pata6Hon");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(70);
    obj.layout80:setTop(1039);
    obj.layout80:setWidth(18);
    obj.layout80:setHeight(18);
    obj.layout80:setName("layout80");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout80);
    obj.imageCheckBox52:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox52:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox52:setWidth(18);
    obj.imageCheckBox52:setHeight(18);
    obj.imageCheckBox52:setField("square1Hon");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(192);
    obj.layout81:setTop(1039);
    obj.layout81:setWidth(18);
    obj.layout81:setHeight(18);
    obj.layout81:setName("layout81");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout81);
    obj.imageCheckBox53:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox53:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox53:setWidth(18);
    obj.imageCheckBox53:setHeight(18);
    obj.imageCheckBox53:setField("square6Hon");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(70);
    obj.layout82:setTop(1093);
    obj.layout82:setWidth(18);
    obj.layout82:setHeight(18);
    obj.layout82:setName("layout82");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout82);
    obj.imageCheckBox54:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox54:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox54:setWidth(18);
    obj.imageCheckBox54:setHeight(18);
    obj.imageCheckBox54:setField("Pata1Sab");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(190);
    obj.layout83:setTop(1093);
    obj.layout83:setWidth(18);
    obj.layout83:setHeight(18);
    obj.layout83:setName("layout83");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout83);
    obj.imageCheckBox55:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox55:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox55:setWidth(18);
    obj.imageCheckBox55:setHeight(18);
    obj.imageCheckBox55:setField("Pata6Sab");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(70);
    obj.layout84:setTop(1114);
    obj.layout84:setWidth(18);
    obj.layout84:setHeight(18);
    obj.layout84:setName("layout84");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout84);
    obj.imageCheckBox56:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox56:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox56:setWidth(18);
    obj.imageCheckBox56:setHeight(18);
    obj.imageCheckBox56:setField("square1Sab");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(192);
    obj.layout85:setTop(1114);
    obj.layout85:setWidth(18);
    obj.layout85:setHeight(18);
    obj.layout85:setName("layout85");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout85);
    obj.imageCheckBox57:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox57:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox57:setWidth(18);
    obj.imageCheckBox57:setHeight(18);
    obj.imageCheckBox57:setField("square6Sab");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(330);
    obj.layout86:setTop(915);
    obj.layout86:setWidth(18);
    obj.layout86:setHeight(18);
    obj.layout86:setName("layout86");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout86);
    obj.imageCheckBox58:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox58:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox58:setWidth(18);
    obj.imageCheckBox58:setHeight(18);
    obj.imageCheckBox58:setField("Pata1F");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(452);
    obj.layout87:setTop(915);
    obj.layout87:setWidth(18);
    obj.layout87:setHeight(18);
    obj.layout87:setName("layout87");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout87);
    obj.imageCheckBox59:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox59:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox59:setWidth(18);
    obj.imageCheckBox59:setHeight(18);
    obj.imageCheckBox59:setField("Pata6F");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(330);
    obj.layout88:setTop(936);
    obj.layout88:setWidth(18);
    obj.layout88:setHeight(18);
    obj.layout88:setName("layout88");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout88);
    obj.imageCheckBox60:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox60:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox60:setWidth(18);
    obj.imageCheckBox60:setHeight(18);
    obj.imageCheckBox60:setField("square1F");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(452);
    obj.layout89:setTop(936);
    obj.layout89:setWidth(18);
    obj.layout89:setHeight(18);
    obj.layout89:setName("layout89");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout89);
    obj.imageCheckBox61:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox61:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox61:setWidth(18);
    obj.imageCheckBox61:setHeight(18);
    obj.imageCheckBox61:setField("square6F");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(330);
    obj.layout90:setTop(1031);
    obj.layout90:setWidth(18);
    obj.layout90:setHeight(18);
    obj.layout90:setName("layout90");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout90);
    obj.imageCheckBox62:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox62:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox62:setWidth(18);
    obj.imageCheckBox62:setHeight(18);
    obj.imageCheckBox62:setField("Pata1Gno");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(452);
    obj.layout91:setTop(1031);
    obj.layout91:setWidth(18);
    obj.layout91:setHeight(18);
    obj.layout91:setName("layout91");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout91);
    obj.imageCheckBox63:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox63:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox63:setWidth(18);
    obj.imageCheckBox63:setHeight(18);
    obj.imageCheckBox63:setField("Pata6Gno");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(330);
    obj.layout92:setTop(1052);
    obj.layout92:setWidth(18);
    obj.layout92:setHeight(18);
    obj.layout92:setName("layout92");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout92);
    obj.imageCheckBox64:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox64:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox64:setWidth(18);
    obj.imageCheckBox64:setHeight(18);
    obj.imageCheckBox64:setField("square1Gno");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(452);
    obj.layout93:setTop(1052);
    obj.layout93:setWidth(18);
    obj.layout93:setHeight(18);
    obj.layout93:setName("layout93");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout93);
    obj.imageCheckBox65:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox65:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox65:setWidth(18);
    obj.imageCheckBox65:setHeight(18);
    obj.imageCheckBox65:setField("square6Gno");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(330);
    obj.layout94:setTop(1141);
    obj.layout94:setWidth(18);
    obj.layout94:setHeight(18);
    obj.layout94:setName("layout94");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout94);
    obj.imageCheckBox66:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox66:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox66:setWidth(18);
    obj.imageCheckBox66:setHeight(18);
    obj.imageCheckBox66:setField("Pata1FDV");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(452);
    obj.layout95:setTop(1141);
    obj.layout95:setWidth(18);
    obj.layout95:setHeight(18);
    obj.layout95:setName("layout95");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout95);
    obj.imageCheckBox67:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox67:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox67:setWidth(18);
    obj.imageCheckBox67:setHeight(18);
    obj.imageCheckBox67:setField("Pata6FDV");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(330);
    obj.layout96:setTop(1163);
    obj.layout96:setWidth(18);
    obj.layout96:setHeight(18);
    obj.layout96:setName("layout96");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout96);
    obj.imageCheckBox68:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox68:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox68:setWidth(18);
    obj.imageCheckBox68:setHeight(18);
    obj.imageCheckBox68:setField("square1FDV");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(452);
    obj.layout97:setTop(1163);
    obj.layout97:setWidth(18);
    obj.layout97:setHeight(18);
    obj.layout97:setName("layout97");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout97);
    obj.imageCheckBox69:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox69:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox69:setWidth(18);
    obj.imageCheckBox69:setHeight(18);
    obj.imageCheckBox69:setField("square6FDV");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(769);
    obj.layout98:setTop(914);
    obj.layout98:setWidth(18);
    obj.layout98:setHeight(18);
    obj.layout98:setName("layout98");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout98);
    obj.imageCheckBox70:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox70:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox70:setWidth(18);
    obj.imageCheckBox70:setHeight(18);
    obj.imageCheckBox70:setField("Pata1Letal");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(769);
    obj.layout99:setTop(1021);
    obj.layout99:setWidth(18);
    obj.layout99:setHeight(18);
    obj.layout99:setName("layout99");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout99);
    obj.imageCheckBox71:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox71:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox71:setWidth(18);
    obj.imageCheckBox71:setHeight(18);
    obj.imageCheckBox71:setField("Pata6Letal");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(790);
    obj.layout100:setTop(914);
    obj.layout100:setWidth(18);
    obj.layout100:setHeight(18);
    obj.layout100:setName("layout100");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout100);
    obj.imageCheckBox72:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox72:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox72:setWidth(18);
    obj.imageCheckBox72:setHeight(18);
    obj.imageCheckBox72:setField("Pata1Agravado");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(790);
    obj.layout101:setTop(1021);
    obj.layout101:setWidth(18);
    obj.layout101:setHeight(18);
    obj.layout101:setName("layout101");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout101);
    obj.imageCheckBox73:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox73:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox73:setWidth(18);
    obj.imageCheckBox73:setHeight(18);
    obj.imageCheckBox73:setField("Pata6Agravado");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(248);
    obj.layout102:setTop(321);
    obj.layout102:setWidth(18);
    obj.layout102:setHeight(18);
    obj.layout102:setName("layout102");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout102);
    obj.imageCheckBox74:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox74:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox74:setWidth(18);
    obj.imageCheckBox74:setHeight(18);
    obj.imageCheckBox74:setField("Pata2forca");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(248);
    obj.layout103:setTop(344);
    obj.layout103:setWidth(18);
    obj.layout103:setHeight(18);
    obj.layout103:setName("layout103");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout103);
    obj.imageCheckBox75:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox75:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox75:setWidth(18);
    obj.imageCheckBox75:setHeight(18);
    obj.imageCheckBox75:setField("Pata2destreza");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(248);
    obj.layout104:setTop(364);
    obj.layout104:setWidth(18);
    obj.layout104:setHeight(18);
    obj.layout104:setName("layout104");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout104);
    obj.imageCheckBox76:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox76:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox76:setWidth(18);
    obj.imageCheckBox76:setHeight(18);
    obj.imageCheckBox76:setField("Pata2vigor");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(509);
    obj.layout105:setTop(321);
    obj.layout105:setWidth(18);
    obj.layout105:setHeight(18);
    obj.layout105:setName("layout105");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout105);
    obj.imageCheckBox77:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox77:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox77:setWidth(18);
    obj.imageCheckBox77:setHeight(18);
    obj.imageCheckBox77:setField("Pata2carisma");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(509);
    obj.layout106:setTop(344);
    obj.layout106:setWidth(18);
    obj.layout106:setHeight(18);
    obj.layout106:setName("layout106");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout106);
    obj.imageCheckBox78:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox78:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox78:setWidth(18);
    obj.imageCheckBox78:setHeight(18);
    obj.imageCheckBox78:setField("Pata2manipu");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(509);
    obj.layout107:setTop(364);
    obj.layout107:setWidth(18);
    obj.layout107:setHeight(18);
    obj.layout107:setName("layout107");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout107);
    obj.imageCheckBox79:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox79:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox79:setWidth(18);
    obj.imageCheckBox79:setHeight(18);
    obj.imageCheckBox79:setField("Pata2apare");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(765);
    obj.layout108:setTop(321);
    obj.layout108:setWidth(18);
    obj.layout108:setHeight(18);
    obj.layout108:setName("layout108");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout108);
    obj.imageCheckBox80:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox80:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox80:setWidth(18);
    obj.imageCheckBox80:setHeight(18);
    obj.imageCheckBox80:setField("Pata2percep");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(765);
    obj.layout109:setTop(344);
    obj.layout109:setWidth(18);
    obj.layout109:setHeight(18);
    obj.layout109:setName("layout109");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout109);
    obj.imageCheckBox81:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox81:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox81:setWidth(18);
    obj.imageCheckBox81:setHeight(18);
    obj.imageCheckBox81:setField("Pata2intel");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(765);
    obj.layout110:setTop(364);
    obj.layout110:setWidth(18);
    obj.layout110:setHeight(18);
    obj.layout110:setName("layout110");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout110);
    obj.imageCheckBox82:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox82:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox82:setWidth(18);
    obj.imageCheckBox82:setHeight(18);
    obj.imageCheckBox82:setField("Pata2racio");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(248);
    obj.layout111:setTop(451);
    obj.layout111:setWidth(18);
    obj.layout111:setHeight(18);
    obj.layout111:setName("layout111");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout111);
    obj.imageCheckBox83:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox83:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox83:setWidth(18);
    obj.imageCheckBox83:setHeight(18);
    obj.imageCheckBox83:setField("Pata2pront");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(248);
    obj.layout112:setTop(473);
    obj.layout112:setWidth(18);
    obj.layout112:setHeight(18);
    obj.layout112:setName("layout112");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout112);
    obj.imageCheckBox84:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox84:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox84:setWidth(18);
    obj.imageCheckBox84:setHeight(18);
    obj.imageCheckBox84:setField("Pata2espor");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(248);
    obj.layout113:setTop(495);
    obj.layout113:setWidth(18);
    obj.layout113:setHeight(18);
    obj.layout113:setName("layout113");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout113);
    obj.imageCheckBox85:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox85:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox85:setWidth(18);
    obj.imageCheckBox85:setHeight(18);
    obj.imageCheckBox85:setField("Pata2briga");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(248);
    obj.layout114:setTop(516);
    obj.layout114:setWidth(18);
    obj.layout114:setHeight(18);
    obj.layout114:setName("layout114");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout114);
    obj.imageCheckBox86:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox86:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox86:setWidth(18);
    obj.imageCheckBox86:setHeight(18);
    obj.imageCheckBox86:setField("Pata2esqui");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(248);
    obj.layout115:setTop(536);
    obj.layout115:setWidth(18);
    obj.layout115:setHeight(18);
    obj.layout115:setName("layout115");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout115);
    obj.imageCheckBox87:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox87:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox87:setWidth(18);
    obj.imageCheckBox87:setHeight(18);
    obj.imageCheckBox87:setField("Pata2empat");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(248);
    obj.layout116:setTop(558);
    obj.layout116:setWidth(18);
    obj.layout116:setHeight(18);
    obj.layout116:setName("layout116");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout116);
    obj.imageCheckBox88:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox88:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox88:setWidth(18);
    obj.imageCheckBox88:setHeight(18);
    obj.imageCheckBox88:setField("Pata2expre");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(248);
    obj.layout117:setTop(579);
    obj.layout117:setWidth(18);
    obj.layout117:setHeight(18);
    obj.layout117:setName("layout117");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout117);
    obj.imageCheckBox89:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox89:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox89:setWidth(18);
    obj.imageCheckBox89:setHeight(18);
    obj.imageCheckBox89:setField("Pata2intim");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(248);
    obj.layout118:setTop(599);
    obj.layout118:setWidth(18);
    obj.layout118:setHeight(18);
    obj.layout118:setName("layout118");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout118);
    obj.imageCheckBox90:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox90:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox90:setWidth(18);
    obj.imageCheckBox90:setHeight(18);
    obj.imageCheckBox90:setField("Pata2insti");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(248);
    obj.layout119:setTop(619);
    obj.layout119:setWidth(18);
    obj.layout119:setHeight(18);
    obj.layout119:setName("layout119");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout119);
    obj.imageCheckBox91:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox91:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox91:setWidth(18);
    obj.imageCheckBox91:setHeight(18);
    obj.imageCheckBox91:setField("Pata2manha");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(248);
    obj.layout120:setTop(641);
    obj.layout120:setWidth(18);
    obj.layout120:setHeight(18);
    obj.layout120:setName("layout120");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout120);
    obj.imageCheckBox92:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox92:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox92:setWidth(18);
    obj.imageCheckBox92:setHeight(18);
    obj.imageCheckBox92:setField("Pata2labia");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(509);
    obj.layout121:setTop(451);
    obj.layout121:setWidth(18);
    obj.layout121:setHeight(18);
    obj.layout121:setName("layout121");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout121);
    obj.imageCheckBox93:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox93:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox93:setWidth(18);
    obj.imageCheckBox93:setHeight(18);
    obj.imageCheckBox93:setField("Pata2empca");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(509);
    obj.layout122:setTop(473);
    obj.layout122:setWidth(18);
    obj.layout122:setHeight(18);
    obj.layout122:setName("layout122");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout122);
    obj.imageCheckBox94:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox94:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox94:setWidth(18);
    obj.imageCheckBox94:setHeight(18);
    obj.imageCheckBox94:setField("Pata2ofi");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(509);
    obj.layout123:setTop(495);
    obj.layout123:setWidth(18);
    obj.layout123:setHeight(18);
    obj.layout123:setName("layout123");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout123);
    obj.imageCheckBox95:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox95:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox95:setWidth(18);
    obj.imageCheckBox95:setHeight(18);
    obj.imageCheckBox95:setField("Pata2condu");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(509);
    obj.layout124:setTop(516);
    obj.layout124:setWidth(18);
    obj.layout124:setHeight(18);
    obj.layout124:setName("layout124");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout124);
    obj.imageCheckBox96:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox96:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox96:setWidth(18);
    obj.imageCheckBox96:setHeight(18);
    obj.imageCheckBox96:setField("Pata2etique");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(509);
    obj.layout125:setTop(536);
    obj.layout125:setWidth(18);
    obj.layout125:setHeight(18);
    obj.layout125:setName("layout125");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout125);
    obj.imageCheckBox97:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox97:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox97:setWidth(18);
    obj.imageCheckBox97:setHeight(18);
    obj.imageCheckBox97:setField("Pata2armfg");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(509);
    obj.layout126:setTop(558);
    obj.layout126:setWidth(18);
    obj.layout126:setHeight(18);
    obj.layout126:setName("layout126");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout126);
    obj.imageCheckBox98:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox98:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox98:setWidth(18);
    obj.imageCheckBox98:setHeight(18);
    obj.imageCheckBox98:setField("Pata2armbr");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(509);
    obj.layout127:setTop(579);
    obj.layout127:setWidth(18);
    obj.layout127:setHeight(18);
    obj.layout127:setName("layout127");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout127);
    obj.imageCheckBox99:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox99:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox99:setWidth(18);
    obj.imageCheckBox99:setHeight(18);
    obj.imageCheckBox99:setField("Pata2lider");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(509);
    obj.layout128:setTop(599);
    obj.layout128:setWidth(18);
    obj.layout128:setHeight(18);
    obj.layout128:setName("layout128");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout128);
    obj.imageCheckBox100:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox100:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox100:setWidth(18);
    obj.imageCheckBox100:setHeight(18);
    obj.imageCheckBox100:setField("Pata2perfo");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(509);
    obj.layout129:setTop(619);
    obj.layout129:setWidth(18);
    obj.layout129:setHeight(18);
    obj.layout129:setName("layout129");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout129);
    obj.imageCheckBox101:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox101:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox101:setWidth(18);
    obj.imageCheckBox101:setHeight(18);
    obj.imageCheckBox101:setField("Pata2furti");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(509);
    obj.layout130:setTop(641);
    obj.layout130:setWidth(18);
    obj.layout130:setHeight(18);
    obj.layout130:setName("layout130");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout130);
    obj.imageCheckBox102:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox102:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox102:setWidth(18);
    obj.imageCheckBox102:setHeight(18);
    obj.imageCheckBox102:setField("Pata2sobre");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(765);
    obj.layout131:setTop(451);
    obj.layout131:setWidth(18);
    obj.layout131:setHeight(18);
    obj.layout131:setName("layout131");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout131);
    obj.imageCheckBox103:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox103:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox103:setWidth(18);
    obj.imageCheckBox103:setHeight(18);
    obj.imageCheckBox103:setField("Pata2compu");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(765);
    obj.layout132:setTop(473);
    obj.layout132:setWidth(18);
    obj.layout132:setHeight(18);
    obj.layout132:setName("layout132");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout132);
    obj.imageCheckBox104:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox104:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox104:setWidth(18);
    obj.imageCheckBox104:setHeight(18);
    obj.imageCheckBox104:setField("Pata2enig");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(765);
    obj.layout133:setTop(495);
    obj.layout133:setWidth(18);
    obj.layout133:setHeight(18);
    obj.layout133:setName("layout133");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout133);
    obj.imageCheckBox105:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox105:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox105:setWidth(18);
    obj.imageCheckBox105:setHeight(18);
    obj.imageCheckBox105:setField("Pata2inves");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(765);
    obj.layout134:setTop(516);
    obj.layout134:setWidth(18);
    obj.layout134:setHeight(18);
    obj.layout134:setName("layout134");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout134);
    obj.imageCheckBox106:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox106:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox106:setWidth(18);
    obj.imageCheckBox106:setHeight(18);
    obj.imageCheckBox106:setField("Pata2direi");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(765);
    obj.layout135:setTop(536);
    obj.layout135:setWidth(18);
    obj.layout135:setHeight(18);
    obj.layout135:setName("layout135");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout135);
    obj.imageCheckBox107:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox107:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox107:setWidth(18);
    obj.imageCheckBox107:setHeight(18);
    obj.imageCheckBox107:setField("Pata2lingu");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle1);
    obj.layout136:setLeft(765);
    obj.layout136:setTop(558);
    obj.layout136:setWidth(18);
    obj.layout136:setHeight(18);
    obj.layout136:setName("layout136");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout136);
    obj.imageCheckBox108:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox108:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox108:setWidth(18);
    obj.imageCheckBox108:setHeight(18);
    obj.imageCheckBox108:setField("Pata2medic");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle1);
    obj.layout137:setLeft(765);
    obj.layout137:setTop(579);
    obj.layout137:setWidth(18);
    obj.layout137:setHeight(18);
    obj.layout137:setName("layout137");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout137);
    obj.imageCheckBox109:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox109:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox109:setWidth(18);
    obj.imageCheckBox109:setHeight(18);
    obj.imageCheckBox109:setField("Pata2ocult");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle1);
    obj.layout138:setLeft(765);
    obj.layout138:setTop(599);
    obj.layout138:setWidth(18);
    obj.layout138:setHeight(18);
    obj.layout138:setName("layout138");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout138);
    obj.imageCheckBox110:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox110:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox110:setWidth(18);
    obj.imageCheckBox110:setHeight(18);
    obj.imageCheckBox110:setField("Pata2polit");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle1);
    obj.layout139:setLeft(765);
    obj.layout139:setTop(619);
    obj.layout139:setWidth(18);
    obj.layout139:setHeight(18);
    obj.layout139:setName("layout139");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout139);
    obj.imageCheckBox111:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox111:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox111:setWidth(18);
    obj.imageCheckBox111:setHeight(18);
    obj.imageCheckBox111:setField("Pata2ritua");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle1);
    obj.layout140:setLeft(765);
    obj.layout140:setTop(641);
    obj.layout140:setWidth(18);
    obj.layout140:setHeight(18);
    obj.layout140:setName("layout140");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout140);
    obj.imageCheckBox112:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox112:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox112:setWidth(18);
    obj.imageCheckBox112:setHeight(18);
    obj.imageCheckBox112:setField("Pata2ciencia");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle1);
    obj.layout141:setLeft(248);
    obj.layout141:setTop(731);
    obj.layout141:setWidth(18);
    obj.layout141:setHeight(18);
    obj.layout141:setName("layout141");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout141);
    obj.imageCheckBox113:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox113:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox113:setWidth(18);
    obj.imageCheckBox113:setHeight(18);
    obj.imageCheckBox113:setField("Pata2Ant1");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle1);
    obj.layout142:setLeft(248);
    obj.layout142:setTop(752);
    obj.layout142:setWidth(18);
    obj.layout142:setHeight(18);
    obj.layout142:setName("layout142");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout142);
    obj.imageCheckBox114:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox114:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox114:setWidth(18);
    obj.imageCheckBox114:setHeight(18);
    obj.imageCheckBox114:setField("Pata2Ant2");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle1);
    obj.layout143:setLeft(248);
    obj.layout143:setTop(773);
    obj.layout143:setWidth(18);
    obj.layout143:setHeight(18);
    obj.layout143:setName("layout143");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout143);
    obj.imageCheckBox115:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox115:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox115:setWidth(18);
    obj.imageCheckBox115:setHeight(18);
    obj.imageCheckBox115:setField("Pata2Ant3");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle1);
    obj.layout144:setLeft(248);
    obj.layout144:setTop(794);
    obj.layout144:setWidth(18);
    obj.layout144:setHeight(18);
    obj.layout144:setName("layout144");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout144);
    obj.imageCheckBox116:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox116:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox116:setWidth(18);
    obj.imageCheckBox116:setHeight(18);
    obj.imageCheckBox116:setField("Pata2Ant4");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle1);
    obj.layout145:setLeft(248);
    obj.layout145:setTop(816);
    obj.layout145:setWidth(18);
    obj.layout145:setHeight(18);
    obj.layout145:setName("layout145");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout145);
    obj.imageCheckBox117:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox117:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox117:setWidth(18);
    obj.imageCheckBox117:setHeight(18);
    obj.imageCheckBox117:setField("Pata2Ant5");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle1);
    obj.layout146:setLeft(248);
    obj.layout146:setTop(837);
    obj.layout146:setWidth(18);
    obj.layout146:setHeight(18);
    obj.layout146:setName("layout146");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout146);
    obj.imageCheckBox118:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox118:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox118:setWidth(18);
    obj.imageCheckBox118:setHeight(18);
    obj.imageCheckBox118:setField("Pata2Ant6");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle1);
    obj.layout147:setLeft(95);
    obj.layout147:setTop(942);
    obj.layout147:setWidth(18);
    obj.layout147:setHeight(18);
    obj.layout147:setName("layout147");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout147);
    obj.imageCheckBox119:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox119:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox119:setWidth(18);
    obj.imageCheckBox119:setHeight(18);
    obj.imageCheckBox119:setField("Pata2Gl");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle1);
    obj.layout148:setLeft(215);
    obj.layout148:setTop(942);
    obj.layout148:setWidth(18);
    obj.layout148:setHeight(18);
    obj.layout148:setName("layout148");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout148);
    obj.imageCheckBox120:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox120:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox120:setWidth(18);
    obj.imageCheckBox120:setHeight(18);
    obj.imageCheckBox120:setField("Pata7Gl");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle1);
    obj.layout149:setLeft(95);
    obj.layout149:setTop(964);
    obj.layout149:setWidth(18);
    obj.layout149:setHeight(18);
    obj.layout149:setName("layout149");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout149);
    obj.imageCheckBox121:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox121:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox121:setWidth(18);
    obj.imageCheckBox121:setHeight(18);
    obj.imageCheckBox121:setField("square2Gl");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle1);
    obj.layout150:setLeft(216);
    obj.layout150:setTop(964);
    obj.layout150:setWidth(18);
    obj.layout150:setHeight(18);
    obj.layout150:setName("layout150");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout150);
    obj.imageCheckBox122:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox122:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox122:setWidth(18);
    obj.imageCheckBox122:setHeight(18);
    obj.imageCheckBox122:setField("square7Gl");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle1);
    obj.layout151:setLeft(95);
    obj.layout151:setTop(1019);
    obj.layout151:setWidth(18);
    obj.layout151:setHeight(18);
    obj.layout151:setName("layout151");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout151);
    obj.imageCheckBox123:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox123:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox123:setWidth(18);
    obj.imageCheckBox123:setHeight(18);
    obj.imageCheckBox123:setField("Pata2Hon");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle1);
    obj.layout152:setLeft(215);
    obj.layout152:setTop(1019);
    obj.layout152:setWidth(18);
    obj.layout152:setHeight(18);
    obj.layout152:setName("layout152");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout152);
    obj.imageCheckBox124:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox124:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox124:setWidth(18);
    obj.imageCheckBox124:setHeight(18);
    obj.imageCheckBox124:setField("Pata7Hon");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle1);
    obj.layout153:setLeft(95);
    obj.layout153:setTop(1039);
    obj.layout153:setWidth(18);
    obj.layout153:setHeight(18);
    obj.layout153:setName("layout153");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout153);
    obj.imageCheckBox125:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox125:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox125:setWidth(18);
    obj.imageCheckBox125:setHeight(18);
    obj.imageCheckBox125:setField("square2Hon");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle1);
    obj.layout154:setLeft(216);
    obj.layout154:setTop(1039);
    obj.layout154:setWidth(18);
    obj.layout154:setHeight(18);
    obj.layout154:setName("layout154");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout154);
    obj.imageCheckBox126:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox126:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox126:setWidth(18);
    obj.imageCheckBox126:setHeight(18);
    obj.imageCheckBox126:setField("square7Hon");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle1);
    obj.layout155:setLeft(95);
    obj.layout155:setTop(1093);
    obj.layout155:setWidth(18);
    obj.layout155:setHeight(18);
    obj.layout155:setName("layout155");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout155);
    obj.imageCheckBox127:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox127:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox127:setWidth(18);
    obj.imageCheckBox127:setHeight(18);
    obj.imageCheckBox127:setField("Pata2Sab");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle1);
    obj.layout156:setLeft(215);
    obj.layout156:setTop(1093);
    obj.layout156:setWidth(18);
    obj.layout156:setHeight(18);
    obj.layout156:setName("layout156");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout156);
    obj.imageCheckBox128:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox128:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox128:setWidth(18);
    obj.imageCheckBox128:setHeight(18);
    obj.imageCheckBox128:setField("Pata7Sab");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle1);
    obj.layout157:setLeft(95);
    obj.layout157:setTop(1114);
    obj.layout157:setWidth(18);
    obj.layout157:setHeight(18);
    obj.layout157:setName("layout157");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout157);
    obj.imageCheckBox129:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox129:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox129:setWidth(18);
    obj.imageCheckBox129:setHeight(18);
    obj.imageCheckBox129:setField("square2Sab");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle1);
    obj.layout158:setLeft(216);
    obj.layout158:setTop(1114);
    obj.layout158:setWidth(18);
    obj.layout158:setHeight(18);
    obj.layout158:setName("layout158");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout158);
    obj.imageCheckBox130:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox130:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox130:setWidth(18);
    obj.imageCheckBox130:setHeight(18);
    obj.imageCheckBox130:setField("square7Sab");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle1);
    obj.layout159:setLeft(355);
    obj.layout159:setTop(915);
    obj.layout159:setWidth(18);
    obj.layout159:setHeight(18);
    obj.layout159:setName("layout159");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout159);
    obj.imageCheckBox131:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox131:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox131:setWidth(18);
    obj.imageCheckBox131:setHeight(18);
    obj.imageCheckBox131:setField("Pata2F");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle1);
    obj.layout160:setLeft(476);
    obj.layout160:setTop(915);
    obj.layout160:setWidth(18);
    obj.layout160:setHeight(18);
    obj.layout160:setName("layout160");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout160);
    obj.imageCheckBox132:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox132:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox132:setWidth(18);
    obj.imageCheckBox132:setHeight(18);
    obj.imageCheckBox132:setField("Pata7F");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle1);
    obj.layout161:setLeft(355);
    obj.layout161:setTop(936);
    obj.layout161:setWidth(18);
    obj.layout161:setHeight(18);
    obj.layout161:setName("layout161");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout161);
    obj.imageCheckBox133:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox133:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox133:setWidth(18);
    obj.imageCheckBox133:setHeight(18);
    obj.imageCheckBox133:setField("square2F");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle1);
    obj.layout162:setLeft(476);
    obj.layout162:setTop(936);
    obj.layout162:setWidth(18);
    obj.layout162:setHeight(18);
    obj.layout162:setName("layout162");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout162);
    obj.imageCheckBox134:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox134:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox134:setWidth(18);
    obj.imageCheckBox134:setHeight(18);
    obj.imageCheckBox134:setField("square7F");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle1);
    obj.layout163:setLeft(355);
    obj.layout163:setTop(1031);
    obj.layout163:setWidth(18);
    obj.layout163:setHeight(18);
    obj.layout163:setName("layout163");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout163);
    obj.imageCheckBox135:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox135:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox135:setWidth(18);
    obj.imageCheckBox135:setHeight(18);
    obj.imageCheckBox135:setField("Pata2Gno");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle1);
    obj.layout164:setLeft(476);
    obj.layout164:setTop(1031);
    obj.layout164:setWidth(18);
    obj.layout164:setHeight(18);
    obj.layout164:setName("layout164");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout164);
    obj.imageCheckBox136:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox136:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox136:setWidth(18);
    obj.imageCheckBox136:setHeight(18);
    obj.imageCheckBox136:setField("Pata7Gno");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle1);
    obj.layout165:setLeft(355);
    obj.layout165:setTop(1052);
    obj.layout165:setWidth(18);
    obj.layout165:setHeight(18);
    obj.layout165:setName("layout165");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout165);
    obj.imageCheckBox137:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox137:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox137:setWidth(18);
    obj.imageCheckBox137:setHeight(18);
    obj.imageCheckBox137:setField("square2Gno");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle1);
    obj.layout166:setLeft(476);
    obj.layout166:setTop(1052);
    obj.layout166:setWidth(18);
    obj.layout166:setHeight(18);
    obj.layout166:setName("layout166");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout166);
    obj.imageCheckBox138:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox138:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox138:setWidth(18);
    obj.imageCheckBox138:setHeight(18);
    obj.imageCheckBox138:setField("square7Gno");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle1);
    obj.layout167:setLeft(355);
    obj.layout167:setTop(1141);
    obj.layout167:setWidth(18);
    obj.layout167:setHeight(18);
    obj.layout167:setName("layout167");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout167);
    obj.imageCheckBox139:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox139:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox139:setWidth(18);
    obj.imageCheckBox139:setHeight(18);
    obj.imageCheckBox139:setField("Pata2FDV");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle1);
    obj.layout168:setLeft(476);
    obj.layout168:setTop(1141);
    obj.layout168:setWidth(18);
    obj.layout168:setHeight(18);
    obj.layout168:setName("layout168");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout168);
    obj.imageCheckBox140:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox140:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox140:setWidth(18);
    obj.imageCheckBox140:setHeight(18);
    obj.imageCheckBox140:setField("Pata7FDV");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle1);
    obj.layout169:setLeft(355);
    obj.layout169:setTop(1163);
    obj.layout169:setWidth(18);
    obj.layout169:setHeight(18);
    obj.layout169:setName("layout169");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout169);
    obj.imageCheckBox141:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox141:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox141:setWidth(18);
    obj.imageCheckBox141:setHeight(18);
    obj.imageCheckBox141:setField("square2FDV");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle1);
    obj.layout170:setLeft(476);
    obj.layout170:setTop(1163);
    obj.layout170:setWidth(18);
    obj.layout170:setHeight(18);
    obj.layout170:setName("layout170");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout170);
    obj.imageCheckBox142:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox142:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox142:setWidth(18);
    obj.imageCheckBox142:setHeight(18);
    obj.imageCheckBox142:setField("square7FDV");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle1);
    obj.layout171:setLeft(769);
    obj.layout171:setTop(935);
    obj.layout171:setWidth(18);
    obj.layout171:setHeight(18);
    obj.layout171:setName("layout171");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout171);
    obj.imageCheckBox143:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox143:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox143:setWidth(18);
    obj.imageCheckBox143:setHeight(18);
    obj.imageCheckBox143:setField("Pata2Letal");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle1);
    obj.layout172:setLeft(769);
    obj.layout172:setTop(1042);
    obj.layout172:setWidth(18);
    obj.layout172:setHeight(18);
    obj.layout172:setName("layout172");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout172);
    obj.imageCheckBox144:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox144:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox144:setWidth(18);
    obj.imageCheckBox144:setHeight(18);
    obj.imageCheckBox144:setField("Pata7Letal");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle1);
    obj.layout173:setLeft(790);
    obj.layout173:setTop(935);
    obj.layout173:setWidth(18);
    obj.layout173:setHeight(18);
    obj.layout173:setName("layout173");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout173);
    obj.imageCheckBox145:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox145:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox145:setWidth(18);
    obj.imageCheckBox145:setHeight(18);
    obj.imageCheckBox145:setField("Pata2Agravado");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle1);
    obj.layout174:setLeft(790);
    obj.layout174:setTop(1042);
    obj.layout174:setWidth(18);
    obj.layout174:setHeight(18);
    obj.layout174:setName("layout174");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout174);
    obj.imageCheckBox146:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox146:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox146:setWidth(18);
    obj.imageCheckBox146:setHeight(18);
    obj.imageCheckBox146:setField("Pata7Agravado");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle1);
    obj.layout175:setLeft(263);
    obj.layout175:setTop(321);
    obj.layout175:setWidth(18);
    obj.layout175:setHeight(18);
    obj.layout175:setName("layout175");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout175);
    obj.imageCheckBox147:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox147:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox147:setWidth(18);
    obj.imageCheckBox147:setHeight(18);
    obj.imageCheckBox147:setField("Pata3forca");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle1);
    obj.layout176:setLeft(263);
    obj.layout176:setTop(344);
    obj.layout176:setWidth(18);
    obj.layout176:setHeight(18);
    obj.layout176:setName("layout176");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout176);
    obj.imageCheckBox148:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox148:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox148:setWidth(18);
    obj.imageCheckBox148:setHeight(18);
    obj.imageCheckBox148:setField("Pata3destreza");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle1);
    obj.layout177:setLeft(263);
    obj.layout177:setTop(364);
    obj.layout177:setWidth(18);
    obj.layout177:setHeight(18);
    obj.layout177:setName("layout177");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout177);
    obj.imageCheckBox149:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox149:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox149:setWidth(18);
    obj.imageCheckBox149:setHeight(18);
    obj.imageCheckBox149:setField("Pata3vigor");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle1);
    obj.layout178:setLeft(524);
    obj.layout178:setTop(321);
    obj.layout178:setWidth(18);
    obj.layout178:setHeight(18);
    obj.layout178:setName("layout178");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout178);
    obj.imageCheckBox150:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox150:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox150:setWidth(18);
    obj.imageCheckBox150:setHeight(18);
    obj.imageCheckBox150:setField("Pata3carisma");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle1);
    obj.layout179:setLeft(524);
    obj.layout179:setTop(344);
    obj.layout179:setWidth(18);
    obj.layout179:setHeight(18);
    obj.layout179:setName("layout179");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout179);
    obj.imageCheckBox151:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox151:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox151:setWidth(18);
    obj.imageCheckBox151:setHeight(18);
    obj.imageCheckBox151:setField("Pata3manipu");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle1);
    obj.layout180:setLeft(524);
    obj.layout180:setTop(364);
    obj.layout180:setWidth(18);
    obj.layout180:setHeight(18);
    obj.layout180:setName("layout180");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout180);
    obj.imageCheckBox152:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox152:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox152:setWidth(18);
    obj.imageCheckBox152:setHeight(18);
    obj.imageCheckBox152:setField("Pata3apare");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle1);
    obj.layout181:setLeft(780);
    obj.layout181:setTop(321);
    obj.layout181:setWidth(18);
    obj.layout181:setHeight(18);
    obj.layout181:setName("layout181");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout181);
    obj.imageCheckBox153:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox153:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox153:setWidth(18);
    obj.imageCheckBox153:setHeight(18);
    obj.imageCheckBox153:setField("Pata3percep");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle1);
    obj.layout182:setLeft(780);
    obj.layout182:setTop(344);
    obj.layout182:setWidth(18);
    obj.layout182:setHeight(18);
    obj.layout182:setName("layout182");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout182);
    obj.imageCheckBox154:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox154:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox154:setWidth(18);
    obj.imageCheckBox154:setHeight(18);
    obj.imageCheckBox154:setField("Pata3intel");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle1);
    obj.layout183:setLeft(780);
    obj.layout183:setTop(364);
    obj.layout183:setWidth(18);
    obj.layout183:setHeight(18);
    obj.layout183:setName("layout183");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout183);
    obj.imageCheckBox155:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox155:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox155:setWidth(18);
    obj.imageCheckBox155:setHeight(18);
    obj.imageCheckBox155:setField("Pata3racio");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle1);
    obj.layout184:setLeft(263);
    obj.layout184:setTop(451);
    obj.layout184:setWidth(18);
    obj.layout184:setHeight(18);
    obj.layout184:setName("layout184");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout184);
    obj.imageCheckBox156:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox156:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox156:setWidth(18);
    obj.imageCheckBox156:setHeight(18);
    obj.imageCheckBox156:setField("Pata3pront");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle1);
    obj.layout185:setLeft(263);
    obj.layout185:setTop(473);
    obj.layout185:setWidth(18);
    obj.layout185:setHeight(18);
    obj.layout185:setName("layout185");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout185);
    obj.imageCheckBox157:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox157:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox157:setWidth(18);
    obj.imageCheckBox157:setHeight(18);
    obj.imageCheckBox157:setField("Pata3espor");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle1);
    obj.layout186:setLeft(263);
    obj.layout186:setTop(495);
    obj.layout186:setWidth(18);
    obj.layout186:setHeight(18);
    obj.layout186:setName("layout186");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout186);
    obj.imageCheckBox158:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox158:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox158:setWidth(18);
    obj.imageCheckBox158:setHeight(18);
    obj.imageCheckBox158:setField("Pata3briga");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle1);
    obj.layout187:setLeft(263);
    obj.layout187:setTop(516);
    obj.layout187:setWidth(18);
    obj.layout187:setHeight(18);
    obj.layout187:setName("layout187");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout187);
    obj.imageCheckBox159:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox159:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox159:setWidth(18);
    obj.imageCheckBox159:setHeight(18);
    obj.imageCheckBox159:setField("Pata3esqui");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle1);
    obj.layout188:setLeft(263);
    obj.layout188:setTop(536);
    obj.layout188:setWidth(18);
    obj.layout188:setHeight(18);
    obj.layout188:setName("layout188");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout188);
    obj.imageCheckBox160:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox160:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox160:setWidth(18);
    obj.imageCheckBox160:setHeight(18);
    obj.imageCheckBox160:setField("Pata3empat");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle1);
    obj.layout189:setLeft(263);
    obj.layout189:setTop(558);
    obj.layout189:setWidth(18);
    obj.layout189:setHeight(18);
    obj.layout189:setName("layout189");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout189);
    obj.imageCheckBox161:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox161:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox161:setWidth(18);
    obj.imageCheckBox161:setHeight(18);
    obj.imageCheckBox161:setField("Pata3expre");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.layout190 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout190:setParent(obj.rectangle1);
    obj.layout190:setLeft(263);
    obj.layout190:setTop(579);
    obj.layout190:setWidth(18);
    obj.layout190:setHeight(18);
    obj.layout190:setName("layout190");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout190);
    obj.imageCheckBox162:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox162:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox162:setWidth(18);
    obj.imageCheckBox162:setHeight(18);
    obj.imageCheckBox162:setField("Pata3intim");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.layout191 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout191:setParent(obj.rectangle1);
    obj.layout191:setLeft(263);
    obj.layout191:setTop(599);
    obj.layout191:setWidth(18);
    obj.layout191:setHeight(18);
    obj.layout191:setName("layout191");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout191);
    obj.imageCheckBox163:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox163:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox163:setWidth(18);
    obj.imageCheckBox163:setHeight(18);
    obj.imageCheckBox163:setField("Pata3insti");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.layout192 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout192:setParent(obj.rectangle1);
    obj.layout192:setLeft(263);
    obj.layout192:setTop(619);
    obj.layout192:setWidth(18);
    obj.layout192:setHeight(18);
    obj.layout192:setName("layout192");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout192);
    obj.imageCheckBox164:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox164:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox164:setWidth(18);
    obj.imageCheckBox164:setHeight(18);
    obj.imageCheckBox164:setField("Pata3manha");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.layout193 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout193:setParent(obj.rectangle1);
    obj.layout193:setLeft(263);
    obj.layout193:setTop(641);
    obj.layout193:setWidth(18);
    obj.layout193:setHeight(18);
    obj.layout193:setName("layout193");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout193);
    obj.imageCheckBox165:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox165:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox165:setWidth(18);
    obj.imageCheckBox165:setHeight(18);
    obj.imageCheckBox165:setField("Pata3labia");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.layout194 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout194:setParent(obj.rectangle1);
    obj.layout194:setLeft(524);
    obj.layout194:setTop(451);
    obj.layout194:setWidth(18);
    obj.layout194:setHeight(18);
    obj.layout194:setName("layout194");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout194);
    obj.imageCheckBox166:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox166:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox166:setWidth(18);
    obj.imageCheckBox166:setHeight(18);
    obj.imageCheckBox166:setField("Pata3empca");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.layout195 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout195:setParent(obj.rectangle1);
    obj.layout195:setLeft(524);
    obj.layout195:setTop(473);
    obj.layout195:setWidth(18);
    obj.layout195:setHeight(18);
    obj.layout195:setName("layout195");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout195);
    obj.imageCheckBox167:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox167:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox167:setWidth(18);
    obj.imageCheckBox167:setHeight(18);
    obj.imageCheckBox167:setField("Pata3ofi");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.layout196 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout196:setParent(obj.rectangle1);
    obj.layout196:setLeft(524);
    obj.layout196:setTop(495);
    obj.layout196:setWidth(18);
    obj.layout196:setHeight(18);
    obj.layout196:setName("layout196");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout196);
    obj.imageCheckBox168:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox168:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox168:setWidth(18);
    obj.imageCheckBox168:setHeight(18);
    obj.imageCheckBox168:setField("Pata3condu");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.layout197 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout197:setParent(obj.rectangle1);
    obj.layout197:setLeft(524);
    obj.layout197:setTop(516);
    obj.layout197:setWidth(18);
    obj.layout197:setHeight(18);
    obj.layout197:setName("layout197");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout197);
    obj.imageCheckBox169:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox169:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox169:setWidth(18);
    obj.imageCheckBox169:setHeight(18);
    obj.imageCheckBox169:setField("Pata3etique");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.layout198 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout198:setParent(obj.rectangle1);
    obj.layout198:setLeft(524);
    obj.layout198:setTop(536);
    obj.layout198:setWidth(18);
    obj.layout198:setHeight(18);
    obj.layout198:setName("layout198");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout198);
    obj.imageCheckBox170:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox170:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox170:setWidth(18);
    obj.imageCheckBox170:setHeight(18);
    obj.imageCheckBox170:setField("Pata3armfg");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.layout199 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout199:setParent(obj.rectangle1);
    obj.layout199:setLeft(524);
    obj.layout199:setTop(558);
    obj.layout199:setWidth(18);
    obj.layout199:setHeight(18);
    obj.layout199:setName("layout199");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout199);
    obj.imageCheckBox171:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox171:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox171:setWidth(18);
    obj.imageCheckBox171:setHeight(18);
    obj.imageCheckBox171:setField("Pata3armbr");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.layout200 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout200:setParent(obj.rectangle1);
    obj.layout200:setLeft(524);
    obj.layout200:setTop(579);
    obj.layout200:setWidth(18);
    obj.layout200:setHeight(18);
    obj.layout200:setName("layout200");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout200);
    obj.imageCheckBox172:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox172:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox172:setWidth(18);
    obj.imageCheckBox172:setHeight(18);
    obj.imageCheckBox172:setField("Pata3lider");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.layout201 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout201:setParent(obj.rectangle1);
    obj.layout201:setLeft(524);
    obj.layout201:setTop(599);
    obj.layout201:setWidth(18);
    obj.layout201:setHeight(18);
    obj.layout201:setName("layout201");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout201);
    obj.imageCheckBox173:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox173:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox173:setWidth(18);
    obj.imageCheckBox173:setHeight(18);
    obj.imageCheckBox173:setField("Pata3perfo");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.layout202 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout202:setParent(obj.rectangle1);
    obj.layout202:setLeft(524);
    obj.layout202:setTop(619);
    obj.layout202:setWidth(18);
    obj.layout202:setHeight(18);
    obj.layout202:setName("layout202");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout202);
    obj.imageCheckBox174:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox174:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox174:setWidth(18);
    obj.imageCheckBox174:setHeight(18);
    obj.imageCheckBox174:setField("Pata3furti");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.layout203 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout203:setParent(obj.rectangle1);
    obj.layout203:setLeft(524);
    obj.layout203:setTop(641);
    obj.layout203:setWidth(18);
    obj.layout203:setHeight(18);
    obj.layout203:setName("layout203");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout203);
    obj.imageCheckBox175:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox175:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox175:setWidth(18);
    obj.imageCheckBox175:setHeight(18);
    obj.imageCheckBox175:setField("Pata3sobre");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.layout204 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout204:setParent(obj.rectangle1);
    obj.layout204:setLeft(780);
    obj.layout204:setTop(451);
    obj.layout204:setWidth(18);
    obj.layout204:setHeight(18);
    obj.layout204:setName("layout204");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout204);
    obj.imageCheckBox176:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox176:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox176:setWidth(18);
    obj.imageCheckBox176:setHeight(18);
    obj.imageCheckBox176:setField("Pata3compu");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.layout205 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout205:setParent(obj.rectangle1);
    obj.layout205:setLeft(780);
    obj.layout205:setTop(473);
    obj.layout205:setWidth(18);
    obj.layout205:setHeight(18);
    obj.layout205:setName("layout205");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout205);
    obj.imageCheckBox177:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox177:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox177:setWidth(18);
    obj.imageCheckBox177:setHeight(18);
    obj.imageCheckBox177:setField("Pata3enig");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.layout206 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout206:setParent(obj.rectangle1);
    obj.layout206:setLeft(780);
    obj.layout206:setTop(495);
    obj.layout206:setWidth(18);
    obj.layout206:setHeight(18);
    obj.layout206:setName("layout206");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout206);
    obj.imageCheckBox178:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox178:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox178:setWidth(18);
    obj.imageCheckBox178:setHeight(18);
    obj.imageCheckBox178:setField("Pata3inves");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.layout207 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout207:setParent(obj.rectangle1);
    obj.layout207:setLeft(780);
    obj.layout207:setTop(516);
    obj.layout207:setWidth(18);
    obj.layout207:setHeight(18);
    obj.layout207:setName("layout207");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout207);
    obj.imageCheckBox179:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox179:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox179:setWidth(18);
    obj.imageCheckBox179:setHeight(18);
    obj.imageCheckBox179:setField("Pata3direi");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.layout208 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout208:setParent(obj.rectangle1);
    obj.layout208:setLeft(780);
    obj.layout208:setTop(536);
    obj.layout208:setWidth(18);
    obj.layout208:setHeight(18);
    obj.layout208:setName("layout208");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout208);
    obj.imageCheckBox180:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox180:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox180:setWidth(18);
    obj.imageCheckBox180:setHeight(18);
    obj.imageCheckBox180:setField("Pata3lingu");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.layout209 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout209:setParent(obj.rectangle1);
    obj.layout209:setLeft(780);
    obj.layout209:setTop(558);
    obj.layout209:setWidth(18);
    obj.layout209:setHeight(18);
    obj.layout209:setName("layout209");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout209);
    obj.imageCheckBox181:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox181:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox181:setWidth(18);
    obj.imageCheckBox181:setHeight(18);
    obj.imageCheckBox181:setField("Pata3medic");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.layout210 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout210:setParent(obj.rectangle1);
    obj.layout210:setLeft(780);
    obj.layout210:setTop(579);
    obj.layout210:setWidth(18);
    obj.layout210:setHeight(18);
    obj.layout210:setName("layout210");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout210);
    obj.imageCheckBox182:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox182:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox182:setWidth(18);
    obj.imageCheckBox182:setHeight(18);
    obj.imageCheckBox182:setField("Pata3ocult");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.layout211 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout211:setParent(obj.rectangle1);
    obj.layout211:setLeft(780);
    obj.layout211:setTop(599);
    obj.layout211:setWidth(18);
    obj.layout211:setHeight(18);
    obj.layout211:setName("layout211");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout211);
    obj.imageCheckBox183:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox183:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox183:setWidth(18);
    obj.imageCheckBox183:setHeight(18);
    obj.imageCheckBox183:setField("Pata3polit");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.layout212 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout212:setParent(obj.rectangle1);
    obj.layout212:setLeft(780);
    obj.layout212:setTop(619);
    obj.layout212:setWidth(18);
    obj.layout212:setHeight(18);
    obj.layout212:setName("layout212");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout212);
    obj.imageCheckBox184:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox184:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox184:setWidth(18);
    obj.imageCheckBox184:setHeight(18);
    obj.imageCheckBox184:setField("Pata3ritua");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.layout213 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout213:setParent(obj.rectangle1);
    obj.layout213:setLeft(780);
    obj.layout213:setTop(641);
    obj.layout213:setWidth(18);
    obj.layout213:setHeight(18);
    obj.layout213:setName("layout213");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout213);
    obj.imageCheckBox185:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox185:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox185:setWidth(18);
    obj.imageCheckBox185:setHeight(18);
    obj.imageCheckBox185:setField("Pata3ciencia");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.layout214 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout214:setParent(obj.rectangle1);
    obj.layout214:setLeft(263);
    obj.layout214:setTop(731);
    obj.layout214:setWidth(18);
    obj.layout214:setHeight(18);
    obj.layout214:setName("layout214");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout214);
    obj.imageCheckBox186:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox186:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox186:setWidth(18);
    obj.imageCheckBox186:setHeight(18);
    obj.imageCheckBox186:setField("Pata3Ant1");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.layout215 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout215:setParent(obj.rectangle1);
    obj.layout215:setLeft(263);
    obj.layout215:setTop(752);
    obj.layout215:setWidth(18);
    obj.layout215:setHeight(18);
    obj.layout215:setName("layout215");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout215);
    obj.imageCheckBox187:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox187:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox187:setWidth(18);
    obj.imageCheckBox187:setHeight(18);
    obj.imageCheckBox187:setField("Pata3Ant2");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.layout216 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout216:setParent(obj.rectangle1);
    obj.layout216:setLeft(263);
    obj.layout216:setTop(773);
    obj.layout216:setWidth(18);
    obj.layout216:setHeight(18);
    obj.layout216:setName("layout216");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout216);
    obj.imageCheckBox188:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox188:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox188:setWidth(18);
    obj.imageCheckBox188:setHeight(18);
    obj.imageCheckBox188:setField("Pata3Ant3");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.layout217 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout217:setParent(obj.rectangle1);
    obj.layout217:setLeft(263);
    obj.layout217:setTop(794);
    obj.layout217:setWidth(18);
    obj.layout217:setHeight(18);
    obj.layout217:setName("layout217");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout217);
    obj.imageCheckBox189:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox189:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox189:setWidth(18);
    obj.imageCheckBox189:setHeight(18);
    obj.imageCheckBox189:setField("Pata3Ant4");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.layout218 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout218:setParent(obj.rectangle1);
    obj.layout218:setLeft(263);
    obj.layout218:setTop(816);
    obj.layout218:setWidth(18);
    obj.layout218:setHeight(18);
    obj.layout218:setName("layout218");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout218);
    obj.imageCheckBox190:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox190:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox190:setWidth(18);
    obj.imageCheckBox190:setHeight(18);
    obj.imageCheckBox190:setField("Pata3Ant5");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.layout219 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout219:setParent(obj.rectangle1);
    obj.layout219:setLeft(263);
    obj.layout219:setTop(837);
    obj.layout219:setWidth(18);
    obj.layout219:setHeight(18);
    obj.layout219:setName("layout219");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout219);
    obj.imageCheckBox191:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox191:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox191:setWidth(18);
    obj.imageCheckBox191:setHeight(18);
    obj.imageCheckBox191:setField("Pata3Ant6");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.layout220 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout220:setParent(obj.rectangle1);
    obj.layout220:setLeft(119);
    obj.layout220:setTop(942);
    obj.layout220:setWidth(18);
    obj.layout220:setHeight(18);
    obj.layout220:setName("layout220");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout220);
    obj.imageCheckBox192:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox192:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox192:setWidth(18);
    obj.imageCheckBox192:setHeight(18);
    obj.imageCheckBox192:setField("Pata3Gl");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.layout221 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout221:setParent(obj.rectangle1);
    obj.layout221:setLeft(238);
    obj.layout221:setTop(942);
    obj.layout221:setWidth(18);
    obj.layout221:setHeight(18);
    obj.layout221:setName("layout221");

    obj.imageCheckBox193 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox193:setParent(obj.layout221);
    obj.imageCheckBox193:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox193:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox193:setWidth(18);
    obj.imageCheckBox193:setHeight(18);
    obj.imageCheckBox193:setField("Pata8Gl");
    obj.imageCheckBox193:setName("imageCheckBox193");

    obj.layout222 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout222:setParent(obj.rectangle1);
    obj.layout222:setLeft(119);
    obj.layout222:setTop(964);
    obj.layout222:setWidth(18);
    obj.layout222:setHeight(18);
    obj.layout222:setName("layout222");

    obj.imageCheckBox194 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox194:setParent(obj.layout222);
    obj.imageCheckBox194:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox194:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox194:setWidth(18);
    obj.imageCheckBox194:setHeight(18);
    obj.imageCheckBox194:setField("square3Gl");
    obj.imageCheckBox194:setName("imageCheckBox194");

    obj.layout223 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout223:setParent(obj.rectangle1);
    obj.layout223:setLeft(239);
    obj.layout223:setTop(964);
    obj.layout223:setWidth(18);
    obj.layout223:setHeight(18);
    obj.layout223:setName("layout223");

    obj.imageCheckBox195 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox195:setParent(obj.layout223);
    obj.imageCheckBox195:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox195:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox195:setWidth(18);
    obj.imageCheckBox195:setHeight(18);
    obj.imageCheckBox195:setField("square8Gl");
    obj.imageCheckBox195:setName("imageCheckBox195");

    obj.layout224 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout224:setParent(obj.rectangle1);
    obj.layout224:setLeft(119);
    obj.layout224:setTop(1019);
    obj.layout224:setWidth(18);
    obj.layout224:setHeight(18);
    obj.layout224:setName("layout224");

    obj.imageCheckBox196 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox196:setParent(obj.layout224);
    obj.imageCheckBox196:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox196:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox196:setWidth(18);
    obj.imageCheckBox196:setHeight(18);
    obj.imageCheckBox196:setField("Pata3Hon");
    obj.imageCheckBox196:setName("imageCheckBox196");

    obj.layout225 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout225:setParent(obj.rectangle1);
    obj.layout225:setLeft(238);
    obj.layout225:setTop(1019);
    obj.layout225:setWidth(18);
    obj.layout225:setHeight(18);
    obj.layout225:setName("layout225");

    obj.imageCheckBox197 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox197:setParent(obj.layout225);
    obj.imageCheckBox197:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox197:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox197:setWidth(18);
    obj.imageCheckBox197:setHeight(18);
    obj.imageCheckBox197:setField("Pata8Hon");
    obj.imageCheckBox197:setName("imageCheckBox197");

    obj.layout226 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout226:setParent(obj.rectangle1);
    obj.layout226:setLeft(119);
    obj.layout226:setTop(1039);
    obj.layout226:setWidth(18);
    obj.layout226:setHeight(18);
    obj.layout226:setName("layout226");

    obj.imageCheckBox198 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox198:setParent(obj.layout226);
    obj.imageCheckBox198:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox198:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox198:setWidth(18);
    obj.imageCheckBox198:setHeight(18);
    obj.imageCheckBox198:setField("square3Hon");
    obj.imageCheckBox198:setName("imageCheckBox198");

    obj.layout227 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout227:setParent(obj.rectangle1);
    obj.layout227:setLeft(239);
    obj.layout227:setTop(1039);
    obj.layout227:setWidth(18);
    obj.layout227:setHeight(18);
    obj.layout227:setName("layout227");

    obj.imageCheckBox199 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox199:setParent(obj.layout227);
    obj.imageCheckBox199:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox199:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox199:setWidth(18);
    obj.imageCheckBox199:setHeight(18);
    obj.imageCheckBox199:setField("square8Hon");
    obj.imageCheckBox199:setName("imageCheckBox199");

    obj.layout228 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout228:setParent(obj.rectangle1);
    obj.layout228:setLeft(119);
    obj.layout228:setTop(1093);
    obj.layout228:setWidth(18);
    obj.layout228:setHeight(18);
    obj.layout228:setName("layout228");

    obj.imageCheckBox200 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox200:setParent(obj.layout228);
    obj.imageCheckBox200:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox200:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox200:setWidth(18);
    obj.imageCheckBox200:setHeight(18);
    obj.imageCheckBox200:setField("Pata3Sab");
    obj.imageCheckBox200:setName("imageCheckBox200");

    obj.layout229 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout229:setParent(obj.rectangle1);
    obj.layout229:setLeft(238);
    obj.layout229:setTop(1093);
    obj.layout229:setWidth(18);
    obj.layout229:setHeight(18);
    obj.layout229:setName("layout229");

    obj.imageCheckBox201 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox201:setParent(obj.layout229);
    obj.imageCheckBox201:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox201:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox201:setWidth(18);
    obj.imageCheckBox201:setHeight(18);
    obj.imageCheckBox201:setField("Pata8Sab");
    obj.imageCheckBox201:setName("imageCheckBox201");

    obj.layout230 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout230:setParent(obj.rectangle1);
    obj.layout230:setLeft(119);
    obj.layout230:setTop(1114);
    obj.layout230:setWidth(18);
    obj.layout230:setHeight(18);
    obj.layout230:setName("layout230");

    obj.imageCheckBox202 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox202:setParent(obj.layout230);
    obj.imageCheckBox202:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox202:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox202:setWidth(18);
    obj.imageCheckBox202:setHeight(18);
    obj.imageCheckBox202:setField("square3Sab");
    obj.imageCheckBox202:setName("imageCheckBox202");

    obj.layout231 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout231:setParent(obj.rectangle1);
    obj.layout231:setLeft(239);
    obj.layout231:setTop(1114);
    obj.layout231:setWidth(18);
    obj.layout231:setHeight(18);
    obj.layout231:setName("layout231");

    obj.imageCheckBox203 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox203:setParent(obj.layout231);
    obj.imageCheckBox203:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox203:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox203:setWidth(18);
    obj.imageCheckBox203:setHeight(18);
    obj.imageCheckBox203:setField("square8Sab");
    obj.imageCheckBox203:setName("imageCheckBox203");

    obj.layout232 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout232:setParent(obj.rectangle1);
    obj.layout232:setLeft(379);
    obj.layout232:setTop(915);
    obj.layout232:setWidth(18);
    obj.layout232:setHeight(18);
    obj.layout232:setName("layout232");

    obj.imageCheckBox204 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox204:setParent(obj.layout232);
    obj.imageCheckBox204:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox204:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox204:setWidth(18);
    obj.imageCheckBox204:setHeight(18);
    obj.imageCheckBox204:setField("Pata3F");
    obj.imageCheckBox204:setName("imageCheckBox204");

    obj.layout233 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout233:setParent(obj.rectangle1);
    obj.layout233:setLeft(499);
    obj.layout233:setTop(915);
    obj.layout233:setWidth(18);
    obj.layout233:setHeight(18);
    obj.layout233:setName("layout233");

    obj.imageCheckBox205 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox205:setParent(obj.layout233);
    obj.imageCheckBox205:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox205:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox205:setWidth(18);
    obj.imageCheckBox205:setHeight(18);
    obj.imageCheckBox205:setField("Pata8F");
    obj.imageCheckBox205:setName("imageCheckBox205");

    obj.layout234 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout234:setParent(obj.rectangle1);
    obj.layout234:setLeft(379);
    obj.layout234:setTop(936);
    obj.layout234:setWidth(18);
    obj.layout234:setHeight(18);
    obj.layout234:setName("layout234");

    obj.imageCheckBox206 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox206:setParent(obj.layout234);
    obj.imageCheckBox206:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox206:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox206:setWidth(18);
    obj.imageCheckBox206:setHeight(18);
    obj.imageCheckBox206:setField("square3F");
    obj.imageCheckBox206:setName("imageCheckBox206");

    obj.layout235 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout235:setParent(obj.rectangle1);
    obj.layout235:setLeft(499);
    obj.layout235:setTop(936);
    obj.layout235:setWidth(18);
    obj.layout235:setHeight(18);
    obj.layout235:setName("layout235");

    obj.imageCheckBox207 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox207:setParent(obj.layout235);
    obj.imageCheckBox207:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox207:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox207:setWidth(18);
    obj.imageCheckBox207:setHeight(18);
    obj.imageCheckBox207:setField("square8F");
    obj.imageCheckBox207:setName("imageCheckBox207");

    obj.layout236 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout236:setParent(obj.rectangle1);
    obj.layout236:setLeft(379);
    obj.layout236:setTop(1031);
    obj.layout236:setWidth(18);
    obj.layout236:setHeight(18);
    obj.layout236:setName("layout236");

    obj.imageCheckBox208 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox208:setParent(obj.layout236);
    obj.imageCheckBox208:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox208:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox208:setWidth(18);
    obj.imageCheckBox208:setHeight(18);
    obj.imageCheckBox208:setField("Pata3Gno");
    obj.imageCheckBox208:setName("imageCheckBox208");

    obj.layout237 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout237:setParent(obj.rectangle1);
    obj.layout237:setLeft(499);
    obj.layout237:setTop(1031);
    obj.layout237:setWidth(18);
    obj.layout237:setHeight(18);
    obj.layout237:setName("layout237");

    obj.imageCheckBox209 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox209:setParent(obj.layout237);
    obj.imageCheckBox209:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox209:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox209:setWidth(18);
    obj.imageCheckBox209:setHeight(18);
    obj.imageCheckBox209:setField("Pata8Gno");
    obj.imageCheckBox209:setName("imageCheckBox209");

    obj.layout238 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout238:setParent(obj.rectangle1);
    obj.layout238:setLeft(379);
    obj.layout238:setTop(1052);
    obj.layout238:setWidth(18);
    obj.layout238:setHeight(18);
    obj.layout238:setName("layout238");

    obj.imageCheckBox210 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox210:setParent(obj.layout238);
    obj.imageCheckBox210:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox210:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox210:setWidth(18);
    obj.imageCheckBox210:setHeight(18);
    obj.imageCheckBox210:setField("square3Gno");
    obj.imageCheckBox210:setName("imageCheckBox210");

    obj.layout239 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout239:setParent(obj.rectangle1);
    obj.layout239:setLeft(499);
    obj.layout239:setTop(1052);
    obj.layout239:setWidth(18);
    obj.layout239:setHeight(18);
    obj.layout239:setName("layout239");

    obj.imageCheckBox211 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox211:setParent(obj.layout239);
    obj.imageCheckBox211:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox211:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox211:setWidth(18);
    obj.imageCheckBox211:setHeight(18);
    obj.imageCheckBox211:setField("square8Gno");
    obj.imageCheckBox211:setName("imageCheckBox211");

    obj.layout240 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout240:setParent(obj.rectangle1);
    obj.layout240:setLeft(379);
    obj.layout240:setTop(1141);
    obj.layout240:setWidth(18);
    obj.layout240:setHeight(18);
    obj.layout240:setName("layout240");

    obj.imageCheckBox212 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox212:setParent(obj.layout240);
    obj.imageCheckBox212:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox212:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox212:setWidth(18);
    obj.imageCheckBox212:setHeight(18);
    obj.imageCheckBox212:setField("Pata3FDV");
    obj.imageCheckBox212:setName("imageCheckBox212");

    obj.layout241 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout241:setParent(obj.rectangle1);
    obj.layout241:setLeft(499);
    obj.layout241:setTop(1141);
    obj.layout241:setWidth(18);
    obj.layout241:setHeight(18);
    obj.layout241:setName("layout241");

    obj.imageCheckBox213 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox213:setParent(obj.layout241);
    obj.imageCheckBox213:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox213:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox213:setWidth(18);
    obj.imageCheckBox213:setHeight(18);
    obj.imageCheckBox213:setField("Pata8FDV");
    obj.imageCheckBox213:setName("imageCheckBox213");

    obj.layout242 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout242:setParent(obj.rectangle1);
    obj.layout242:setLeft(379);
    obj.layout242:setTop(1163);
    obj.layout242:setWidth(18);
    obj.layout242:setHeight(18);
    obj.layout242:setName("layout242");

    obj.imageCheckBox214 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox214:setParent(obj.layout242);
    obj.imageCheckBox214:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox214:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox214:setWidth(18);
    obj.imageCheckBox214:setHeight(18);
    obj.imageCheckBox214:setField("square3FDV");
    obj.imageCheckBox214:setName("imageCheckBox214");

    obj.layout243 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout243:setParent(obj.rectangle1);
    obj.layout243:setLeft(499);
    obj.layout243:setTop(1163);
    obj.layout243:setWidth(18);
    obj.layout243:setHeight(18);
    obj.layout243:setName("layout243");

    obj.imageCheckBox215 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox215:setParent(obj.layout243);
    obj.imageCheckBox215:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox215:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox215:setWidth(18);
    obj.imageCheckBox215:setHeight(18);
    obj.imageCheckBox215:setField("square8FDV");
    obj.imageCheckBox215:setName("imageCheckBox215");

    obj.layout244 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout244:setParent(obj.rectangle1);
    obj.layout244:setLeft(769);
    obj.layout244:setTop(957);
    obj.layout244:setWidth(18);
    obj.layout244:setHeight(18);
    obj.layout244:setName("layout244");

    obj.imageCheckBox216 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox216:setParent(obj.layout244);
    obj.imageCheckBox216:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox216:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox216:setWidth(18);
    obj.imageCheckBox216:setHeight(18);
    obj.imageCheckBox216:setField("Pata3Letal");
    obj.imageCheckBox216:setName("imageCheckBox216");

    obj.layout245 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout245:setParent(obj.rectangle1);
    obj.layout245:setLeft(790);
    obj.layout245:setTop(957);
    obj.layout245:setWidth(18);
    obj.layout245:setHeight(18);
    obj.layout245:setName("layout245");

    obj.imageCheckBox217 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox217:setParent(obj.layout245);
    obj.imageCheckBox217:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox217:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox217:setWidth(18);
    obj.imageCheckBox217:setHeight(18);
    obj.imageCheckBox217:setField("Pata3Agravado");
    obj.imageCheckBox217:setName("imageCheckBox217");

    obj.layout246 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout246:setParent(obj.rectangle1);
    obj.layout246:setLeft(277);
    obj.layout246:setTop(321);
    obj.layout246:setWidth(18);
    obj.layout246:setHeight(18);
    obj.layout246:setName("layout246");

    obj.imageCheckBox218 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox218:setParent(obj.layout246);
    obj.imageCheckBox218:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox218:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox218:setWidth(18);
    obj.imageCheckBox218:setHeight(18);
    obj.imageCheckBox218:setField("Pata4forca");
    obj.imageCheckBox218:setName("imageCheckBox218");

    obj.layout247 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout247:setParent(obj.rectangle1);
    obj.layout247:setLeft(277);
    obj.layout247:setTop(344);
    obj.layout247:setWidth(18);
    obj.layout247:setHeight(18);
    obj.layout247:setName("layout247");

    obj.imageCheckBox219 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox219:setParent(obj.layout247);
    obj.imageCheckBox219:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox219:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox219:setWidth(18);
    obj.imageCheckBox219:setHeight(18);
    obj.imageCheckBox219:setField("Pata4destreza");
    obj.imageCheckBox219:setName("imageCheckBox219");

    obj.layout248 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout248:setParent(obj.rectangle1);
    obj.layout248:setLeft(277);
    obj.layout248:setTop(364);
    obj.layout248:setWidth(18);
    obj.layout248:setHeight(18);
    obj.layout248:setName("layout248");

    obj.imageCheckBox220 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox220:setParent(obj.layout248);
    obj.imageCheckBox220:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox220:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox220:setWidth(18);
    obj.imageCheckBox220:setHeight(18);
    obj.imageCheckBox220:setField("Pata4vigor");
    obj.imageCheckBox220:setName("imageCheckBox220");

    obj.layout249 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout249:setParent(obj.rectangle1);
    obj.layout249:setLeft(538);
    obj.layout249:setTop(321);
    obj.layout249:setWidth(18);
    obj.layout249:setHeight(18);
    obj.layout249:setName("layout249");

    obj.imageCheckBox221 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox221:setParent(obj.layout249);
    obj.imageCheckBox221:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox221:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox221:setWidth(18);
    obj.imageCheckBox221:setHeight(18);
    obj.imageCheckBox221:setField("Pata4carisma");
    obj.imageCheckBox221:setName("imageCheckBox221");

    obj.layout250 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout250:setParent(obj.rectangle1);
    obj.layout250:setLeft(538);
    obj.layout250:setTop(344);
    obj.layout250:setWidth(18);
    obj.layout250:setHeight(18);
    obj.layout250:setName("layout250");

    obj.imageCheckBox222 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox222:setParent(obj.layout250);
    obj.imageCheckBox222:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox222:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox222:setWidth(18);
    obj.imageCheckBox222:setHeight(18);
    obj.imageCheckBox222:setField("Pata4manipu");
    obj.imageCheckBox222:setName("imageCheckBox222");

    obj.layout251 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout251:setParent(obj.rectangle1);
    obj.layout251:setLeft(538);
    obj.layout251:setTop(364);
    obj.layout251:setWidth(18);
    obj.layout251:setHeight(18);
    obj.layout251:setName("layout251");

    obj.imageCheckBox223 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox223:setParent(obj.layout251);
    obj.imageCheckBox223:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox223:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox223:setWidth(18);
    obj.imageCheckBox223:setHeight(18);
    obj.imageCheckBox223:setField("Pata4apare");
    obj.imageCheckBox223:setName("imageCheckBox223");

    obj.layout252 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout252:setParent(obj.rectangle1);
    obj.layout252:setLeft(794);
    obj.layout252:setTop(321);
    obj.layout252:setWidth(18);
    obj.layout252:setHeight(18);
    obj.layout252:setName("layout252");

    obj.imageCheckBox224 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox224:setParent(obj.layout252);
    obj.imageCheckBox224:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox224:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox224:setWidth(18);
    obj.imageCheckBox224:setHeight(18);
    obj.imageCheckBox224:setField("Pata4percep");
    obj.imageCheckBox224:setName("imageCheckBox224");

    obj.layout253 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout253:setParent(obj.rectangle1);
    obj.layout253:setLeft(795);
    obj.layout253:setTop(344);
    obj.layout253:setWidth(18);
    obj.layout253:setHeight(18);
    obj.layout253:setName("layout253");

    obj.imageCheckBox225 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox225:setParent(obj.layout253);
    obj.imageCheckBox225:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox225:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox225:setWidth(18);
    obj.imageCheckBox225:setHeight(18);
    obj.imageCheckBox225:setField("Pata4intel");
    obj.imageCheckBox225:setName("imageCheckBox225");

    obj.layout254 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout254:setParent(obj.rectangle1);
    obj.layout254:setLeft(794);
    obj.layout254:setTop(364);
    obj.layout254:setWidth(18);
    obj.layout254:setHeight(18);
    obj.layout254:setName("layout254");

    obj.imageCheckBox226 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox226:setParent(obj.layout254);
    obj.imageCheckBox226:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox226:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox226:setWidth(18);
    obj.imageCheckBox226:setHeight(18);
    obj.imageCheckBox226:setField("Pata4racio");
    obj.imageCheckBox226:setName("imageCheckBox226");

    obj.layout255 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout255:setParent(obj.rectangle1);
    obj.layout255:setLeft(277);
    obj.layout255:setTop(451);
    obj.layout255:setWidth(18);
    obj.layout255:setHeight(18);
    obj.layout255:setName("layout255");

    obj.imageCheckBox227 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox227:setParent(obj.layout255);
    obj.imageCheckBox227:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox227:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox227:setWidth(18);
    obj.imageCheckBox227:setHeight(18);
    obj.imageCheckBox227:setField("Pata4pront");
    obj.imageCheckBox227:setName("imageCheckBox227");

    obj.layout256 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout256:setParent(obj.rectangle1);
    obj.layout256:setLeft(277);
    obj.layout256:setTop(473);
    obj.layout256:setWidth(18);
    obj.layout256:setHeight(18);
    obj.layout256:setName("layout256");

    obj.imageCheckBox228 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox228:setParent(obj.layout256);
    obj.imageCheckBox228:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox228:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox228:setWidth(18);
    obj.imageCheckBox228:setHeight(18);
    obj.imageCheckBox228:setField("Pata4espor");
    obj.imageCheckBox228:setName("imageCheckBox228");

    obj.layout257 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout257:setParent(obj.rectangle1);
    obj.layout257:setLeft(277);
    obj.layout257:setTop(495);
    obj.layout257:setWidth(18);
    obj.layout257:setHeight(18);
    obj.layout257:setName("layout257");

    obj.imageCheckBox229 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox229:setParent(obj.layout257);
    obj.imageCheckBox229:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox229:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox229:setWidth(18);
    obj.imageCheckBox229:setHeight(18);
    obj.imageCheckBox229:setField("Pata4briga");
    obj.imageCheckBox229:setName("imageCheckBox229");

    obj.layout258 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout258:setParent(obj.rectangle1);
    obj.layout258:setLeft(277);
    obj.layout258:setTop(516);
    obj.layout258:setWidth(18);
    obj.layout258:setHeight(18);
    obj.layout258:setName("layout258");

    obj.imageCheckBox230 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox230:setParent(obj.layout258);
    obj.imageCheckBox230:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox230:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox230:setWidth(18);
    obj.imageCheckBox230:setHeight(18);
    obj.imageCheckBox230:setField("Pata4esqui");
    obj.imageCheckBox230:setName("imageCheckBox230");

    obj.layout259 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout259:setParent(obj.rectangle1);
    obj.layout259:setLeft(277);
    obj.layout259:setTop(536);
    obj.layout259:setWidth(18);
    obj.layout259:setHeight(18);
    obj.layout259:setName("layout259");

    obj.imageCheckBox231 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox231:setParent(obj.layout259);
    obj.imageCheckBox231:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox231:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox231:setWidth(18);
    obj.imageCheckBox231:setHeight(18);
    obj.imageCheckBox231:setField("Pata4empat");
    obj.imageCheckBox231:setName("imageCheckBox231");

    obj.layout260 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout260:setParent(obj.rectangle1);
    obj.layout260:setLeft(277);
    obj.layout260:setTop(558);
    obj.layout260:setWidth(18);
    obj.layout260:setHeight(18);
    obj.layout260:setName("layout260");

    obj.imageCheckBox232 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox232:setParent(obj.layout260);
    obj.imageCheckBox232:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox232:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox232:setWidth(18);
    obj.imageCheckBox232:setHeight(18);
    obj.imageCheckBox232:setField("Pata4expre");
    obj.imageCheckBox232:setName("imageCheckBox232");

    obj.layout261 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout261:setParent(obj.rectangle1);
    obj.layout261:setLeft(277);
    obj.layout261:setTop(579);
    obj.layout261:setWidth(18);
    obj.layout261:setHeight(18);
    obj.layout261:setName("layout261");

    obj.imageCheckBox233 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox233:setParent(obj.layout261);
    obj.imageCheckBox233:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox233:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox233:setWidth(18);
    obj.imageCheckBox233:setHeight(18);
    obj.imageCheckBox233:setField("Pata4intim");
    obj.imageCheckBox233:setName("imageCheckBox233");

    obj.layout262 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout262:setParent(obj.rectangle1);
    obj.layout262:setLeft(277);
    obj.layout262:setTop(599);
    obj.layout262:setWidth(18);
    obj.layout262:setHeight(18);
    obj.layout262:setName("layout262");

    obj.imageCheckBox234 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox234:setParent(obj.layout262);
    obj.imageCheckBox234:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox234:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox234:setWidth(18);
    obj.imageCheckBox234:setHeight(18);
    obj.imageCheckBox234:setField("Pata4insti");
    obj.imageCheckBox234:setName("imageCheckBox234");

    obj.layout263 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout263:setParent(obj.rectangle1);
    obj.layout263:setLeft(277);
    obj.layout263:setTop(619);
    obj.layout263:setWidth(18);
    obj.layout263:setHeight(18);
    obj.layout263:setName("layout263");

    obj.imageCheckBox235 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox235:setParent(obj.layout263);
    obj.imageCheckBox235:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox235:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox235:setWidth(18);
    obj.imageCheckBox235:setHeight(18);
    obj.imageCheckBox235:setField("Pata4manha");
    obj.imageCheckBox235:setName("imageCheckBox235");

    obj.layout264 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout264:setParent(obj.rectangle1);
    obj.layout264:setLeft(277);
    obj.layout264:setTop(641);
    obj.layout264:setWidth(18);
    obj.layout264:setHeight(18);
    obj.layout264:setName("layout264");

    obj.imageCheckBox236 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox236:setParent(obj.layout264);
    obj.imageCheckBox236:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox236:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox236:setWidth(18);
    obj.imageCheckBox236:setHeight(18);
    obj.imageCheckBox236:setField("Pata4labia");
    obj.imageCheckBox236:setName("imageCheckBox236");

    obj.layout265 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout265:setParent(obj.rectangle1);
    obj.layout265:setLeft(538);
    obj.layout265:setTop(451);
    obj.layout265:setWidth(18);
    obj.layout265:setHeight(18);
    obj.layout265:setName("layout265");

    obj.imageCheckBox237 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox237:setParent(obj.layout265);
    obj.imageCheckBox237:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox237:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox237:setWidth(18);
    obj.imageCheckBox237:setHeight(18);
    obj.imageCheckBox237:setField("Pata4empca");
    obj.imageCheckBox237:setName("imageCheckBox237");

    obj.layout266 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout266:setParent(obj.rectangle1);
    obj.layout266:setLeft(538);
    obj.layout266:setTop(473);
    obj.layout266:setWidth(18);
    obj.layout266:setHeight(18);
    obj.layout266:setName("layout266");

    obj.imageCheckBox238 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox238:setParent(obj.layout266);
    obj.imageCheckBox238:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox238:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox238:setWidth(18);
    obj.imageCheckBox238:setHeight(18);
    obj.imageCheckBox238:setField("Pata4ofi");
    obj.imageCheckBox238:setName("imageCheckBox238");

    obj.layout267 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout267:setParent(obj.rectangle1);
    obj.layout267:setLeft(538);
    obj.layout267:setTop(495);
    obj.layout267:setWidth(18);
    obj.layout267:setHeight(18);
    obj.layout267:setName("layout267");

    obj.imageCheckBox239 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox239:setParent(obj.layout267);
    obj.imageCheckBox239:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox239:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox239:setWidth(18);
    obj.imageCheckBox239:setHeight(18);
    obj.imageCheckBox239:setField("Pata4condu");
    obj.imageCheckBox239:setName("imageCheckBox239");

    obj.layout268 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout268:setParent(obj.rectangle1);
    obj.layout268:setLeft(538);
    obj.layout268:setTop(516);
    obj.layout268:setWidth(18);
    obj.layout268:setHeight(18);
    obj.layout268:setName("layout268");

    obj.imageCheckBox240 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox240:setParent(obj.layout268);
    obj.imageCheckBox240:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox240:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox240:setWidth(18);
    obj.imageCheckBox240:setHeight(18);
    obj.imageCheckBox240:setField("Pata4etique");
    obj.imageCheckBox240:setName("imageCheckBox240");

    obj.layout269 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout269:setParent(obj.rectangle1);
    obj.layout269:setLeft(538);
    obj.layout269:setTop(536);
    obj.layout269:setWidth(18);
    obj.layout269:setHeight(18);
    obj.layout269:setName("layout269");

    obj.imageCheckBox241 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox241:setParent(obj.layout269);
    obj.imageCheckBox241:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox241:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox241:setWidth(18);
    obj.imageCheckBox241:setHeight(18);
    obj.imageCheckBox241:setField("Pata4armfg");
    obj.imageCheckBox241:setName("imageCheckBox241");

    obj.layout270 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout270:setParent(obj.rectangle1);
    obj.layout270:setLeft(538);
    obj.layout270:setTop(558);
    obj.layout270:setWidth(18);
    obj.layout270:setHeight(18);
    obj.layout270:setName("layout270");

    obj.imageCheckBox242 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox242:setParent(obj.layout270);
    obj.imageCheckBox242:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox242:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox242:setWidth(18);
    obj.imageCheckBox242:setHeight(18);
    obj.imageCheckBox242:setField("Pata4armbr");
    obj.imageCheckBox242:setName("imageCheckBox242");

    obj.layout271 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout271:setParent(obj.rectangle1);
    obj.layout271:setLeft(538);
    obj.layout271:setTop(579);
    obj.layout271:setWidth(18);
    obj.layout271:setHeight(18);
    obj.layout271:setName("layout271");

    obj.imageCheckBox243 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox243:setParent(obj.layout271);
    obj.imageCheckBox243:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox243:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox243:setWidth(18);
    obj.imageCheckBox243:setHeight(18);
    obj.imageCheckBox243:setField("Pata4lider");
    obj.imageCheckBox243:setName("imageCheckBox243");

    obj.layout272 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout272:setParent(obj.rectangle1);
    obj.layout272:setLeft(538);
    obj.layout272:setTop(599);
    obj.layout272:setWidth(18);
    obj.layout272:setHeight(18);
    obj.layout272:setName("layout272");

    obj.imageCheckBox244 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox244:setParent(obj.layout272);
    obj.imageCheckBox244:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox244:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox244:setWidth(18);
    obj.imageCheckBox244:setHeight(18);
    obj.imageCheckBox244:setField("Pata4perfo");
    obj.imageCheckBox244:setName("imageCheckBox244");

    obj.layout273 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout273:setParent(obj.rectangle1);
    obj.layout273:setLeft(538);
    obj.layout273:setTop(619);
    obj.layout273:setWidth(18);
    obj.layout273:setHeight(18);
    obj.layout273:setName("layout273");

    obj.imageCheckBox245 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox245:setParent(obj.layout273);
    obj.imageCheckBox245:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox245:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox245:setWidth(18);
    obj.imageCheckBox245:setHeight(18);
    obj.imageCheckBox245:setField("Pata4furti");
    obj.imageCheckBox245:setName("imageCheckBox245");

    obj.layout274 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout274:setParent(obj.rectangle1);
    obj.layout274:setLeft(538);
    obj.layout274:setTop(641);
    obj.layout274:setWidth(18);
    obj.layout274:setHeight(18);
    obj.layout274:setName("layout274");

    obj.imageCheckBox246 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox246:setParent(obj.layout274);
    obj.imageCheckBox246:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox246:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox246:setWidth(18);
    obj.imageCheckBox246:setHeight(18);
    obj.imageCheckBox246:setField("Pata4sobre");
    obj.imageCheckBox246:setName("imageCheckBox246");

    obj.layout275 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout275:setParent(obj.rectangle1);
    obj.layout275:setLeft(794);
    obj.layout275:setTop(451);
    obj.layout275:setWidth(18);
    obj.layout275:setHeight(18);
    obj.layout275:setName("layout275");

    obj.imageCheckBox247 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox247:setParent(obj.layout275);
    obj.imageCheckBox247:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox247:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox247:setWidth(18);
    obj.imageCheckBox247:setHeight(18);
    obj.imageCheckBox247:setField("Pata4compu");
    obj.imageCheckBox247:setName("imageCheckBox247");

    obj.layout276 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout276:setParent(obj.rectangle1);
    obj.layout276:setLeft(794);
    obj.layout276:setTop(473);
    obj.layout276:setWidth(18);
    obj.layout276:setHeight(18);
    obj.layout276:setName("layout276");

    obj.imageCheckBox248 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox248:setParent(obj.layout276);
    obj.imageCheckBox248:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox248:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox248:setWidth(18);
    obj.imageCheckBox248:setHeight(18);
    obj.imageCheckBox248:setField("Pata4enig");
    obj.imageCheckBox248:setName("imageCheckBox248");

    obj.layout277 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout277:setParent(obj.rectangle1);
    obj.layout277:setLeft(794);
    obj.layout277:setTop(495);
    obj.layout277:setWidth(18);
    obj.layout277:setHeight(18);
    obj.layout277:setName("layout277");

    obj.imageCheckBox249 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox249:setParent(obj.layout277);
    obj.imageCheckBox249:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox249:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox249:setWidth(18);
    obj.imageCheckBox249:setHeight(18);
    obj.imageCheckBox249:setField("Pata4inves");
    obj.imageCheckBox249:setName("imageCheckBox249");

    obj.layout278 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout278:setParent(obj.rectangle1);
    obj.layout278:setLeft(794);
    obj.layout278:setTop(516);
    obj.layout278:setWidth(18);
    obj.layout278:setHeight(18);
    obj.layout278:setName("layout278");

    obj.imageCheckBox250 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox250:setParent(obj.layout278);
    obj.imageCheckBox250:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox250:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox250:setWidth(18);
    obj.imageCheckBox250:setHeight(18);
    obj.imageCheckBox250:setField("Pata4direi");
    obj.imageCheckBox250:setName("imageCheckBox250");

    obj.layout279 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout279:setParent(obj.rectangle1);
    obj.layout279:setLeft(794);
    obj.layout279:setTop(536);
    obj.layout279:setWidth(18);
    obj.layout279:setHeight(18);
    obj.layout279:setName("layout279");

    obj.imageCheckBox251 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox251:setParent(obj.layout279);
    obj.imageCheckBox251:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox251:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox251:setWidth(18);
    obj.imageCheckBox251:setHeight(18);
    obj.imageCheckBox251:setField("Pata4lingu");
    obj.imageCheckBox251:setName("imageCheckBox251");

    obj.layout280 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout280:setParent(obj.rectangle1);
    obj.layout280:setLeft(794);
    obj.layout280:setTop(558);
    obj.layout280:setWidth(18);
    obj.layout280:setHeight(18);
    obj.layout280:setName("layout280");

    obj.imageCheckBox252 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox252:setParent(obj.layout280);
    obj.imageCheckBox252:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox252:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox252:setWidth(18);
    obj.imageCheckBox252:setHeight(18);
    obj.imageCheckBox252:setField("Pata4medic");
    obj.imageCheckBox252:setName("imageCheckBox252");

    obj.layout281 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout281:setParent(obj.rectangle1);
    obj.layout281:setLeft(794);
    obj.layout281:setTop(579);
    obj.layout281:setWidth(18);
    obj.layout281:setHeight(18);
    obj.layout281:setName("layout281");

    obj.imageCheckBox253 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox253:setParent(obj.layout281);
    obj.imageCheckBox253:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox253:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox253:setWidth(18);
    obj.imageCheckBox253:setHeight(18);
    obj.imageCheckBox253:setField("Pata4ocult");
    obj.imageCheckBox253:setName("imageCheckBox253");

    obj.layout282 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout282:setParent(obj.rectangle1);
    obj.layout282:setLeft(794);
    obj.layout282:setTop(599);
    obj.layout282:setWidth(18);
    obj.layout282:setHeight(18);
    obj.layout282:setName("layout282");

    obj.imageCheckBox254 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox254:setParent(obj.layout282);
    obj.imageCheckBox254:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox254:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox254:setWidth(18);
    obj.imageCheckBox254:setHeight(18);
    obj.imageCheckBox254:setField("Pata4polit");
    obj.imageCheckBox254:setName("imageCheckBox254");

    obj.layout283 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout283:setParent(obj.rectangle1);
    obj.layout283:setLeft(794);
    obj.layout283:setTop(619);
    obj.layout283:setWidth(18);
    obj.layout283:setHeight(18);
    obj.layout283:setName("layout283");

    obj.imageCheckBox255 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox255:setParent(obj.layout283);
    obj.imageCheckBox255:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox255:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox255:setWidth(18);
    obj.imageCheckBox255:setHeight(18);
    obj.imageCheckBox255:setField("Pata4ritua");
    obj.imageCheckBox255:setName("imageCheckBox255");

    obj.layout284 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout284:setParent(obj.rectangle1);
    obj.layout284:setLeft(794);
    obj.layout284:setTop(641);
    obj.layout284:setWidth(18);
    obj.layout284:setHeight(18);
    obj.layout284:setName("layout284");

    obj.imageCheckBox256 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox256:setParent(obj.layout284);
    obj.imageCheckBox256:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox256:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox256:setWidth(18);
    obj.imageCheckBox256:setHeight(18);
    obj.imageCheckBox256:setField("Pata4ciencia");
    obj.imageCheckBox256:setName("imageCheckBox256");

    obj.layout285 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout285:setParent(obj.rectangle1);
    obj.layout285:setLeft(277);
    obj.layout285:setTop(731);
    obj.layout285:setWidth(18);
    obj.layout285:setHeight(18);
    obj.layout285:setName("layout285");

    obj.imageCheckBox257 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox257:setParent(obj.layout285);
    obj.imageCheckBox257:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox257:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox257:setWidth(18);
    obj.imageCheckBox257:setHeight(18);
    obj.imageCheckBox257:setField("Pata4Ant1");
    obj.imageCheckBox257:setName("imageCheckBox257");

    obj.layout286 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout286:setParent(obj.rectangle1);
    obj.layout286:setLeft(277);
    obj.layout286:setTop(752);
    obj.layout286:setWidth(18);
    obj.layout286:setHeight(18);
    obj.layout286:setName("layout286");

    obj.imageCheckBox258 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox258:setParent(obj.layout286);
    obj.imageCheckBox258:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox258:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox258:setWidth(18);
    obj.imageCheckBox258:setHeight(18);
    obj.imageCheckBox258:setField("Pata4Ant2");
    obj.imageCheckBox258:setName("imageCheckBox258");

    obj.layout287 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout287:setParent(obj.rectangle1);
    obj.layout287:setLeft(277);
    obj.layout287:setTop(773);
    obj.layout287:setWidth(18);
    obj.layout287:setHeight(18);
    obj.layout287:setName("layout287");

    obj.imageCheckBox259 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox259:setParent(obj.layout287);
    obj.imageCheckBox259:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox259:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox259:setWidth(18);
    obj.imageCheckBox259:setHeight(18);
    obj.imageCheckBox259:setField("Pata4Ant3");
    obj.imageCheckBox259:setName("imageCheckBox259");

    obj.layout288 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout288:setParent(obj.rectangle1);
    obj.layout288:setLeft(277);
    obj.layout288:setTop(794);
    obj.layout288:setWidth(18);
    obj.layout288:setHeight(18);
    obj.layout288:setName("layout288");

    obj.imageCheckBox260 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox260:setParent(obj.layout288);
    obj.imageCheckBox260:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox260:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox260:setWidth(18);
    obj.imageCheckBox260:setHeight(18);
    obj.imageCheckBox260:setField("Pata4Ant4");
    obj.imageCheckBox260:setName("imageCheckBox260");

    obj.layout289 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout289:setParent(obj.rectangle1);
    obj.layout289:setLeft(277);
    obj.layout289:setTop(816);
    obj.layout289:setWidth(18);
    obj.layout289:setHeight(18);
    obj.layout289:setName("layout289");

    obj.imageCheckBox261 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox261:setParent(obj.layout289);
    obj.imageCheckBox261:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox261:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox261:setWidth(18);
    obj.imageCheckBox261:setHeight(18);
    obj.imageCheckBox261:setField("Pata4Ant5");
    obj.imageCheckBox261:setName("imageCheckBox261");

    obj.layout290 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout290:setParent(obj.rectangle1);
    obj.layout290:setLeft(277);
    obj.layout290:setTop(837);
    obj.layout290:setWidth(18);
    obj.layout290:setHeight(18);
    obj.layout290:setName("layout290");

    obj.imageCheckBox262 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox262:setParent(obj.layout290);
    obj.imageCheckBox262:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox262:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox262:setWidth(18);
    obj.imageCheckBox262:setHeight(18);
    obj.imageCheckBox262:setField("Pata4Ant6");
    obj.imageCheckBox262:setName("imageCheckBox262");

    obj.layout291 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout291:setParent(obj.rectangle1);
    obj.layout291:setLeft(144);
    obj.layout291:setTop(942);
    obj.layout291:setWidth(18);
    obj.layout291:setHeight(18);
    obj.layout291:setName("layout291");

    obj.imageCheckBox263 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox263:setParent(obj.layout291);
    obj.imageCheckBox263:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox263:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox263:setWidth(18);
    obj.imageCheckBox263:setHeight(18);
    obj.imageCheckBox263:setField("Pata4Gl");
    obj.imageCheckBox263:setName("imageCheckBox263");

    obj.layout292 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout292:setParent(obj.rectangle1);
    obj.layout292:setLeft(262);
    obj.layout292:setTop(942);
    obj.layout292:setWidth(18);
    obj.layout292:setHeight(18);
    obj.layout292:setName("layout292");

    obj.imageCheckBox264 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox264:setParent(obj.layout292);
    obj.imageCheckBox264:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox264:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox264:setWidth(18);
    obj.imageCheckBox264:setHeight(18);
    obj.imageCheckBox264:setField("Pata9Gl");
    obj.imageCheckBox264:setName("imageCheckBox264");

    obj.layout293 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout293:setParent(obj.rectangle1);
    obj.layout293:setLeft(144);
    obj.layout293:setTop(964);
    obj.layout293:setWidth(18);
    obj.layout293:setHeight(18);
    obj.layout293:setName("layout293");

    obj.imageCheckBox265 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox265:setParent(obj.layout293);
    obj.imageCheckBox265:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox265:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox265:setWidth(18);
    obj.imageCheckBox265:setHeight(18);
    obj.imageCheckBox265:setField("square4Gl");
    obj.imageCheckBox265:setName("imageCheckBox265");

    obj.layout294 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout294:setParent(obj.rectangle1);
    obj.layout294:setLeft(263);
    obj.layout294:setTop(964);
    obj.layout294:setWidth(18);
    obj.layout294:setHeight(18);
    obj.layout294:setName("layout294");

    obj.imageCheckBox266 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox266:setParent(obj.layout294);
    obj.imageCheckBox266:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox266:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox266:setWidth(18);
    obj.imageCheckBox266:setHeight(18);
    obj.imageCheckBox266:setField("square9Gl");
    obj.imageCheckBox266:setName("imageCheckBox266");

    obj.layout295 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout295:setParent(obj.rectangle1);
    obj.layout295:setLeft(144);
    obj.layout295:setTop(1019);
    obj.layout295:setWidth(18);
    obj.layout295:setHeight(18);
    obj.layout295:setName("layout295");

    obj.imageCheckBox267 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox267:setParent(obj.layout295);
    obj.imageCheckBox267:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox267:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox267:setWidth(18);
    obj.imageCheckBox267:setHeight(18);
    obj.imageCheckBox267:setField("Pata4Hon");
    obj.imageCheckBox267:setName("imageCheckBox267");

    obj.layout296 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout296:setParent(obj.rectangle1);
    obj.layout296:setLeft(262);
    obj.layout296:setTop(1019);
    obj.layout296:setWidth(18);
    obj.layout296:setHeight(18);
    obj.layout296:setName("layout296");

    obj.imageCheckBox268 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox268:setParent(obj.layout296);
    obj.imageCheckBox268:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox268:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox268:setWidth(18);
    obj.imageCheckBox268:setHeight(18);
    obj.imageCheckBox268:setField("Pata9Hon");
    obj.imageCheckBox268:setName("imageCheckBox268");

    obj.layout297 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout297:setParent(obj.rectangle1);
    obj.layout297:setLeft(144);
    obj.layout297:setTop(1039);
    obj.layout297:setWidth(18);
    obj.layout297:setHeight(18);
    obj.layout297:setName("layout297");

    obj.imageCheckBox269 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox269:setParent(obj.layout297);
    obj.imageCheckBox269:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox269:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox269:setWidth(18);
    obj.imageCheckBox269:setHeight(18);
    obj.imageCheckBox269:setField("square4Hon");
    obj.imageCheckBox269:setName("imageCheckBox269");

    obj.layout298 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout298:setParent(obj.rectangle1);
    obj.layout298:setLeft(263);
    obj.layout298:setTop(1039);
    obj.layout298:setWidth(18);
    obj.layout298:setHeight(18);
    obj.layout298:setName("layout298");

    obj.imageCheckBox270 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox270:setParent(obj.layout298);
    obj.imageCheckBox270:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox270:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox270:setWidth(18);
    obj.imageCheckBox270:setHeight(18);
    obj.imageCheckBox270:setField("square9Hon");
    obj.imageCheckBox270:setName("imageCheckBox270");

    obj.layout299 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout299:setParent(obj.rectangle1);
    obj.layout299:setLeft(144);
    obj.layout299:setTop(1093);
    obj.layout299:setWidth(18);
    obj.layout299:setHeight(18);
    obj.layout299:setName("layout299");

    obj.imageCheckBox271 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox271:setParent(obj.layout299);
    obj.imageCheckBox271:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox271:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox271:setWidth(18);
    obj.imageCheckBox271:setHeight(18);
    obj.imageCheckBox271:setField("Pata4Sab");
    obj.imageCheckBox271:setName("imageCheckBox271");

    obj.layout300 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout300:setParent(obj.rectangle1);
    obj.layout300:setLeft(262);
    obj.layout300:setTop(1093);
    obj.layout300:setWidth(18);
    obj.layout300:setHeight(18);
    obj.layout300:setName("layout300");

    obj.imageCheckBox272 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox272:setParent(obj.layout300);
    obj.imageCheckBox272:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox272:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox272:setWidth(18);
    obj.imageCheckBox272:setHeight(18);
    obj.imageCheckBox272:setField("Pata9Sab");
    obj.imageCheckBox272:setName("imageCheckBox272");

    obj.layout301 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout301:setParent(obj.rectangle1);
    obj.layout301:setLeft(144);
    obj.layout301:setTop(1114);
    obj.layout301:setWidth(18);
    obj.layout301:setHeight(18);
    obj.layout301:setName("layout301");

    obj.imageCheckBox273 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox273:setParent(obj.layout301);
    obj.imageCheckBox273:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox273:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox273:setWidth(18);
    obj.imageCheckBox273:setHeight(18);
    obj.imageCheckBox273:setField("square4Sab");
    obj.imageCheckBox273:setName("imageCheckBox273");

    obj.layout302 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout302:setParent(obj.rectangle1);
    obj.layout302:setLeft(263);
    obj.layout302:setTop(1114);
    obj.layout302:setWidth(18);
    obj.layout302:setHeight(18);
    obj.layout302:setName("layout302");

    obj.imageCheckBox274 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox274:setParent(obj.layout302);
    obj.imageCheckBox274:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox274:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox274:setWidth(18);
    obj.imageCheckBox274:setHeight(18);
    obj.imageCheckBox274:setField("square9Sab");
    obj.imageCheckBox274:setName("imageCheckBox274");

    obj.layout303 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout303:setParent(obj.rectangle1);
    obj.layout303:setLeft(402);
    obj.layout303:setTop(915);
    obj.layout303:setWidth(18);
    obj.layout303:setHeight(18);
    obj.layout303:setName("layout303");

    obj.imageCheckBox275 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox275:setParent(obj.layout303);
    obj.imageCheckBox275:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox275:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox275:setWidth(18);
    obj.imageCheckBox275:setHeight(18);
    obj.imageCheckBox275:setField("Pata4F");
    obj.imageCheckBox275:setName("imageCheckBox275");

    obj.layout304 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout304:setParent(obj.rectangle1);
    obj.layout304:setLeft(523);
    obj.layout304:setTop(915);
    obj.layout304:setWidth(18);
    obj.layout304:setHeight(18);
    obj.layout304:setName("layout304");

    obj.imageCheckBox276 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox276:setParent(obj.layout304);
    obj.imageCheckBox276:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox276:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox276:setWidth(18);
    obj.imageCheckBox276:setHeight(18);
    obj.imageCheckBox276:setField("Pata9F");
    obj.imageCheckBox276:setName("imageCheckBox276");

    obj.layout305 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout305:setParent(obj.rectangle1);
    obj.layout305:setLeft(402);
    obj.layout305:setTop(936);
    obj.layout305:setWidth(18);
    obj.layout305:setHeight(18);
    obj.layout305:setName("layout305");

    obj.imageCheckBox277 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox277:setParent(obj.layout305);
    obj.imageCheckBox277:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox277:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox277:setWidth(18);
    obj.imageCheckBox277:setHeight(18);
    obj.imageCheckBox277:setField("square4F");
    obj.imageCheckBox277:setName("imageCheckBox277");

    obj.layout306 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout306:setParent(obj.rectangle1);
    obj.layout306:setLeft(523);
    obj.layout306:setTop(936);
    obj.layout306:setWidth(18);
    obj.layout306:setHeight(18);
    obj.layout306:setName("layout306");

    obj.imageCheckBox278 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox278:setParent(obj.layout306);
    obj.imageCheckBox278:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox278:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox278:setWidth(18);
    obj.imageCheckBox278:setHeight(18);
    obj.imageCheckBox278:setField("square9F");
    obj.imageCheckBox278:setName("imageCheckBox278");

    obj.layout307 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout307:setParent(obj.rectangle1);
    obj.layout307:setLeft(402);
    obj.layout307:setTop(1031);
    obj.layout307:setWidth(18);
    obj.layout307:setHeight(18);
    obj.layout307:setName("layout307");

    obj.imageCheckBox279 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox279:setParent(obj.layout307);
    obj.imageCheckBox279:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox279:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox279:setWidth(18);
    obj.imageCheckBox279:setHeight(18);
    obj.imageCheckBox279:setField("Pata4Gno");
    obj.imageCheckBox279:setName("imageCheckBox279");

    obj.layout308 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout308:setParent(obj.rectangle1);
    obj.layout308:setLeft(523);
    obj.layout308:setTop(1031);
    obj.layout308:setWidth(18);
    obj.layout308:setHeight(18);
    obj.layout308:setName("layout308");

    obj.imageCheckBox280 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox280:setParent(obj.layout308);
    obj.imageCheckBox280:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox280:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox280:setWidth(18);
    obj.imageCheckBox280:setHeight(18);
    obj.imageCheckBox280:setField("Pata9Gno");
    obj.imageCheckBox280:setName("imageCheckBox280");

    obj.layout309 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout309:setParent(obj.rectangle1);
    obj.layout309:setLeft(402);
    obj.layout309:setTop(1052);
    obj.layout309:setWidth(18);
    obj.layout309:setHeight(18);
    obj.layout309:setName("layout309");

    obj.imageCheckBox281 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox281:setParent(obj.layout309);
    obj.imageCheckBox281:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox281:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox281:setWidth(18);
    obj.imageCheckBox281:setHeight(18);
    obj.imageCheckBox281:setField("square4Gno");
    obj.imageCheckBox281:setName("imageCheckBox281");

    obj.layout310 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout310:setParent(obj.rectangle1);
    obj.layout310:setLeft(523);
    obj.layout310:setTop(1052);
    obj.layout310:setWidth(18);
    obj.layout310:setHeight(18);
    obj.layout310:setName("layout310");

    obj.imageCheckBox282 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox282:setParent(obj.layout310);
    obj.imageCheckBox282:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox282:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox282:setWidth(18);
    obj.imageCheckBox282:setHeight(18);
    obj.imageCheckBox282:setField("square9Gno");
    obj.imageCheckBox282:setName("imageCheckBox282");

    obj.layout311 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout311:setParent(obj.rectangle1);
    obj.layout311:setLeft(402);
    obj.layout311:setTop(1141);
    obj.layout311:setWidth(18);
    obj.layout311:setHeight(18);
    obj.layout311:setName("layout311");

    obj.imageCheckBox283 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox283:setParent(obj.layout311);
    obj.imageCheckBox283:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox283:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox283:setWidth(18);
    obj.imageCheckBox283:setHeight(18);
    obj.imageCheckBox283:setField("Pata4FDV");
    obj.imageCheckBox283:setName("imageCheckBox283");

    obj.layout312 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout312:setParent(obj.rectangle1);
    obj.layout312:setLeft(523);
    obj.layout312:setTop(1141);
    obj.layout312:setWidth(18);
    obj.layout312:setHeight(18);
    obj.layout312:setName("layout312");

    obj.imageCheckBox284 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox284:setParent(obj.layout312);
    obj.imageCheckBox284:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox284:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox284:setWidth(18);
    obj.imageCheckBox284:setHeight(18);
    obj.imageCheckBox284:setField("Pata9FDV");
    obj.imageCheckBox284:setName("imageCheckBox284");

    obj.layout313 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout313:setParent(obj.rectangle1);
    obj.layout313:setLeft(402);
    obj.layout313:setTop(1163);
    obj.layout313:setWidth(18);
    obj.layout313:setHeight(18);
    obj.layout313:setName("layout313");

    obj.imageCheckBox285 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox285:setParent(obj.layout313);
    obj.imageCheckBox285:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox285:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox285:setWidth(18);
    obj.imageCheckBox285:setHeight(18);
    obj.imageCheckBox285:setField("square4FDV");
    obj.imageCheckBox285:setName("imageCheckBox285");

    obj.layout314 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout314:setParent(obj.rectangle1);
    obj.layout314:setLeft(523);
    obj.layout314:setTop(1163);
    obj.layout314:setWidth(18);
    obj.layout314:setHeight(18);
    obj.layout314:setName("layout314");

    obj.imageCheckBox286 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox286:setParent(obj.layout314);
    obj.imageCheckBox286:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox286:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox286:setWidth(18);
    obj.imageCheckBox286:setHeight(18);
    obj.imageCheckBox286:setField("square9FDV");
    obj.imageCheckBox286:setName("imageCheckBox286");

    obj.layout315 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout315:setParent(obj.rectangle1);
    obj.layout315:setLeft(769);
    obj.layout315:setTop(978);
    obj.layout315:setWidth(18);
    obj.layout315:setHeight(18);
    obj.layout315:setName("layout315");

    obj.imageCheckBox287 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox287:setParent(obj.layout315);
    obj.imageCheckBox287:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox287:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox287:setWidth(18);
    obj.imageCheckBox287:setHeight(18);
    obj.imageCheckBox287:setField("Pata4Letal");
    obj.imageCheckBox287:setName("imageCheckBox287");

    obj.layout316 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout316:setParent(obj.rectangle1);
    obj.layout316:setLeft(790);
    obj.layout316:setTop(978);
    obj.layout316:setWidth(18);
    obj.layout316:setHeight(18);
    obj.layout316:setName("layout316");

    obj.imageCheckBox288 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox288:setParent(obj.layout316);
    obj.imageCheckBox288:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox288:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox288:setWidth(18);
    obj.imageCheckBox288:setHeight(18);
    obj.imageCheckBox288:setField("Pata4Agravado");
    obj.imageCheckBox288:setName("imageCheckBox288");

    obj.layout317 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout317:setParent(obj.rectangle1);
    obj.layout317:setLeft(291);
    obj.layout317:setTop(321);
    obj.layout317:setWidth(18);
    obj.layout317:setHeight(18);
    obj.layout317:setName("layout317");

    obj.imageCheckBox289 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox289:setParent(obj.layout317);
    obj.imageCheckBox289:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox289:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox289:setWidth(18);
    obj.imageCheckBox289:setHeight(18);
    obj.imageCheckBox289:setField("Pata5forca");
    obj.imageCheckBox289:setName("imageCheckBox289");

    obj.layout318 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout318:setParent(obj.rectangle1);
    obj.layout318:setLeft(291);
    obj.layout318:setTop(344);
    obj.layout318:setWidth(18);
    obj.layout318:setHeight(18);
    obj.layout318:setName("layout318");

    obj.imageCheckBox290 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox290:setParent(obj.layout318);
    obj.imageCheckBox290:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox290:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox290:setWidth(18);
    obj.imageCheckBox290:setHeight(18);
    obj.imageCheckBox290:setField("Pata5destreza");
    obj.imageCheckBox290:setName("imageCheckBox290");

    obj.layout319 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout319:setParent(obj.rectangle1);
    obj.layout319:setLeft(291);
    obj.layout319:setTop(364);
    obj.layout319:setWidth(18);
    obj.layout319:setHeight(18);
    obj.layout319:setName("layout319");

    obj.imageCheckBox291 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox291:setParent(obj.layout319);
    obj.imageCheckBox291:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox291:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox291:setWidth(18);
    obj.imageCheckBox291:setHeight(18);
    obj.imageCheckBox291:setField("Pata5vigor");
    obj.imageCheckBox291:setName("imageCheckBox291");

    obj.layout320 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout320:setParent(obj.rectangle1);
    obj.layout320:setLeft(552);
    obj.layout320:setTop(321);
    obj.layout320:setWidth(18);
    obj.layout320:setHeight(18);
    obj.layout320:setName("layout320");

    obj.imageCheckBox292 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox292:setParent(obj.layout320);
    obj.imageCheckBox292:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox292:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox292:setWidth(18);
    obj.imageCheckBox292:setHeight(18);
    obj.imageCheckBox292:setField("Pata5carisma");
    obj.imageCheckBox292:setName("imageCheckBox292");

    obj.layout321 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout321:setParent(obj.rectangle1);
    obj.layout321:setLeft(552);
    obj.layout321:setTop(344);
    obj.layout321:setWidth(18);
    obj.layout321:setHeight(18);
    obj.layout321:setName("layout321");

    obj.imageCheckBox293 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox293:setParent(obj.layout321);
    obj.imageCheckBox293:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox293:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox293:setWidth(18);
    obj.imageCheckBox293:setHeight(18);
    obj.imageCheckBox293:setField("Pata5manipu");
    obj.imageCheckBox293:setName("imageCheckBox293");

    obj.layout322 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout322:setParent(obj.rectangle1);
    obj.layout322:setLeft(552);
    obj.layout322:setTop(364);
    obj.layout322:setWidth(18);
    obj.layout322:setHeight(18);
    obj.layout322:setName("layout322");

    obj.imageCheckBox294 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox294:setParent(obj.layout322);
    obj.imageCheckBox294:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox294:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox294:setWidth(18);
    obj.imageCheckBox294:setHeight(18);
    obj.imageCheckBox294:setField("Pata5apare");
    obj.imageCheckBox294:setName("imageCheckBox294");

    obj.layout323 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout323:setParent(obj.rectangle1);
    obj.layout323:setLeft(808);
    obj.layout323:setTop(321);
    obj.layout323:setWidth(18);
    obj.layout323:setHeight(18);
    obj.layout323:setName("layout323");

    obj.imageCheckBox295 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox295:setParent(obj.layout323);
    obj.imageCheckBox295:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox295:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox295:setWidth(18);
    obj.imageCheckBox295:setHeight(18);
    obj.imageCheckBox295:setField("Pata5percep");
    obj.imageCheckBox295:setName("imageCheckBox295");

    obj.layout324 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout324:setParent(obj.rectangle1);
    obj.layout324:setLeft(808);
    obj.layout324:setTop(344);
    obj.layout324:setWidth(18);
    obj.layout324:setHeight(18);
    obj.layout324:setName("layout324");

    obj.imageCheckBox296 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox296:setParent(obj.layout324);
    obj.imageCheckBox296:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox296:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox296:setWidth(18);
    obj.imageCheckBox296:setHeight(18);
    obj.imageCheckBox296:setField("Pata5intel");
    obj.imageCheckBox296:setName("imageCheckBox296");

    obj.layout325 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout325:setParent(obj.rectangle1);
    obj.layout325:setLeft(808);
    obj.layout325:setTop(364);
    obj.layout325:setWidth(18);
    obj.layout325:setHeight(18);
    obj.layout325:setName("layout325");

    obj.imageCheckBox297 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox297:setParent(obj.layout325);
    obj.imageCheckBox297:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox297:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox297:setWidth(18);
    obj.imageCheckBox297:setHeight(18);
    obj.imageCheckBox297:setField("Pata5racio");
    obj.imageCheckBox297:setName("imageCheckBox297");

    obj.layout326 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout326:setParent(obj.rectangle1);
    obj.layout326:setLeft(291);
    obj.layout326:setTop(451);
    obj.layout326:setWidth(18);
    obj.layout326:setHeight(18);
    obj.layout326:setName("layout326");

    obj.imageCheckBox298 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox298:setParent(obj.layout326);
    obj.imageCheckBox298:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox298:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox298:setWidth(18);
    obj.imageCheckBox298:setHeight(18);
    obj.imageCheckBox298:setField("Pata5pront");
    obj.imageCheckBox298:setName("imageCheckBox298");

    obj.layout327 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout327:setParent(obj.rectangle1);
    obj.layout327:setLeft(291);
    obj.layout327:setTop(473);
    obj.layout327:setWidth(18);
    obj.layout327:setHeight(18);
    obj.layout327:setName("layout327");

    obj.imageCheckBox299 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox299:setParent(obj.layout327);
    obj.imageCheckBox299:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox299:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox299:setWidth(18);
    obj.imageCheckBox299:setHeight(18);
    obj.imageCheckBox299:setField("Pata5espor");
    obj.imageCheckBox299:setName("imageCheckBox299");

    obj.layout328 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout328:setParent(obj.rectangle1);
    obj.layout328:setLeft(291);
    obj.layout328:setTop(495);
    obj.layout328:setWidth(18);
    obj.layout328:setHeight(18);
    obj.layout328:setName("layout328");

    obj.imageCheckBox300 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox300:setParent(obj.layout328);
    obj.imageCheckBox300:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox300:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox300:setWidth(18);
    obj.imageCheckBox300:setHeight(18);
    obj.imageCheckBox300:setField("Pata5briga");
    obj.imageCheckBox300:setName("imageCheckBox300");

    obj.layout329 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout329:setParent(obj.rectangle1);
    obj.layout329:setLeft(291);
    obj.layout329:setTop(516);
    obj.layout329:setWidth(18);
    obj.layout329:setHeight(18);
    obj.layout329:setName("layout329");

    obj.imageCheckBox301 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox301:setParent(obj.layout329);
    obj.imageCheckBox301:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox301:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox301:setWidth(18);
    obj.imageCheckBox301:setHeight(18);
    obj.imageCheckBox301:setField("Pata5esqui");
    obj.imageCheckBox301:setName("imageCheckBox301");

    obj.layout330 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout330:setParent(obj.rectangle1);
    obj.layout330:setLeft(291);
    obj.layout330:setTop(536);
    obj.layout330:setWidth(18);
    obj.layout330:setHeight(18);
    obj.layout330:setName("layout330");

    obj.imageCheckBox302 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox302:setParent(obj.layout330);
    obj.imageCheckBox302:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox302:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox302:setWidth(18);
    obj.imageCheckBox302:setHeight(18);
    obj.imageCheckBox302:setField("Pata5empat");
    obj.imageCheckBox302:setName("imageCheckBox302");

    obj.layout331 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout331:setParent(obj.rectangle1);
    obj.layout331:setLeft(291);
    obj.layout331:setTop(558);
    obj.layout331:setWidth(18);
    obj.layout331:setHeight(18);
    obj.layout331:setName("layout331");

    obj.imageCheckBox303 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox303:setParent(obj.layout331);
    obj.imageCheckBox303:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox303:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox303:setWidth(18);
    obj.imageCheckBox303:setHeight(18);
    obj.imageCheckBox303:setField("Pata5expre");
    obj.imageCheckBox303:setName("imageCheckBox303");

    obj.layout332 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout332:setParent(obj.rectangle1);
    obj.layout332:setLeft(291);
    obj.layout332:setTop(579);
    obj.layout332:setWidth(18);
    obj.layout332:setHeight(18);
    obj.layout332:setName("layout332");

    obj.imageCheckBox304 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox304:setParent(obj.layout332);
    obj.imageCheckBox304:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox304:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox304:setWidth(18);
    obj.imageCheckBox304:setHeight(18);
    obj.imageCheckBox304:setField("Pata5intim");
    obj.imageCheckBox304:setName("imageCheckBox304");

    obj.layout333 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout333:setParent(obj.rectangle1);
    obj.layout333:setLeft(291);
    obj.layout333:setTop(599);
    obj.layout333:setWidth(18);
    obj.layout333:setHeight(18);
    obj.layout333:setName("layout333");

    obj.imageCheckBox305 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox305:setParent(obj.layout333);
    obj.imageCheckBox305:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox305:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox305:setWidth(18);
    obj.imageCheckBox305:setHeight(18);
    obj.imageCheckBox305:setField("Pata5insti");
    obj.imageCheckBox305:setName("imageCheckBox305");

    obj.layout334 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout334:setParent(obj.rectangle1);
    obj.layout334:setLeft(291);
    obj.layout334:setTop(619);
    obj.layout334:setWidth(18);
    obj.layout334:setHeight(18);
    obj.layout334:setName("layout334");

    obj.imageCheckBox306 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox306:setParent(obj.layout334);
    obj.imageCheckBox306:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox306:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox306:setWidth(18);
    obj.imageCheckBox306:setHeight(18);
    obj.imageCheckBox306:setField("Pata5manha");
    obj.imageCheckBox306:setName("imageCheckBox306");

    obj.layout335 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout335:setParent(obj.rectangle1);
    obj.layout335:setLeft(291);
    obj.layout335:setTop(641);
    obj.layout335:setWidth(18);
    obj.layout335:setHeight(18);
    obj.layout335:setName("layout335");

    obj.imageCheckBox307 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox307:setParent(obj.layout335);
    obj.imageCheckBox307:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox307:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox307:setWidth(18);
    obj.imageCheckBox307:setHeight(18);
    obj.imageCheckBox307:setField("Pata5labia");
    obj.imageCheckBox307:setName("imageCheckBox307");

    obj.layout336 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout336:setParent(obj.rectangle1);
    obj.layout336:setLeft(552);
    obj.layout336:setTop(451);
    obj.layout336:setWidth(18);
    obj.layout336:setHeight(18);
    obj.layout336:setName("layout336");

    obj.imageCheckBox308 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox308:setParent(obj.layout336);
    obj.imageCheckBox308:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox308:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox308:setWidth(18);
    obj.imageCheckBox308:setHeight(18);
    obj.imageCheckBox308:setField("Pata5empca");
    obj.imageCheckBox308:setName("imageCheckBox308");

    obj.layout337 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout337:setParent(obj.rectangle1);
    obj.layout337:setLeft(552);
    obj.layout337:setTop(473);
    obj.layout337:setWidth(18);
    obj.layout337:setHeight(18);
    obj.layout337:setName("layout337");

    obj.imageCheckBox309 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox309:setParent(obj.layout337);
    obj.imageCheckBox309:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox309:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox309:setWidth(18);
    obj.imageCheckBox309:setHeight(18);
    obj.imageCheckBox309:setField("Pata5ofi");
    obj.imageCheckBox309:setName("imageCheckBox309");

    obj.layout338 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout338:setParent(obj.rectangle1);
    obj.layout338:setLeft(552);
    obj.layout338:setTop(495);
    obj.layout338:setWidth(18);
    obj.layout338:setHeight(18);
    obj.layout338:setName("layout338");

    obj.imageCheckBox310 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox310:setParent(obj.layout338);
    obj.imageCheckBox310:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox310:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox310:setWidth(18);
    obj.imageCheckBox310:setHeight(18);
    obj.imageCheckBox310:setField("Pata5condu");
    obj.imageCheckBox310:setName("imageCheckBox310");

    obj.layout339 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout339:setParent(obj.rectangle1);
    obj.layout339:setLeft(552);
    obj.layout339:setTop(516);
    obj.layout339:setWidth(18);
    obj.layout339:setHeight(18);
    obj.layout339:setName("layout339");

    obj.imageCheckBox311 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox311:setParent(obj.layout339);
    obj.imageCheckBox311:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox311:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox311:setWidth(18);
    obj.imageCheckBox311:setHeight(18);
    obj.imageCheckBox311:setField("Pata5etique");
    obj.imageCheckBox311:setName("imageCheckBox311");

    obj.layout340 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout340:setParent(obj.rectangle1);
    obj.layout340:setLeft(552);
    obj.layout340:setTop(536);
    obj.layout340:setWidth(18);
    obj.layout340:setHeight(18);
    obj.layout340:setName("layout340");

    obj.imageCheckBox312 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox312:setParent(obj.layout340);
    obj.imageCheckBox312:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox312:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox312:setWidth(18);
    obj.imageCheckBox312:setHeight(18);
    obj.imageCheckBox312:setField("Pata5armfg");
    obj.imageCheckBox312:setName("imageCheckBox312");

    obj.layout341 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout341:setParent(obj.rectangle1);
    obj.layout341:setLeft(552);
    obj.layout341:setTop(558);
    obj.layout341:setWidth(18);
    obj.layout341:setHeight(18);
    obj.layout341:setName("layout341");

    obj.imageCheckBox313 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox313:setParent(obj.layout341);
    obj.imageCheckBox313:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox313:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox313:setWidth(18);
    obj.imageCheckBox313:setHeight(18);
    obj.imageCheckBox313:setField("Pata5armbr");
    obj.imageCheckBox313:setName("imageCheckBox313");

    obj.layout342 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout342:setParent(obj.rectangle1);
    obj.layout342:setLeft(552);
    obj.layout342:setTop(579);
    obj.layout342:setWidth(18);
    obj.layout342:setHeight(18);
    obj.layout342:setName("layout342");

    obj.imageCheckBox314 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox314:setParent(obj.layout342);
    obj.imageCheckBox314:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox314:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox314:setWidth(18);
    obj.imageCheckBox314:setHeight(18);
    obj.imageCheckBox314:setField("Pata5lider");
    obj.imageCheckBox314:setName("imageCheckBox314");

    obj.layout343 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout343:setParent(obj.rectangle1);
    obj.layout343:setLeft(552);
    obj.layout343:setTop(599);
    obj.layout343:setWidth(18);
    obj.layout343:setHeight(18);
    obj.layout343:setName("layout343");

    obj.imageCheckBox315 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox315:setParent(obj.layout343);
    obj.imageCheckBox315:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox315:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox315:setWidth(18);
    obj.imageCheckBox315:setHeight(18);
    obj.imageCheckBox315:setField("Pata5perfo");
    obj.imageCheckBox315:setName("imageCheckBox315");

    obj.layout344 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout344:setParent(obj.rectangle1);
    obj.layout344:setLeft(552);
    obj.layout344:setTop(619);
    obj.layout344:setWidth(18);
    obj.layout344:setHeight(18);
    obj.layout344:setName("layout344");

    obj.imageCheckBox316 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox316:setParent(obj.layout344);
    obj.imageCheckBox316:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox316:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox316:setWidth(18);
    obj.imageCheckBox316:setHeight(18);
    obj.imageCheckBox316:setField("Pata5furti");
    obj.imageCheckBox316:setName("imageCheckBox316");

    obj.layout345 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout345:setParent(obj.rectangle1);
    obj.layout345:setLeft(552);
    obj.layout345:setTop(641);
    obj.layout345:setWidth(18);
    obj.layout345:setHeight(18);
    obj.layout345:setName("layout345");

    obj.imageCheckBox317 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox317:setParent(obj.layout345);
    obj.imageCheckBox317:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox317:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox317:setWidth(18);
    obj.imageCheckBox317:setHeight(18);
    obj.imageCheckBox317:setField("Pata5sobre");
    obj.imageCheckBox317:setName("imageCheckBox317");

    obj.layout346 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout346:setParent(obj.rectangle1);
    obj.layout346:setLeft(808);
    obj.layout346:setTop(451);
    obj.layout346:setWidth(18);
    obj.layout346:setHeight(18);
    obj.layout346:setName("layout346");

    obj.imageCheckBox318 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox318:setParent(obj.layout346);
    obj.imageCheckBox318:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox318:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox318:setWidth(18);
    obj.imageCheckBox318:setHeight(18);
    obj.imageCheckBox318:setField("Pata5compu");
    obj.imageCheckBox318:setName("imageCheckBox318");

    obj.layout347 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout347:setParent(obj.rectangle1);
    obj.layout347:setLeft(808);
    obj.layout347:setTop(473);
    obj.layout347:setWidth(18);
    obj.layout347:setHeight(18);
    obj.layout347:setName("layout347");

    obj.imageCheckBox319 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox319:setParent(obj.layout347);
    obj.imageCheckBox319:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox319:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox319:setWidth(18);
    obj.imageCheckBox319:setHeight(18);
    obj.imageCheckBox319:setField("Pata5enig");
    obj.imageCheckBox319:setName("imageCheckBox319");

    obj.layout348 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout348:setParent(obj.rectangle1);
    obj.layout348:setLeft(808);
    obj.layout348:setTop(495);
    obj.layout348:setWidth(18);
    obj.layout348:setHeight(18);
    obj.layout348:setName("layout348");

    obj.imageCheckBox320 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox320:setParent(obj.layout348);
    obj.imageCheckBox320:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox320:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox320:setWidth(18);
    obj.imageCheckBox320:setHeight(18);
    obj.imageCheckBox320:setField("Pata5inves");
    obj.imageCheckBox320:setName("imageCheckBox320");

    obj.layout349 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout349:setParent(obj.rectangle1);
    obj.layout349:setLeft(808);
    obj.layout349:setTop(516);
    obj.layout349:setWidth(18);
    obj.layout349:setHeight(18);
    obj.layout349:setName("layout349");

    obj.imageCheckBox321 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox321:setParent(obj.layout349);
    obj.imageCheckBox321:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox321:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox321:setWidth(18);
    obj.imageCheckBox321:setHeight(18);
    obj.imageCheckBox321:setField("Pata5direi");
    obj.imageCheckBox321:setName("imageCheckBox321");

    obj.layout350 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout350:setParent(obj.rectangle1);
    obj.layout350:setLeft(808);
    obj.layout350:setTop(536);
    obj.layout350:setWidth(18);
    obj.layout350:setHeight(18);
    obj.layout350:setName("layout350");

    obj.imageCheckBox322 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox322:setParent(obj.layout350);
    obj.imageCheckBox322:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox322:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox322:setWidth(18);
    obj.imageCheckBox322:setHeight(18);
    obj.imageCheckBox322:setField("Pata5lingu");
    obj.imageCheckBox322:setName("imageCheckBox322");

    obj.layout351 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout351:setParent(obj.rectangle1);
    obj.layout351:setLeft(808);
    obj.layout351:setTop(558);
    obj.layout351:setWidth(18);
    obj.layout351:setHeight(18);
    obj.layout351:setName("layout351");

    obj.imageCheckBox323 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox323:setParent(obj.layout351);
    obj.imageCheckBox323:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox323:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox323:setWidth(18);
    obj.imageCheckBox323:setHeight(18);
    obj.imageCheckBox323:setField("Pata5medic");
    obj.imageCheckBox323:setName("imageCheckBox323");

    obj.layout352 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout352:setParent(obj.rectangle1);
    obj.layout352:setLeft(808);
    obj.layout352:setTop(579);
    obj.layout352:setWidth(18);
    obj.layout352:setHeight(18);
    obj.layout352:setName("layout352");

    obj.imageCheckBox324 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox324:setParent(obj.layout352);
    obj.imageCheckBox324:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox324:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox324:setWidth(18);
    obj.imageCheckBox324:setHeight(18);
    obj.imageCheckBox324:setField("Pata5ocult");
    obj.imageCheckBox324:setName("imageCheckBox324");

    obj.layout353 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout353:setParent(obj.rectangle1);
    obj.layout353:setLeft(808);
    obj.layout353:setTop(599);
    obj.layout353:setWidth(18);
    obj.layout353:setHeight(18);
    obj.layout353:setName("layout353");

    obj.imageCheckBox325 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox325:setParent(obj.layout353);
    obj.imageCheckBox325:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox325:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox325:setWidth(18);
    obj.imageCheckBox325:setHeight(18);
    obj.imageCheckBox325:setField("Pata5polit");
    obj.imageCheckBox325:setName("imageCheckBox325");

    obj.layout354 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout354:setParent(obj.rectangle1);
    obj.layout354:setLeft(808);
    obj.layout354:setTop(619);
    obj.layout354:setWidth(18);
    obj.layout354:setHeight(18);
    obj.layout354:setName("layout354");

    obj.imageCheckBox326 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox326:setParent(obj.layout354);
    obj.imageCheckBox326:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox326:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox326:setWidth(18);
    obj.imageCheckBox326:setHeight(18);
    obj.imageCheckBox326:setField("Pata5ritua");
    obj.imageCheckBox326:setName("imageCheckBox326");

    obj.layout355 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout355:setParent(obj.rectangle1);
    obj.layout355:setLeft(808);
    obj.layout355:setTop(641);
    obj.layout355:setWidth(18);
    obj.layout355:setHeight(18);
    obj.layout355:setName("layout355");

    obj.imageCheckBox327 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox327:setParent(obj.layout355);
    obj.imageCheckBox327:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox327:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox327:setWidth(18);
    obj.imageCheckBox327:setHeight(18);
    obj.imageCheckBox327:setField("Pata5ciencia");
    obj.imageCheckBox327:setName("imageCheckBox327");

    obj.layout356 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout356:setParent(obj.rectangle1);
    obj.layout356:setLeft(291);
    obj.layout356:setTop(731);
    obj.layout356:setWidth(18);
    obj.layout356:setHeight(18);
    obj.layout356:setName("layout356");

    obj.imageCheckBox328 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox328:setParent(obj.layout356);
    obj.imageCheckBox328:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox328:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox328:setWidth(18);
    obj.imageCheckBox328:setHeight(18);
    obj.imageCheckBox328:setField("Pata5Ant1");
    obj.imageCheckBox328:setName("imageCheckBox328");

    obj.layout357 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout357:setParent(obj.rectangle1);
    obj.layout357:setLeft(291);
    obj.layout357:setTop(752);
    obj.layout357:setWidth(18);
    obj.layout357:setHeight(18);
    obj.layout357:setName("layout357");

    obj.imageCheckBox329 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox329:setParent(obj.layout357);
    obj.imageCheckBox329:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox329:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox329:setWidth(18);
    obj.imageCheckBox329:setHeight(18);
    obj.imageCheckBox329:setField("Pata5Ant2");
    obj.imageCheckBox329:setName("imageCheckBox329");

    obj.layout358 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout358:setParent(obj.rectangle1);
    obj.layout358:setLeft(291);
    obj.layout358:setTop(773);
    obj.layout358:setWidth(18);
    obj.layout358:setHeight(18);
    obj.layout358:setName("layout358");

    obj.imageCheckBox330 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox330:setParent(obj.layout358);
    obj.imageCheckBox330:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox330:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox330:setWidth(18);
    obj.imageCheckBox330:setHeight(18);
    obj.imageCheckBox330:setField("Pata5Ant3");
    obj.imageCheckBox330:setName("imageCheckBox330");

    obj.layout359 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout359:setParent(obj.rectangle1);
    obj.layout359:setLeft(291);
    obj.layout359:setTop(794);
    obj.layout359:setWidth(18);
    obj.layout359:setHeight(18);
    obj.layout359:setName("layout359");

    obj.imageCheckBox331 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox331:setParent(obj.layout359);
    obj.imageCheckBox331:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox331:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox331:setWidth(18);
    obj.imageCheckBox331:setHeight(18);
    obj.imageCheckBox331:setField("Pata5Ant4");
    obj.imageCheckBox331:setName("imageCheckBox331");

    obj.layout360 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout360:setParent(obj.rectangle1);
    obj.layout360:setLeft(291);
    obj.layout360:setTop(816);
    obj.layout360:setWidth(18);
    obj.layout360:setHeight(18);
    obj.layout360:setName("layout360");

    obj.imageCheckBox332 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox332:setParent(obj.layout360);
    obj.imageCheckBox332:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox332:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox332:setWidth(18);
    obj.imageCheckBox332:setHeight(18);
    obj.imageCheckBox332:setField("Pata5Ant5");
    obj.imageCheckBox332:setName("imageCheckBox332");

    obj.layout361 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout361:setParent(obj.rectangle1);
    obj.layout361:setLeft(291);
    obj.layout361:setTop(837);
    obj.layout361:setWidth(18);
    obj.layout361:setHeight(18);
    obj.layout361:setName("layout361");

    obj.imageCheckBox333 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox333:setParent(obj.layout361);
    obj.imageCheckBox333:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox333:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox333:setWidth(18);
    obj.imageCheckBox333:setHeight(18);
    obj.imageCheckBox333:setField("Pata5Ant6");
    obj.imageCheckBox333:setName("imageCheckBox333");

    obj.layout362 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout362:setParent(obj.rectangle1);
    obj.layout362:setLeft(166);
    obj.layout362:setTop(942);
    obj.layout362:setWidth(18);
    obj.layout362:setHeight(18);
    obj.layout362:setName("layout362");

    obj.imageCheckBox334 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox334:setParent(obj.layout362);
    obj.imageCheckBox334:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox334:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox334:setWidth(18);
    obj.imageCheckBox334:setHeight(18);
    obj.imageCheckBox334:setField("Pata5Gl");
    obj.imageCheckBox334:setName("imageCheckBox334");

    obj.layout363 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout363:setParent(obj.rectangle1);
    obj.layout363:setLeft(285);
    obj.layout363:setTop(942);
    obj.layout363:setWidth(18);
    obj.layout363:setHeight(18);
    obj.layout363:setName("layout363");

    obj.imageCheckBox335 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox335:setParent(obj.layout363);
    obj.imageCheckBox335:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox335:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox335:setWidth(18);
    obj.imageCheckBox335:setHeight(18);
    obj.imageCheckBox335:setField("Pata10Gl");
    obj.imageCheckBox335:setName("imageCheckBox335");

    obj.layout364 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout364:setParent(obj.rectangle1);
    obj.layout364:setLeft(167);
    obj.layout364:setTop(964);
    obj.layout364:setWidth(18);
    obj.layout364:setHeight(18);
    obj.layout364:setName("layout364");

    obj.imageCheckBox336 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox336:setParent(obj.layout364);
    obj.imageCheckBox336:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox336:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox336:setWidth(18);
    obj.imageCheckBox336:setHeight(18);
    obj.imageCheckBox336:setField("square5Gl");
    obj.imageCheckBox336:setName("imageCheckBox336");

    obj.layout365 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout365:setParent(obj.rectangle1);
    obj.layout365:setLeft(286);
    obj.layout365:setTop(964);
    obj.layout365:setWidth(18);
    obj.layout365:setHeight(18);
    obj.layout365:setName("layout365");

    obj.imageCheckBox337 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox337:setParent(obj.layout365);
    obj.imageCheckBox337:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox337:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox337:setWidth(18);
    obj.imageCheckBox337:setHeight(18);
    obj.imageCheckBox337:setField("square10Gl");
    obj.imageCheckBox337:setName("imageCheckBox337");

    obj.layout366 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout366:setParent(obj.rectangle1);
    obj.layout366:setLeft(166);
    obj.layout366:setTop(1019);
    obj.layout366:setWidth(18);
    obj.layout366:setHeight(18);
    obj.layout366:setName("layout366");

    obj.imageCheckBox338 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox338:setParent(obj.layout366);
    obj.imageCheckBox338:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox338:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox338:setWidth(18);
    obj.imageCheckBox338:setHeight(18);
    obj.imageCheckBox338:setField("Pata5Hon");
    obj.imageCheckBox338:setName("imageCheckBox338");

    obj.layout367 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout367:setParent(obj.rectangle1);
    obj.layout367:setLeft(285);
    obj.layout367:setTop(1019);
    obj.layout367:setWidth(18);
    obj.layout367:setHeight(18);
    obj.layout367:setName("layout367");

    obj.imageCheckBox339 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox339:setParent(obj.layout367);
    obj.imageCheckBox339:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox339:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox339:setWidth(18);
    obj.imageCheckBox339:setHeight(18);
    obj.imageCheckBox339:setField("Pata10Hon");
    obj.imageCheckBox339:setName("imageCheckBox339");

    obj.layout368 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout368:setParent(obj.rectangle1);
    obj.layout368:setLeft(167);
    obj.layout368:setTop(1039);
    obj.layout368:setWidth(18);
    obj.layout368:setHeight(18);
    obj.layout368:setName("layout368");

    obj.imageCheckBox340 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox340:setParent(obj.layout368);
    obj.imageCheckBox340:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox340:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox340:setWidth(18);
    obj.imageCheckBox340:setHeight(18);
    obj.imageCheckBox340:setField("square5Hon");
    obj.imageCheckBox340:setName("imageCheckBox340");

    obj.layout369 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout369:setParent(obj.rectangle1);
    obj.layout369:setLeft(286);
    obj.layout369:setTop(1039);
    obj.layout369:setWidth(18);
    obj.layout369:setHeight(18);
    obj.layout369:setName("layout369");

    obj.imageCheckBox341 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox341:setParent(obj.layout369);
    obj.imageCheckBox341:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox341:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox341:setWidth(18);
    obj.imageCheckBox341:setHeight(18);
    obj.imageCheckBox341:setField("square10Hon");
    obj.imageCheckBox341:setName("imageCheckBox341");

    obj.layout370 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout370:setParent(obj.rectangle1);
    obj.layout370:setLeft(166);
    obj.layout370:setTop(1093);
    obj.layout370:setWidth(18);
    obj.layout370:setHeight(18);
    obj.layout370:setName("layout370");

    obj.imageCheckBox342 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox342:setParent(obj.layout370);
    obj.imageCheckBox342:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox342:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox342:setWidth(18);
    obj.imageCheckBox342:setHeight(18);
    obj.imageCheckBox342:setField("Pata5Sab");
    obj.imageCheckBox342:setName("imageCheckBox342");

    obj.layout371 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout371:setParent(obj.rectangle1);
    obj.layout371:setLeft(285);
    obj.layout371:setTop(1093);
    obj.layout371:setWidth(18);
    obj.layout371:setHeight(18);
    obj.layout371:setName("layout371");

    obj.imageCheckBox343 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox343:setParent(obj.layout371);
    obj.imageCheckBox343:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox343:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox343:setWidth(18);
    obj.imageCheckBox343:setHeight(18);
    obj.imageCheckBox343:setField("Pata10Sab");
    obj.imageCheckBox343:setName("imageCheckBox343");

    obj.layout372 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout372:setParent(obj.rectangle1);
    obj.layout372:setLeft(167);
    obj.layout372:setTop(1114);
    obj.layout372:setWidth(18);
    obj.layout372:setHeight(18);
    obj.layout372:setName("layout372");

    obj.imageCheckBox344 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox344:setParent(obj.layout372);
    obj.imageCheckBox344:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox344:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox344:setWidth(18);
    obj.imageCheckBox344:setHeight(18);
    obj.imageCheckBox344:setField("square5Sab");
    obj.imageCheckBox344:setName("imageCheckBox344");

    obj.layout373 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout373:setParent(obj.rectangle1);
    obj.layout373:setLeft(286);
    obj.layout373:setTop(1114);
    obj.layout373:setWidth(18);
    obj.layout373:setHeight(18);
    obj.layout373:setName("layout373");

    obj.imageCheckBox345 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox345:setParent(obj.layout373);
    obj.imageCheckBox345:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox345:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox345:setWidth(18);
    obj.imageCheckBox345:setHeight(18);
    obj.imageCheckBox345:setField("square10Sab");
    obj.imageCheckBox345:setName("imageCheckBox345");

    obj.layout374 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout374:setParent(obj.rectangle1);
    obj.layout374:setLeft(427);
    obj.layout374:setTop(915);
    obj.layout374:setWidth(18);
    obj.layout374:setHeight(18);
    obj.layout374:setName("layout374");

    obj.imageCheckBox346 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox346:setParent(obj.layout374);
    obj.imageCheckBox346:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox346:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox346:setWidth(18);
    obj.imageCheckBox346:setHeight(18);
    obj.imageCheckBox346:setField("Pata5F");
    obj.imageCheckBox346:setName("imageCheckBox346");

    obj.layout375 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout375:setParent(obj.rectangle1);
    obj.layout375:setLeft(546);
    obj.layout375:setTop(915);
    obj.layout375:setWidth(18);
    obj.layout375:setHeight(18);
    obj.layout375:setName("layout375");

    obj.imageCheckBox347 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox347:setParent(obj.layout375);
    obj.imageCheckBox347:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox347:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox347:setWidth(18);
    obj.imageCheckBox347:setHeight(18);
    obj.imageCheckBox347:setField("Pata10F");
    obj.imageCheckBox347:setName("imageCheckBox347");

    obj.layout376 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout376:setParent(obj.rectangle1);
    obj.layout376:setLeft(427);
    obj.layout376:setTop(936);
    obj.layout376:setWidth(18);
    obj.layout376:setHeight(18);
    obj.layout376:setName("layout376");

    obj.imageCheckBox348 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox348:setParent(obj.layout376);
    obj.imageCheckBox348:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox348:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox348:setWidth(18);
    obj.imageCheckBox348:setHeight(18);
    obj.imageCheckBox348:setField("square5F");
    obj.imageCheckBox348:setName("imageCheckBox348");

    obj.layout377 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout377:setParent(obj.rectangle1);
    obj.layout377:setLeft(546);
    obj.layout377:setTop(936);
    obj.layout377:setWidth(18);
    obj.layout377:setHeight(18);
    obj.layout377:setName("layout377");

    obj.imageCheckBox349 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox349:setParent(obj.layout377);
    obj.imageCheckBox349:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox349:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox349:setWidth(18);
    obj.imageCheckBox349:setHeight(18);
    obj.imageCheckBox349:setField("square10F");
    obj.imageCheckBox349:setName("imageCheckBox349");

    obj.layout378 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout378:setParent(obj.rectangle1);
    obj.layout378:setLeft(427);
    obj.layout378:setTop(1031);
    obj.layout378:setWidth(18);
    obj.layout378:setHeight(18);
    obj.layout378:setName("layout378");

    obj.imageCheckBox350 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox350:setParent(obj.layout378);
    obj.imageCheckBox350:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox350:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox350:setWidth(18);
    obj.imageCheckBox350:setHeight(18);
    obj.imageCheckBox350:setField("Pata5Gno");
    obj.imageCheckBox350:setName("imageCheckBox350");

    obj.layout379 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout379:setParent(obj.rectangle1);
    obj.layout379:setLeft(546);
    obj.layout379:setTop(1031);
    obj.layout379:setWidth(18);
    obj.layout379:setHeight(18);
    obj.layout379:setName("layout379");

    obj.imageCheckBox351 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox351:setParent(obj.layout379);
    obj.imageCheckBox351:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox351:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox351:setWidth(18);
    obj.imageCheckBox351:setHeight(18);
    obj.imageCheckBox351:setField("Pata10Gno");
    obj.imageCheckBox351:setName("imageCheckBox351");

    obj.layout380 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout380:setParent(obj.rectangle1);
    obj.layout380:setLeft(427);
    obj.layout380:setTop(1052);
    obj.layout380:setWidth(18);
    obj.layout380:setHeight(18);
    obj.layout380:setName("layout380");

    obj.imageCheckBox352 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox352:setParent(obj.layout380);
    obj.imageCheckBox352:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox352:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox352:setWidth(18);
    obj.imageCheckBox352:setHeight(18);
    obj.imageCheckBox352:setField("square5Gno");
    obj.imageCheckBox352:setName("imageCheckBox352");

    obj.layout381 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout381:setParent(obj.rectangle1);
    obj.layout381:setLeft(546);
    obj.layout381:setTop(1052);
    obj.layout381:setWidth(18);
    obj.layout381:setHeight(18);
    obj.layout381:setName("layout381");

    obj.imageCheckBox353 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox353:setParent(obj.layout381);
    obj.imageCheckBox353:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox353:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox353:setWidth(18);
    obj.imageCheckBox353:setHeight(18);
    obj.imageCheckBox353:setField("square10Gno");
    obj.imageCheckBox353:setName("imageCheckBox353");

    obj.layout382 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout382:setParent(obj.rectangle1);
    obj.layout382:setLeft(427);
    obj.layout382:setTop(1141);
    obj.layout382:setWidth(18);
    obj.layout382:setHeight(18);
    obj.layout382:setName("layout382");

    obj.imageCheckBox354 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox354:setParent(obj.layout382);
    obj.imageCheckBox354:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox354:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox354:setWidth(18);
    obj.imageCheckBox354:setHeight(18);
    obj.imageCheckBox354:setField("Pata5FDV");
    obj.imageCheckBox354:setName("imageCheckBox354");

    obj.layout383 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout383:setParent(obj.rectangle1);
    obj.layout383:setLeft(546);
    obj.layout383:setTop(1141);
    obj.layout383:setWidth(18);
    obj.layout383:setHeight(18);
    obj.layout383:setName("layout383");

    obj.imageCheckBox355 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox355:setParent(obj.layout383);
    obj.imageCheckBox355:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox355:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox355:setWidth(18);
    obj.imageCheckBox355:setHeight(18);
    obj.imageCheckBox355:setField("Pata10FDV");
    obj.imageCheckBox355:setName("imageCheckBox355");

    obj.layout384 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout384:setParent(obj.rectangle1);
    obj.layout384:setLeft(427);
    obj.layout384:setTop(1163);
    obj.layout384:setWidth(18);
    obj.layout384:setHeight(18);
    obj.layout384:setName("layout384");

    obj.imageCheckBox356 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox356:setParent(obj.layout384);
    obj.imageCheckBox356:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox356:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox356:setWidth(18);
    obj.imageCheckBox356:setHeight(18);
    obj.imageCheckBox356:setField("square5FDV");
    obj.imageCheckBox356:setName("imageCheckBox356");

    obj.layout385 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout385:setParent(obj.rectangle1);
    obj.layout385:setLeft(546);
    obj.layout385:setTop(1163);
    obj.layout385:setWidth(18);
    obj.layout385:setHeight(18);
    obj.layout385:setName("layout385");

    obj.imageCheckBox357 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox357:setParent(obj.layout385);
    obj.imageCheckBox357:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox357:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox357:setWidth(18);
    obj.imageCheckBox357:setHeight(18);
    obj.imageCheckBox357:setField("square10FDV");
    obj.imageCheckBox357:setName("imageCheckBox357");

    obj.layout386 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout386:setParent(obj.rectangle1);
    obj.layout386:setLeft(769);
    obj.layout386:setTop(999);
    obj.layout386:setWidth(18);
    obj.layout386:setHeight(18);
    obj.layout386:setName("layout386");

    obj.imageCheckBox358 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox358:setParent(obj.layout386);
    obj.imageCheckBox358:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox358:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox358:setWidth(18);
    obj.imageCheckBox358:setHeight(18);
    obj.imageCheckBox358:setField("Pata5Letal");
    obj.imageCheckBox358:setName("imageCheckBox358");

    obj.layout387 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout387:setParent(obj.rectangle1);
    obj.layout387:setLeft(790);
    obj.layout387:setTop(999);
    obj.layout387:setWidth(18);
    obj.layout387:setHeight(18);
    obj.layout387:setName("layout387");

    obj.imageCheckBox359 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox359:setParent(obj.layout387);
    obj.imageCheckBox359:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox359:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox359:setWidth(18);
    obj.imageCheckBox359:setHeight(18);
    obj.imageCheckBox359:setField("Pata5Agravado");
    obj.imageCheckBox359:setName("imageCheckBox359");

    obj.layout388 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout388:setParent(obj.rectangle1);
    obj.layout388:setLeft(588);
    obj.layout388:setTop(1132);
    obj.layout388:setWidth(240);
    obj.layout388:setHeight(67);
    obj.layout388:setName("layout388");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout388);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(240);
    obj.textEditor1:setHeight(67);
    obj.textEditor1:setField("FraquezaTribal");
    obj.textEditor1:setName("textEditor1");

    obj.frmCodigo1 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo1:setParent(obj);
    obj.frmCodigo1:setName("frmCodigo1");
    obj.frmCodigo1:setHeight(0);
    obj.frmCodigo1:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo1);
    obj.dataLink1:setFields({'Pata1forca', 'Pata1destreza', 'Pata1vigor', 'Pata1carisma', 'Pata1manipu', 'Pata1apare', 'Pata1percep', 'Pata1intel', 'Pata1racio'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo1);
    obj.dataLink2:setFields({'Pata5forca', 'Pata4forca', 'Pata3forca', 'Pata2forca', 'Pata1forca'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo1);
    obj.dataLink3:setFields({'Pata5destreza', 'Pata4destreza', 'Pata3destreza', 'Pata2destreza', 'Pata1destreza'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo1);
    obj.dataLink4:setFields({'Pata5vigor', 'Pata4vigor', 'Pata3vigor', 'Pata2vigor', 'Pata1vigor'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo1);
    obj.dataLink5:setFields({'Pata5carisma', 'Pata4carisma', 'Pata3carisma', 'Pata2carisma', 'Pata1carisma'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo1);
    obj.dataLink6:setFields({'Pata5manipu', 'Pata4manipu', 'Pata3manipu', 'Pata2manipu', 'Pata1manipu'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo1);
    obj.dataLink7:setFields({'Pata5apare', 'Pata4apare', 'Pata3apare', 'Pata2apare', 'Pata1apare'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo1);
    obj.dataLink8:setFields({'Pata5percep', 'Pata4percep', 'Pata3percep', 'Pata2percep', 'Pata1percep'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo1);
    obj.dataLink9:setFields({'Pata5intel', 'Pata4intel', 'Pata3intel', 'Pata2intel', 'Pata1intel'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo1);
    obj.dataLink10:setFields({'Pata5racio', 'Pata4racio', 'Pata3racio', 'Pata2racio', 'Pata1racio'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo1);
    obj.dataLink11:setFields({'Pata5pront', 'Pata4pront', 'Pata3pront', 'Pata2pront', 'Pata1pront'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo1);
    obj.dataLink12:setFields({'Pata5espor', 'Pata4espor', 'Pata3espor', 'Pata2espor', 'Pata1espor'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo1);
    obj.dataLink13:setFields({'Pata5briga', 'Pata4briga', 'Pata3briga', 'Pata2briga', 'Pata1briga'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo1);
    obj.dataLink14:setFields({'Pata5esqui', 'Pata4esqui', 'Pata3esqui', 'Pata2esqui', 'Pata1esqui'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo1);
    obj.dataLink15:setFields({'Pata5empat', 'Pata4empat', 'Pata3empat', 'Pata2empat', 'Pata1empat'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo1);
    obj.dataLink16:setFields({'Pata5expre', 'Pata4expre', 'Pata3expre', 'Pata2expre', 'Pata1expre'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo1);
    obj.dataLink17:setFields({'Pata5intim', 'Pata4intim', 'Pata3intim', 'Pata2intim', 'Pata1intim'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo1);
    obj.dataLink18:setFields({'Pata5insti', 'Pata4insti', 'Pata3insti', 'Pata2insti', 'Pata1insti'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo1);
    obj.dataLink19:setFields({'Pata5manha', 'Pata4manha', 'Pata3manha', 'Pata2manha', 'Pata1manha'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmCodigo1);
    obj.dataLink20:setFields({'Pata5labia', 'Pata4labia', 'Pata3labia', 'Pata2labia', 'Pata1labia'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmCodigo1);
    obj.dataLink21:setFields({'Pata5empca', 'Pata4empca', 'Pata3empca', 'Pata2empca', 'Pata1empca'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.frmCodigo1);
    obj.dataLink22:setFields({'Pata5ofi', 'Pata4ofi', 'Pata3ofi', 'Pata2ofi', 'Pata1ofi'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.frmCodigo1);
    obj.dataLink23:setFields({'Pata5condu', 'Pata4condu', 'Pata3condu', 'Pata2condu', 'Pata1condu'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.frmCodigo1);
    obj.dataLink24:setFields({'Pata5etique', 'Pata4etique', 'Pata3etique', 'Pata2etique', 'Pata1etique'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.frmCodigo1);
    obj.dataLink25:setFields({'Pata5armfg', 'Pata4armfg', 'Pata3armfg', 'Pata2armfg', 'Pata1armfg'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.frmCodigo1);
    obj.dataLink26:setFields({'Pata5armbr', 'Pata4armbr', 'Pata3armbr', 'Pata2armbr', 'Pata1armbr'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.frmCodigo1);
    obj.dataLink27:setFields({'Pata5lider', 'Pata4lider', 'Pata3lider', 'Pata2lider', 'Pata1lider'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.frmCodigo1);
    obj.dataLink28:setFields({'Pata5perfo', 'Pata4perfo', 'Pata3perfo', 'Pata2perfo', 'Pata1perfo'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.frmCodigo1);
    obj.dataLink29:setFields({'Pata5furti', 'Pata4furti', 'Pata3furti', 'Pata2furti', 'Pata1furti'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.frmCodigo1);
    obj.dataLink30:setFields({'Pata5sobre', 'Pata4sobre', 'Pata3sobre', 'Pata2sobre', 'Pata1sobre'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.frmCodigo1);
    obj.dataLink31:setFields({'Pata5compu', 'Pata4compu', 'Pata3compu', 'Pata2compu', 'Pata1compu'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.frmCodigo1);
    obj.dataLink32:setFields({'Pata5enig', 'Pata4enig', 'Pata3enig', 'Pata2enig', 'Pata1enig'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.frmCodigo1);
    obj.dataLink33:setFields({'Pata5inves', 'Pata4inves', 'Pata3inves', 'Pata2inves', 'Pata1inves'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.frmCodigo1);
    obj.dataLink34:setFields({'Pata5direi', 'Pata4direi', 'Pata3direi', 'Pata2direi', 'Pata1direi'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmCodigo1);
    obj.dataLink35:setFields({'Pata5lingu', 'Pata4lingu', 'Pata3lingu', 'Pata2lingu', 'Pata1lingu'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.frmCodigo1);
    obj.dataLink36:setFields({'Pata5medic', 'Pata4medic', 'Pata3medic', 'Pata2medic', 'Pata1medic'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.frmCodigo1);
    obj.dataLink37:setFields({'Pata5ocult', 'Pata4ocult', 'Pata3ocult', 'Pata2ocult', 'Pata1ocult'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.frmCodigo1);
    obj.dataLink38:setFields({'Pata5polit', 'Pata4polit', 'Pata3polit', 'Pata2polit', 'Pata1polit'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.frmCodigo1);
    obj.dataLink39:setFields({'Pata5ritua', 'Pata4ritua', 'Pata3ritua', 'Pata2ritua', 'Pata1ritua'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.frmCodigo1);
    obj.dataLink40:setFields({'Pata5ciencia', 'Pata4ciencia', 'Pata3ciencia', 'Pata2ciencia', 'Pata1ciencia'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.frmCodigo1);
    obj.dataLink41:setFields({'Pata5Ant1', 'Pata4Ant1', 'Pata3Ant1', 'Pata2Ant1', 'Pata1Ant1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.frmCodigo1);
    obj.dataLink42:setFields({'Pata5Ant2', 'Pata4Ant2', 'Pata3Ant2', 'Pata2Ant2', 'Pata1Ant2'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.frmCodigo1);
    obj.dataLink43:setFields({'Pata5Ant3', 'Pata4Ant3', 'Pata3Ant3', 'Pata2Ant3', 'Pata1Ant3'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.frmCodigo1);
    obj.dataLink44:setFields({'Pata5Ant4', 'Pata4Ant4', 'Pata3Ant4', 'Pata2Ant4', 'Pata1Ant4'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.frmCodigo1);
    obj.dataLink45:setFields({'Pata5Ant5', 'Pata4Ant5', 'Pata3Ant5', 'Pata2Ant5', 'Pata1Ant5'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.frmCodigo1);
    obj.dataLink46:setFields({'Pata5Ant6', 'Pata4Ant6', 'Pata3Ant6', 'Pata2Ant6', 'Pata1Ant6'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.frmCodigo1);
    obj.dataLink47:setFields({'Pata10Gl', 'Pata9Gl', 'Pata8Gl', 'Pata7Gl', 'Pata6Gl', 'Pata5Gl', 'Pata4Gl', 'Pata3Gl', 'Pata2Gl', 'Pata1Gl'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.frmCodigo1);
    obj.dataLink48:setFields({'square10Gl', 'square9Gl', 'square8Gl', 'square7Gl', 'square6Gl', 'square5Gl', 'square4Gl', 'square3Gl', 'square2Gl', 'square1Gl'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.frmCodigo1);
    obj.dataLink49:setFields({'Pata10Hon', 'Pata9Hon', 'Pata8Hon', 'Pata7Hon', 'Pata6Hon', 'Pata5Hon', 'Pata4Hon', 'Pata3Hon', 'Pata2Hon', 'Pata1Hon'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.frmCodigo1);
    obj.dataLink50:setFields({'square10Hon', 'square9Hon', 'square8Hon', 'square7Hon', 'square6Hon', 'square5Hon', 'square4Hon', 'square3Hon', 'square2Hon', 'square1Hon'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.frmCodigo1);
    obj.dataLink51:setFields({'Pata10Sab', 'Pata9Sab', 'Pata8Sab', 'Pata7Sab', 'Pata6Sab', 'Pata5Sab', 'Pata4Sab', 'Pata3Sab', 'Pata2Sab', 'Pata1Sab'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.frmCodigo1);
    obj.dataLink52:setFields({'square10Sab', 'square9Sab', 'square8Sab', 'square7Sab', 'square6Sab', 'square5Sab', 'square4Sab', 'square3Sab', 'square2Sab', 'square1Sab'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.frmCodigo1);
    obj.dataLink53:setFields({'Pata10F', 'Pata9F', 'Pata8F', 'Pata7F', 'Pata6F', 'Pata5F', 'Pata4F', 'Pata3F', 'Pata2F', 'Pata1F'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.frmCodigo1);
    obj.dataLink54:setFields({'square10F', 'square9F', 'square8F', 'square7F', 'square6F', 'square5F', 'square4F', 'square3F', 'square2F', 'square1F'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.frmCodigo1);
    obj.dataLink55:setFields({'Pata10Gno', 'Pata9Gno', 'Pata8Gno', 'Pata7Gno', 'Pata6Gno', 'Pata5Gno', 'Pata4Gno', 'Pata3Gno', 'Pata2Gno', 'Pata1Gno'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.frmCodigo1);
    obj.dataLink56:setFields({'square10Gno', 'square9Gno', 'square8Gno', 'square7Gno', 'square6Gno', 'square5Gno', 'square4Gno', 'square3Gno', 'square2Gno', 'square1Gno'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.frmCodigo1);
    obj.dataLink57:setFields({'Pata10FDV', 'Pata9FDV', 'Pata8FDV', 'Pata7FDV', 'Pata6FDV', 'Pata5FDV', 'Pata4FDV', 'Pata3FDV', 'Pata2FDV', 'Pata1FDV'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.frmCodigo1);
    obj.dataLink58:setFields({'square10FDV', 'square9FDV', 'square8FDV', 'square7FDV', 'square6FDV', 'square5FDV', 'square4FDV', 'square3FDV', 'square2FDV', 'square1FDV'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.frmCodigo1);
    obj.dataLink59:setFields({'Pata7Letal', 'Pata6Letal', 'Pata5Letal', 'Pata4Letal', 'Pata3Letal', 'Pata2Letal', 'Pata1Letal'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.frmCodigo1);
    obj.dataLink60:setFields({'Pata7Agravado', 'Pata6Agravado', 'Pata5Agravado', 'Pata4Agravado', 'Pata3Agravado', 'Pata2Agravado', 'Pata1Agravado'});
    obj.dataLink60:setName("dataLink60");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5forca == true then
            		sheet.Pata4forca = true;
            		sheet.Pata3forca = true;
            		sheet.Pata2forca = true;
            		sheet.Pata1forca = true;
            	elseif sheet.Pata4forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata3forca = true;
            		sheet.Pata2forca = true;
            		sheet.Pata1forca = true;
            	elseif sheet.Pata3forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata2forca = true;
            		sheet.Pata1forca = true;
            	elseif sheet.Pata2forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata3forca = false;
            		sheet.Pata1forca = true;	
            	elseif sheet.Pata1forca == true then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata3forca = false;
            		sheet.Pata2forca = false;
            	elseif sheet.Pata1forca == false then
            		sheet.Pata5forca = false;
            		sheet.Pata4forca = false;
            		sheet.Pata3forca = false;
            		sheet.Pata2forca = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5destreza == true then
            		sheet.Pata4destreza = true;
            		sheet.Pata3destreza = true;
            		sheet.Pata2destreza = true;
            		sheet.Pata1destreza = true;
            	elseif sheet.Pata4destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata3destreza = true;
            		sheet.Pata2destreza = true;
            		sheet.Pata1destreza = true;
            	elseif sheet.Pata3destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata2destreza = true;
            		sheet.Pata1destreza = true;
            	elseif sheet.Pata2destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata3destreza = false;
            		sheet.Pata1destreza = true;	
            	elseif sheet.Pata1destreza == true then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata3destreza = false;
            		sheet.Pata2destreza = false;
            	elseif sheet.Pata1destreza == false then
            		sheet.Pata5destreza = false;
            		sheet.Pata4destreza = false;
            		sheet.Pata3destreza = false;
            		sheet.Pata2destreza = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5vigor == true then
            		sheet.Pata4vigor = true;
            		sheet.Pata3vigor = true;
            		sheet.Pata2vigor = true;
            		sheet.Pata1vigor = true;
            	elseif sheet.Pata4vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata3vigor = true;
            		sheet.Pata2vigor = true;
            		sheet.Pata1vigor = true;
            	elseif sheet.Pata3vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata2vigor = true;
            		sheet.Pata1vigor = true;
            	elseif sheet.Pata2vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata3vigor = false;
            		sheet.Pata1vigor = true;	
            	elseif sheet.Pata1vigor == true then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata3vigor = false;
            		sheet.Pata2vigor = false;
            	elseif sheet.Pata1vigor == false then
            		sheet.Pata5vigor = false;
            		sheet.Pata4vigor = false;
            		sheet.Pata3vigor = false;
            		sheet.Pata2vigor = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5carisma == true then
            		sheet.Pata4carisma = true;
            		sheet.Pata3carisma = true;
            		sheet.Pata2carisma = true;
            		sheet.Pata1carisma = true;
            	elseif sheet.Pata4carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata3carisma = true;
            		sheet.Pata2carisma = true;
            		sheet.Pata1carisma = true;
            	elseif sheet.Pata3carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata2carisma = true;
            		sheet.Pata1carisma = true;
            	elseif sheet.Pata2carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata3carisma = false;
            		sheet.Pata1carisma = true;	
            	elseif sheet.Pata1carisma == true then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata3carisma = false;
            		sheet.Pata2carisma = false;
            	elseif sheet.Pata1carisma == false then
            		sheet.Pata5carisma = false;
            		sheet.Pata4carisma = false;
            		sheet.Pata3carisma = false;
            		sheet.Pata2carisma = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5manipu == true then
            		sheet.Pata4manipu = true;
            		sheet.Pata3manipu = true;
            		sheet.Pata2manipu = true;
            		sheet.Pata1manipu = true;
            	elseif sheet.Pata4manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata3manipu = true;
            		sheet.Pata2manipu = true;
            		sheet.Pata1manipu = true;
            	elseif sheet.Pata3manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata2manipu = true;
            		sheet.Pata1manipu = true;
            	elseif sheet.Pata2manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata3manipu = false;
            		sheet.Pata1manipu = true;	
            	elseif sheet.Pata1manipu == true then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata3manipu = false;
            		sheet.Pata2manipu = false;
            	elseif sheet.Pata1manipu == false then
            		sheet.Pata5manipu = false;
            		sheet.Pata4manipu = false;
            		sheet.Pata3manipu = false;
            		sheet.Pata2manipu = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5apare == true then
            		sheet.Pata4apare = true;
            		sheet.Pata3apare = true;
            		sheet.Pata2apare = true;
            		sheet.Pata1apare = true;
            	elseif sheet.Pata4apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata3apare = true;
            		sheet.Pata2apare = true;
            		sheet.Pata1apare = true;
            	elseif sheet.Pata3apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata2apare = true;
            		sheet.Pata1apare = true;
            	elseif sheet.Pata2apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata3apare = false;
            		sheet.Pata1apare = true;	
            	elseif sheet.Pata1apare == true then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata3apare = false;
            		sheet.Pata2apare = false;
            	elseif sheet.Pata1apare == false then
            		sheet.Pata5apare = false;
            		sheet.Pata4apare = false;
            		sheet.Pata3apare = false;
            		sheet.Pata2apare = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5percep == true then
            		sheet.Pata4percep = true;
            		sheet.Pata3percep = true;
            		sheet.Pata2percep = true;
            		sheet.Pata1percep = true;
            	elseif sheet.Pata4percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata3percep = true;
            		sheet.Pata2percep = true;
            		sheet.Pata1percep = true;
            	elseif sheet.Pata3percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata2percep = true;
            		sheet.Pata1percep = true;
            	elseif sheet.Pata2percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata3percep = false;
            		sheet.Pata1percep = true;	
            	elseif sheet.Pata1percep == true then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata3percep = false;
            		sheet.Pata2percep = false;
            	elseif sheet.Pata1percep == false then
            		sheet.Pata5percep = false;
            		sheet.Pata4percep = false;
            		sheet.Pata3percep = false;
            		sheet.Pata2percep = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5intel == true then
            		sheet.Pata4intel = true;
            		sheet.Pata3intel = true;
            		sheet.Pata2intel = true;
            		sheet.Pata1intel = true;
            	elseif sheet.Pata4intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata3intel = true;
            		sheet.Pata2intel = true;
            		sheet.Pata1intel = true;
            	elseif sheet.Pata3intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata2intel = true;
            		sheet.Pata1intel = true;
            	elseif sheet.Pata2intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata3intel = false;
            		sheet.Pata1intel = true;	
            	elseif sheet.Pata1intel == true then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata3intel = false;
            		sheet.Pata2intel = false;
            	elseif sheet.Pata1intel == false then
            		sheet.Pata5intel = false;
            		sheet.Pata4intel = false;
            		sheet.Pata3intel = false;
            		sheet.Pata2intel = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5racio == true then
            		sheet.Pata4racio = true;
            		sheet.Pata3racio = true;
            		sheet.Pata2racio = true;
            		sheet.Pata1racio = true;
            	elseif sheet.Pata4racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata3racio = true;
            		sheet.Pata2racio = true;
            		sheet.Pata1racio = true;
            	elseif sheet.Pata3racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata2racio = true;
            		sheet.Pata1racio = true;
            	elseif sheet.Pata2racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata3racio = false;
            		sheet.Pata1racio = true;	
            	elseif sheet.Pata1racio == true then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata3racio = false;
            		sheet.Pata2racio = false;
            	elseif sheet.Pata1racio == false then
            		sheet.Pata5racio = false;
            		sheet.Pata4racio = false;
            		sheet.Pata3racio = false;
            		sheet.Pata2racio = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5pront == true then
            		sheet.Pata4pront = true;
            		sheet.Pata3pront = true;
            		sheet.Pata2pront = true;
            		sheet.Pata1pront = true;
            	elseif sheet.Pata4pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata3pront = true;
            		sheet.Pata2pront = true;
            		sheet.Pata1pront = true;
            	elseif sheet.Pata3pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata2pront = true;
            		sheet.Pata1pront = true;
            	elseif sheet.Pata2pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata3pront = false;
            		sheet.Pata1pront = true;	
            	elseif sheet.Pata1pront == true then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata3pront = false;
            		sheet.Pata2pront = false;
            	elseif sheet.Pata1pront == false then
            		sheet.Pata5pront = false;
            		sheet.Pata4pront = false;
            		sheet.Pata3pront = false;
            		sheet.Pata2pront = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5espor == true then
            		sheet.Pata4espor = true;
            		sheet.Pata3espor = true;
            		sheet.Pata2espor = true;
            		sheet.Pata1espor = true;
            	elseif sheet.Pata4espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata3espor = true;
            		sheet.Pata2espor = true;
            		sheet.Pata1espor = true;
            	elseif sheet.Pata3espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata2espor = true;
            		sheet.Pata1espor = true;
            	elseif sheet.Pata2espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata3espor = false;
            		sheet.Pata1espor = true;	
            	elseif sheet.Pata1espor == true then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata3espor = false;
            		sheet.Pata2espor = false;
            	elseif sheet.Pata1espor == false then
            		sheet.Pata5espor = false;
            		sheet.Pata4espor = false;
            		sheet.Pata3espor = false;
            		sheet.Pata2espor = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5briga == true then
            		sheet.Pata4briga = true;
            		sheet.Pata3briga = true;
            		sheet.Pata2briga = true;
            		sheet.Pata1briga = true;
            	elseif sheet.Pata4briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata3briga = true;
            		sheet.Pata2briga = true;
            		sheet.Pata1briga = true;
            	elseif sheet.Pata3briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata2briga = true;
            		sheet.Pata1briga = true;
            	elseif sheet.Pata2briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata3briga = false;
            		sheet.Pata1briga = true;	
            	elseif sheet.Pata1briga == true then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata3briga = false;
            		sheet.Pata2briga = false;
            	elseif sheet.Pata1briga == false then
            		sheet.Pata5briga = false;
            		sheet.Pata4briga = false;
            		sheet.Pata3briga = false;
            		sheet.Pata2briga = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5esqui == true then
            		sheet.Pata4esqui = true;
            		sheet.Pata3esqui = true;
            		sheet.Pata2esqui = true;
            		sheet.Pata1esqui = true;
            	elseif sheet.Pata4esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata3esqui = true;
            		sheet.Pata2esqui = true;
            		sheet.Pata1esqui = true;
            	elseif sheet.Pata3esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata2esqui = true;
            		sheet.Pata1esqui = true;
            	elseif sheet.Pata2esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata3esqui = false;
            		sheet.Pata1esqui = true;	
            	elseif sheet.Pata1esqui == true then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata3esqui = false;
            		sheet.Pata2esqui = false;
            	elseif sheet.Pata1esqui == false then
            		sheet.Pata5esqui = false;
            		sheet.Pata4esqui = false;
            		sheet.Pata3esqui = false;
            		sheet.Pata2esqui = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5empat == true then
            		sheet.Pata4empat = true;
            		sheet.Pata3empat = true;
            		sheet.Pata2empat = true;
            		sheet.Pata1empat = true;
            	elseif sheet.Pata4empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata3empat = true;
            		sheet.Pata2empat = true;
            		sheet.Pata1empat = true;
            	elseif sheet.Pata3empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata2empat = true;
            		sheet.Pata1empat = true;
            	elseif sheet.Pata2empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata3empat = false;
            		sheet.Pata1empat = true;	
            	elseif sheet.Pata1empat == true then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata3empat = false;
            		sheet.Pata2empat = false;
            	elseif sheet.Pata1empat == false then
            		sheet.Pata5empat = false;
            		sheet.Pata4empat = false;
            		sheet.Pata3empat = false;
            		sheet.Pata2empat = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5expre == true then
            		sheet.Pata4expre = true;
            		sheet.Pata3expre = true;
            		sheet.Pata2expre = true;
            		sheet.Pata1expre = true;
            	elseif sheet.Pata4expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata3expre = true;
            		sheet.Pata2expre = true;
            		sheet.Pata1expre = true;
            	elseif sheet.Pata3expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata2expre = true;
            		sheet.Pata1expre = true;
            	elseif sheet.Pata2expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata3expre = false;
            		sheet.Pata1expre = true;	
            	elseif sheet.Pata1expre == true then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata3expre = false;
            		sheet.Pata2expre = false;
            	elseif sheet.Pata1expre == false then
            		sheet.Pata5expre = false;
            		sheet.Pata4expre = false;
            		sheet.Pata3expre = false;
            		sheet.Pata2expre = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5intim == true then
            		sheet.Pata4intim = true;
            		sheet.Pata3intim = true;
            		sheet.Pata2intim = true;
            		sheet.Pata1intim = true;
            	elseif sheet.Pata4intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata3intim = true;
            		sheet.Pata2intim = true;
            		sheet.Pata1intim = true;
            	elseif sheet.Pata3intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata2intim = true;
            		sheet.Pata1intim = true;
            	elseif sheet.Pata2intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata3intim = false;
            		sheet.Pata1intim = true;	
            	elseif sheet.Pata1intim == true then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata3intim = false;
            		sheet.Pata2intim = false;
            	elseif sheet.Pata1intim == false then
            		sheet.Pata5intim = false;
            		sheet.Pata4intim = false;
            		sheet.Pata3intim = false;
            		sheet.Pata2intim = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5insti == true then
            		sheet.Pata4insti = true;
            		sheet.Pata3insti = true;
            		sheet.Pata2insti = true;
            		sheet.Pata1insti = true;
            	elseif sheet.Pata4insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata3insti = true;
            		sheet.Pata2insti = true;
            		sheet.Pata1insti = true;
            	elseif sheet.Pata3insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata2insti = true;
            		sheet.Pata1insti = true;
            	elseif sheet.Pata2insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata3insti = false;
            		sheet.Pata1insti = true;	
            	elseif sheet.Pata1insti == true then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata3insti = false;
            		sheet.Pata2insti = false;
            	elseif sheet.Pata1insti == false then
            		sheet.Pata5insti = false;
            		sheet.Pata4insti = false;
            		sheet.Pata3insti = false;
            		sheet.Pata2insti = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5manha == true then
            		sheet.Pata4manha = true;
            		sheet.Pata3manha = true;
            		sheet.Pata2manha = true;
            		sheet.Pata1manha = true;
            	elseif sheet.Pata4manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata3manha = true;
            		sheet.Pata2manha = true;
            		sheet.Pata1manha = true;
            	elseif sheet.Pata3manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata2manha = true;
            		sheet.Pata1manha = true;
            	elseif sheet.Pata2manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata3manha = false;
            		sheet.Pata1manha = true;	
            	elseif sheet.Pata1manha == true then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata3manha = false;
            		sheet.Pata2manha = false;
            	elseif sheet.Pata1manha == false then
            		sheet.Pata5manha = false;
            		sheet.Pata4manha = false;
            		sheet.Pata3manha = false;
            		sheet.Pata2manha = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5labia == true then
            		sheet.Pata4labia = true;
            		sheet.Pata3labia = true;
            		sheet.Pata2labia = true;
            		sheet.Pata1labia = true;
            	elseif sheet.Pata4labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata3labia = true;
            		sheet.Pata2labia = true;
            		sheet.Pata1labia = true;
            	elseif sheet.Pata3labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata2labia = true;
            		sheet.Pata1labia = true;
            	elseif sheet.Pata2labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata3labia = false;
            		sheet.Pata1labia = true;	
            	elseif sheet.Pata1labia == true then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata3labia = false;
            		sheet.Pata2labia = false;
            	elseif sheet.Pata1labia == false then
            		sheet.Pata5labia = false;
            		sheet.Pata4labia = false;
            		sheet.Pata3labia = false;
            		sheet.Pata2labia = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5empca == true then
            		sheet.Pata4empca = true;
            		sheet.Pata3empca = true;
            		sheet.Pata2empca = true;
            		sheet.Pata1empca = true;
            	elseif sheet.Pata4empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata3empca = true;
            		sheet.Pata2empca = true;
            		sheet.Pata1empca = true;
            	elseif sheet.Pata3empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata2empca = true;
            		sheet.Pata1empca = true;
            	elseif sheet.Pata2empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata3empca = false;
            		sheet.Pata1empca = true;	
            	elseif sheet.Pata1empca == true then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata3empca = false;
            		sheet.Pata2empca = false;
            	elseif sheet.Pata1empca == false then
            		sheet.Pata5empca = false;
            		sheet.Pata4empca = false;
            		sheet.Pata3empca = false;
            		sheet.Pata2empca = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ofi == true then
            		sheet.Pata4ofi = true;
            		sheet.Pata3ofi = true;
            		sheet.Pata2ofi = true;
            		sheet.Pata1ofi = true;
            	elseif sheet.Pata4ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata3ofi = true;
            		sheet.Pata2ofi = true;
            		sheet.Pata1ofi = true;
            	elseif sheet.Pata3ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata2ofi = true;
            		sheet.Pata1ofi = true;
            	elseif sheet.Pata2ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata3ofi = false;
            		sheet.Pata1ofi = true;	
            	elseif sheet.Pata1ofi == true then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata3ofi = false;
            		sheet.Pata2ofi = false;
            	elseif sheet.Pata1ofi == false then
            		sheet.Pata5ofi = false;
            		sheet.Pata4ofi = false;
            		sheet.Pata3ofi = false;
            		sheet.Pata2ofi = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5condu == true then
            		sheet.Pata4condu = true;
            		sheet.Pata3condu = true;
            		sheet.Pata2condu = true;
            		sheet.Pata1condu = true;
            	elseif sheet.Pata4condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata3condu = true;
            		sheet.Pata2condu = true;
            		sheet.Pata1condu = true;
            	elseif sheet.Pata3condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata2condu = true;
            		sheet.Pata1condu = true;
            	elseif sheet.Pata2condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata3condu = false;
            		sheet.Pata1condu = true;	
            	elseif sheet.Pata1condu == true then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata3condu = false;
            		sheet.Pata2condu = false;
            	elseif sheet.Pata1condu == false then
            		sheet.Pata5condu = false;
            		sheet.Pata4condu = false;
            		sheet.Pata3condu = false;
            		sheet.Pata2condu = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5etique == true then
            		sheet.Pata4etique = true;
            		sheet.Pata3etique = true;
            		sheet.Pata2etique = true;
            		sheet.Pata1etique = true;
            	elseif sheet.Pata4etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata3etique = true;
            		sheet.Pata2etique = true;
            		sheet.Pata1etique = true;
            	elseif sheet.Pata3etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata2etique = true;
            		sheet.Pata1etique = true;
            	elseif sheet.Pata2etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata3etique = false;
            		sheet.Pata1etique = true;	
            	elseif sheet.Pata1etique == true then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata3etique = false;
            		sheet.Pata2etique = false;
            	elseif sheet.Pata1etique == false then
            		sheet.Pata5etique = false;
            		sheet.Pata4etique = false;
            		sheet.Pata3etique = false;
            		sheet.Pata2etique = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5armfg == true then
            		sheet.Pata4armfg = true;
            		sheet.Pata3armfg = true;
            		sheet.Pata2armfg = true;
            		sheet.Pata1armfg = true;
            	elseif sheet.Pata4armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata3armfg = true;
            		sheet.Pata2armfg = true;
            		sheet.Pata1armfg = true;
            	elseif sheet.Pata3armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata2armfg = true;
            		sheet.Pata1armfg = true;
            	elseif sheet.Pata2armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata3armfg = false;
            		sheet.Pata1armfg = true;	
            	elseif sheet.Pata1armfg == true then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata3armfg = false;
            		sheet.Pata2armfg = false;
            	elseif sheet.Pata1armfg == false then
            		sheet.Pata5armfg = false;
            		sheet.Pata4armfg = false;
            		sheet.Pata3armfg = false;
            		sheet.Pata2armfg = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5armbr == true then
            		sheet.Pata4armbr = true;
            		sheet.Pata3armbr = true;
            		sheet.Pata2armbr = true;
            		sheet.Pata1armbr = true;
            	elseif sheet.Pata4armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata3armbr = true;
            		sheet.Pata2armbr = true;
            		sheet.Pata1armbr = true;
            	elseif sheet.Pata3armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata2armbr = true;
            		sheet.Pata1armbr = true;
            	elseif sheet.Pata2armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata3armbr = false;
            		sheet.Pata1armbr = true;	
            	elseif sheet.Pata1armbr == true then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata3armbr = false;
            		sheet.Pata2armbr = false;
            	elseif sheet.Pata1armbr == false then
            		sheet.Pata5armbr = false;
            		sheet.Pata4armbr = false;
            		sheet.Pata3armbr = false;
            		sheet.Pata2armbr = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5lider == true then
            		sheet.Pata4lider = true;
            		sheet.Pata3lider = true;
            		sheet.Pata2lider = true;
            		sheet.Pata1lider = true;
            	elseif sheet.Pata4lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata3lider = true;
            		sheet.Pata2lider = true;
            		sheet.Pata1lider = true;
            	elseif sheet.Pata3lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata2lider = true;
            		sheet.Pata1lider = true;
            	elseif sheet.Pata2lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata3lider = false;
            		sheet.Pata1lider = true;	
            	elseif sheet.Pata1lider == true then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata3lider = false;
            		sheet.Pata2lider = false;
            	elseif sheet.Pata1lider == false then
            		sheet.Pata5lider = false;
            		sheet.Pata4lider = false;
            		sheet.Pata3lider = false;
            		sheet.Pata2lider = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5perfo == true then
            		sheet.Pata4perfo = true;
            		sheet.Pata3perfo = true;
            		sheet.Pata2perfo = true;
            		sheet.Pata1perfo = true;
            	elseif sheet.Pata4perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata3perfo = true;
            		sheet.Pata2perfo = true;
            		sheet.Pata1perfo = true;
            	elseif sheet.Pata3perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata2perfo = true;
            		sheet.Pata1perfo = true;
            	elseif sheet.Pata2perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata3perfo = false;
            		sheet.Pata1perfo = true;	
            	elseif sheet.Pata1perfo == true then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata3perfo = false;
            		sheet.Pata2perfo = false;
            	elseif sheet.Pata1perfo == false then
            		sheet.Pata5perfo = false;
            		sheet.Pata4perfo = false;
            		sheet.Pata3perfo = false;
            		sheet.Pata2perfo = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5furti == true then
            		sheet.Pata4furti = true;
            		sheet.Pata3furti = true;
            		sheet.Pata2furti = true;
            		sheet.Pata1furti = true;
            	elseif sheet.Pata4furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata3furti = true;
            		sheet.Pata2furti = true;
            		sheet.Pata1furti = true;
            	elseif sheet.Pata3furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata2furti = true;
            		sheet.Pata1furti = true;
            	elseif sheet.Pata2furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata3furti = false;
            		sheet.Pata1furti = true;	
            	elseif sheet.Pata1furti == true then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata3furti = false;
            		sheet.Pata2furti = false;
            	elseif sheet.Pata1furti == false then
            		sheet.Pata5furti = false;
            		sheet.Pata4furti = false;
            		sheet.Pata3furti = false;
            		sheet.Pata2furti = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5sobre == true then
            		sheet.Pata4sobre = true;
            		sheet.Pata3sobre = true;
            		sheet.Pata2sobre = true;
            		sheet.Pata1sobre = true;
            	elseif sheet.Pata4sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata3sobre = true;
            		sheet.Pata2sobre = true;
            		sheet.Pata1sobre = true;
            	elseif sheet.Pata3sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata2sobre = true;
            		sheet.Pata1sobre = true;
            	elseif sheet.Pata2sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata3sobre = false;
            		sheet.Pata1sobre = true;	
            	elseif sheet.Pata1sobre == true then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata3sobre = false;
            		sheet.Pata2sobre = false;
            	elseif sheet.Pata1sobre == false then
            		sheet.Pata5sobre = false;
            		sheet.Pata4sobre = false;
            		sheet.Pata3sobre = false;
            		sheet.Pata2sobre = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5compu == true then
            		sheet.Pata4compu = true;
            		sheet.Pata3compu = true;
            		sheet.Pata2compu = true;
            		sheet.Pata1compu = true;
            	elseif sheet.Pata4compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata3compu = true;
            		sheet.Pata2compu = true;
            		sheet.Pata1compu = true;
            	elseif sheet.Pata3compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata2compu = true;
            		sheet.Pata1compu = true;
            	elseif sheet.Pata2compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata3compu = false;
            		sheet.Pata1compu = true;	
            	elseif sheet.Pata1compu == true then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata3compu = false;
            		sheet.Pata2compu = false;
            	elseif sheet.Pata1compu == false then
            		sheet.Pata5compu = false;
            		sheet.Pata4compu = false;
            		sheet.Pata3compu = false;
            		sheet.Pata2compu = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5enig == true then
            		sheet.Pata4enig = true;
            		sheet.Pata3enig = true;
            		sheet.Pata2enig = true;
            		sheet.Pata1enig = true;
            	elseif sheet.Pata4enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata3enig = true;
            		sheet.Pata2enig = true;
            		sheet.Pata1enig = true;
            	elseif sheet.Pata3enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata2enig = true;
            		sheet.Pata1enig = true;
            	elseif sheet.Pata2enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata3enig = false;
            		sheet.Pata1enig = true;	
            	elseif sheet.Pata1enig == true then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata3enig = false;
            		sheet.Pata2enig = false;
            	elseif sheet.Pata1enig == false then
            		sheet.Pata5enig = false;
            		sheet.Pata4enig = false;
            		sheet.Pata3enig = false;
            		sheet.Pata2enig = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5inves == true then
            		sheet.Pata4inves = true;
            		sheet.Pata3inves = true;
            		sheet.Pata2inves = true;
            		sheet.Pata1inves = true;
            	elseif sheet.Pata4inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata3inves = true;
            		sheet.Pata2inves = true;
            		sheet.Pata1inves = true;
            	elseif sheet.Pata3inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata2inves = true;
            		sheet.Pata1inves = true;
            	elseif sheet.Pata2inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata3inves = false;
            		sheet.Pata1inves = true;	
            	elseif sheet.Pata1inves == true then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata3inves = false;
            		sheet.Pata2inves = false;
            	elseif sheet.Pata1inves == false then
            		sheet.Pata5inves = false;
            		sheet.Pata4inves = false;
            		sheet.Pata3inves = false;
            		sheet.Pata2inves = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5direi == true then
            		sheet.Pata4direi = true;
            		sheet.Pata3direi = true;
            		sheet.Pata2direi = true;
            		sheet.Pata1direi = true;
            	elseif sheet.Pata4direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata3direi = true;
            		sheet.Pata2direi = true;
            		sheet.Pata1direi = true;
            	elseif sheet.Pata3direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata2direi = true;
            		sheet.Pata1direi = true;
            	elseif sheet.Pata2direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata3direi = false;
            		sheet.Pata1direi = true;	
            	elseif sheet.Pata1direi == true then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata3direi = false;
            		sheet.Pata2direi = false;
            	elseif sheet.Pata1direi == false then
            		sheet.Pata5direi = false;
            		sheet.Pata4direi = false;
            		sheet.Pata3direi = false;
            		sheet.Pata2direi = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5lingu == true then
            		sheet.Pata4lingu = true;
            		sheet.Pata3lingu = true;
            		sheet.Pata2lingu = true;
            		sheet.Pata1lingu = true;
            	elseif sheet.Pata4lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata3lingu = true;
            		sheet.Pata2lingu = true;
            		sheet.Pata1lingu = true;
            	elseif sheet.Pata3lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata2lingu = true;
            		sheet.Pata1lingu = true;
            	elseif sheet.Pata2lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata3lingu = false;
            		sheet.Pata1lingu = true;	
            	elseif sheet.Pata1lingu == true then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata3lingu = false;
            		sheet.Pata2lingu = false;
            	elseif sheet.Pata1lingu == false then
            		sheet.Pata5lingu = false;
            		sheet.Pata4lingu = false;
            		sheet.Pata3lingu = false;
            		sheet.Pata2lingu = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5medic == true then
            		sheet.Pata4medic = true;
            		sheet.Pata3medic = true;
            		sheet.Pata2medic = true;
            		sheet.Pata1medic = true;
            	elseif sheet.Pata4medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata3medic = true;
            		sheet.Pata2medic = true;
            		sheet.Pata1medic = true;
            	elseif sheet.Pata3medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata2medic = true;
            		sheet.Pata1medic = true;
            	elseif sheet.Pata2medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata3medic = false;
            		sheet.Pata1medic = true;	
            	elseif sheet.Pata1medic == true then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata3medic = false;
            		sheet.Pata2medic = false;
            	elseif sheet.Pata1medic == false then
            		sheet.Pata5medic = false;
            		sheet.Pata4medic = false;
            		sheet.Pata3medic = false;
            		sheet.Pata2medic = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ocult == true then
            		sheet.Pata4ocult = true;
            		sheet.Pata3ocult = true;
            		sheet.Pata2ocult = true;
            		sheet.Pata1ocult = true;
            	elseif sheet.Pata4ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata3ocult = true;
            		sheet.Pata2ocult = true;
            		sheet.Pata1ocult = true;
            	elseif sheet.Pata3ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata2ocult = true;
            		sheet.Pata1ocult = true;
            	elseif sheet.Pata2ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata3ocult = false;
            		sheet.Pata1ocult = true;	
            	elseif sheet.Pata1ocult == true then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata3ocult = false;
            		sheet.Pata2ocult = false;
            	elseif sheet.Pata1ocult == false then
            		sheet.Pata5ocult = false;
            		sheet.Pata4ocult = false;
            		sheet.Pata3ocult = false;
            		sheet.Pata2ocult = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5polit == true then
            		sheet.Pata4polit = true;
            		sheet.Pata3polit = true;
            		sheet.Pata2polit = true;
            		sheet.Pata1polit = true;
            	elseif sheet.Pata4polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata3polit = true;
            		sheet.Pata2polit = true;
            		sheet.Pata1polit = true;
            	elseif sheet.Pata3polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata2polit = true;
            		sheet.Pata1polit = true;
            	elseif sheet.Pata2polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata3polit = false;
            		sheet.Pata1polit = true;	
            	elseif sheet.Pata1polit == true then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata3polit = false;
            		sheet.Pata2polit = false;
            	elseif sheet.Pata1polit == false then
            		sheet.Pata5polit = false;
            		sheet.Pata4polit = false;
            		sheet.Pata3polit = false;
            		sheet.Pata2polit = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ritua == true then
            		sheet.Pata4ritua = true;
            		sheet.Pata3ritua = true;
            		sheet.Pata2ritua = true;
            		sheet.Pata1ritua = true;
            	elseif sheet.Pata4ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata3ritua = true;
            		sheet.Pata2ritua = true;
            		sheet.Pata1ritua = true;
            	elseif sheet.Pata3ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata2ritua = true;
            		sheet.Pata1ritua = true;
            	elseif sheet.Pata2ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata3ritua = false;
            		sheet.Pata1ritua = true;	
            	elseif sheet.Pata1ritua == true then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata3ritua = false;
            		sheet.Pata2ritua = false;
            	elseif sheet.Pata1ritua == false then
            		sheet.Pata5ritua = false;
            		sheet.Pata4ritua = false;
            		sheet.Pata3ritua = false;
            		sheet.Pata2ritua = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5ciencia == true then
            		sheet.Pata4ciencia = true;
            		sheet.Pata3ciencia = true;
            		sheet.Pata2ciencia = true;
            		sheet.Pata1ciencia = true;
            	elseif sheet.Pata4ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata3ciencia = true;
            		sheet.Pata2ciencia = true;
            		sheet.Pata1ciencia = true;
            	elseif sheet.Pata3ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata2ciencia = true;
            		sheet.Pata1ciencia = true;
            	elseif sheet.Pata2ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata3ciencia = false;
            		sheet.Pata1ciencia = true;	
            	elseif sheet.Pata1ciencia == true then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata3ciencia = false;
            		sheet.Pata2ciencia = false;
            	elseif sheet.Pata1ciencia == false then
            		sheet.Pata5ciencia = false;
            		sheet.Pata4ciencia = false;
            		sheet.Pata3ciencia = false;
            		sheet.Pata2ciencia = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant1 == true then
            		sheet.Pata4Ant1 = true;
            		sheet.Pata3Ant1 = true;
            		sheet.Pata2Ant1 = true;
            		sheet.Pata1Ant1 = true;
            	elseif sheet.Pata4Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata3Ant1 = true;
            		sheet.Pata2Ant1 = true;
            		sheet.Pata1Ant1 = true;
            	elseif sheet.Pata3Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata2Ant1 = true;
            		sheet.Pata1Ant1 = true;
            	elseif sheet.Pata2Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata3Ant1 = false;
            		sheet.Pata1Ant1 = true;	
            	elseif sheet.Pata1Ant1 == true then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata3Ant1 = false;
            		sheet.Pata2Ant1 = false;
            	elseif sheet.Pata1Ant1 == false then
            		sheet.Pata5Ant1 = false;
            		sheet.Pata4Ant1 = false;
            		sheet.Pata3Ant1 = false;
            		sheet.Pata2Ant1 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant2 == true then
            		sheet.Pata4Ant2 = true;
            		sheet.Pata3Ant2 = true;
            		sheet.Pata2Ant2 = true;
            		sheet.Pata1Ant2 = true;
            	elseif sheet.Pata4Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata3Ant2 = true;
            		sheet.Pata2Ant2 = true;
            		sheet.Pata1Ant2 = true;
            	elseif sheet.Pata3Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata2Ant2 = true;
            		sheet.Pata1Ant2 = true;
            	elseif sheet.Pata2Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata3Ant2 = false;
            		sheet.Pata1Ant2 = true;	
            	elseif sheet.Pata1Ant2 == true then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata3Ant2 = false;
            		sheet.Pata2Ant2 = false;
            	elseif sheet.Pata1Ant2 == false then
            		sheet.Pata5Ant2 = false;
            		sheet.Pata4Ant2 = false;
            		sheet.Pata3Ant2 = false;
            		sheet.Pata2Ant2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant3 == true then
            		sheet.Pata4Ant3 = true;
            		sheet.Pata3Ant3 = true;
            		sheet.Pata2Ant3 = true;
            		sheet.Pata1Ant3 = true;
            	elseif sheet.Pata4Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata3Ant3 = true;
            		sheet.Pata2Ant3 = true;
            		sheet.Pata1Ant3 = true;
            	elseif sheet.Pata3Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata2Ant3 = true;
            		sheet.Pata1Ant3 = true;
            	elseif sheet.Pata2Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata3Ant3 = false;
            		sheet.Pata1Ant3 = true;	
            	elseif sheet.Pata1Ant3 == true then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata3Ant3 = false;
            		sheet.Pata2Ant3 = false;
            	elseif sheet.Pata1Ant3 == false then
            		sheet.Pata5Ant3 = false;
            		sheet.Pata4Ant3 = false;
            		sheet.Pata3Ant3 = false;
            		sheet.Pata2Ant3 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant4 == true then
            		sheet.Pata4Ant4 = true;
            		sheet.Pata3Ant4 = true;
            		sheet.Pata2Ant4 = true;
            		sheet.Pata1Ant4 = true;
            	elseif sheet.Pata4Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata3Ant4 = true;
            		sheet.Pata2Ant4 = true;
            		sheet.Pata1Ant4 = true;
            	elseif sheet.Pata3Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata2Ant4 = true;
            		sheet.Pata1Ant4 = true;
            	elseif sheet.Pata2Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata3Ant4 = false;
            		sheet.Pata1Ant4 = true;	
            	elseif sheet.Pata1Ant4 == true then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata3Ant4 = false;
            		sheet.Pata2Ant4 = false;
            	elseif sheet.Pata1Ant4 == false then
            		sheet.Pata5Ant4 = false;
            		sheet.Pata4Ant4 = false;
            		sheet.Pata3Ant4 = false;
            		sheet.Pata2Ant4 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant5 == true then
            		sheet.Pata4Ant5 = true;
            		sheet.Pata3Ant5 = true;
            		sheet.Pata2Ant5 = true;
            		sheet.Pata1Ant5 = true;
            	elseif sheet.Pata4Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata3Ant5 = true;
            		sheet.Pata2Ant5 = true;
            		sheet.Pata1Ant5 = true;
            	elseif sheet.Pata3Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata2Ant5 = true;
            		sheet.Pata1Ant5 = true;
            	elseif sheet.Pata2Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata3Ant5 = false;
            		sheet.Pata1Ant5 = true;	
            	elseif sheet.Pata1Ant5 == true then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata3Ant5 = false;
            		sheet.Pata2Ant5 = false;
            	elseif sheet.Pata1Ant5 == false then
            		sheet.Pata5Ant5 = false;
            		sheet.Pata4Ant5 = false;
            		sheet.Pata3Ant5 = false;
            		sheet.Pata2Ant5 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5Ant6 == true then
            		sheet.Pata4Ant6 = true;
            		sheet.Pata3Ant6 = true;
            		sheet.Pata2Ant6 = true;
            		sheet.Pata1Ant6 = true;
            	elseif sheet.Pata4Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata3Ant6 = true;
            		sheet.Pata2Ant6 = true;
            		sheet.Pata1Ant6 = true;
            	elseif sheet.Pata3Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata2Ant6 = true;
            		sheet.Pata1Ant6 = true;
            	elseif sheet.Pata2Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata3Ant6 = false;
            		sheet.Pata1Ant6 = true;	
            	elseif sheet.Pata1Ant6 == true then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata3Ant6 = false;
            		sheet.Pata2Ant6 = false;
            	elseif sheet.Pata1Ant6 == false then
            		sheet.Pata5Ant6 = false;
            		sheet.Pata4Ant6 = false;
            		sheet.Pata3Ant6 = false;
            		sheet.Pata2Ant6 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Gl == true then
            		sheet.Pata9Gl = true;
            		sheet.Pata8Gl = true;
            		sheet.Pata7Gl = true;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata9Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata8Gl = true;
            		sheet.Pata7Gl = true;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata8Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata7Gl = true;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata7Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata6Gl = true;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata6Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata5Gl = true;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata5Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata4Gl = true;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata4Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata3Gl = true;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata3Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata2Gl = true;
            		sheet.Pata1Gl = true;
            	elseif sheet.Pata2Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata3Gl = false;
            		sheet.Pata1Gl = true;	
            	elseif sheet.Pata1Gl == true then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata3Gl = false;
            		sheet.Pata2Gl = false;
            	elseif sheet.Pata1Gl == false then
            		sheet.Pata10Gl = false;
            		sheet.Pata9Gl = false;
            		sheet.Pata8Gl = false;
            		sheet.Pata7Gl = false;
            		sheet.Pata6Gl = false;
            		sheet.Pata5Gl = false;
            		sheet.Pata4Gl = false;
            		sheet.Pata3Gl = false;
            		sheet.Pata2Gl = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Gl == true then
            		sheet.square9Gl = true;
            		sheet.square8Gl = true;
            		sheet.square7Gl = true;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square9Gl == true then
            		sheet.square10Gl = false;
            		sheet.square8Gl = true;
            		sheet.square7Gl = true;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square8Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square7Gl = true;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square7Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square6Gl = true;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square6Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square5Gl = true;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square5Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square4Gl = true;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square4Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square3Gl = true;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square3Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square2Gl = true;
            		sheet.square1Gl = true;
            	elseif sheet.square2Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square3Gl = false;
            		sheet.square1Gl = true;	
            	elseif sheet.square1Gl == true then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square3Gl = false;
            		sheet.square2Gl = false;
            	elseif sheet.square1Gl == false then
            		sheet.square10Gl = false;
            		sheet.square9Gl = false;
            		sheet.square8Gl = false;
            		sheet.square7Gl = false;
            		sheet.square6Gl = false;
            		sheet.square5Gl = false;
            		sheet.square4Gl = false;
            		sheet.square3Gl = false;
            		sheet.square2Gl = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Hon == true then
            		sheet.Pata9Hon = true;
            		sheet.Pata8Hon = true;
            		sheet.Pata7Hon = true;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata9Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata8Hon = true;
            		sheet.Pata7Hon = true;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata8Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata7Hon = true;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata7Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata6Hon = true;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata6Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata5Hon = true;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata5Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata4Hon = true;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata4Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata3Hon = true;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata3Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata2Hon = true;
            		sheet.Pata1Hon = true;
            	elseif sheet.Pata2Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata3Hon = false;
            		sheet.Pata1Hon = true;	
            	elseif sheet.Pata1Hon == true then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata3Hon = false;
            		sheet.Pata2Hon = false;
            	elseif sheet.Pata1Hon == false then
            		sheet.Pata10Hon = false;
            		sheet.Pata9Hon = false;
            		sheet.Pata8Hon = false;
            		sheet.Pata7Hon = false;
            		sheet.Pata6Hon = false;
            		sheet.Pata5Hon = false;
            		sheet.Pata4Hon = false;
            		sheet.Pata3Hon = false;
            		sheet.Pata2Hon = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Hon == true then
            		sheet.square9Hon = true;
            		sheet.square8Hon = true;
            		sheet.square7Hon = true;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square9Hon == true then
            		sheet.square10Hon = false;
            		sheet.square8Hon = true;
            		sheet.square7Hon = true;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square8Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square7Hon = true;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square7Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square6Hon = true;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square6Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square5Hon = true;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square5Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square4Hon = true;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square4Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square3Hon = true;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square3Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square2Hon = true;
            		sheet.square1Hon = true;
            	elseif sheet.square2Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square3Hon = false;
            		sheet.square1Hon = true;	
            	elseif sheet.square1Hon == true then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square3Hon = false;
            		sheet.square2Hon = false;
            	elseif sheet.square1Hon == false then
            		sheet.square10Hon = false;
            		sheet.square9Hon = false;
            		sheet.square8Hon = false;
            		sheet.square7Hon = false;
            		sheet.square6Hon = false;
            		sheet.square5Hon = false;
            		sheet.square4Hon = false;
            		sheet.square3Hon = false;
            		sheet.square2Hon = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Sab == true then
            		sheet.Pata9Sab = true;
            		sheet.Pata8Sab = true;
            		sheet.Pata7Sab = true;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata9Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata8Sab = true;
            		sheet.Pata7Sab = true;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata8Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata7Sab = true;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata7Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata6Sab = true;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata6Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata5Sab = true;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata5Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata4Sab = true;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata4Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata3Sab = true;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata3Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata2Sab = true;
            		sheet.Pata1Sab = true;
            	elseif sheet.Pata2Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata3Sab = false;
            		sheet.Pata1Sab = true;	
            	elseif sheet.Pata1Sab == true then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata3Sab = false;
            		sheet.Pata2Sab = false;
            	elseif sheet.Pata1Sab == false then
            		sheet.Pata10Sab = false;
            		sheet.Pata9Sab = false;
            		sheet.Pata8Sab = false;
            		sheet.Pata7Sab = false;
            		sheet.Pata6Sab = false;
            		sheet.Pata5Sab = false;
            		sheet.Pata4Sab = false;
            		sheet.Pata3Sab = false;
            		sheet.Pata2Sab = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Sab == true then
            		sheet.square9Sab = true;
            		sheet.square8Sab = true;
            		sheet.square7Sab = true;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square9Sab == true then
            		sheet.square10Sab = false;
            		sheet.square8Sab = true;
            		sheet.square7Sab = true;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square8Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square7Sab = true;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square7Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square6Sab = true;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square6Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square5Sab = true;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square5Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square4Sab = true;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square4Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square3Sab = true;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square3Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square2Sab = true;
            		sheet.square1Sab = true;
            	elseif sheet.square2Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square3Sab = false;
            		sheet.square1Sab = true;	
            	elseif sheet.square1Sab == true then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square3Sab = false;
            		sheet.square2Sab = false;
            	elseif sheet.square1Sab == false then
            		sheet.square10Sab = false;
            		sheet.square9Sab = false;
            		sheet.square8Sab = false;
            		sheet.square7Sab = false;
            		sheet.square6Sab = false;
            		sheet.square5Sab = false;
            		sheet.square4Sab = false;
            		sheet.square3Sab = false;
            		sheet.square2Sab = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10F == true then
            		sheet.Pata9F = true;
            		sheet.Pata8F = true;
            		sheet.Pata7F = true;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata9F == true then
            		sheet.Pata10F = false;
            		sheet.Pata8F = true;
            		sheet.Pata7F = true;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata8F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata7F = true;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata7F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata6F = true;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata6F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata5F = true;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata5F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata4F = true;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata4F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata3F = true;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata3F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata2F = true;
            		sheet.Pata1F = true;
            	elseif sheet.Pata2F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata3F = false;
            		sheet.Pata1F = true;	
            	elseif sheet.Pata1F == true then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata3F = false;
            		sheet.Pata2F = false;
            	elseif sheet.Pata1F == false then
            		sheet.Pata10F = false;
            		sheet.Pata9F = false;
            		sheet.Pata8F = false;
            		sheet.Pata7F = false;
            		sheet.Pata6F = false;
            		sheet.Pata5F = false;
            		sheet.Pata4F = false;
            		sheet.Pata3F = false;
            		sheet.Pata2F = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10F == true then
            		sheet.square9F = true;
            		sheet.square8F = true;
            		sheet.square7F = true;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square9F == true then
            		sheet.square10F = false;
            		sheet.square8F = true;
            		sheet.square7F = true;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square8F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square7F = true;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square7F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square6F = true;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square6F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square5F = true;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square5F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square4F = true;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square4F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square3F = true;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square3F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square2F = true;
            		sheet.square1F = true;
            	elseif sheet.square2F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square3F = false;
            		sheet.square1F = true;	
            	elseif sheet.square1F == true then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square3F = false;
            		sheet.square2F = false;
            	elseif sheet.square1F == false then
            		sheet.square10F = false;
            		sheet.square9F = false;
            		sheet.square8F = false;
            		sheet.square7F = false;
            		sheet.square6F = false;
            		sheet.square5F = false;
            		sheet.square4F = false;
            		sheet.square3F = false;
            		sheet.square2F = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10Gno == true then
            		sheet.Pata9Gno = true;
            		sheet.Pata8Gno = true;
            		sheet.Pata7Gno = true;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata9Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata8Gno = true;
            		sheet.Pata7Gno = true;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata8Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata7Gno = true;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata7Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata6Gno = true;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata6Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata5Gno = true;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata5Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata4Gno = true;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata4Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata3Gno = true;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata3Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata2Gno = true;
            		sheet.Pata1Gno = true;
            	elseif sheet.Pata2Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata3Gno = false;
            		sheet.Pata1Gno = true;	
            	elseif sheet.Pata1Gno == true then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata3Gno = false;
            		sheet.Pata2Gno = false;
            	elseif sheet.Pata1Gno == false then
            		sheet.Pata10Gno = false;
            		sheet.Pata9Gno = false;
            		sheet.Pata8Gno = false;
            		sheet.Pata7Gno = false;
            		sheet.Pata6Gno = false;
            		sheet.Pata5Gno = false;
            		sheet.Pata4Gno = false;
            		sheet.Pata3Gno = false;
            		sheet.Pata2Gno = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10Gno == true then
            		sheet.square9Gno = true;
            		sheet.square8Gno = true;
            		sheet.square7Gno = true;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square9Gno == true then
            		sheet.square10Gno = false;
            		sheet.square8Gno = true;
            		sheet.square7Gno = true;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square8Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square7Gno = true;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square7Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square6Gno = true;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square6Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square5Gno = true;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square5Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square4Gno = true;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square4Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square3Gno = true;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square3Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square2Gno = true;
            		sheet.square1Gno = true;
            	elseif sheet.square2Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square3Gno = false;
            		sheet.square1Gno = true;	
            	elseif sheet.square1Gno == true then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square3Gno = false;
            		sheet.square2Gno = false;
            	elseif sheet.square1Gno == false then
            		sheet.square10Gno = false;
            		sheet.square9Gno = false;
            		sheet.square8Gno = false;
            		sheet.square7Gno = false;
            		sheet.square6Gno = false;
            		sheet.square5Gno = false;
            		sheet.square4Gno = false;
            		sheet.square3Gno = false;
            		sheet.square2Gno = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata10FDV == true then
            		sheet.Pata9FDV = true;
            		sheet.Pata8FDV = true;
            		sheet.Pata7FDV = true;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata9FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata8FDV = true;
            		sheet.Pata7FDV = true;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata8FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata7FDV = true;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata7FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata6FDV = true;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata6FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata5FDV = true;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata5FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata4FDV = true;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata4FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata3FDV = true;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata3FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata2FDV = true;
            		sheet.Pata1FDV = true;
            	elseif sheet.Pata2FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata3FDV = false;
            		sheet.Pata1FDV = true;	
            	elseif sheet.Pata1FDV == true then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata3FDV = false;
            		sheet.Pata2FDV = false;
            	elseif sheet.Pata1FDV == false then
            		sheet.Pata10FDV = false;
            		sheet.Pata9FDV = false;
            		sheet.Pata8FDV = false;
            		sheet.Pata7FDV = false;
            		sheet.Pata6FDV = false;
            		sheet.Pata5FDV = false;
            		sheet.Pata4FDV = false;
            		sheet.Pata3FDV = false;
            		sheet.Pata2FDV = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10FDV == true then
            		sheet.square9FDV = true;
            		sheet.square8FDV = true;
            		sheet.square7FDV = true;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square9FDV == true then
            		sheet.square10FDV = false;
            		sheet.square8FDV = true;
            		sheet.square7FDV = true;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square8FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square7FDV = true;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square7FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square6FDV = true;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square6FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square5FDV = true;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square5FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square4FDV = true;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square4FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square3FDV = true;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square3FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square2FDV = true;
            		sheet.square1FDV = true;
            	elseif sheet.square2FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square3FDV = false;
            		sheet.square1FDV = true;	
            	elseif sheet.square1FDV == true then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square3FDV = false;
            		sheet.square2FDV = false;
            	elseif sheet.square1FDV == false then
            		sheet.square10FDV = false;
            		sheet.square9FDV = false;
            		sheet.square8FDV = false;
            		sheet.square7FDV = false;
            		sheet.square6FDV = false;
            		sheet.square5FDV = false;
            		sheet.square4FDV = false;
            		sheet.square3FDV = false;
            		sheet.square2FDV = false;
            	end;
        end, obj);

    obj._e_event57 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata7Letal == true then
            		sheet.Pata6Letal = true;
            		sheet.Pata5Letal = true;
            		sheet.Pata4Letal = true;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata6Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata5Letal = true;
            		sheet.Pata4Letal = true;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata5Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata4Letal = true;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata4Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata3Letal = true;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata3Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata2Letal = true;
            		sheet.Pata1Letal = true;
            	elseif sheet.Pata2Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata3Letal = false;
            		sheet.Pata1Letal = true;	
            	elseif sheet.Pata1Letal == true then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata3Letal = false;
            		sheet.Pata2Letal = false;
            	elseif sheet.Pata1Letal == false then
            		sheet.Pata7Letal = false;
            		sheet.Pata6Letal = false;
            		sheet.Pata5Letal = false;
            		sheet.Pata4Letal = false;
            		sheet.Pata3Letal = false;
            		sheet.Pata2Letal = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata7Agravado == true then
            		sheet.Pata6Agravado = true;
            		sheet.Pata5Agravado = true;
            		sheet.Pata4Agravado = true;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata6Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata5Agravado = true;
            		sheet.Pata4Agravado = true;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata5Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata4Agravado = true;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata4Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata3Agravado = true;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata3Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata2Agravado = true;
            		sheet.Pata1Agravado = true;
            	elseif sheet.Pata2Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata3Agravado = false;
            		sheet.Pata1Agravado = true;	
            	elseif sheet.Pata1Agravado == true then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata3Agravado = false;
            		sheet.Pata2Agravado = false;
            	elseif sheet.Pata1Agravado == false then
            		sheet.Pata7Agravado = false;
            		sheet.Pata6Agravado = false;
            		sheet.Pata5Agravado = false;
            		sheet.Pata4Agravado = false;
            		sheet.Pata3Agravado = false;
            		sheet.Pata2Agravado = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
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

        if self.layout304 ~= nil then self.layout304:destroy(); self.layout304 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.layout386 ~= nil then self.layout386:destroy(); self.layout386 = nil; end;
        if self.imageCheckBox296 ~= nil then self.imageCheckBox296:destroy(); self.imageCheckBox296 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout266 ~= nil then self.layout266:destroy(); self.layout266 = nil; end;
        if self.layout275 ~= nil then self.layout275:destroy(); self.layout275 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.imageCheckBox357 ~= nil then self.imageCheckBox357:destroy(); self.imageCheckBox357 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.layout257 ~= nil then self.layout257:destroy(); self.layout257 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout290 ~= nil then self.layout290:destroy(); self.layout290 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.layout326 ~= nil then self.layout326:destroy(); self.layout326 = nil; end;
        if self.layout285 ~= nil then self.layout285:destroy(); self.layout285 = nil; end;
        if self.layout247 ~= nil then self.layout247:destroy(); self.layout247 = nil; end;
        if self.imageCheckBox210 ~= nil then self.imageCheckBox210:destroy(); self.imageCheckBox210 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout249 ~= nil then self.layout249:destroy(); self.layout249 = nil; end;
        if self.imageCheckBox289 ~= nil then self.imageCheckBox289:destroy(); self.imageCheckBox289 = nil; end;
        if self.frmCodigo1 ~= nil then self.frmCodigo1:destroy(); self.frmCodigo1 = nil; end;
        if self.imageCheckBox304 ~= nil then self.imageCheckBox304:destroy(); self.imageCheckBox304 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.imageCheckBox271 ~= nil then self.imageCheckBox271:destroy(); self.imageCheckBox271 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.imageCheckBox176 ~= nil then self.imageCheckBox176:destroy(); self.imageCheckBox176 = nil; end;
        if self.layout223 ~= nil then self.layout223:destroy(); self.layout223 = nil; end;
        if self.layout236 ~= nil then self.layout236:destroy(); self.layout236 = nil; end;
        if self.layout251 ~= nil then self.layout251:destroy(); self.layout251 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout194 ~= nil then self.layout194:destroy(); self.layout194 = nil; end;
        if self.imageCheckBox181 ~= nil then self.imageCheckBox181:destroy(); self.imageCheckBox181 = nil; end;
        if self.imageCheckBox174 ~= nil then self.imageCheckBox174:destroy(); self.imageCheckBox174 = nil; end;
        if self.imageCheckBox316 ~= nil then self.imageCheckBox316:destroy(); self.imageCheckBox316 = nil; end;
        if self.imageCheckBox129 ~= nil then self.imageCheckBox129:destroy(); self.imageCheckBox129 = nil; end;
        if self.layout365 ~= nil then self.layout365:destroy(); self.layout365 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.imageCheckBox191 ~= nil then self.imageCheckBox191:destroy(); self.imageCheckBox191 = nil; end;
        if self.imageCheckBox145 ~= nil then self.imageCheckBox145:destroy(); self.imageCheckBox145 = nil; end;
        if self.layout174 ~= nil then self.layout174:destroy(); self.layout174 = nil; end;
        if self.layout316 ~= nil then self.layout316:destroy(); self.layout316 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.layout312 ~= nil then self.layout312:destroy(); self.layout312 = nil; end;
        if self.imageCheckBox150 ~= nil then self.imageCheckBox150:destroy(); self.imageCheckBox150 = nil; end;
        if self.imageCheckBox136 ~= nil then self.imageCheckBox136:destroy(); self.imageCheckBox136 = nil; end;
        if self.layout210 ~= nil then self.layout210:destroy(); self.layout210 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.imageCheckBox336 ~= nil then self.imageCheckBox336:destroy(); self.imageCheckBox336 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.layout205 ~= nil then self.layout205:destroy(); self.layout205 = nil; end;
        if self.imageCheckBox214 ~= nil then self.imageCheckBox214:destroy(); self.imageCheckBox214 = nil; end;
        if self.imageCheckBox241 ~= nil then self.imageCheckBox241:destroy(); self.imageCheckBox241 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout203 ~= nil then self.layout203:destroy(); self.layout203 = nil; end;
        if self.imageCheckBox346 ~= nil then self.imageCheckBox346:destroy(); self.imageCheckBox346 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox131 ~= nil then self.imageCheckBox131:destroy(); self.imageCheckBox131 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.layout248 ~= nil then self.layout248:destroy(); self.layout248 = nil; end;
        if self.layout341 ~= nil then self.layout341:destroy(); self.layout341 = nil; end;
        if self.layout259 ~= nil then self.layout259:destroy(); self.layout259 = nil; end;
        if self.imageCheckBox326 ~= nil then self.imageCheckBox326:destroy(); self.imageCheckBox326 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.layout362 ~= nil then self.layout362:destroy(); self.layout362 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.layout325 ~= nil then self.layout325:destroy(); self.layout325 = nil; end;
        if self.imageCheckBox358 ~= nil then self.imageCheckBox358:destroy(); self.imageCheckBox358 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout246 ~= nil then self.layout246:destroy(); self.layout246 = nil; end;
        if self.imageCheckBox285 ~= nil then self.imageCheckBox285:destroy(); self.imageCheckBox285 = nil; end;
        if self.layout191 ~= nil then self.layout191:destroy(); self.layout191 = nil; end;
        if self.imageCheckBox350 ~= nil then self.imageCheckBox350:destroy(); self.imageCheckBox350 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.layout183 ~= nil then self.layout183:destroy(); self.layout183 = nil; end;
        if self.layout186 ~= nil then self.layout186:destroy(); self.layout186 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.layout229 ~= nil then self.layout229:destroy(); self.layout229 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.layout361 ~= nil then self.layout361:destroy(); self.layout361 = nil; end;
        if self.imageCheckBox352 ~= nil then self.imageCheckBox352:destroy(); self.imageCheckBox352 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.imageCheckBox194 ~= nil then self.imageCheckBox194:destroy(); self.imageCheckBox194 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.imageCheckBox343 ~= nil then self.imageCheckBox343:destroy(); self.imageCheckBox343 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.imageCheckBox155 ~= nil then self.imageCheckBox155:destroy(); self.imageCheckBox155 = nil; end;
        if self.layout225 ~= nil then self.layout225:destroy(); self.layout225 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.layout162 ~= nil then self.layout162:destroy(); self.layout162 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout260 ~= nil then self.layout260:destroy(); self.layout260 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.layout270 ~= nil then self.layout270:destroy(); self.layout270 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.layout241 ~= nil then self.layout241:destroy(); self.layout241 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout254 ~= nil then self.layout254:destroy(); self.layout254 = nil; end;
        if self.imageCheckBox182 ~= nil then self.imageCheckBox182:destroy(); self.imageCheckBox182 = nil; end;
        if self.imageCheckBox318 ~= nil then self.imageCheckBox318:destroy(); self.imageCheckBox318 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.layout244 ~= nil then self.layout244:destroy(); self.layout244 = nil; end;
        if self.imageCheckBox219 ~= nil then self.imageCheckBox219:destroy(); self.imageCheckBox219 = nil; end;
        if self.layout279 ~= nil then self.layout279:destroy(); self.layout279 = nil; end;
        if self.layout363 ~= nil then self.layout363:destroy(); self.layout363 = nil; end;
        if self.imageCheckBox246 ~= nil then self.imageCheckBox246:destroy(); self.imageCheckBox246 = nil; end;
        if self.imageCheckBox340 ~= nil then self.imageCheckBox340:destroy(); self.imageCheckBox340 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout315 ~= nil then self.layout315:destroy(); self.layout315 = nil; end;
        if self.imageCheckBox260 ~= nil then self.imageCheckBox260:destroy(); self.imageCheckBox260 = nil; end;
        if self.layout382 ~= nil then self.layout382:destroy(); self.layout382 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.imageCheckBox173 ~= nil then self.imageCheckBox173:destroy(); self.imageCheckBox173 = nil; end;
        if self.imageCheckBox309 ~= nil then self.imageCheckBox309:destroy(); self.imageCheckBox309 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox128 ~= nil then self.imageCheckBox128:destroy(); self.imageCheckBox128 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox205 ~= nil then self.imageCheckBox205:destroy(); self.imageCheckBox205 = nil; end;
        if self.layout296 ~= nil then self.layout296:destroy(); self.layout296 = nil; end;
        if self.layout320 ~= nil then self.layout320:destroy(); self.layout320 = nil; end;
        if self.imageCheckBox315 ~= nil then self.imageCheckBox315:destroy(); self.imageCheckBox315 = nil; end;
        if self.imageCheckBox333 ~= nil then self.imageCheckBox333:destroy(); self.imageCheckBox333 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.layout200 ~= nil then self.layout200:destroy(); self.layout200 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox298 ~= nil then self.imageCheckBox298:destroy(); self.imageCheckBox298 = nil; end;
        if self.layout370 ~= nil then self.layout370:destroy(); self.layout370 = nil; end;
        if self.layout335 ~= nil then self.layout335:destroy(); self.layout335 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox325 ~= nil then self.imageCheckBox325:destroy(); self.imageCheckBox325 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.layout267 ~= nil then self.layout267:destroy(); self.layout267 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.imageCheckBox313 ~= nil then self.imageCheckBox313:destroy(); self.imageCheckBox313 = nil; end;
        if self.imageCheckBox339 ~= nil then self.imageCheckBox339:destroy(); self.imageCheckBox339 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout329 ~= nil then self.layout329:destroy(); self.layout329 = nil; end;
        if self.imageCheckBox305 ~= nil then self.imageCheckBox305:destroy(); self.imageCheckBox305 = nil; end;
        if self.imageCheckBox231 ~= nil then self.imageCheckBox231:destroy(); self.imageCheckBox231 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.imageCheckBox247 ~= nil then self.imageCheckBox247:destroy(); self.imageCheckBox247 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.layout211 ~= nil then self.layout211:destroy(); self.layout211 = nil; end;
        if self.layout347 ~= nil then self.layout347:destroy(); self.layout347 = nil; end;
        if self.layout309 ~= nil then self.layout309:destroy(); self.layout309 = nil; end;
        if self.imageCheckBox125 ~= nil then self.imageCheckBox125:destroy(); self.imageCheckBox125 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout303 ~= nil then self.layout303:destroy(); self.layout303 = nil; end;
        if self.layout222 ~= nil then self.layout222:destroy(); self.layout222 = nil; end;
        if self.layout302 ~= nil then self.layout302:destroy(); self.layout302 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout376 ~= nil then self.layout376:destroy(); self.layout376 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout202 ~= nil then self.layout202:destroy(); self.layout202 = nil; end;
        if self.layout220 ~= nil then self.layout220:destroy(); self.layout220 = nil; end;
        if self.layout373 ~= nil then self.layout373:destroy(); self.layout373 = nil; end;
        if self.imageCheckBox322 ~= nil then self.imageCheckBox322:destroy(); self.imageCheckBox322 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.imageCheckBox262 ~= nil then self.imageCheckBox262:destroy(); self.imageCheckBox262 = nil; end;
        if self.imageCheckBox355 ~= nil then self.imageCheckBox355:destroy(); self.imageCheckBox355 = nil; end;
        if self.layout170 ~= nil then self.layout170:destroy(); self.layout170 = nil; end;
        if self.imageCheckBox172 ~= nil then self.imageCheckBox172:destroy(); self.imageCheckBox172 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.imageCheckBox127 ~= nil then self.imageCheckBox127:destroy(); self.imageCheckBox127 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.imageCheckBox294 ~= nil then self.imageCheckBox294:destroy(); self.imageCheckBox294 = nil; end;
        if self.imageCheckBox179 ~= nil then self.imageCheckBox179:destroy(); self.imageCheckBox179 = nil; end;
        if self.imageCheckBox235 ~= nil then self.imageCheckBox235:destroy(); self.imageCheckBox235 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.imageCheckBox250 ~= nil then self.imageCheckBox250:destroy(); self.imageCheckBox250 = nil; end;
        if self.layout263 ~= nil then self.layout263:destroy(); self.layout263 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox211 ~= nil then self.imageCheckBox211:destroy(); self.imageCheckBox211 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.imageCheckBox268 ~= nil then self.imageCheckBox268:destroy(); self.imageCheckBox268 = nil; end;
        if self.layout295 ~= nil then self.layout295:destroy(); self.layout295 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.imageCheckBox237 ~= nil then self.imageCheckBox237:destroy(); self.imageCheckBox237 = nil; end;
        if self.imageCheckBox347 ~= nil then self.imageCheckBox347:destroy(); self.imageCheckBox347 = nil; end;
        if self.imageCheckBox291 ~= nil then self.imageCheckBox291:destroy(); self.imageCheckBox291 = nil; end;
        if self.layout219 ~= nil then self.layout219:destroy(); self.layout219 = nil; end;
        if self.layout245 ~= nil then self.layout245:destroy(); self.layout245 = nil; end;
        if self.layout374 ~= nil then self.layout374:destroy(); self.layout374 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout218 ~= nil then self.layout218:destroy(); self.layout218 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout333 ~= nil then self.layout333:destroy(); self.layout333 = nil; end;
        if self.imageCheckBox328 ~= nil then self.imageCheckBox328:destroy(); self.imageCheckBox328 = nil; end;
        if self.layout330 ~= nil then self.layout330:destroy(); self.layout330 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.imageCheckBox295 ~= nil then self.imageCheckBox295:destroy(); self.imageCheckBox295 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.layout171 ~= nil then self.layout171:destroy(); self.layout171 = nil; end;
        if self.layout177 ~= nil then self.layout177:destroy(); self.layout177 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.imageCheckBox332 ~= nil then self.imageCheckBox332:destroy(); self.imageCheckBox332 = nil; end;
        if self.imageCheckBox153 ~= nil then self.imageCheckBox153:destroy(); self.imageCheckBox153 = nil; end;
        if self.layout217 ~= nil then self.layout217:destroy(); self.layout217 = nil; end;
        if self.layout199 ~= nil then self.layout199:destroy(); self.layout199 = nil; end;
        if self.imageCheckBox244 ~= nil then self.imageCheckBox244:destroy(); self.imageCheckBox244 = nil; end;
        if self.layout243 ~= nil then self.layout243:destroy(); self.layout243 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.imageCheckBox198 ~= nil then self.imageCheckBox198:destroy(); self.imageCheckBox198 = nil; end;
        if self.imageCheckBox199 ~= nil then self.imageCheckBox199:destroy(); self.imageCheckBox199 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.layout178 ~= nil then self.layout178:destroy(); self.layout178 = nil; end;
        if self.imageCheckBox258 ~= nil then self.imageCheckBox258:destroy(); self.imageCheckBox258 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout339 ~= nil then self.layout339:destroy(); self.layout339 = nil; end;
        if self.layout366 ~= nil then self.layout366:destroy(); self.layout366 = nil; end;
        if self.layout271 ~= nil then self.layout271:destroy(); self.layout271 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.layout253 ~= nil then self.layout253:destroy(); self.layout253 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox229 ~= nil then self.imageCheckBox229:destroy(); self.imageCheckBox229 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.layout292 ~= nil then self.layout292:destroy(); self.layout292 = nil; end;
        if self.imageCheckBox293 ~= nil then self.imageCheckBox293:destroy(); self.imageCheckBox293 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.imageCheckBox335 ~= nil then self.imageCheckBox335:destroy(); self.imageCheckBox335 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout173 ~= nil then self.layout173:destroy(); self.layout173 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox123 ~= nil then self.imageCheckBox123:destroy(); self.imageCheckBox123 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.layout306 ~= nil then self.layout306:destroy(); self.layout306 = nil; end;
        if self.imageCheckBox184 ~= nil then self.imageCheckBox184:destroy(); self.imageCheckBox184 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.imageCheckBox134 ~= nil then self.imageCheckBox134:destroy(); self.imageCheckBox134 = nil; end;
        if self.layout234 ~= nil then self.layout234:destroy(); self.layout234 = nil; end;
        if self.imageCheckBox280 ~= nil then self.imageCheckBox280:destroy(); self.imageCheckBox280 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.layout238 ~= nil then self.layout238:destroy(); self.layout238 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.imageCheckBox279 ~= nil then self.imageCheckBox279:destroy(); self.imageCheckBox279 = nil; end;
        if self.imageCheckBox297 ~= nil then self.imageCheckBox297:destroy(); self.imageCheckBox297 = nil; end;
        if self.imageCheckBox135 ~= nil then self.imageCheckBox135:destroy(); self.imageCheckBox135 = nil; end;
        if self.imageCheckBox206 ~= nil then self.imageCheckBox206:destroy(); self.imageCheckBox206 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.imageCheckBox162 ~= nil then self.imageCheckBox162:destroy(); self.imageCheckBox162 = nil; end;
        if self.imageCheckBox286 ~= nil then self.imageCheckBox286:destroy(); self.imageCheckBox286 = nil; end;
        if self.layout328 ~= nil then self.layout328:destroy(); self.layout328 = nil; end;
        if self.layout348 ~= nil then self.layout348:destroy(); self.layout348 = nil; end;
        if self.imageCheckBox338 ~= nil then self.imageCheckBox338:destroy(); self.imageCheckBox338 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.layout337 ~= nil then self.layout337:destroy(); self.layout337 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout282 ~= nil then self.layout282:destroy(); self.layout282 = nil; end;
        if self.imageCheckBox163 ~= nil then self.imageCheckBox163:destroy(); self.imageCheckBox163 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.imageCheckBox272 ~= nil then self.imageCheckBox272:destroy(); self.imageCheckBox272 = nil; end;
        if self.imageCheckBox323 ~= nil then self.imageCheckBox323:destroy(); self.imageCheckBox323 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout274 ~= nil then self.layout274:destroy(); self.layout274 = nil; end;
        if self.layout375 ~= nil then self.layout375:destroy(); self.layout375 = nil; end;
        if self.layout213 ~= nil then self.layout213:destroy(); self.layout213 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.imageCheckBox303 ~= nil then self.imageCheckBox303:destroy(); self.imageCheckBox303 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.layout308 ~= nil then self.layout308:destroy(); self.layout308 = nil; end;
        if self.layout269 ~= nil then self.layout269:destroy(); self.layout269 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.imageCheckBox327 ~= nil then self.imageCheckBox327:destroy(); self.imageCheckBox327 = nil; end;
        if self.imageCheckBox329 ~= nil then self.imageCheckBox329:destroy(); self.imageCheckBox329 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.imageCheckBox342 ~= nil then self.imageCheckBox342:destroy(); self.imageCheckBox342 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.imageCheckBox202 ~= nil then self.imageCheckBox202:destroy(); self.imageCheckBox202 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.imageCheckBox226 ~= nil then self.imageCheckBox226:destroy(); self.imageCheckBox226 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.imageCheckBox348 ~= nil then self.imageCheckBox348:destroy(); self.imageCheckBox348 = nil; end;
        if self.imageCheckBox276 ~= nil then self.imageCheckBox276:destroy(); self.imageCheckBox276 = nil; end;
        if self.layout321 ~= nil then self.layout321:destroy(); self.layout321 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout208 ~= nil then self.layout208:destroy(); self.layout208 = nil; end;
        if self.layout293 ~= nil then self.layout293:destroy(); self.layout293 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout356 ~= nil then self.layout356:destroy(); self.layout356 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.imageCheckBox270 ~= nil then self.imageCheckBox270:destroy(); self.imageCheckBox270 = nil; end;
        if self.layout297 ~= nil then self.layout297:destroy(); self.layout297 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.imageCheckBox281 ~= nil then self.imageCheckBox281:destroy(); self.imageCheckBox281 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.imageCheckBox201 ~= nil then self.imageCheckBox201:destroy(); self.imageCheckBox201 = nil; end;
        if self.imageCheckBox254 ~= nil then self.imageCheckBox254:destroy(); self.imageCheckBox254 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout324 ~= nil then self.layout324:destroy(); self.layout324 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.imageCheckBox317 ~= nil then self.imageCheckBox317:destroy(); self.imageCheckBox317 = nil; end;
        if self.layout372 ~= nil then self.layout372:destroy(); self.layout372 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.imageCheckBox209 ~= nil then self.imageCheckBox209:destroy(); self.imageCheckBox209 = nil; end;
        if self.imageCheckBox218 ~= nil then self.imageCheckBox218:destroy(); self.imageCheckBox218 = nil; end;
        if self.layout319 ~= nil then self.layout319:destroy(); self.layout319 = nil; end;
        if self.imageCheckBox228 ~= nil then self.imageCheckBox228:destroy(); self.imageCheckBox228 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox261 ~= nil then self.imageCheckBox261:destroy(); self.imageCheckBox261 = nil; end;
        if self.imageCheckBox321 ~= nil then self.imageCheckBox321:destroy(); self.imageCheckBox321 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.layout197 ~= nil then self.layout197:destroy(); self.layout197 = nil; end;
        if self.layout355 ~= nil then self.layout355:destroy(); self.layout355 = nil; end;
        if self.layout214 ~= nil then self.layout214:destroy(); self.layout214 = nil; end;
        if self.imageCheckBox299 ~= nil then self.imageCheckBox299:destroy(); self.imageCheckBox299 = nil; end;
        if self.imageCheckBox236 ~= nil then self.imageCheckBox236:destroy(); self.imageCheckBox236 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout358 ~= nil then self.layout358:destroy(); self.layout358 = nil; end;
        if self.imageCheckBox151 ~= nil then self.imageCheckBox151:destroy(); self.imageCheckBox151 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox243 ~= nil then self.imageCheckBox243:destroy(); self.imageCheckBox243 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox140 ~= nil then self.imageCheckBox140:destroy(); self.imageCheckBox140 = nil; end;
        if self.imageCheckBox221 ~= nil then self.imageCheckBox221:destroy(); self.imageCheckBox221 = nil; end;
        if self.imageCheckBox216 ~= nil then self.imageCheckBox216:destroy(); self.imageCheckBox216 = nil; end;
        if self.layout239 ~= nil then self.layout239:destroy(); self.layout239 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.layout354 ~= nil then self.layout354:destroy(); self.layout354 = nil; end;
        if self.layout258 ~= nil then self.layout258:destroy(); self.layout258 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.layout332 ~= nil then self.layout332:destroy(); self.layout332 = nil; end;
        if self.imageCheckBox311 ~= nil then self.imageCheckBox311:destroy(); self.imageCheckBox311 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.imageCheckBox312 ~= nil then self.imageCheckBox312:destroy(); self.imageCheckBox312 = nil; end;
        if self.layout381 ~= nil then self.layout381:destroy(); self.layout381 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout353 ~= nil then self.layout353:destroy(); self.layout353 = nil; end;
        if self.layout305 ~= nil then self.layout305:destroy(); self.layout305 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.layout379 ~= nil then self.layout379:destroy(); self.layout379 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox230 ~= nil then self.imageCheckBox230:destroy(); self.imageCheckBox230 = nil; end;
        if self.imageCheckBox183 ~= nil then self.imageCheckBox183:destroy(); self.imageCheckBox183 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.layout255 ~= nil then self.layout255:destroy(); self.layout255 = nil; end;
        if self.imageCheckBox310 ~= nil then self.imageCheckBox310:destroy(); self.imageCheckBox310 = nil; end;
        if self.layout322 ~= nil then self.layout322:destroy(); self.layout322 = nil; end;
        if self.imageCheckBox227 ~= nil then self.imageCheckBox227:destroy(); self.imageCheckBox227 = nil; end;
        if self.imageCheckBox287 ~= nil then self.imageCheckBox287:destroy(); self.imageCheckBox287 = nil; end;
        if self.imageCheckBox200 ~= nil then self.imageCheckBox200:destroy(); self.imageCheckBox200 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.imageCheckBox175 ~= nil then self.imageCheckBox175:destroy(); self.imageCheckBox175 = nil; end;
        if self.imageCheckBox225 ~= nil then self.imageCheckBox225:destroy(); self.imageCheckBox225 = nil; end;
        if self.layout189 ~= nil then self.layout189:destroy(); self.layout189 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.layout195 ~= nil then self.layout195:destroy(); self.layout195 = nil; end;
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.layout187 ~= nil then self.layout187:destroy(); self.layout187 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.imageCheckBox288 ~= nil then self.imageCheckBox288:destroy(); self.imageCheckBox288 = nil; end;
        if self.layout196 ~= nil then self.layout196:destroy(); self.layout196 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.imageCheckBox251 ~= nil then self.imageCheckBox251:destroy(); self.imageCheckBox251 = nil; end;
        if self.layout289 ~= nil then self.layout289:destroy(); self.layout289 = nil; end;
        if self.imageCheckBox126 ~= nil then self.imageCheckBox126:destroy(); self.imageCheckBox126 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.imageCheckBox345 ~= nil then self.imageCheckBox345:destroy(); self.imageCheckBox345 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.imageCheckBox166 ~= nil then self.imageCheckBox166:destroy(); self.imageCheckBox166 = nil; end;
        if self.layout369 ~= nil then self.layout369:destroy(); self.layout369 = nil; end;
        if self.layout283 ~= nil then self.layout283:destroy(); self.layout283 = nil; end;
        if self.layout385 ~= nil then self.layout385:destroy(); self.layout385 = nil; end;
        if self.imageCheckBox196 ~= nil then self.imageCheckBox196:destroy(); self.imageCheckBox196 = nil; end;
        if self.imageCheckBox337 ~= nil then self.imageCheckBox337:destroy(); self.imageCheckBox337 = nil; end;
        if self.layout276 ~= nil then self.layout276:destroy(); self.layout276 = nil; end;
        if self.imageCheckBox248 ~= nil then self.imageCheckBox248:destroy(); self.imageCheckBox248 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox168 ~= nil then self.imageCheckBox168:destroy(); self.imageCheckBox168 = nil; end;
        if self.imageCheckBox290 ~= nil then self.imageCheckBox290:destroy(); self.imageCheckBox290 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout212 ~= nil then self.layout212:destroy(); self.layout212 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.layout158 ~= nil then self.layout158:destroy(); self.layout158 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.layout311 ~= nil then self.layout311:destroy(); self.layout311 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.layout345 ~= nil then self.layout345:destroy(); self.layout345 = nil; end;
        if self.layout232 ~= nil then self.layout232:destroy(); self.layout232 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.imageCheckBox349 ~= nil then self.imageCheckBox349:destroy(); self.imageCheckBox349 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.layout176 ~= nil then self.layout176:destroy(); self.layout176 = nil; end;
        if self.layout252 ~= nil then self.layout252:destroy(); self.layout252 = nil; end;
        if self.layout300 ~= nil then self.layout300:destroy(); self.layout300 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.layout185 ~= nil then self.layout185:destroy(); self.layout185 = nil; end;
        if self.imageCheckBox154 ~= nil then self.imageCheckBox154:destroy(); self.imageCheckBox154 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.layout307 ~= nil then self.layout307:destroy(); self.layout307 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.layout235 ~= nil then self.layout235:destroy(); self.layout235 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.layout388 ~= nil then self.layout388:destroy(); self.layout388 = nil; end;
        if self.imageCheckBox331 ~= nil then self.imageCheckBox331:destroy(); self.imageCheckBox331 = nil; end;
        if self.layout317 ~= nil then self.layout317:destroy(); self.layout317 = nil; end;
        if self.layout288 ~= nil then self.layout288:destroy(); self.layout288 = nil; end;
        if self.imageCheckBox224 ~= nil then self.imageCheckBox224:destroy(); self.imageCheckBox224 = nil; end;
        if self.layout256 ~= nil then self.layout256:destroy(); self.layout256 = nil; end;
        if self.imageCheckBox233 ~= nil then self.imageCheckBox233:destroy(); self.imageCheckBox233 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout273 ~= nil then self.layout273:destroy(); self.layout273 = nil; end;
        if self.imageCheckBox354 ~= nil then self.imageCheckBox354:destroy(); self.imageCheckBox354 = nil; end;
        if self.layout327 ~= nil then self.layout327:destroy(); self.layout327 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.imageCheckBox239 ~= nil then self.imageCheckBox239:destroy(); self.imageCheckBox239 = nil; end;
        if self.imageCheckBox208 ~= nil then self.imageCheckBox208:destroy(); self.imageCheckBox208 = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.layout310 ~= nil then self.layout310:destroy(); self.layout310 = nil; end;
        if self.layout277 ~= nil then self.layout277:destroy(); self.layout277 = nil; end;
        if self.imageCheckBox207 ~= nil then self.imageCheckBox207:destroy(); self.imageCheckBox207 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.imageCheckBox302 ~= nil then self.imageCheckBox302:destroy(); self.imageCheckBox302 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.layout331 ~= nil then self.layout331:destroy(); self.layout331 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.layout278 ~= nil then self.layout278:destroy(); self.layout278 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.layout261 ~= nil then self.layout261:destroy(); self.layout261 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout206 ~= nil then self.layout206:destroy(); self.layout206 = nil; end;
        if self.layout207 ~= nil then self.layout207:destroy(); self.layout207 = nil; end;
        if self.imageCheckBox314 ~= nil then self.imageCheckBox314:destroy(); self.imageCheckBox314 = nil; end;
        if self.imageCheckBox341 ~= nil then self.imageCheckBox341:destroy(); self.imageCheckBox341 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.layout262 ~= nil then self.layout262:destroy(); self.layout262 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.layout367 ~= nil then self.layout367:destroy(); self.layout367 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout242 ~= nil then self.layout242:destroy(); self.layout242 = nil; end;
        if self.imageCheckBox106 ~= nil then self.imageCheckBox106:destroy(); self.imageCheckBox106 = nil; end;
        if self.imageCheckBox255 ~= nil then self.imageCheckBox255:destroy(); self.imageCheckBox255 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.layout193 ~= nil then self.layout193:destroy(); self.layout193 = nil; end;
        if self.imageCheckBox193 ~= nil then self.imageCheckBox193:destroy(); self.imageCheckBox193 = nil; end;
        if self.imageCheckBox213 ~= nil then self.imageCheckBox213:destroy(); self.imageCheckBox213 = nil; end;
        if self.layout228 ~= nil then self.layout228:destroy(); self.layout228 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.layout318 ~= nil then self.layout318:destroy(); self.layout318 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.imageCheckBox249 ~= nil then self.imageCheckBox249:destroy(); self.imageCheckBox249 = nil; end;
        if self.layout360 ~= nil then self.layout360:destroy(); self.layout360 = nil; end;
        if self.layout387 ~= nil then self.layout387:destroy(); self.layout387 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.layout268 ~= nil then self.layout268:destroy(); self.layout268 = nil; end;
        if self.layout351 ~= nil then self.layout351:destroy(); self.layout351 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.imageCheckBox351 ~= nil then self.imageCheckBox351:destroy(); self.imageCheckBox351 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.layout364 ~= nil then self.layout364:destroy(); self.layout364 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.layout230 ~= nil then self.layout230:destroy(); self.layout230 = nil; end;
        if self.layout165 ~= nil then self.layout165:destroy(); self.layout165 = nil; end;
        if self.layout198 ~= nil then self.layout198:destroy(); self.layout198 = nil; end;
        if self.layout216 ~= nil then self.layout216:destroy(); self.layout216 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout226 ~= nil then self.layout226:destroy(); self.layout226 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout224 ~= nil then self.layout224:destroy(); self.layout224 = nil; end;
        if self.imageCheckBox142 ~= nil then self.imageCheckBox142:destroy(); self.imageCheckBox142 = nil; end;
        if self.layout164 ~= nil then self.layout164:destroy(); self.layout164 = nil; end;
        if self.imageCheckBox264 ~= nil then self.imageCheckBox264:destroy(); self.imageCheckBox264 = nil; end;
        if self.layout272 ~= nil then self.layout272:destroy(); self.layout272 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.imageCheckBox180 ~= nil then self.imageCheckBox180:destroy(); self.imageCheckBox180 = nil; end;
        if self.imageCheckBox253 ~= nil then self.imageCheckBox253:destroy(); self.imageCheckBox253 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.imageCheckBox252 ~= nil then self.imageCheckBox252:destroy(); self.imageCheckBox252 = nil; end;
        if self.imageCheckBox157 ~= nil then self.imageCheckBox157:destroy(); self.imageCheckBox157 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.imageCheckBox156 ~= nil then self.imageCheckBox156:destroy(); self.imageCheckBox156 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.layout227 ~= nil then self.layout227:destroy(); self.layout227 = nil; end;
        if self.imageCheckBox222 ~= nil then self.imageCheckBox222:destroy(); self.imageCheckBox222 = nil; end;
        if self.imageCheckBox307 ~= nil then self.imageCheckBox307:destroy(); self.imageCheckBox307 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.imageCheckBox158 ~= nil then self.imageCheckBox158:destroy(); self.imageCheckBox158 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.imageCheckBox220 ~= nil then self.imageCheckBox220:destroy(); self.imageCheckBox220 = nil; end;
        if self.imageCheckBox171 ~= nil then self.imageCheckBox171:destroy(); self.imageCheckBox171 = nil; end;
        if self.layout338 ~= nil then self.layout338:destroy(); self.layout338 = nil; end;
        if self.imageCheckBox334 ~= nil then self.imageCheckBox334:destroy(); self.imageCheckBox334 = nil; end;
        if self.imageCheckBox204 ~= nil then self.imageCheckBox204:destroy(); self.imageCheckBox204 = nil; end;
        if self.imageCheckBox197 ~= nil then self.imageCheckBox197:destroy(); self.imageCheckBox197 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.imageCheckBox242 ~= nil then self.imageCheckBox242:destroy(); self.imageCheckBox242 = nil; end;
        if self.imageCheckBox111 ~= nil then self.imageCheckBox111:destroy(); self.imageCheckBox111 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.layout240 ~= nil then self.layout240:destroy(); self.layout240 = nil; end;
        if self.imageCheckBox165 ~= nil then self.imageCheckBox165:destroy(); self.imageCheckBox165 = nil; end;
        if self.layout209 ~= nil then self.layout209:destroy(); self.layout209 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.layout201 ~= nil then self.layout201:destroy(); self.layout201 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout323 ~= nil then self.layout323:destroy(); self.layout323 = nil; end;
        if self.layout190 ~= nil then self.layout190:destroy(); self.layout190 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.imageCheckBox292 ~= nil then self.imageCheckBox292:destroy(); self.imageCheckBox292 = nil; end;
        if self.imageCheckBox308 ~= nil then self.imageCheckBox308:destroy(); self.imageCheckBox308 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.layout346 ~= nil then self.layout346:destroy(); self.layout346 = nil; end;
        if self.imageCheckBox195 ~= nil then self.imageCheckBox195:destroy(); self.imageCheckBox195 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.layout336 ~= nil then self.layout336:destroy(); self.layout336 = nil; end;
        if self.imageCheckBox344 ~= nil then self.imageCheckBox344:destroy(); self.imageCheckBox344 = nil; end;
        if self.imageCheckBox283 ~= nil then self.imageCheckBox283:destroy(); self.imageCheckBox283 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.layout250 ~= nil then self.layout250:destroy(); self.layout250 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.imageCheckBox215 ~= nil then self.imageCheckBox215:destroy(); self.imageCheckBox215 = nil; end;
        if self.imageCheckBox306 ~= nil then self.imageCheckBox306:destroy(); self.imageCheckBox306 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout169 ~= nil then self.layout169:destroy(); self.layout169 = nil; end;
        if self.imageCheckBox192 ~= nil then self.imageCheckBox192:destroy(); self.imageCheckBox192 = nil; end;
        if self.imageCheckBox320 ~= nil then self.imageCheckBox320:destroy(); self.imageCheckBox320 = nil; end;
        if self.layout298 ~= nil then self.layout298:destroy(); self.layout298 = nil; end;
        if self.imageCheckBox301 ~= nil then self.imageCheckBox301:destroy(); self.imageCheckBox301 = nil; end;
        if self.layout192 ~= nil then self.layout192:destroy(); self.layout192 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.imageCheckBox138 ~= nil then self.imageCheckBox138:destroy(); self.imageCheckBox138 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.imageCheckBox267 ~= nil then self.imageCheckBox267:destroy(); self.imageCheckBox267 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout180 ~= nil then self.layout180:destroy(); self.layout180 = nil; end;
        if self.layout204 ~= nil then self.layout204:destroy(); self.layout204 = nil; end;
        if self.layout299 ~= nil then self.layout299:destroy(); self.layout299 = nil; end;
        if self.imageCheckBox330 ~= nil then self.imageCheckBox330:destroy(); self.imageCheckBox330 = nil; end;
        if self.layout172 ~= nil then self.layout172:destroy(); self.layout172 = nil; end;
        if self.layout343 ~= nil then self.layout343:destroy(); self.layout343 = nil; end;
        if self.imageCheckBox263 ~= nil then self.imageCheckBox263:destroy(); self.imageCheckBox263 = nil; end;
        if self.layout357 ~= nil then self.layout357:destroy(); self.layout357 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox265 ~= nil then self.imageCheckBox265:destroy(); self.imageCheckBox265 = nil; end;
        if self.layout314 ~= nil then self.layout314:destroy(); self.layout314 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.layout215 ~= nil then self.layout215:destroy(); self.layout215 = nil; end;
        if self.layout221 ~= nil then self.layout221:destroy(); self.layout221 = nil; end;
        if self.imageCheckBox256 ~= nil then self.imageCheckBox256:destroy(); self.imageCheckBox256 = nil; end;
        if self.layout334 ~= nil then self.layout334:destroy(); self.layout334 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout352 ~= nil then self.layout352:destroy(); self.layout352 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.imageCheckBox234 ~= nil then self.imageCheckBox234:destroy(); self.imageCheckBox234 = nil; end;
        if self.layout359 ~= nil then self.layout359:destroy(); self.layout359 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.imageCheckBox238 ~= nil then self.imageCheckBox238:destroy(); self.imageCheckBox238 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox169 ~= nil then self.imageCheckBox169:destroy(); self.imageCheckBox169 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.imageCheckBox275 ~= nil then self.imageCheckBox275:destroy(); self.imageCheckBox275 = nil; end;
        if self.imageCheckBox217 ~= nil then self.imageCheckBox217:destroy(); self.imageCheckBox217 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.imageCheckBox146 ~= nil then self.imageCheckBox146:destroy(); self.imageCheckBox146 = nil; end;
        if self.layout313 ~= nil then self.layout313:destroy(); self.layout313 = nil; end;
        if self.layout280 ~= nil then self.layout280:destroy(); self.layout280 = nil; end;
        if self.imageCheckBox300 ~= nil then self.imageCheckBox300:destroy(); self.imageCheckBox300 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.imageCheckBox278 ~= nil then self.imageCheckBox278:destroy(); self.imageCheckBox278 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.layout179 ~= nil then self.layout179:destroy(); self.layout179 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox139 ~= nil then self.imageCheckBox139:destroy(); self.imageCheckBox139 = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.imageCheckBox187 ~= nil then self.imageCheckBox187:destroy(); self.imageCheckBox187 = nil; end;
        if self.layout344 ~= nil then self.layout344:destroy(); self.layout344 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.imageCheckBox223 ~= nil then self.imageCheckBox223:destroy(); self.imageCheckBox223 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.layout368 ~= nil then self.layout368:destroy(); self.layout368 = nil; end;
        if self.imageCheckBox266 ~= nil then self.imageCheckBox266:destroy(); self.imageCheckBox266 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.imageCheckBox245 ~= nil then self.imageCheckBox245:destroy(); self.imageCheckBox245 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.imageCheckBox259 ~= nil then self.imageCheckBox259:destroy(); self.imageCheckBox259 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.layout380 ~= nil then self.layout380:destroy(); self.layout380 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.layout377 ~= nil then self.layout377:destroy(); self.layout377 = nil; end;
        if self.layout291 ~= nil then self.layout291:destroy(); self.layout291 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout294 ~= nil then self.layout294:destroy(); self.layout294 = nil; end;
        if self.layout233 ~= nil then self.layout233:destroy(); self.layout233 = nil; end;
        if self.layout383 ~= nil then self.layout383:destroy(); self.layout383 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox353 ~= nil then self.imageCheckBox353:destroy(); self.imageCheckBox353 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout175 ~= nil then self.layout175:destroy(); self.layout175 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout264 ~= nil then self.layout264:destroy(); self.layout264 = nil; end;
        if self.imageCheckBox274 ~= nil then self.imageCheckBox274:destroy(); self.imageCheckBox274 = nil; end;
        if self.layout231 ~= nil then self.layout231:destroy(); self.layout231 = nil; end;
        if self.imageCheckBox170 ~= nil then self.imageCheckBox170:destroy(); self.imageCheckBox170 = nil; end;
        if self.imageCheckBox121 ~= nil then self.imageCheckBox121:destroy(); self.imageCheckBox121 = nil; end;
        if self.imageCheckBox152 ~= nil then self.imageCheckBox152:destroy(); self.imageCheckBox152 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.imageCheckBox203 ~= nil then self.imageCheckBox203:destroy(); self.imageCheckBox203 = nil; end;
        if self.layout350 ~= nil then self.layout350:destroy(); self.layout350 = nil; end;
        if self.layout342 ~= nil then self.layout342:destroy(); self.layout342 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.imageCheckBox359 ~= nil then self.imageCheckBox359:destroy(); self.imageCheckBox359 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.layout384 ~= nil then self.layout384:destroy(); self.layout384 = nil; end;
        if self.imageCheckBox319 ~= nil then self.imageCheckBox319:destroy(); self.imageCheckBox319 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox188 ~= nil then self.imageCheckBox188:destroy(); self.imageCheckBox188 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.imageCheckBox284 ~= nil then self.imageCheckBox284:destroy(); self.imageCheckBox284 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.imageCheckBox177 ~= nil then self.imageCheckBox177:destroy(); self.imageCheckBox177 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.layout281 ~= nil then self.layout281:destroy(); self.layout281 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.imageCheckBox144 ~= nil then self.imageCheckBox144:destroy(); self.imageCheckBox144 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.layout184 ~= nil then self.layout184:destroy(); self.layout184 = nil; end;
        if self.layout161 ~= nil then self.layout161:destroy(); self.layout161 = nil; end;
        if self.layout371 ~= nil then self.layout371:destroy(); self.layout371 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.layout286 ~= nil then self.layout286:destroy(); self.layout286 = nil; end;
        if self.layout349 ~= nil then self.layout349:destroy(); self.layout349 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.layout265 ~= nil then self.layout265:destroy(); self.layout265 = nil; end;
        if self.imageCheckBox212 ~= nil then self.imageCheckBox212:destroy(); self.imageCheckBox212 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox282 ~= nil then self.imageCheckBox282:destroy(); self.imageCheckBox282 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.imageCheckBox273 ~= nil then self.imageCheckBox273:destroy(); self.imageCheckBox273 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.imageCheckBox269 ~= nil then self.imageCheckBox269:destroy(); self.imageCheckBox269 = nil; end;
        if self.imageCheckBox277 ~= nil then self.imageCheckBox277:destroy(); self.imageCheckBox277 = nil; end;
        if self.imageCheckBox356 ~= nil then self.imageCheckBox356:destroy(); self.imageCheckBox356 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.imageCheckBox240 ~= nil then self.imageCheckBox240:destroy(); self.imageCheckBox240 = nil; end;
        if self.layout287 ~= nil then self.layout287:destroy(); self.layout287 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.imageCheckBox324 ~= nil then self.imageCheckBox324:destroy(); self.imageCheckBox324 = nil; end;
        if self.imageCheckBox257 ~= nil then self.imageCheckBox257:destroy(); self.imageCheckBox257 = nil; end;
        if self.layout378 ~= nil then self.layout378:destroy(); self.layout378 = nil; end;
        if self.layout284 ~= nil then self.layout284:destroy(); self.layout284 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout237 ~= nil then self.layout237:destroy(); self.layout237 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.layout340 ~= nil then self.layout340:destroy(); self.layout340 = nil; end;
        if self.imageCheckBox232 ~= nil then self.imageCheckBox232:destroy(); self.imageCheckBox232 = nil; end;
        if self.imageCheckBox167 ~= nil then self.imageCheckBox167:destroy(); self.imageCheckBox167 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.layout301 ~= nil then self.layout301:destroy(); self.layout301 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmLobisomen1_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmLobisomen1_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmLobisomen1_svg = {
    newEditor = newfrmLobisomen1_svg, 
    new = newfrmLobisomen1_svg, 
    name = "frmLobisomen1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmLobisomen1_svg = _frmLobisomen1_svg;
Firecast.registrarForm(_frmLobisomen1_svg);

return _frmLobisomen1_svg;
