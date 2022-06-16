require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmLobisomen2_svg()
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
    obj:setName("frmLobisomen2_svg");
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
    obj.image1:setSRC("/Lobisomen - Drake's Chronicles/images/2.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(298);
    obj.layout1:setTop(193);
    obj.layout1:setWidth(25);
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
    obj.edit1:setWidth(25);
    obj.edit1:setHeight(30);
    obj.edit1:setField("ForçaG");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(298);
    obj.layout2:setTop(214);
    obj.layout2:setWidth(25);
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
    obj.edit2:setWidth(25);
    obj.edit2:setHeight(30);
    obj.edit2:setField("VigorG");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(326);
    obj.layout3:setTop(235);
    obj.layout3:setWidth(25);
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
    obj.edit3:setWidth(25);
    obj.edit3:setHeight(30);
    obj.edit3:setField("AparênciaG");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(345);
    obj.layout4:setTop(256);
    obj.layout4:setWidth(25);
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
    obj.edit4:setWidth(25);
    obj.edit4:setHeight(30);
    obj.edit4:setField("ManipulaçãoG");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(448);
    obj.layout5:setTop(193);
    obj.layout5:setWidth(25);
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
    obj.edit5:setWidth(25);
    obj.edit5:setHeight(30);
    obj.edit5:setField("ForçaC");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(468);
    obj.layout6:setTop(214);
    obj.layout6:setWidth(25);
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
    obj.edit6:setWidth(25);
    obj.edit6:setHeight(30);
    obj.edit6:setField("VigorC");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(450);
    obj.layout7:setTop(235);
    obj.layout7:setWidth(25);
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
    obj.edit7:setWidth(25);
    obj.edit7:setHeight(30);
    obj.edit7:setField("AparênciaC");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(497);
    obj.layout8:setTop(256);
    obj.layout8:setWidth(25);
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
    obj.edit8:setWidth(25);
    obj.edit8:setHeight(30);
    obj.edit8:setField("ManipulaçãoC");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(598);
    obj.layout9:setTop(193);
    obj.layout9:setWidth(25);
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
    obj.edit9:setWidth(25);
    obj.edit9:setHeight(30);
    obj.edit9:setField("ForçaH");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(623);
    obj.layout10:setTop(214);
    obj.layout10:setWidth(25);
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
    obj.edit10:setWidth(25);
    obj.edit10:setHeight(30);
    obj.edit10:setField("VigorH");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(601);
    obj.layout11:setTop(235);
    obj.layout11:setWidth(25);
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
    obj.edit11:setWidth(25);
    obj.edit11:setHeight(30);
    obj.edit11:setField("AparênciaH");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(652);
    obj.layout12:setTop(256);
    obj.layout12:setWidth(25);
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
    obj.edit12:setWidth(25);
    obj.edit12:setHeight(30);
    obj.edit12:setField("ManipulaçãoH");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(750);
    obj.layout13:setTop(193);
    obj.layout13:setWidth(25);
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
    obj.edit13:setWidth(25);
    obj.edit13:setHeight(30);
    obj.edit13:setField("ForçaL");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(776);
    obj.layout14:setTop(214);
    obj.layout14:setWidth(25);
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
    obj.edit14:setWidth(25);
    obj.edit14:setHeight(30);
    obj.edit14:setField("VigorL");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(758);
    obj.layout15:setTop(235);
    obj.layout15:setWidth(25);
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
    obj.edit15:setWidth(25);
    obj.edit15:setHeight(30);
    obj.edit15:setField("AparênciaL");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(805);
    obj.layout16:setTop(256);
    obj.layout16:setWidth(25);
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
    obj.edit16:setWidth(25);
    obj.edit16:setHeight(30);
    obj.edit16:setField("ManipulaçãoL");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(70);
    obj.layout17:setTop(467);
    obj.layout17:setWidth(165);
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
    obj.edit17:setWidth(165);
    obj.edit17:setHeight(30);
    obj.edit17:setField("Caract1");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(70);
    obj.layout18:setTop(489);
    obj.layout18:setWidth(165);
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
    obj.edit18:setWidth(165);
    obj.edit18:setHeight(30);
    obj.edit18:setField("Caract2");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(70);
    obj.layout19:setTop(509);
    obj.layout19:setWidth(165);
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
    obj.edit19:setWidth(165);
    obj.edit19:setHeight(30);
    obj.edit19:setField("Caract3");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(70);
    obj.layout20:setTop(530);
    obj.layout20:setWidth(165);
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
    obj.edit20:setWidth(165);
    obj.edit20:setHeight(30);
    obj.edit20:setField("Caract4");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(70);
    obj.layout21:setTop(551);
    obj.layout21:setWidth(165);
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
    obj.edit21:setWidth(165);
    obj.edit21:setHeight(30);
    obj.edit21:setField("Caract5");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(70);
    obj.layout22:setTop(573);
    obj.layout22:setWidth(165);
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
    obj.edit22:setWidth(165);
    obj.edit22:setHeight(30);
    obj.edit22:setField("Caract6");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(70);
    obj.layout23:setTop(594);
    obj.layout23:setWidth(165);
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
    obj.edit23:setWidth(165);
    obj.edit23:setHeight(30);
    obj.edit23:setField("Caract7");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(70);
    obj.layout24:setTop(616);
    obj.layout24:setWidth(165);
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
    obj.edit24:setWidth(165);
    obj.edit24:setHeight(30);
    obj.edit24:setField("Caract8");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(70);
    obj.layout25:setTop(636);
    obj.layout25:setWidth(165);
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
    obj.edit25:setWidth(165);
    obj.edit25:setHeight(30);
    obj.edit25:setField("Caract9");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(70);
    obj.layout26:setTop(658);
    obj.layout26:setWidth(165);
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
    obj.edit26:setWidth(165);
    obj.edit26:setHeight(30);
    obj.edit26:setField("Caract10");
    obj.edit26:setName("edit26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(70);
    obj.layout27:setTop(679);
    obj.layout27:setWidth(165);
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
    obj.edit27:setWidth(165);
    obj.edit27:setHeight(30);
    obj.edit27:setField("Caract11");
    obj.edit27:setName("edit27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(70);
    obj.layout28:setTop(701);
    obj.layout28:setWidth(165);
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
    obj.edit28:setWidth(165);
    obj.edit28:setHeight(30);
    obj.edit28:setField("Caract12");
    obj.edit28:setName("edit28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(70);
    obj.layout29:setTop(724);
    obj.layout29:setWidth(165);
    obj.layout29:setHeight(30);
    obj.layout29:setName("layout29");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout29);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(16);
    obj.edit29:setFontColor("#ffffff");
    obj.edit29:setHorzTextAlign("leading");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(165);
    obj.edit29:setHeight(30);
    obj.edit29:setField("Caract13");
    obj.edit29:setName("edit29");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(70);
    obj.layout30:setTop(746);
    obj.layout30:setWidth(165);
    obj.layout30:setHeight(30);
    obj.layout30:setName("layout30");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout30);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(16);
    obj.edit30:setFontColor("#ffffff");
    obj.edit30:setHorzTextAlign("leading");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(165);
    obj.edit30:setHeight(30);
    obj.edit30:setField("Caract14");
    obj.edit30:setName("edit30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(70);
    obj.layout31:setTop(765);
    obj.layout31:setWidth(165);
    obj.layout31:setHeight(30);
    obj.layout31:setName("layout31");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout31);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(16);
    obj.edit31:setFontColor("#ffffff");
    obj.edit31:setHorzTextAlign("leading");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(165);
    obj.edit31:setHeight(30);
    obj.edit31:setField("Caract15");
    obj.edit31:setName("edit31");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(70);
    obj.layout32:setTop(786);
    obj.layout32:setWidth(165);
    obj.layout32:setHeight(30);
    obj.layout32:setName("layout32");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout32);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(16);
    obj.edit32:setFontColor("#ffffff");
    obj.edit32:setHorzTextAlign("leading");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(165);
    obj.edit32:setHeight(30);
    obj.edit32:setField("Caract16");
    obj.edit32:setName("edit32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(70);
    obj.layout33:setTop(805);
    obj.layout33:setWidth(165);
    obj.layout33:setHeight(30);
    obj.layout33:setName("layout33");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout33);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(16);
    obj.edit33:setFontColor("#ffffff");
    obj.edit33:setHorzTextAlign("leading");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(165);
    obj.edit33:setHeight(30);
    obj.edit33:setField("Caract17");
    obj.edit33:setName("edit33");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(70);
    obj.layout34:setTop(828);
    obj.layout34:setWidth(165);
    obj.layout34:setHeight(30);
    obj.layout34:setName("layout34");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout34);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(16);
    obj.edit34:setFontColor("#ffffff");
    obj.edit34:setHorzTextAlign("leading");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(165);
    obj.edit34:setHeight(30);
    obj.edit34:setField("Caract18");
    obj.edit34:setName("edit34");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(70);
    obj.layout35:setTop(850);
    obj.layout35:setWidth(165);
    obj.layout35:setHeight(30);
    obj.layout35:setName("layout35");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout35);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(16);
    obj.edit35:setFontColor("#ffffff");
    obj.edit35:setHorzTextAlign("leading");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(165);
    obj.edit35:setHeight(30);
    obj.edit35:setField("Caract19");
    obj.edit35:setName("edit35");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(70);
    obj.layout36:setTop(871);
    obj.layout36:setWidth(165);
    obj.layout36:setHeight(30);
    obj.layout36:setName("layout36");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout36);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(16);
    obj.edit36:setFontColor("#ffffff");
    obj.edit36:setHorzTextAlign("leading");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(165);
    obj.edit36:setHeight(30);
    obj.edit36:setField("Caract20");
    obj.edit36:setName("edit36");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(70);
    obj.layout37:setTop(893);
    obj.layout37:setWidth(165);
    obj.layout37:setHeight(30);
    obj.layout37:setName("layout37");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout37);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(16);
    obj.edit37:setFontColor("#ffffff");
    obj.edit37:setHorzTextAlign("leading");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(165);
    obj.edit37:setHeight(30);
    obj.edit37:setField("Caract21");
    obj.edit37:setName("edit37");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(70);
    obj.layout38:setTop(915);
    obj.layout38:setWidth(165);
    obj.layout38:setHeight(30);
    obj.layout38:setName("layout38");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout38);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(16);
    obj.edit38:setFontColor("#ffffff");
    obj.edit38:setHorzTextAlign("leading");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(165);
    obj.edit38:setHeight(30);
    obj.edit38:setField("Caract22");
    obj.edit38:setName("edit38");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(370);
    obj.layout39:setTop(467);
    obj.layout39:setWidth(270);
    obj.layout39:setHeight(30);
    obj.layout39:setName("layout39");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout39);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(16);
    obj.edit39:setFontColor("#ffffff");
    obj.edit39:setHorzTextAlign("leading");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(270);
    obj.edit39:setHeight(30);
    obj.edit39:setField("Item1");
    obj.edit39:setName("edit39");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(693);
    obj.layout40:setTop(467);
    obj.layout40:setWidth(35);
    obj.layout40:setHeight(30);
    obj.layout40:setName("layout40");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout40);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(16);
    obj.edit40:setFontColor("#ffffff");
    obj.edit40:setHorzTextAlign("leading");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(35);
    obj.edit40:setHeight(30);
    obj.edit40:setField("Nivel1");
    obj.edit40:setName("edit40");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(785);
    obj.layout41:setTop(467);
    obj.layout41:setWidth(35);
    obj.layout41:setHeight(30);
    obj.layout41:setName("layout41");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout41);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(16);
    obj.edit41:setFontColor("#ffffff");
    obj.edit41:setHorzTextAlign("leading");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(35);
    obj.edit41:setHeight(30);
    obj.edit41:setField("Gnose1");
    obj.edit41:setName("edit41");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(380);
    obj.layout42:setTop(487);
    obj.layout42:setWidth(350);
    obj.layout42:setHeight(30);
    obj.layout42:setName("layout42");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout42);
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(16);
    obj.edit42:setFontColor("#ffffff");
    obj.edit42:setHorzTextAlign("leading");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(350);
    obj.edit42:setHeight(30);
    obj.edit42:setField("Poder1");
    obj.edit42:setName("edit42");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(370);
    obj.layout43:setTop(510);
    obj.layout43:setWidth(270);
    obj.layout43:setHeight(30);
    obj.layout43:setName("layout43");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout43);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(16);
    obj.edit43:setFontColor("#ffffff");
    obj.edit43:setHorzTextAlign("leading");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(270);
    obj.edit43:setHeight(30);
    obj.edit43:setField("Item2");
    obj.edit43:setName("edit43");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(693);
    obj.layout44:setTop(510);
    obj.layout44:setWidth(35);
    obj.layout44:setHeight(30);
    obj.layout44:setName("layout44");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout44);
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(16);
    obj.edit44:setFontColor("#ffffff");
    obj.edit44:setHorzTextAlign("leading");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(35);
    obj.edit44:setHeight(30);
    obj.edit44:setField("Nivel2");
    obj.edit44:setName("edit44");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(785);
    obj.layout45:setTop(510);
    obj.layout45:setWidth(35);
    obj.layout45:setHeight(30);
    obj.layout45:setName("layout45");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout45);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(16);
    obj.edit45:setFontColor("#ffffff");
    obj.edit45:setHorzTextAlign("leading");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(35);
    obj.edit45:setHeight(30);
    obj.edit45:setField("Gnose2");
    obj.edit45:setName("edit45");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(380);
    obj.layout46:setTop(531);
    obj.layout46:setWidth(350);
    obj.layout46:setHeight(30);
    obj.layout46:setName("layout46");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout46);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(16);
    obj.edit46:setFontColor("#ffffff");
    obj.edit46:setHorzTextAlign("leading");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(350);
    obj.edit46:setHeight(30);
    obj.edit46:setField("Poder2");
    obj.edit46:setName("edit46");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(370);
    obj.layout47:setTop(552);
    obj.layout47:setWidth(270);
    obj.layout47:setHeight(30);
    obj.layout47:setName("layout47");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout47);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(16);
    obj.edit47:setFontColor("#ffffff");
    obj.edit47:setHorzTextAlign("leading");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(270);
    obj.edit47:setHeight(30);
    obj.edit47:setField("Item3");
    obj.edit47:setName("edit47");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(693);
    obj.layout48:setTop(552);
    obj.layout48:setWidth(35);
    obj.layout48:setHeight(30);
    obj.layout48:setName("layout48");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout48);
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(16);
    obj.edit48:setFontColor("#ffffff");
    obj.edit48:setHorzTextAlign("leading");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(35);
    obj.edit48:setHeight(30);
    obj.edit48:setField("Nivel3");
    obj.edit48:setName("edit48");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(785);
    obj.layout49:setTop(552);
    obj.layout49:setWidth(35);
    obj.layout49:setHeight(30);
    obj.layout49:setName("layout49");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout49);
    obj.edit49:setTransparent(true);
    obj.edit49:setFontSize(16);
    obj.edit49:setFontColor("#ffffff");
    obj.edit49:setHorzTextAlign("leading");
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(0);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(35);
    obj.edit49:setHeight(30);
    obj.edit49:setField("Gnose3");
    obj.edit49:setName("edit49");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(380);
    obj.layout50:setTop(574);
    obj.layout50:setWidth(350);
    obj.layout50:setHeight(30);
    obj.layout50:setName("layout50");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout50);
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(16);
    obj.edit50:setFontColor("#ffffff");
    obj.edit50:setHorzTextAlign("leading");
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(350);
    obj.edit50:setHeight(30);
    obj.edit50:setField("Poder3");
    obj.edit50:setName("edit50");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(370);
    obj.layout51:setTop(595);
    obj.layout51:setWidth(270);
    obj.layout51:setHeight(30);
    obj.layout51:setName("layout51");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout51);
    obj.edit51:setTransparent(true);
    obj.edit51:setFontSize(16);
    obj.edit51:setFontColor("#ffffff");
    obj.edit51:setHorzTextAlign("leading");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setLeft(0);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(270);
    obj.edit51:setHeight(30);
    obj.edit51:setField("Item4");
    obj.edit51:setName("edit51");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(693);
    obj.layout52:setTop(595);
    obj.layout52:setWidth(35);
    obj.layout52:setHeight(30);
    obj.layout52:setName("layout52");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout52);
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(16);
    obj.edit52:setFontColor("#ffffff");
    obj.edit52:setHorzTextAlign("leading");
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(35);
    obj.edit52:setHeight(30);
    obj.edit52:setField("Nivel4");
    obj.edit52:setName("edit52");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(785);
    obj.layout53:setTop(595);
    obj.layout53:setWidth(35);
    obj.layout53:setHeight(30);
    obj.layout53:setName("layout53");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout53);
    obj.edit53:setTransparent(true);
    obj.edit53:setFontSize(16);
    obj.edit53:setFontColor("#ffffff");
    obj.edit53:setHorzTextAlign("leading");
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(0);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(35);
    obj.edit53:setHeight(30);
    obj.edit53:setField("Gnose4");
    obj.edit53:setName("edit53");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(380);
    obj.layout54:setTop(616);
    obj.layout54:setWidth(350);
    obj.layout54:setHeight(30);
    obj.layout54:setName("layout54");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout54);
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(16);
    obj.edit54:setFontColor("#ffffff");
    obj.edit54:setHorzTextAlign("leading");
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(350);
    obj.edit54:setHeight(30);
    obj.edit54:setField("Poder4");
    obj.edit54:setName("edit54");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(370);
    obj.layout55:setTop(638);
    obj.layout55:setWidth(270);
    obj.layout55:setHeight(30);
    obj.layout55:setName("layout55");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout55);
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(16);
    obj.edit55:setFontColor("#ffffff");
    obj.edit55:setHorzTextAlign("leading");
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(0);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(270);
    obj.edit55:setHeight(30);
    obj.edit55:setField("Item5");
    obj.edit55:setName("edit55");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(693);
    obj.layout56:setTop(638);
    obj.layout56:setWidth(35);
    obj.layout56:setHeight(30);
    obj.layout56:setName("layout56");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout56);
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(16);
    obj.edit56:setFontColor("#ffffff");
    obj.edit56:setHorzTextAlign("leading");
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(35);
    obj.edit56:setHeight(30);
    obj.edit56:setField("Nivel5");
    obj.edit56:setName("edit56");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(785);
    obj.layout57:setTop(638);
    obj.layout57:setWidth(35);
    obj.layout57:setHeight(30);
    obj.layout57:setName("layout57");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout57);
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(16);
    obj.edit57:setFontColor("#ffffff");
    obj.edit57:setHorzTextAlign("leading");
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(0);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(35);
    obj.edit57:setHeight(30);
    obj.edit57:setField("Gnose5");
    obj.edit57:setName("edit57");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(380);
    obj.layout58:setTop(659);
    obj.layout58:setWidth(350);
    obj.layout58:setHeight(30);
    obj.layout58:setName("layout58");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout58);
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(16);
    obj.edit58:setFontColor("#ffffff");
    obj.edit58:setHorzTextAlign("leading");
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(350);
    obj.edit58:setHeight(30);
    obj.edit58:setField("Poder5");
    obj.edit58:setName("edit58");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(370);
    obj.layout59:setTop(680);
    obj.layout59:setWidth(270);
    obj.layout59:setHeight(30);
    obj.layout59:setName("layout59");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout59);
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(16);
    obj.edit59:setFontColor("#ffffff");
    obj.edit59:setHorzTextAlign("leading");
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setLeft(0);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(270);
    obj.edit59:setHeight(30);
    obj.edit59:setField("Item6");
    obj.edit59:setName("edit59");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(693);
    obj.layout60:setTop(680);
    obj.layout60:setWidth(35);
    obj.layout60:setHeight(30);
    obj.layout60:setName("layout60");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout60);
    obj.edit60:setTransparent(true);
    obj.edit60:setFontSize(16);
    obj.edit60:setFontColor("#ffffff");
    obj.edit60:setHorzTextAlign("leading");
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setLeft(0);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(35);
    obj.edit60:setHeight(30);
    obj.edit60:setField("Nivel6");
    obj.edit60:setName("edit60");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(785);
    obj.layout61:setTop(680);
    obj.layout61:setWidth(35);
    obj.layout61:setHeight(30);
    obj.layout61:setName("layout61");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout61);
    obj.edit61:setTransparent(true);
    obj.edit61:setFontSize(16);
    obj.edit61:setFontColor("#ffffff");
    obj.edit61:setHorzTextAlign("leading");
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setLeft(0);
    obj.edit61:setTop(0);
    obj.edit61:setWidth(35);
    obj.edit61:setHeight(30);
    obj.edit61:setField("Gnose6");
    obj.edit61:setName("edit61");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(380);
    obj.layout62:setTop(702);
    obj.layout62:setWidth(350);
    obj.layout62:setHeight(30);
    obj.layout62:setName("layout62");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout62);
    obj.edit62:setTransparent(true);
    obj.edit62:setFontSize(16);
    obj.edit62:setFontColor("#ffffff");
    obj.edit62:setHorzTextAlign("leading");
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setLeft(0);
    obj.edit62:setTop(0);
    obj.edit62:setWidth(350);
    obj.edit62:setHeight(30);
    obj.edit62:setField("Poder6");
    obj.edit62:setName("edit62");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(370);
    obj.layout63:setTop(723);
    obj.layout63:setWidth(270);
    obj.layout63:setHeight(30);
    obj.layout63:setName("layout63");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout63);
    obj.edit63:setTransparent(true);
    obj.edit63:setFontSize(16);
    obj.edit63:setFontColor("#ffffff");
    obj.edit63:setHorzTextAlign("leading");
    obj.edit63:setVertTextAlign("center");
    obj.edit63:setLeft(0);
    obj.edit63:setTop(0);
    obj.edit63:setWidth(270);
    obj.edit63:setHeight(30);
    obj.edit63:setField("Item7");
    obj.edit63:setName("edit63");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(693);
    obj.layout64:setTop(723);
    obj.layout64:setWidth(35);
    obj.layout64:setHeight(30);
    obj.layout64:setName("layout64");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout64);
    obj.edit64:setTransparent(true);
    obj.edit64:setFontSize(16);
    obj.edit64:setFontColor("#ffffff");
    obj.edit64:setHorzTextAlign("leading");
    obj.edit64:setVertTextAlign("center");
    obj.edit64:setLeft(0);
    obj.edit64:setTop(0);
    obj.edit64:setWidth(35);
    obj.edit64:setHeight(30);
    obj.edit64:setField("Nivel7");
    obj.edit64:setName("edit64");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(785);
    obj.layout65:setTop(723);
    obj.layout65:setWidth(35);
    obj.layout65:setHeight(30);
    obj.layout65:setName("layout65");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout65);
    obj.edit65:setTransparent(true);
    obj.edit65:setFontSize(16);
    obj.edit65:setFontColor("#ffffff");
    obj.edit65:setHorzTextAlign("leading");
    obj.edit65:setVertTextAlign("center");
    obj.edit65:setLeft(0);
    obj.edit65:setTop(0);
    obj.edit65:setWidth(35);
    obj.edit65:setHeight(30);
    obj.edit65:setField("Gnose7");
    obj.edit65:setName("edit65");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(380);
    obj.layout66:setTop(742);
    obj.layout66:setWidth(350);
    obj.layout66:setHeight(30);
    obj.layout66:setName("layout66");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout66);
    obj.edit66:setTransparent(true);
    obj.edit66:setFontSize(16);
    obj.edit66:setFontColor("#ffffff");
    obj.edit66:setHorzTextAlign("leading");
    obj.edit66:setVertTextAlign("center");
    obj.edit66:setLeft(0);
    obj.edit66:setTop(0);
    obj.edit66:setWidth(350);
    obj.edit66:setHeight(30);
    obj.edit66:setField("Poder7");
    obj.edit66:setName("edit66");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(370);
    obj.layout67:setTop(766);
    obj.layout67:setWidth(270);
    obj.layout67:setHeight(30);
    obj.layout67:setName("layout67");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout67);
    obj.edit67:setTransparent(true);
    obj.edit67:setFontSize(16);
    obj.edit67:setFontColor("#ffffff");
    obj.edit67:setHorzTextAlign("leading");
    obj.edit67:setVertTextAlign("center");
    obj.edit67:setLeft(0);
    obj.edit67:setTop(0);
    obj.edit67:setWidth(270);
    obj.edit67:setHeight(30);
    obj.edit67:setField("Item8");
    obj.edit67:setName("edit67");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(693);
    obj.layout68:setTop(766);
    obj.layout68:setWidth(35);
    obj.layout68:setHeight(30);
    obj.layout68:setName("layout68");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout68);
    obj.edit68:setTransparent(true);
    obj.edit68:setFontSize(16);
    obj.edit68:setFontColor("#ffffff");
    obj.edit68:setHorzTextAlign("leading");
    obj.edit68:setVertTextAlign("center");
    obj.edit68:setLeft(0);
    obj.edit68:setTop(0);
    obj.edit68:setWidth(35);
    obj.edit68:setHeight(30);
    obj.edit68:setField("Nivel8");
    obj.edit68:setName("edit68");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(785);
    obj.layout69:setTop(766);
    obj.layout69:setWidth(35);
    obj.layout69:setHeight(30);
    obj.layout69:setName("layout69");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout69);
    obj.edit69:setTransparent(true);
    obj.edit69:setFontSize(16);
    obj.edit69:setFontColor("#ffffff");
    obj.edit69:setHorzTextAlign("leading");
    obj.edit69:setVertTextAlign("center");
    obj.edit69:setLeft(0);
    obj.edit69:setTop(0);
    obj.edit69:setWidth(35);
    obj.edit69:setHeight(30);
    obj.edit69:setField("Gnose8");
    obj.edit69:setName("edit69");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(380);
    obj.layout70:setTop(784);
    obj.layout70:setWidth(350);
    obj.layout70:setHeight(30);
    obj.layout70:setName("layout70");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout70);
    obj.edit70:setTransparent(true);
    obj.edit70:setFontSize(16);
    obj.edit70:setFontColor("#ffffff");
    obj.edit70:setHorzTextAlign("leading");
    obj.edit70:setVertTextAlign("center");
    obj.edit70:setLeft(0);
    obj.edit70:setTop(0);
    obj.edit70:setWidth(350);
    obj.edit70:setHeight(30);
    obj.edit70:setField("Poder8");
    obj.edit70:setName("edit70");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(370);
    obj.layout71:setTop(809);
    obj.layout71:setWidth(270);
    obj.layout71:setHeight(30);
    obj.layout71:setName("layout71");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout71);
    obj.edit71:setTransparent(true);
    obj.edit71:setFontSize(16);
    obj.edit71:setFontColor("#ffffff");
    obj.edit71:setHorzTextAlign("leading");
    obj.edit71:setVertTextAlign("center");
    obj.edit71:setLeft(0);
    obj.edit71:setTop(0);
    obj.edit71:setWidth(270);
    obj.edit71:setHeight(30);
    obj.edit71:setField("Item9");
    obj.edit71:setName("edit71");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(693);
    obj.layout72:setTop(809);
    obj.layout72:setWidth(35);
    obj.layout72:setHeight(30);
    obj.layout72:setName("layout72");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout72);
    obj.edit72:setTransparent(true);
    obj.edit72:setFontSize(16);
    obj.edit72:setFontColor("#ffffff");
    obj.edit72:setHorzTextAlign("leading");
    obj.edit72:setVertTextAlign("center");
    obj.edit72:setLeft(0);
    obj.edit72:setTop(0);
    obj.edit72:setWidth(35);
    obj.edit72:setHeight(30);
    obj.edit72:setField("Nivel9");
    obj.edit72:setName("edit72");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(785);
    obj.layout73:setTop(809);
    obj.layout73:setWidth(35);
    obj.layout73:setHeight(30);
    obj.layout73:setName("layout73");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout73);
    obj.edit73:setTransparent(true);
    obj.edit73:setFontSize(16);
    obj.edit73:setFontColor("#ffffff");
    obj.edit73:setHorzTextAlign("leading");
    obj.edit73:setVertTextAlign("center");
    obj.edit73:setLeft(0);
    obj.edit73:setTop(0);
    obj.edit73:setWidth(35);
    obj.edit73:setHeight(30);
    obj.edit73:setField("Gnose9");
    obj.edit73:setName("edit73");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(380);
    obj.layout74:setTop(830);
    obj.layout74:setWidth(350);
    obj.layout74:setHeight(30);
    obj.layout74:setName("layout74");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout74);
    obj.edit74:setTransparent(true);
    obj.edit74:setFontSize(16);
    obj.edit74:setFontColor("#ffffff");
    obj.edit74:setHorzTextAlign("leading");
    obj.edit74:setVertTextAlign("center");
    obj.edit74:setLeft(0);
    obj.edit74:setTop(0);
    obj.edit74:setWidth(350);
    obj.edit74:setHeight(30);
    obj.edit74:setField("Poder9");
    obj.edit74:setName("edit74");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(370);
    obj.layout75:setTop(852);
    obj.layout75:setWidth(270);
    obj.layout75:setHeight(30);
    obj.layout75:setName("layout75");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout75);
    obj.edit75:setTransparent(true);
    obj.edit75:setFontSize(16);
    obj.edit75:setFontColor("#ffffff");
    obj.edit75:setHorzTextAlign("leading");
    obj.edit75:setVertTextAlign("center");
    obj.edit75:setLeft(0);
    obj.edit75:setTop(0);
    obj.edit75:setWidth(270);
    obj.edit75:setHeight(30);
    obj.edit75:setField("Item10");
    obj.edit75:setName("edit75");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(693);
    obj.layout76:setTop(852);
    obj.layout76:setWidth(35);
    obj.layout76:setHeight(30);
    obj.layout76:setName("layout76");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout76);
    obj.edit76:setTransparent(true);
    obj.edit76:setFontSize(16);
    obj.edit76:setFontColor("#ffffff");
    obj.edit76:setHorzTextAlign("leading");
    obj.edit76:setVertTextAlign("center");
    obj.edit76:setLeft(0);
    obj.edit76:setTop(0);
    obj.edit76:setWidth(35);
    obj.edit76:setHeight(30);
    obj.edit76:setField("Nivel10");
    obj.edit76:setName("edit76");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(785);
    obj.layout77:setTop(852);
    obj.layout77:setWidth(35);
    obj.layout77:setHeight(30);
    obj.layout77:setName("layout77");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout77);
    obj.edit77:setTransparent(true);
    obj.edit77:setFontSize(16);
    obj.edit77:setFontColor("#ffffff");
    obj.edit77:setHorzTextAlign("leading");
    obj.edit77:setVertTextAlign("center");
    obj.edit77:setLeft(0);
    obj.edit77:setTop(0);
    obj.edit77:setWidth(35);
    obj.edit77:setHeight(30);
    obj.edit77:setField("Gnose10");
    obj.edit77:setName("edit77");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(380);
    obj.layout78:setTop(870);
    obj.layout78:setWidth(350);
    obj.layout78:setHeight(30);
    obj.layout78:setName("layout78");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout78);
    obj.edit78:setTransparent(true);
    obj.edit78:setFontSize(16);
    obj.edit78:setFontColor("#ffffff");
    obj.edit78:setHorzTextAlign("leading");
    obj.edit78:setVertTextAlign("center");
    obj.edit78:setLeft(0);
    obj.edit78:setTop(0);
    obj.edit78:setWidth(350);
    obj.edit78:setHeight(30);
    obj.edit78:setField("Poder10");
    obj.edit78:setName("edit78");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(370);
    obj.layout79:setTop(895);
    obj.layout79:setWidth(270);
    obj.layout79:setHeight(30);
    obj.layout79:setName("layout79");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout79);
    obj.edit79:setTransparent(true);
    obj.edit79:setFontSize(16);
    obj.edit79:setFontColor("#ffffff");
    obj.edit79:setHorzTextAlign("leading");
    obj.edit79:setVertTextAlign("center");
    obj.edit79:setLeft(0);
    obj.edit79:setTop(0);
    obj.edit79:setWidth(270);
    obj.edit79:setHeight(30);
    obj.edit79:setField("Item11");
    obj.edit79:setName("edit79");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(693);
    obj.layout80:setTop(895);
    obj.layout80:setWidth(35);
    obj.layout80:setHeight(30);
    obj.layout80:setName("layout80");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout80);
    obj.edit80:setTransparent(true);
    obj.edit80:setFontSize(16);
    obj.edit80:setFontColor("#ffffff");
    obj.edit80:setHorzTextAlign("leading");
    obj.edit80:setVertTextAlign("center");
    obj.edit80:setLeft(0);
    obj.edit80:setTop(0);
    obj.edit80:setWidth(35);
    obj.edit80:setHeight(30);
    obj.edit80:setField("Nivel11");
    obj.edit80:setName("edit80");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(785);
    obj.layout81:setTop(895);
    obj.layout81:setWidth(35);
    obj.layout81:setHeight(30);
    obj.layout81:setName("layout81");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout81);
    obj.edit81:setTransparent(true);
    obj.edit81:setFontSize(16);
    obj.edit81:setFontColor("#ffffff");
    obj.edit81:setHorzTextAlign("leading");
    obj.edit81:setVertTextAlign("center");
    obj.edit81:setLeft(0);
    obj.edit81:setTop(0);
    obj.edit81:setWidth(35);
    obj.edit81:setHeight(30);
    obj.edit81:setField("Gnose11");
    obj.edit81:setName("edit81");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(380);
    obj.layout82:setTop(912);
    obj.layout82:setWidth(350);
    obj.layout82:setHeight(30);
    obj.layout82:setName("layout82");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout82);
    obj.edit82:setTransparent(true);
    obj.edit82:setFontSize(16);
    obj.edit82:setFontColor("#ffffff");
    obj.edit82:setHorzTextAlign("leading");
    obj.edit82:setVertTextAlign("center");
    obj.edit82:setLeft(0);
    obj.edit82:setTop(0);
    obj.edit82:setWidth(350);
    obj.edit82:setHeight(30);
    obj.edit82:setField("Poder11");
    obj.edit82:setName("edit82");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(234);
    obj.layout83:setTop(773);
    obj.layout83:setWidth(18);
    obj.layout83:setHeight(18);
    obj.layout83:setName("layout83");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout83);
    obj.imageCheckBox1:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox1:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox1:setWidth(18);
    obj.imageCheckBox1:setHeight(18);
    obj.imageCheckBox1:setField("Pata1C15");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(234);
    obj.layout84:setTop(474);
    obj.layout84:setWidth(18);
    obj.layout84:setHeight(18);
    obj.layout84:setName("layout84");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout84);
    obj.imageCheckBox2:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox2:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox2:setWidth(18);
    obj.imageCheckBox2:setHeight(18);
    obj.imageCheckBox2:setField("Pata1C1");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(234);
    obj.layout85:setTop(496);
    obj.layout85:setWidth(18);
    obj.layout85:setHeight(18);
    obj.layout85:setName("layout85");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout85);
    obj.imageCheckBox3:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox3:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox3:setWidth(18);
    obj.imageCheckBox3:setHeight(18);
    obj.imageCheckBox3:setField("Pata1C2");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(234);
    obj.layout86:setTop(517);
    obj.layout86:setWidth(18);
    obj.layout86:setHeight(18);
    obj.layout86:setName("layout86");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout86);
    obj.imageCheckBox4:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox4:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox4:setWidth(18);
    obj.imageCheckBox4:setHeight(18);
    obj.imageCheckBox4:setField("Pata1C3");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(234);
    obj.layout87:setTop(538);
    obj.layout87:setWidth(18);
    obj.layout87:setHeight(18);
    obj.layout87:setName("layout87");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout87);
    obj.imageCheckBox5:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox5:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox5:setWidth(18);
    obj.imageCheckBox5:setHeight(18);
    obj.imageCheckBox5:setField("Pata1C4");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(234);
    obj.layout88:setTop(559);
    obj.layout88:setWidth(18);
    obj.layout88:setHeight(18);
    obj.layout88:setName("layout88");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout88);
    obj.imageCheckBox6:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox6:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox6:setWidth(18);
    obj.imageCheckBox6:setHeight(18);
    obj.imageCheckBox6:setField("Pata1C5");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(234);
    obj.layout89:setTop(580);
    obj.layout89:setWidth(18);
    obj.layout89:setHeight(18);
    obj.layout89:setName("layout89");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout89);
    obj.imageCheckBox7:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox7:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox7:setWidth(18);
    obj.imageCheckBox7:setHeight(18);
    obj.imageCheckBox7:setField("Pata1C6");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(234);
    obj.layout90:setTop(601);
    obj.layout90:setWidth(18);
    obj.layout90:setHeight(18);
    obj.layout90:setName("layout90");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout90);
    obj.imageCheckBox8:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox8:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox8:setWidth(18);
    obj.imageCheckBox8:setHeight(18);
    obj.imageCheckBox8:setField("Pata1C7");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(234);
    obj.layout91:setTop(623);
    obj.layout91:setWidth(18);
    obj.layout91:setHeight(18);
    obj.layout91:setName("layout91");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout91);
    obj.imageCheckBox9:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox9:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox9:setWidth(18);
    obj.imageCheckBox9:setHeight(18);
    obj.imageCheckBox9:setField("Pata1C8");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(234);
    obj.layout92:setTop(643);
    obj.layout92:setWidth(18);
    obj.layout92:setHeight(18);
    obj.layout92:setName("layout92");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout92);
    obj.imageCheckBox10:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox10:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox10:setWidth(18);
    obj.imageCheckBox10:setHeight(18);
    obj.imageCheckBox10:setField("Pata1C9");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(234);
    obj.layout93:setTop(665);
    obj.layout93:setWidth(18);
    obj.layout93:setHeight(18);
    obj.layout93:setName("layout93");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout93);
    obj.imageCheckBox11:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox11:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox11:setWidth(18);
    obj.imageCheckBox11:setHeight(18);
    obj.imageCheckBox11:setField("Pata1C10");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(234);
    obj.layout94:setTop(686);
    obj.layout94:setWidth(18);
    obj.layout94:setHeight(18);
    obj.layout94:setName("layout94");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout94);
    obj.imageCheckBox12:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox12:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox12:setWidth(18);
    obj.imageCheckBox12:setHeight(18);
    obj.imageCheckBox12:setField("Pata1C11");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(234);
    obj.layout95:setTop(708);
    obj.layout95:setWidth(18);
    obj.layout95:setHeight(18);
    obj.layout95:setName("layout95");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout95);
    obj.imageCheckBox13:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox13:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox13:setWidth(18);
    obj.imageCheckBox13:setHeight(18);
    obj.imageCheckBox13:setField("Pata1C12");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(234);
    obj.layout96:setTop(731);
    obj.layout96:setWidth(18);
    obj.layout96:setHeight(18);
    obj.layout96:setName("layout96");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout96);
    obj.imageCheckBox14:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox14:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox14:setWidth(18);
    obj.imageCheckBox14:setHeight(18);
    obj.imageCheckBox14:setField("Pata1C13");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(234);
    obj.layout97:setTop(753);
    obj.layout97:setWidth(18);
    obj.layout97:setHeight(18);
    obj.layout97:setName("layout97");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout97);
    obj.imageCheckBox15:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox15:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox15:setWidth(18);
    obj.imageCheckBox15:setHeight(18);
    obj.imageCheckBox15:setField("Pata1C14");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(234);
    obj.layout98:setTop(793);
    obj.layout98:setWidth(18);
    obj.layout98:setHeight(18);
    obj.layout98:setName("layout98");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout98);
    obj.imageCheckBox16:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox16:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox16:setWidth(18);
    obj.imageCheckBox16:setHeight(18);
    obj.imageCheckBox16:setField("Pata1C16");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(234);
    obj.layout99:setTop(813);
    obj.layout99:setWidth(18);
    obj.layout99:setHeight(18);
    obj.layout99:setName("layout99");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout99);
    obj.imageCheckBox17:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox17:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox17:setWidth(18);
    obj.imageCheckBox17:setHeight(18);
    obj.imageCheckBox17:setField("Pata1C17");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(234);
    obj.layout100:setTop(835);
    obj.layout100:setWidth(18);
    obj.layout100:setHeight(18);
    obj.layout100:setName("layout100");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout100);
    obj.imageCheckBox18:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox18:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox18:setWidth(18);
    obj.imageCheckBox18:setHeight(18);
    obj.imageCheckBox18:setField("Pata1C18");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(234);
    obj.layout101:setTop(857);
    obj.layout101:setWidth(18);
    obj.layout101:setHeight(18);
    obj.layout101:setName("layout101");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout101);
    obj.imageCheckBox19:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox19:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox19:setWidth(18);
    obj.imageCheckBox19:setHeight(18);
    obj.imageCheckBox19:setField("Pata1C19");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(234);
    obj.layout102:setTop(878);
    obj.layout102:setWidth(18);
    obj.layout102:setHeight(18);
    obj.layout102:setName("layout102");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout102);
    obj.imageCheckBox20:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox20:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox20:setWidth(18);
    obj.imageCheckBox20:setHeight(18);
    obj.imageCheckBox20:setField("Pata1C20");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(234);
    obj.layout103:setTop(900);
    obj.layout103:setWidth(18);
    obj.layout103:setHeight(18);
    obj.layout103:setName("layout103");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout103);
    obj.imageCheckBox21:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox21:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox21:setWidth(18);
    obj.imageCheckBox21:setHeight(18);
    obj.imageCheckBox21:setField("Pata1C21");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(234);
    obj.layout104:setTop(921);
    obj.layout104:setWidth(18);
    obj.layout104:setHeight(18);
    obj.layout104:setName("layout104");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout104);
    obj.imageCheckBox22:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox22:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox22:setWidth(18);
    obj.imageCheckBox22:setHeight(18);
    obj.imageCheckBox22:setField("Pata1C22");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(728);
    obj.layout105:setTop(496);
    obj.layout105:setWidth(18);
    obj.layout105:setHeight(18);
    obj.layout105:setName("layout105");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout105);
    obj.imageCheckBox23:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox23:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox23:setWidth(18);
    obj.imageCheckBox23:setHeight(18);
    obj.imageCheckBox23:setField("square1Ded");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(728);
    obj.layout106:setTop(538);
    obj.layout106:setWidth(18);
    obj.layout106:setHeight(18);
    obj.layout106:setName("layout106");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout106);
    obj.imageCheckBox24:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox24:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox24:setWidth(18);
    obj.imageCheckBox24:setHeight(18);
    obj.imageCheckBox24:setField("square2Ded");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(728);
    obj.layout107:setTop(581);
    obj.layout107:setWidth(18);
    obj.layout107:setHeight(18);
    obj.layout107:setName("layout107");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout107);
    obj.imageCheckBox25:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox25:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox25:setWidth(18);
    obj.imageCheckBox25:setHeight(18);
    obj.imageCheckBox25:setField("square3Ded");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(728);
    obj.layout108:setTop(623);
    obj.layout108:setWidth(18);
    obj.layout108:setHeight(18);
    obj.layout108:setName("layout108");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout108);
    obj.imageCheckBox26:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox26:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox26:setWidth(18);
    obj.imageCheckBox26:setHeight(18);
    obj.imageCheckBox26:setField("square4Ded");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(728);
    obj.layout109:setTop(667);
    obj.layout109:setWidth(18);
    obj.layout109:setHeight(18);
    obj.layout109:setName("layout109");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout109);
    obj.imageCheckBox27:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox27:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox27:setWidth(18);
    obj.imageCheckBox27:setHeight(18);
    obj.imageCheckBox27:setField("square5Ded");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(728);
    obj.layout110:setTop(710);
    obj.layout110:setWidth(18);
    obj.layout110:setHeight(18);
    obj.layout110:setName("layout110");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout110);
    obj.imageCheckBox28:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox28:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox28:setWidth(18);
    obj.imageCheckBox28:setHeight(18);
    obj.imageCheckBox28:setField("square6Ded");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(728);
    obj.layout111:setTop(752);
    obj.layout111:setWidth(18);
    obj.layout111:setHeight(18);
    obj.layout111:setName("layout111");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout111);
    obj.imageCheckBox29:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox29:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox29:setWidth(18);
    obj.imageCheckBox29:setHeight(18);
    obj.imageCheckBox29:setField("square7Ded");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(728);
    obj.layout112:setTop(794);
    obj.layout112:setWidth(18);
    obj.layout112:setHeight(18);
    obj.layout112:setName("layout112");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout112);
    obj.imageCheckBox30:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox30:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox30:setWidth(18);
    obj.imageCheckBox30:setHeight(18);
    obj.imageCheckBox30:setField("square8Ded");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(728);
    obj.layout113:setTop(836);
    obj.layout113:setWidth(18);
    obj.layout113:setHeight(18);
    obj.layout113:setName("layout113");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout113);
    obj.imageCheckBox31:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox31:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox31:setWidth(18);
    obj.imageCheckBox31:setHeight(18);
    obj.imageCheckBox31:setField("square9Ded");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(728);
    obj.layout114:setTop(878);
    obj.layout114:setWidth(18);
    obj.layout114:setHeight(18);
    obj.layout114:setName("layout114");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout114);
    obj.imageCheckBox32:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox32:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox32:setWidth(18);
    obj.imageCheckBox32:setHeight(18);
    obj.imageCheckBox32:setField("square10Ded");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(728);
    obj.layout115:setTop(920);
    obj.layout115:setWidth(18);
    obj.layout115:setHeight(18);
    obj.layout115:setName("layout115");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout115);
    obj.imageCheckBox33:setImageChecked("Lobisomen - Drake's Chronicles/images/square_on.png");
    obj.imageCheckBox33:setImageUnchecked("Lobisomen - Drake's Chronicles/images/square_off.png");
    obj.imageCheckBox33:setWidth(18);
    obj.imageCheckBox33:setHeight(18);
    obj.imageCheckBox33:setField("square11Ded");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(248);
    obj.layout116:setTop(474);
    obj.layout116:setWidth(18);
    obj.layout116:setHeight(18);
    obj.layout116:setName("layout116");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout116);
    obj.imageCheckBox34:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox34:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox34:setWidth(18);
    obj.imageCheckBox34:setHeight(18);
    obj.imageCheckBox34:setField("Pata2C1");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(248);
    obj.layout117:setTop(496);
    obj.layout117:setWidth(18);
    obj.layout117:setHeight(18);
    obj.layout117:setName("layout117");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout117);
    obj.imageCheckBox35:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox35:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox35:setWidth(18);
    obj.imageCheckBox35:setHeight(18);
    obj.imageCheckBox35:setField("Pata2C2");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(248);
    obj.layout118:setTop(517);
    obj.layout118:setWidth(18);
    obj.layout118:setHeight(18);
    obj.layout118:setName("layout118");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout118);
    obj.imageCheckBox36:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox36:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox36:setWidth(18);
    obj.imageCheckBox36:setHeight(18);
    obj.imageCheckBox36:setField("Pata2C3");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(248);
    obj.layout119:setTop(538);
    obj.layout119:setWidth(18);
    obj.layout119:setHeight(18);
    obj.layout119:setName("layout119");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout119);
    obj.imageCheckBox37:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox37:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox37:setWidth(18);
    obj.imageCheckBox37:setHeight(18);
    obj.imageCheckBox37:setField("Pata2C4");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(248);
    obj.layout120:setTop(559);
    obj.layout120:setWidth(18);
    obj.layout120:setHeight(18);
    obj.layout120:setName("layout120");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout120);
    obj.imageCheckBox38:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox38:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox38:setWidth(18);
    obj.imageCheckBox38:setHeight(18);
    obj.imageCheckBox38:setField("Pata2C5");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(248);
    obj.layout121:setTop(580);
    obj.layout121:setWidth(18);
    obj.layout121:setHeight(18);
    obj.layout121:setName("layout121");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout121);
    obj.imageCheckBox39:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox39:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox39:setWidth(18);
    obj.imageCheckBox39:setHeight(18);
    obj.imageCheckBox39:setField("Pata2C6");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(248);
    obj.layout122:setTop(601);
    obj.layout122:setWidth(18);
    obj.layout122:setHeight(18);
    obj.layout122:setName("layout122");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout122);
    obj.imageCheckBox40:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox40:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox40:setWidth(18);
    obj.imageCheckBox40:setHeight(18);
    obj.imageCheckBox40:setField("Pata2C7");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(248);
    obj.layout123:setTop(623);
    obj.layout123:setWidth(18);
    obj.layout123:setHeight(18);
    obj.layout123:setName("layout123");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout123);
    obj.imageCheckBox41:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox41:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox41:setWidth(18);
    obj.imageCheckBox41:setHeight(18);
    obj.imageCheckBox41:setField("Pata2C8");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(248);
    obj.layout124:setTop(643);
    obj.layout124:setWidth(18);
    obj.layout124:setHeight(18);
    obj.layout124:setName("layout124");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout124);
    obj.imageCheckBox42:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox42:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox42:setWidth(18);
    obj.imageCheckBox42:setHeight(18);
    obj.imageCheckBox42:setField("Pata2C9");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(248);
    obj.layout125:setTop(665);
    obj.layout125:setWidth(18);
    obj.layout125:setHeight(18);
    obj.layout125:setName("layout125");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout125);
    obj.imageCheckBox43:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox43:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox43:setWidth(18);
    obj.imageCheckBox43:setHeight(18);
    obj.imageCheckBox43:setField("Pata2C10");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(248);
    obj.layout126:setTop(686);
    obj.layout126:setWidth(18);
    obj.layout126:setHeight(18);
    obj.layout126:setName("layout126");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout126);
    obj.imageCheckBox44:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox44:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox44:setWidth(18);
    obj.imageCheckBox44:setHeight(18);
    obj.imageCheckBox44:setField("Pata2C11");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(248);
    obj.layout127:setTop(708);
    obj.layout127:setWidth(18);
    obj.layout127:setHeight(18);
    obj.layout127:setName("layout127");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout127);
    obj.imageCheckBox45:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox45:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox45:setWidth(18);
    obj.imageCheckBox45:setHeight(18);
    obj.imageCheckBox45:setField("Pata2C12");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(248);
    obj.layout128:setTop(731);
    obj.layout128:setWidth(18);
    obj.layout128:setHeight(18);
    obj.layout128:setName("layout128");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout128);
    obj.imageCheckBox46:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox46:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox46:setWidth(18);
    obj.imageCheckBox46:setHeight(18);
    obj.imageCheckBox46:setField("Pata2C13");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(248);
    obj.layout129:setTop(753);
    obj.layout129:setWidth(18);
    obj.layout129:setHeight(18);
    obj.layout129:setName("layout129");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout129);
    obj.imageCheckBox47:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox47:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox47:setWidth(18);
    obj.imageCheckBox47:setHeight(18);
    obj.imageCheckBox47:setField("Pata2C14");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(248);
    obj.layout130:setTop(773);
    obj.layout130:setWidth(18);
    obj.layout130:setHeight(18);
    obj.layout130:setName("layout130");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout130);
    obj.imageCheckBox48:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox48:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox48:setWidth(18);
    obj.imageCheckBox48:setHeight(18);
    obj.imageCheckBox48:setField("Pata2C15");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(248);
    obj.layout131:setTop(793);
    obj.layout131:setWidth(18);
    obj.layout131:setHeight(18);
    obj.layout131:setName("layout131");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout131);
    obj.imageCheckBox49:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox49:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox49:setWidth(18);
    obj.imageCheckBox49:setHeight(18);
    obj.imageCheckBox49:setField("Pata2C16");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(248);
    obj.layout132:setTop(813);
    obj.layout132:setWidth(18);
    obj.layout132:setHeight(18);
    obj.layout132:setName("layout132");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout132);
    obj.imageCheckBox50:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox50:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox50:setWidth(18);
    obj.imageCheckBox50:setHeight(18);
    obj.imageCheckBox50:setField("Pata2C17");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(248);
    obj.layout133:setTop(835);
    obj.layout133:setWidth(18);
    obj.layout133:setHeight(18);
    obj.layout133:setName("layout133");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout133);
    obj.imageCheckBox51:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox51:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox51:setWidth(18);
    obj.imageCheckBox51:setHeight(18);
    obj.imageCheckBox51:setField("Pata2C18");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(248);
    obj.layout134:setTop(857);
    obj.layout134:setWidth(18);
    obj.layout134:setHeight(18);
    obj.layout134:setName("layout134");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout134);
    obj.imageCheckBox52:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox52:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox52:setWidth(18);
    obj.imageCheckBox52:setHeight(18);
    obj.imageCheckBox52:setField("Pata2C19");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(248);
    obj.layout135:setTop(878);
    obj.layout135:setWidth(18);
    obj.layout135:setHeight(18);
    obj.layout135:setName("layout135");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout135);
    obj.imageCheckBox53:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox53:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox53:setWidth(18);
    obj.imageCheckBox53:setHeight(18);
    obj.imageCheckBox53:setField("Pata2C20");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle1);
    obj.layout136:setLeft(248);
    obj.layout136:setTop(900);
    obj.layout136:setWidth(18);
    obj.layout136:setHeight(18);
    obj.layout136:setName("layout136");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout136);
    obj.imageCheckBox54:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox54:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox54:setWidth(18);
    obj.imageCheckBox54:setHeight(18);
    obj.imageCheckBox54:setField("Pata2C21");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle1);
    obj.layout137:setLeft(248);
    obj.layout137:setTop(921);
    obj.layout137:setWidth(18);
    obj.layout137:setHeight(18);
    obj.layout137:setName("layout137");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout137);
    obj.imageCheckBox55:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox55:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox55:setWidth(18);
    obj.imageCheckBox55:setHeight(18);
    obj.imageCheckBox55:setField("Pata2C22");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle1);
    obj.layout138:setLeft(263);
    obj.layout138:setTop(474);
    obj.layout138:setWidth(18);
    obj.layout138:setHeight(18);
    obj.layout138:setName("layout138");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout138);
    obj.imageCheckBox56:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox56:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox56:setWidth(18);
    obj.imageCheckBox56:setHeight(18);
    obj.imageCheckBox56:setField("Pata3C1");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle1);
    obj.layout139:setLeft(263);
    obj.layout139:setTop(496);
    obj.layout139:setWidth(18);
    obj.layout139:setHeight(18);
    obj.layout139:setName("layout139");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout139);
    obj.imageCheckBox57:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox57:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox57:setWidth(18);
    obj.imageCheckBox57:setHeight(18);
    obj.imageCheckBox57:setField("Pata3C2");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle1);
    obj.layout140:setLeft(263);
    obj.layout140:setTop(517);
    obj.layout140:setWidth(18);
    obj.layout140:setHeight(18);
    obj.layout140:setName("layout140");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout140);
    obj.imageCheckBox58:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox58:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox58:setWidth(18);
    obj.imageCheckBox58:setHeight(18);
    obj.imageCheckBox58:setField("Pata3C3");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle1);
    obj.layout141:setLeft(263);
    obj.layout141:setTop(538);
    obj.layout141:setWidth(18);
    obj.layout141:setHeight(18);
    obj.layout141:setName("layout141");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout141);
    obj.imageCheckBox59:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox59:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox59:setWidth(18);
    obj.imageCheckBox59:setHeight(18);
    obj.imageCheckBox59:setField("Pata3C4");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle1);
    obj.layout142:setLeft(263);
    obj.layout142:setTop(559);
    obj.layout142:setWidth(18);
    obj.layout142:setHeight(18);
    obj.layout142:setName("layout142");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout142);
    obj.imageCheckBox60:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox60:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox60:setWidth(18);
    obj.imageCheckBox60:setHeight(18);
    obj.imageCheckBox60:setField("Pata3C5");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle1);
    obj.layout143:setLeft(263);
    obj.layout143:setTop(580);
    obj.layout143:setWidth(18);
    obj.layout143:setHeight(18);
    obj.layout143:setName("layout143");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout143);
    obj.imageCheckBox61:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox61:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox61:setWidth(18);
    obj.imageCheckBox61:setHeight(18);
    obj.imageCheckBox61:setField("Pata3C6");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle1);
    obj.layout144:setLeft(263);
    obj.layout144:setTop(601);
    obj.layout144:setWidth(18);
    obj.layout144:setHeight(18);
    obj.layout144:setName("layout144");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout144);
    obj.imageCheckBox62:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox62:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox62:setWidth(18);
    obj.imageCheckBox62:setHeight(18);
    obj.imageCheckBox62:setField("Pata3C7");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle1);
    obj.layout145:setLeft(263);
    obj.layout145:setTop(623);
    obj.layout145:setWidth(18);
    obj.layout145:setHeight(18);
    obj.layout145:setName("layout145");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout145);
    obj.imageCheckBox63:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox63:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox63:setWidth(18);
    obj.imageCheckBox63:setHeight(18);
    obj.imageCheckBox63:setField("Pata3C8");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle1);
    obj.layout146:setLeft(263);
    obj.layout146:setTop(643);
    obj.layout146:setWidth(18);
    obj.layout146:setHeight(18);
    obj.layout146:setName("layout146");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout146);
    obj.imageCheckBox64:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox64:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox64:setWidth(18);
    obj.imageCheckBox64:setHeight(18);
    obj.imageCheckBox64:setField("Pata3C9");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle1);
    obj.layout147:setLeft(263);
    obj.layout147:setTop(665);
    obj.layout147:setWidth(18);
    obj.layout147:setHeight(18);
    obj.layout147:setName("layout147");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout147);
    obj.imageCheckBox65:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox65:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox65:setWidth(18);
    obj.imageCheckBox65:setHeight(18);
    obj.imageCheckBox65:setField("Pata3C10");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle1);
    obj.layout148:setLeft(263);
    obj.layout148:setTop(686);
    obj.layout148:setWidth(18);
    obj.layout148:setHeight(18);
    obj.layout148:setName("layout148");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout148);
    obj.imageCheckBox66:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox66:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox66:setWidth(18);
    obj.imageCheckBox66:setHeight(18);
    obj.imageCheckBox66:setField("Pata3C11");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle1);
    obj.layout149:setLeft(263);
    obj.layout149:setTop(708);
    obj.layout149:setWidth(18);
    obj.layout149:setHeight(18);
    obj.layout149:setName("layout149");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout149);
    obj.imageCheckBox67:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox67:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox67:setWidth(18);
    obj.imageCheckBox67:setHeight(18);
    obj.imageCheckBox67:setField("Pata3C12");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle1);
    obj.layout150:setLeft(263);
    obj.layout150:setTop(731);
    obj.layout150:setWidth(18);
    obj.layout150:setHeight(18);
    obj.layout150:setName("layout150");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout150);
    obj.imageCheckBox68:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox68:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox68:setWidth(18);
    obj.imageCheckBox68:setHeight(18);
    obj.imageCheckBox68:setField("Pata3C13");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle1);
    obj.layout151:setLeft(263);
    obj.layout151:setTop(753);
    obj.layout151:setWidth(18);
    obj.layout151:setHeight(18);
    obj.layout151:setName("layout151");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout151);
    obj.imageCheckBox69:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox69:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox69:setWidth(18);
    obj.imageCheckBox69:setHeight(18);
    obj.imageCheckBox69:setField("Pata3C14");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle1);
    obj.layout152:setLeft(263);
    obj.layout152:setTop(773);
    obj.layout152:setWidth(18);
    obj.layout152:setHeight(18);
    obj.layout152:setName("layout152");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout152);
    obj.imageCheckBox70:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox70:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox70:setWidth(18);
    obj.imageCheckBox70:setHeight(18);
    obj.imageCheckBox70:setField("Pata3C15");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle1);
    obj.layout153:setLeft(263);
    obj.layout153:setTop(793);
    obj.layout153:setWidth(18);
    obj.layout153:setHeight(18);
    obj.layout153:setName("layout153");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout153);
    obj.imageCheckBox71:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox71:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox71:setWidth(18);
    obj.imageCheckBox71:setHeight(18);
    obj.imageCheckBox71:setField("Pata3C16");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle1);
    obj.layout154:setLeft(263);
    obj.layout154:setTop(813);
    obj.layout154:setWidth(18);
    obj.layout154:setHeight(18);
    obj.layout154:setName("layout154");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout154);
    obj.imageCheckBox72:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox72:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox72:setWidth(18);
    obj.imageCheckBox72:setHeight(18);
    obj.imageCheckBox72:setField("Pata3C17");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle1);
    obj.layout155:setLeft(263);
    obj.layout155:setTop(835);
    obj.layout155:setWidth(18);
    obj.layout155:setHeight(18);
    obj.layout155:setName("layout155");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout155);
    obj.imageCheckBox73:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox73:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox73:setWidth(18);
    obj.imageCheckBox73:setHeight(18);
    obj.imageCheckBox73:setField("Pata3C18");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle1);
    obj.layout156:setLeft(263);
    obj.layout156:setTop(857);
    obj.layout156:setWidth(18);
    obj.layout156:setHeight(18);
    obj.layout156:setName("layout156");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout156);
    obj.imageCheckBox74:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox74:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox74:setWidth(18);
    obj.imageCheckBox74:setHeight(18);
    obj.imageCheckBox74:setField("Pata3C19");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle1);
    obj.layout157:setLeft(263);
    obj.layout157:setTop(878);
    obj.layout157:setWidth(18);
    obj.layout157:setHeight(18);
    obj.layout157:setName("layout157");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout157);
    obj.imageCheckBox75:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox75:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox75:setWidth(18);
    obj.imageCheckBox75:setHeight(18);
    obj.imageCheckBox75:setField("Pata3C20");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle1);
    obj.layout158:setLeft(263);
    obj.layout158:setTop(900);
    obj.layout158:setWidth(18);
    obj.layout158:setHeight(18);
    obj.layout158:setName("layout158");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout158);
    obj.imageCheckBox76:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox76:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox76:setWidth(18);
    obj.imageCheckBox76:setHeight(18);
    obj.imageCheckBox76:setField("Pata3C21");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle1);
    obj.layout159:setLeft(263);
    obj.layout159:setTop(921);
    obj.layout159:setWidth(18);
    obj.layout159:setHeight(18);
    obj.layout159:setName("layout159");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout159);
    obj.imageCheckBox77:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox77:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox77:setWidth(18);
    obj.imageCheckBox77:setHeight(18);
    obj.imageCheckBox77:setField("Pata3C22");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle1);
    obj.layout160:setLeft(277);
    obj.layout160:setTop(474);
    obj.layout160:setWidth(18);
    obj.layout160:setHeight(18);
    obj.layout160:setName("layout160");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout160);
    obj.imageCheckBox78:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox78:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox78:setWidth(18);
    obj.imageCheckBox78:setHeight(18);
    obj.imageCheckBox78:setField("Pata4C1");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle1);
    obj.layout161:setLeft(277);
    obj.layout161:setTop(496);
    obj.layout161:setWidth(18);
    obj.layout161:setHeight(18);
    obj.layout161:setName("layout161");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout161);
    obj.imageCheckBox79:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox79:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox79:setWidth(18);
    obj.imageCheckBox79:setHeight(18);
    obj.imageCheckBox79:setField("Pata4C2");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle1);
    obj.layout162:setLeft(277);
    obj.layout162:setTop(517);
    obj.layout162:setWidth(18);
    obj.layout162:setHeight(18);
    obj.layout162:setName("layout162");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout162);
    obj.imageCheckBox80:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox80:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox80:setWidth(18);
    obj.imageCheckBox80:setHeight(18);
    obj.imageCheckBox80:setField("Pata4C3");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle1);
    obj.layout163:setLeft(277);
    obj.layout163:setTop(538);
    obj.layout163:setWidth(18);
    obj.layout163:setHeight(18);
    obj.layout163:setName("layout163");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout163);
    obj.imageCheckBox81:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox81:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox81:setWidth(18);
    obj.imageCheckBox81:setHeight(18);
    obj.imageCheckBox81:setField("Pata4C4");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle1);
    obj.layout164:setLeft(277);
    obj.layout164:setTop(559);
    obj.layout164:setWidth(18);
    obj.layout164:setHeight(18);
    obj.layout164:setName("layout164");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout164);
    obj.imageCheckBox82:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox82:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox82:setWidth(18);
    obj.imageCheckBox82:setHeight(18);
    obj.imageCheckBox82:setField("Pata4C5");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle1);
    obj.layout165:setLeft(277);
    obj.layout165:setTop(580);
    obj.layout165:setWidth(18);
    obj.layout165:setHeight(18);
    obj.layout165:setName("layout165");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout165);
    obj.imageCheckBox83:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox83:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox83:setWidth(18);
    obj.imageCheckBox83:setHeight(18);
    obj.imageCheckBox83:setField("Pata4C6");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle1);
    obj.layout166:setLeft(277);
    obj.layout166:setTop(601);
    obj.layout166:setWidth(18);
    obj.layout166:setHeight(18);
    obj.layout166:setName("layout166");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout166);
    obj.imageCheckBox84:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox84:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox84:setWidth(18);
    obj.imageCheckBox84:setHeight(18);
    obj.imageCheckBox84:setField("Pata4C7");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle1);
    obj.layout167:setLeft(277);
    obj.layout167:setTop(623);
    obj.layout167:setWidth(18);
    obj.layout167:setHeight(18);
    obj.layout167:setName("layout167");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout167);
    obj.imageCheckBox85:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox85:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox85:setWidth(18);
    obj.imageCheckBox85:setHeight(18);
    obj.imageCheckBox85:setField("Pata4C8");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle1);
    obj.layout168:setLeft(277);
    obj.layout168:setTop(643);
    obj.layout168:setWidth(18);
    obj.layout168:setHeight(18);
    obj.layout168:setName("layout168");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout168);
    obj.imageCheckBox86:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox86:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox86:setWidth(18);
    obj.imageCheckBox86:setHeight(18);
    obj.imageCheckBox86:setField("Pata4C9");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle1);
    obj.layout169:setLeft(277);
    obj.layout169:setTop(665);
    obj.layout169:setWidth(18);
    obj.layout169:setHeight(18);
    obj.layout169:setName("layout169");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout169);
    obj.imageCheckBox87:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox87:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox87:setWidth(18);
    obj.imageCheckBox87:setHeight(18);
    obj.imageCheckBox87:setField("Pata4C10");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle1);
    obj.layout170:setLeft(277);
    obj.layout170:setTop(686);
    obj.layout170:setWidth(18);
    obj.layout170:setHeight(18);
    obj.layout170:setName("layout170");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout170);
    obj.imageCheckBox88:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox88:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox88:setWidth(18);
    obj.imageCheckBox88:setHeight(18);
    obj.imageCheckBox88:setField("Pata4C11");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle1);
    obj.layout171:setLeft(277);
    obj.layout171:setTop(708);
    obj.layout171:setWidth(18);
    obj.layout171:setHeight(18);
    obj.layout171:setName("layout171");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout171);
    obj.imageCheckBox89:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox89:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox89:setWidth(18);
    obj.imageCheckBox89:setHeight(18);
    obj.imageCheckBox89:setField("Pata4C12");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle1);
    obj.layout172:setLeft(277);
    obj.layout172:setTop(731);
    obj.layout172:setWidth(18);
    obj.layout172:setHeight(18);
    obj.layout172:setName("layout172");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout172);
    obj.imageCheckBox90:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox90:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox90:setWidth(18);
    obj.imageCheckBox90:setHeight(18);
    obj.imageCheckBox90:setField("Pata4C13");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle1);
    obj.layout173:setLeft(277);
    obj.layout173:setTop(753);
    obj.layout173:setWidth(18);
    obj.layout173:setHeight(18);
    obj.layout173:setName("layout173");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout173);
    obj.imageCheckBox91:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox91:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox91:setWidth(18);
    obj.imageCheckBox91:setHeight(18);
    obj.imageCheckBox91:setField("Pata4C14");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle1);
    obj.layout174:setLeft(277);
    obj.layout174:setTop(773);
    obj.layout174:setWidth(18);
    obj.layout174:setHeight(18);
    obj.layout174:setName("layout174");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout174);
    obj.imageCheckBox92:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox92:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox92:setWidth(18);
    obj.imageCheckBox92:setHeight(18);
    obj.imageCheckBox92:setField("Pata4C15");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle1);
    obj.layout175:setLeft(277);
    obj.layout175:setTop(793);
    obj.layout175:setWidth(18);
    obj.layout175:setHeight(18);
    obj.layout175:setName("layout175");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout175);
    obj.imageCheckBox93:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox93:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox93:setWidth(18);
    obj.imageCheckBox93:setHeight(18);
    obj.imageCheckBox93:setField("Pata4C16");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle1);
    obj.layout176:setLeft(277);
    obj.layout176:setTop(813);
    obj.layout176:setWidth(18);
    obj.layout176:setHeight(18);
    obj.layout176:setName("layout176");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout176);
    obj.imageCheckBox94:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox94:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox94:setWidth(18);
    obj.imageCheckBox94:setHeight(18);
    obj.imageCheckBox94:setField("Pata4C17");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle1);
    obj.layout177:setLeft(277);
    obj.layout177:setTop(835);
    obj.layout177:setWidth(18);
    obj.layout177:setHeight(18);
    obj.layout177:setName("layout177");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout177);
    obj.imageCheckBox95:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox95:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox95:setWidth(18);
    obj.imageCheckBox95:setHeight(18);
    obj.imageCheckBox95:setField("Pata4C18");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle1);
    obj.layout178:setLeft(277);
    obj.layout178:setTop(857);
    obj.layout178:setWidth(18);
    obj.layout178:setHeight(18);
    obj.layout178:setName("layout178");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout178);
    obj.imageCheckBox96:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox96:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox96:setWidth(18);
    obj.imageCheckBox96:setHeight(18);
    obj.imageCheckBox96:setField("Pata4C19");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle1);
    obj.layout179:setLeft(277);
    obj.layout179:setTop(878);
    obj.layout179:setWidth(18);
    obj.layout179:setHeight(18);
    obj.layout179:setName("layout179");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout179);
    obj.imageCheckBox97:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox97:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox97:setWidth(18);
    obj.imageCheckBox97:setHeight(18);
    obj.imageCheckBox97:setField("Pata4C20");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle1);
    obj.layout180:setLeft(277);
    obj.layout180:setTop(900);
    obj.layout180:setWidth(18);
    obj.layout180:setHeight(18);
    obj.layout180:setName("layout180");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout180);
    obj.imageCheckBox98:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox98:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox98:setWidth(18);
    obj.imageCheckBox98:setHeight(18);
    obj.imageCheckBox98:setField("Pata4C21");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle1);
    obj.layout181:setLeft(277);
    obj.layout181:setTop(921);
    obj.layout181:setWidth(18);
    obj.layout181:setHeight(18);
    obj.layout181:setName("layout181");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout181);
    obj.imageCheckBox99:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox99:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox99:setWidth(18);
    obj.imageCheckBox99:setHeight(18);
    obj.imageCheckBox99:setField("Pata4C22");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle1);
    obj.layout182:setLeft(291);
    obj.layout182:setTop(474);
    obj.layout182:setWidth(18);
    obj.layout182:setHeight(18);
    obj.layout182:setName("layout182");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout182);
    obj.imageCheckBox100:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox100:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox100:setWidth(18);
    obj.imageCheckBox100:setHeight(18);
    obj.imageCheckBox100:setField("Pata5C1");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle1);
    obj.layout183:setLeft(291);
    obj.layout183:setTop(496);
    obj.layout183:setWidth(18);
    obj.layout183:setHeight(18);
    obj.layout183:setName("layout183");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout183);
    obj.imageCheckBox101:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox101:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox101:setWidth(18);
    obj.imageCheckBox101:setHeight(18);
    obj.imageCheckBox101:setField("Pata5C2");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle1);
    obj.layout184:setLeft(291);
    obj.layout184:setTop(517);
    obj.layout184:setWidth(18);
    obj.layout184:setHeight(18);
    obj.layout184:setName("layout184");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout184);
    obj.imageCheckBox102:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox102:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox102:setWidth(18);
    obj.imageCheckBox102:setHeight(18);
    obj.imageCheckBox102:setField("Pata5C3");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle1);
    obj.layout185:setLeft(291);
    obj.layout185:setTop(538);
    obj.layout185:setWidth(18);
    obj.layout185:setHeight(18);
    obj.layout185:setName("layout185");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout185);
    obj.imageCheckBox103:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox103:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox103:setWidth(18);
    obj.imageCheckBox103:setHeight(18);
    obj.imageCheckBox103:setField("Pata5C4");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle1);
    obj.layout186:setLeft(291);
    obj.layout186:setTop(559);
    obj.layout186:setWidth(18);
    obj.layout186:setHeight(18);
    obj.layout186:setName("layout186");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout186);
    obj.imageCheckBox104:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox104:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox104:setWidth(18);
    obj.imageCheckBox104:setHeight(18);
    obj.imageCheckBox104:setField("Pata5C5");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle1);
    obj.layout187:setLeft(291);
    obj.layout187:setTop(580);
    obj.layout187:setWidth(18);
    obj.layout187:setHeight(18);
    obj.layout187:setName("layout187");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout187);
    obj.imageCheckBox105:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox105:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox105:setWidth(18);
    obj.imageCheckBox105:setHeight(18);
    obj.imageCheckBox105:setField("Pata5C6");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle1);
    obj.layout188:setLeft(291);
    obj.layout188:setTop(601);
    obj.layout188:setWidth(18);
    obj.layout188:setHeight(18);
    obj.layout188:setName("layout188");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout188);
    obj.imageCheckBox106:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox106:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox106:setWidth(18);
    obj.imageCheckBox106:setHeight(18);
    obj.imageCheckBox106:setField("Pata5C7");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle1);
    obj.layout189:setLeft(291);
    obj.layout189:setTop(623);
    obj.layout189:setWidth(18);
    obj.layout189:setHeight(18);
    obj.layout189:setName("layout189");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout189);
    obj.imageCheckBox107:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox107:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox107:setWidth(18);
    obj.imageCheckBox107:setHeight(18);
    obj.imageCheckBox107:setField("Pata5C8");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.layout190 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout190:setParent(obj.rectangle1);
    obj.layout190:setLeft(291);
    obj.layout190:setTop(643);
    obj.layout190:setWidth(18);
    obj.layout190:setHeight(18);
    obj.layout190:setName("layout190");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout190);
    obj.imageCheckBox108:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox108:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox108:setWidth(18);
    obj.imageCheckBox108:setHeight(18);
    obj.imageCheckBox108:setField("Pata5C9");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.layout191 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout191:setParent(obj.rectangle1);
    obj.layout191:setLeft(291);
    obj.layout191:setTop(665);
    obj.layout191:setWidth(18);
    obj.layout191:setHeight(18);
    obj.layout191:setName("layout191");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout191);
    obj.imageCheckBox109:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox109:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox109:setWidth(18);
    obj.imageCheckBox109:setHeight(18);
    obj.imageCheckBox109:setField("Pata5C10");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.layout192 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout192:setParent(obj.rectangle1);
    obj.layout192:setLeft(291);
    obj.layout192:setTop(686);
    obj.layout192:setWidth(18);
    obj.layout192:setHeight(18);
    obj.layout192:setName("layout192");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout192);
    obj.imageCheckBox110:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox110:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox110:setWidth(18);
    obj.imageCheckBox110:setHeight(18);
    obj.imageCheckBox110:setField("Pata5C11");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.layout193 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout193:setParent(obj.rectangle1);
    obj.layout193:setLeft(291);
    obj.layout193:setTop(708);
    obj.layout193:setWidth(18);
    obj.layout193:setHeight(18);
    obj.layout193:setName("layout193");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout193);
    obj.imageCheckBox111:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox111:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox111:setWidth(18);
    obj.imageCheckBox111:setHeight(18);
    obj.imageCheckBox111:setField("Pata5C12");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.layout194 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout194:setParent(obj.rectangle1);
    obj.layout194:setLeft(291);
    obj.layout194:setTop(731);
    obj.layout194:setWidth(18);
    obj.layout194:setHeight(18);
    obj.layout194:setName("layout194");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout194);
    obj.imageCheckBox112:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox112:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox112:setWidth(18);
    obj.imageCheckBox112:setHeight(18);
    obj.imageCheckBox112:setField("Pata5C13");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.layout195 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout195:setParent(obj.rectangle1);
    obj.layout195:setLeft(291);
    obj.layout195:setTop(753);
    obj.layout195:setWidth(18);
    obj.layout195:setHeight(18);
    obj.layout195:setName("layout195");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout195);
    obj.imageCheckBox113:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox113:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox113:setWidth(18);
    obj.imageCheckBox113:setHeight(18);
    obj.imageCheckBox113:setField("Pata5C14");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.layout196 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout196:setParent(obj.rectangle1);
    obj.layout196:setLeft(291);
    obj.layout196:setTop(773);
    obj.layout196:setWidth(18);
    obj.layout196:setHeight(18);
    obj.layout196:setName("layout196");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout196);
    obj.imageCheckBox114:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox114:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox114:setWidth(18);
    obj.imageCheckBox114:setHeight(18);
    obj.imageCheckBox114:setField("Pata5C15");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout197 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout197:setParent(obj.rectangle1);
    obj.layout197:setLeft(291);
    obj.layout197:setTop(793);
    obj.layout197:setWidth(18);
    obj.layout197:setHeight(18);
    obj.layout197:setName("layout197");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout197);
    obj.imageCheckBox115:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox115:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox115:setWidth(18);
    obj.imageCheckBox115:setHeight(18);
    obj.imageCheckBox115:setField("Pata5C16");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.layout198 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout198:setParent(obj.rectangle1);
    obj.layout198:setLeft(291);
    obj.layout198:setTop(813);
    obj.layout198:setWidth(18);
    obj.layout198:setHeight(18);
    obj.layout198:setName("layout198");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout198);
    obj.imageCheckBox116:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox116:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox116:setWidth(18);
    obj.imageCheckBox116:setHeight(18);
    obj.imageCheckBox116:setField("Pata5C17");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.layout199 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout199:setParent(obj.rectangle1);
    obj.layout199:setLeft(291);
    obj.layout199:setTop(835);
    obj.layout199:setWidth(18);
    obj.layout199:setHeight(18);
    obj.layout199:setName("layout199");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout199);
    obj.imageCheckBox117:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox117:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox117:setWidth(18);
    obj.imageCheckBox117:setHeight(18);
    obj.imageCheckBox117:setField("Pata5C18");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.layout200 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout200:setParent(obj.rectangle1);
    obj.layout200:setLeft(291);
    obj.layout200:setTop(857);
    obj.layout200:setWidth(18);
    obj.layout200:setHeight(18);
    obj.layout200:setName("layout200");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout200);
    obj.imageCheckBox118:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox118:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox118:setWidth(18);
    obj.imageCheckBox118:setHeight(18);
    obj.imageCheckBox118:setField("Pata5C19");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.layout201 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout201:setParent(obj.rectangle1);
    obj.layout201:setLeft(291);
    obj.layout201:setTop(878);
    obj.layout201:setWidth(18);
    obj.layout201:setHeight(18);
    obj.layout201:setName("layout201");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout201);
    obj.imageCheckBox119:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox119:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox119:setWidth(18);
    obj.imageCheckBox119:setHeight(18);
    obj.imageCheckBox119:setField("Pata5C20");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.layout202 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout202:setParent(obj.rectangle1);
    obj.layout202:setLeft(291);
    obj.layout202:setTop(900);
    obj.layout202:setWidth(18);
    obj.layout202:setHeight(18);
    obj.layout202:setName("layout202");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout202);
    obj.imageCheckBox120:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox120:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox120:setWidth(18);
    obj.imageCheckBox120:setHeight(18);
    obj.imageCheckBox120:setField("Pata5C21");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout203 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout203:setParent(obj.rectangle1);
    obj.layout203:setLeft(291);
    obj.layout203:setTop(921);
    obj.layout203:setWidth(18);
    obj.layout203:setHeight(18);
    obj.layout203:setName("layout203");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout203);
    obj.imageCheckBox121:setImageChecked("Lobisomen - Drake's Chronicles/images/pata_on.png");
    obj.imageCheckBox121:setImageUnchecked("Lobisomen - Drake's Chronicles/images/pata_off.png");
    obj.imageCheckBox121:setWidth(18);
    obj.imageCheckBox121:setHeight(18);
    obj.imageCheckBox121:setField("Pata5C22");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.layout204 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout204:setParent(obj.rectangle1);
    obj.layout204:setLeft(70);
    obj.layout204:setTop(1006);
    obj.layout204:setWidth(180);
    obj.layout204:setHeight(30);
    obj.layout204:setName("layout204");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout204);
    obj.edit83:setTransparent(true);
    obj.edit83:setFontSize(14);
    obj.edit83:setFontColor("#ffffff");
    obj.edit83:setHorzTextAlign("leading");
    obj.edit83:setVertTextAlign("center");
    obj.edit83:setLeft(0);
    obj.edit83:setTop(0);
    obj.edit83:setWidth(180);
    obj.edit83:setHeight(30);
    obj.edit83:setField("Arma1");
    obj.edit83:setName("edit83");

    obj.layout205 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout205:setParent(obj.rectangle1);
    obj.layout205:setLeft(255);
    obj.layout205:setTop(1006);
    obj.layout205:setWidth(130);
    obj.layout205:setHeight(30);
    obj.layout205:setName("layout205");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout205);
    obj.edit84:setTransparent(true);
    obj.edit84:setFontSize(14);
    obj.edit84:setFontColor("#ffffff");
    obj.edit84:setHorzTextAlign("leading");
    obj.edit84:setVertTextAlign("center");
    obj.edit84:setLeft(0);
    obj.edit84:setTop(0);
    obj.edit84:setWidth(130);
    obj.edit84:setHeight(30);
    obj.edit84:setField("Dif1");
    obj.edit84:setName("edit84");

    obj.layout206 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout206:setParent(obj.rectangle1);
    obj.layout206:setLeft(390);
    obj.layout206:setTop(1006);
    obj.layout206:setWidth(65);
    obj.layout206:setHeight(30);
    obj.layout206:setName("layout206");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout206);
    obj.edit85:setTransparent(true);
    obj.edit85:setFontSize(14);
    obj.edit85:setFontColor("#ffffff");
    obj.edit85:setHorzTextAlign("leading");
    obj.edit85:setVertTextAlign("center");
    obj.edit85:setLeft(0);
    obj.edit85:setTop(0);
    obj.edit85:setWidth(65);
    obj.edit85:setHeight(30);
    obj.edit85:setField("Dano1");
    obj.edit85:setName("edit85");

    obj.layout207 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout207:setParent(obj.rectangle1);
    obj.layout207:setLeft(455);
    obj.layout207:setTop(1006);
    obj.layout207:setWidth(55);
    obj.layout207:setHeight(30);
    obj.layout207:setName("layout207");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout207);
    obj.edit86:setTransparent(true);
    obj.edit86:setFontSize(14);
    obj.edit86:setFontColor("#ffffff");
    obj.edit86:setHorzTextAlign("leading");
    obj.edit86:setVertTextAlign("center");
    obj.edit86:setLeft(0);
    obj.edit86:setTop(0);
    obj.edit86:setWidth(55);
    obj.edit86:setHeight(30);
    obj.edit86:setField("Alc1");
    obj.edit86:setName("edit86");

    obj.layout208 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout208:setParent(obj.rectangle1);
    obj.layout208:setLeft(510);
    obj.layout208:setTop(1006);
    obj.layout208:setWidth(60);
    obj.layout208:setHeight(30);
    obj.layout208:setName("layout208");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout208);
    obj.edit87:setTransparent(true);
    obj.edit87:setFontSize(14);
    obj.edit87:setFontColor("#ffffff");
    obj.edit87:setHorzTextAlign("leading");
    obj.edit87:setVertTextAlign("center");
    obj.edit87:setLeft(0);
    obj.edit87:setTop(0);
    obj.edit87:setWidth(60);
    obj.edit87:setHeight(30);
    obj.edit87:setField("Cad1");
    obj.edit87:setName("edit87");

    obj.layout209 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout209:setParent(obj.rectangle1);
    obj.layout209:setLeft(570);
    obj.layout209:setTop(1006);
    obj.layout209:setWidth(50);
    obj.layout209:setHeight(30);
    obj.layout209:setName("layout209");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout209);
    obj.edit88:setTransparent(true);
    obj.edit88:setFontSize(14);
    obj.edit88:setFontColor("#ffffff");
    obj.edit88:setHorzTextAlign("leading");
    obj.edit88:setVertTextAlign("center");
    obj.edit88:setLeft(0);
    obj.edit88:setTop(0);
    obj.edit88:setWidth(50);
    obj.edit88:setHeight(30);
    obj.edit88:setField("Pente1");
    obj.edit88:setName("edit88");

    obj.layout210 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout210:setParent(obj.rectangle1);
    obj.layout210:setLeft(70);
    obj.layout210:setTop(1030);
    obj.layout210:setWidth(180);
    obj.layout210:setHeight(30);
    obj.layout210:setName("layout210");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout210);
    obj.edit89:setTransparent(true);
    obj.edit89:setFontSize(14);
    obj.edit89:setFontColor("#ffffff");
    obj.edit89:setHorzTextAlign("leading");
    obj.edit89:setVertTextAlign("center");
    obj.edit89:setLeft(0);
    obj.edit89:setTop(0);
    obj.edit89:setWidth(180);
    obj.edit89:setHeight(30);
    obj.edit89:setField("Arma2");
    obj.edit89:setName("edit89");

    obj.layout211 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout211:setParent(obj.rectangle1);
    obj.layout211:setLeft(255);
    obj.layout211:setTop(1030);
    obj.layout211:setWidth(130);
    obj.layout211:setHeight(30);
    obj.layout211:setName("layout211");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout211);
    obj.edit90:setTransparent(true);
    obj.edit90:setFontSize(14);
    obj.edit90:setFontColor("#ffffff");
    obj.edit90:setHorzTextAlign("leading");
    obj.edit90:setVertTextAlign("center");
    obj.edit90:setLeft(0);
    obj.edit90:setTop(0);
    obj.edit90:setWidth(130);
    obj.edit90:setHeight(30);
    obj.edit90:setField("Dif2");
    obj.edit90:setName("edit90");

    obj.layout212 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout212:setParent(obj.rectangle1);
    obj.layout212:setLeft(390);
    obj.layout212:setTop(1030);
    obj.layout212:setWidth(65);
    obj.layout212:setHeight(30);
    obj.layout212:setName("layout212");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.layout212);
    obj.edit91:setTransparent(true);
    obj.edit91:setFontSize(14);
    obj.edit91:setFontColor("#ffffff");
    obj.edit91:setHorzTextAlign("leading");
    obj.edit91:setVertTextAlign("center");
    obj.edit91:setLeft(0);
    obj.edit91:setTop(0);
    obj.edit91:setWidth(65);
    obj.edit91:setHeight(30);
    obj.edit91:setField("Dano2");
    obj.edit91:setName("edit91");

    obj.layout213 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout213:setParent(obj.rectangle1);
    obj.layout213:setLeft(455);
    obj.layout213:setTop(1030);
    obj.layout213:setWidth(55);
    obj.layout213:setHeight(30);
    obj.layout213:setName("layout213");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.layout213);
    obj.edit92:setTransparent(true);
    obj.edit92:setFontSize(14);
    obj.edit92:setFontColor("#ffffff");
    obj.edit92:setHorzTextAlign("leading");
    obj.edit92:setVertTextAlign("center");
    obj.edit92:setLeft(0);
    obj.edit92:setTop(0);
    obj.edit92:setWidth(55);
    obj.edit92:setHeight(30);
    obj.edit92:setField("Alc2");
    obj.edit92:setName("edit92");

    obj.layout214 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout214:setParent(obj.rectangle1);
    obj.layout214:setLeft(510);
    obj.layout214:setTop(1030);
    obj.layout214:setWidth(60);
    obj.layout214:setHeight(30);
    obj.layout214:setName("layout214");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.layout214);
    obj.edit93:setTransparent(true);
    obj.edit93:setFontSize(14);
    obj.edit93:setFontColor("#ffffff");
    obj.edit93:setHorzTextAlign("leading");
    obj.edit93:setVertTextAlign("center");
    obj.edit93:setLeft(0);
    obj.edit93:setTop(0);
    obj.edit93:setWidth(60);
    obj.edit93:setHeight(30);
    obj.edit93:setField("Cad2");
    obj.edit93:setName("edit93");

    obj.layout215 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout215:setParent(obj.rectangle1);
    obj.layout215:setLeft(570);
    obj.layout215:setTop(1030);
    obj.layout215:setWidth(50);
    obj.layout215:setHeight(30);
    obj.layout215:setName("layout215");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.layout215);
    obj.edit94:setTransparent(true);
    obj.edit94:setFontSize(14);
    obj.edit94:setFontColor("#ffffff");
    obj.edit94:setHorzTextAlign("leading");
    obj.edit94:setVertTextAlign("center");
    obj.edit94:setLeft(0);
    obj.edit94:setTop(0);
    obj.edit94:setWidth(50);
    obj.edit94:setHeight(30);
    obj.edit94:setField("Pente2");
    obj.edit94:setName("edit94");

    obj.layout216 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout216:setParent(obj.rectangle1);
    obj.layout216:setLeft(70);
    obj.layout216:setTop(1055);
    obj.layout216:setWidth(180);
    obj.layout216:setHeight(30);
    obj.layout216:setName("layout216");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.layout216);
    obj.edit95:setTransparent(true);
    obj.edit95:setFontSize(14);
    obj.edit95:setFontColor("#ffffff");
    obj.edit95:setHorzTextAlign("leading");
    obj.edit95:setVertTextAlign("center");
    obj.edit95:setLeft(0);
    obj.edit95:setTop(0);
    obj.edit95:setWidth(180);
    obj.edit95:setHeight(30);
    obj.edit95:setField("Arma3");
    obj.edit95:setName("edit95");

    obj.layout217 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout217:setParent(obj.rectangle1);
    obj.layout217:setLeft(255);
    obj.layout217:setTop(1055);
    obj.layout217:setWidth(130);
    obj.layout217:setHeight(30);
    obj.layout217:setName("layout217");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.layout217);
    obj.edit96:setTransparent(true);
    obj.edit96:setFontSize(14);
    obj.edit96:setFontColor("#ffffff");
    obj.edit96:setHorzTextAlign("leading");
    obj.edit96:setVertTextAlign("center");
    obj.edit96:setLeft(0);
    obj.edit96:setTop(0);
    obj.edit96:setWidth(130);
    obj.edit96:setHeight(30);
    obj.edit96:setField("Dif3");
    obj.edit96:setName("edit96");

    obj.layout218 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout218:setParent(obj.rectangle1);
    obj.layout218:setLeft(390);
    obj.layout218:setTop(1055);
    obj.layout218:setWidth(65);
    obj.layout218:setHeight(30);
    obj.layout218:setName("layout218");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.layout218);
    obj.edit97:setTransparent(true);
    obj.edit97:setFontSize(14);
    obj.edit97:setFontColor("#ffffff");
    obj.edit97:setHorzTextAlign("leading");
    obj.edit97:setVertTextAlign("center");
    obj.edit97:setLeft(0);
    obj.edit97:setTop(0);
    obj.edit97:setWidth(65);
    obj.edit97:setHeight(30);
    obj.edit97:setField("Dano3");
    obj.edit97:setName("edit97");

    obj.layout219 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout219:setParent(obj.rectangle1);
    obj.layout219:setLeft(455);
    obj.layout219:setTop(1055);
    obj.layout219:setWidth(50);
    obj.layout219:setHeight(30);
    obj.layout219:setName("layout219");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.layout219);
    obj.edit98:setTransparent(true);
    obj.edit98:setFontSize(14);
    obj.edit98:setFontColor("#ffffff");
    obj.edit98:setHorzTextAlign("leading");
    obj.edit98:setVertTextAlign("center");
    obj.edit98:setLeft(0);
    obj.edit98:setTop(0);
    obj.edit98:setWidth(50);
    obj.edit98:setHeight(30);
    obj.edit98:setField("Alc3");
    obj.edit98:setName("edit98");

    obj.layout220 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout220:setParent(obj.rectangle1);
    obj.layout220:setLeft(510);
    obj.layout220:setTop(1055);
    obj.layout220:setWidth(60);
    obj.layout220:setHeight(30);
    obj.layout220:setName("layout220");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.layout220);
    obj.edit99:setTransparent(true);
    obj.edit99:setFontSize(14);
    obj.edit99:setFontColor("#ffffff");
    obj.edit99:setHorzTextAlign("leading");
    obj.edit99:setVertTextAlign("center");
    obj.edit99:setLeft(0);
    obj.edit99:setTop(0);
    obj.edit99:setWidth(60);
    obj.edit99:setHeight(30);
    obj.edit99:setField("Cad3");
    obj.edit99:setName("edit99");

    obj.layout221 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout221:setParent(obj.rectangle1);
    obj.layout221:setLeft(570);
    obj.layout221:setTop(1055);
    obj.layout221:setWidth(50);
    obj.layout221:setHeight(30);
    obj.layout221:setName("layout221");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.layout221);
    obj.edit100:setTransparent(true);
    obj.edit100:setFontSize(14);
    obj.edit100:setFontColor("#ffffff");
    obj.edit100:setHorzTextAlign("leading");
    obj.edit100:setVertTextAlign("center");
    obj.edit100:setLeft(0);
    obj.edit100:setTop(0);
    obj.edit100:setWidth(50);
    obj.edit100:setHeight(30);
    obj.edit100:setField("Pente3");
    obj.edit100:setName("edit100");

    obj.layout222 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout222:setParent(obj.rectangle1);
    obj.layout222:setLeft(70);
    obj.layout222:setTop(1080);
    obj.layout222:setWidth(180);
    obj.layout222:setHeight(30);
    obj.layout222:setName("layout222");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.layout222);
    obj.edit101:setTransparent(true);
    obj.edit101:setFontSize(14);
    obj.edit101:setFontColor("#ffffff");
    obj.edit101:setHorzTextAlign("leading");
    obj.edit101:setVertTextAlign("center");
    obj.edit101:setLeft(0);
    obj.edit101:setTop(0);
    obj.edit101:setWidth(180);
    obj.edit101:setHeight(30);
    obj.edit101:setField("Arma4");
    obj.edit101:setName("edit101");

    obj.layout223 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout223:setParent(obj.rectangle1);
    obj.layout223:setLeft(255);
    obj.layout223:setTop(1080);
    obj.layout223:setWidth(130);
    obj.layout223:setHeight(30);
    obj.layout223:setName("layout223");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.layout223);
    obj.edit102:setTransparent(true);
    obj.edit102:setFontSize(14);
    obj.edit102:setFontColor("#ffffff");
    obj.edit102:setHorzTextAlign("leading");
    obj.edit102:setVertTextAlign("center");
    obj.edit102:setLeft(0);
    obj.edit102:setTop(0);
    obj.edit102:setWidth(130);
    obj.edit102:setHeight(30);
    obj.edit102:setField("Dif4");
    obj.edit102:setName("edit102");

    obj.layout224 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout224:setParent(obj.rectangle1);
    obj.layout224:setLeft(390);
    obj.layout224:setTop(1080);
    obj.layout224:setWidth(65);
    obj.layout224:setHeight(30);
    obj.layout224:setName("layout224");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.layout224);
    obj.edit103:setTransparent(true);
    obj.edit103:setFontSize(14);
    obj.edit103:setFontColor("#ffffff");
    obj.edit103:setHorzTextAlign("leading");
    obj.edit103:setVertTextAlign("center");
    obj.edit103:setLeft(0);
    obj.edit103:setTop(0);
    obj.edit103:setWidth(65);
    obj.edit103:setHeight(30);
    obj.edit103:setField("Dano4");
    obj.edit103:setName("edit103");

    obj.layout225 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout225:setParent(obj.rectangle1);
    obj.layout225:setLeft(455);
    obj.layout225:setTop(1080);
    obj.layout225:setWidth(55);
    obj.layout225:setHeight(30);
    obj.layout225:setName("layout225");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.layout225);
    obj.edit104:setTransparent(true);
    obj.edit104:setFontSize(14);
    obj.edit104:setFontColor("#ffffff");
    obj.edit104:setHorzTextAlign("leading");
    obj.edit104:setVertTextAlign("center");
    obj.edit104:setLeft(0);
    obj.edit104:setTop(0);
    obj.edit104:setWidth(55);
    obj.edit104:setHeight(30);
    obj.edit104:setField("Alc4");
    obj.edit104:setName("edit104");

    obj.layout226 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout226:setParent(obj.rectangle1);
    obj.layout226:setLeft(510);
    obj.layout226:setTop(1080);
    obj.layout226:setWidth(60);
    obj.layout226:setHeight(30);
    obj.layout226:setName("layout226");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.layout226);
    obj.edit105:setTransparent(true);
    obj.edit105:setFontSize(14);
    obj.edit105:setFontColor("#ffffff");
    obj.edit105:setHorzTextAlign("leading");
    obj.edit105:setVertTextAlign("center");
    obj.edit105:setLeft(0);
    obj.edit105:setTop(0);
    obj.edit105:setWidth(60);
    obj.edit105:setHeight(30);
    obj.edit105:setField("Cad4");
    obj.edit105:setName("edit105");

    obj.layout227 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout227:setParent(obj.rectangle1);
    obj.layout227:setLeft(570);
    obj.layout227:setTop(1080);
    obj.layout227:setWidth(50);
    obj.layout227:setHeight(30);
    obj.layout227:setName("layout227");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.layout227);
    obj.edit106:setTransparent(true);
    obj.edit106:setFontSize(14);
    obj.edit106:setFontColor("#ffffff");
    obj.edit106:setHorzTextAlign("leading");
    obj.edit106:setVertTextAlign("center");
    obj.edit106:setLeft(0);
    obj.edit106:setTop(0);
    obj.edit106:setWidth(50);
    obj.edit106:setHeight(30);
    obj.edit106:setField("Pente4");
    obj.edit106:setName("edit106");

    obj.layout228 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout228:setParent(obj.rectangle1);
    obj.layout228:setLeft(70);
    obj.layout228:setTop(1105);
    obj.layout228:setWidth(180);
    obj.layout228:setHeight(30);
    obj.layout228:setName("layout228");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.layout228);
    obj.edit107:setTransparent(true);
    obj.edit107:setFontSize(14);
    obj.edit107:setFontColor("#ffffff");
    obj.edit107:setHorzTextAlign("leading");
    obj.edit107:setVertTextAlign("center");
    obj.edit107:setLeft(0);
    obj.edit107:setTop(0);
    obj.edit107:setWidth(180);
    obj.edit107:setHeight(30);
    obj.edit107:setField("Arma5");
    obj.edit107:setName("edit107");

    obj.layout229 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout229:setParent(obj.rectangle1);
    obj.layout229:setLeft(255);
    obj.layout229:setTop(1105);
    obj.layout229:setWidth(130);
    obj.layout229:setHeight(30);
    obj.layout229:setName("layout229");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.layout229);
    obj.edit108:setTransparent(true);
    obj.edit108:setFontSize(14);
    obj.edit108:setFontColor("#ffffff");
    obj.edit108:setHorzTextAlign("leading");
    obj.edit108:setVertTextAlign("center");
    obj.edit108:setLeft(0);
    obj.edit108:setTop(0);
    obj.edit108:setWidth(130);
    obj.edit108:setHeight(30);
    obj.edit108:setField("Dif5");
    obj.edit108:setName("edit108");

    obj.layout230 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout230:setParent(obj.rectangle1);
    obj.layout230:setLeft(390);
    obj.layout230:setTop(1105);
    obj.layout230:setWidth(65);
    obj.layout230:setHeight(30);
    obj.layout230:setName("layout230");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.layout230);
    obj.edit109:setTransparent(true);
    obj.edit109:setFontSize(14);
    obj.edit109:setFontColor("#ffffff");
    obj.edit109:setHorzTextAlign("leading");
    obj.edit109:setVertTextAlign("center");
    obj.edit109:setLeft(0);
    obj.edit109:setTop(0);
    obj.edit109:setWidth(65);
    obj.edit109:setHeight(30);
    obj.edit109:setField("Dano5");
    obj.edit109:setName("edit109");

    obj.layout231 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout231:setParent(obj.rectangle1);
    obj.layout231:setLeft(455);
    obj.layout231:setTop(1105);
    obj.layout231:setWidth(55);
    obj.layout231:setHeight(30);
    obj.layout231:setName("layout231");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.layout231);
    obj.edit110:setTransparent(true);
    obj.edit110:setFontSize(14);
    obj.edit110:setFontColor("#ffffff");
    obj.edit110:setHorzTextAlign("leading");
    obj.edit110:setVertTextAlign("center");
    obj.edit110:setLeft(0);
    obj.edit110:setTop(0);
    obj.edit110:setWidth(55);
    obj.edit110:setHeight(30);
    obj.edit110:setField("Alc5");
    obj.edit110:setName("edit110");

    obj.layout232 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout232:setParent(obj.rectangle1);
    obj.layout232:setLeft(510);
    obj.layout232:setTop(1105);
    obj.layout232:setWidth(60);
    obj.layout232:setHeight(30);
    obj.layout232:setName("layout232");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.layout232);
    obj.edit111:setTransparent(true);
    obj.edit111:setFontSize(14);
    obj.edit111:setFontColor("#ffffff");
    obj.edit111:setHorzTextAlign("leading");
    obj.edit111:setVertTextAlign("center");
    obj.edit111:setLeft(0);
    obj.edit111:setTop(0);
    obj.edit111:setWidth(60);
    obj.edit111:setHeight(30);
    obj.edit111:setField("Cad5");
    obj.edit111:setName("edit111");

    obj.layout233 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout233:setParent(obj.rectangle1);
    obj.layout233:setLeft(570);
    obj.layout233:setTop(1105);
    obj.layout233:setWidth(50);
    obj.layout233:setHeight(30);
    obj.layout233:setName("layout233");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.layout233);
    obj.edit112:setTransparent(true);
    obj.edit112:setFontSize(14);
    obj.edit112:setFontColor("#ffffff");
    obj.edit112:setHorzTextAlign("leading");
    obj.edit112:setVertTextAlign("center");
    obj.edit112:setLeft(0);
    obj.edit112:setTop(0);
    obj.edit112:setWidth(50);
    obj.edit112:setHeight(30);
    obj.edit112:setField("Pente5");
    obj.edit112:setName("edit112");

    obj.layout234 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout234:setParent(obj.rectangle1);
    obj.layout234:setLeft(70);
    obj.layout234:setTop(1129);
    obj.layout234:setWidth(180);
    obj.layout234:setHeight(30);
    obj.layout234:setName("layout234");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.layout234);
    obj.edit113:setTransparent(true);
    obj.edit113:setFontSize(14);
    obj.edit113:setFontColor("#ffffff");
    obj.edit113:setHorzTextAlign("leading");
    obj.edit113:setVertTextAlign("center");
    obj.edit113:setLeft(0);
    obj.edit113:setTop(0);
    obj.edit113:setWidth(180);
    obj.edit113:setHeight(30);
    obj.edit113:setField("Arma6");
    obj.edit113:setName("edit113");

    obj.layout235 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout235:setParent(obj.rectangle1);
    obj.layout235:setLeft(255);
    obj.layout235:setTop(1129);
    obj.layout235:setWidth(130);
    obj.layout235:setHeight(30);
    obj.layout235:setName("layout235");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.layout235);
    obj.edit114:setTransparent(true);
    obj.edit114:setFontSize(14);
    obj.edit114:setFontColor("#ffffff");
    obj.edit114:setHorzTextAlign("leading");
    obj.edit114:setVertTextAlign("center");
    obj.edit114:setLeft(0);
    obj.edit114:setTop(0);
    obj.edit114:setWidth(130);
    obj.edit114:setHeight(30);
    obj.edit114:setField("Dif6");
    obj.edit114:setName("edit114");

    obj.layout236 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout236:setParent(obj.rectangle1);
    obj.layout236:setLeft(390);
    obj.layout236:setTop(1129);
    obj.layout236:setWidth(65);
    obj.layout236:setHeight(30);
    obj.layout236:setName("layout236");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.layout236);
    obj.edit115:setTransparent(true);
    obj.edit115:setFontSize(14);
    obj.edit115:setFontColor("#ffffff");
    obj.edit115:setHorzTextAlign("leading");
    obj.edit115:setVertTextAlign("center");
    obj.edit115:setLeft(0);
    obj.edit115:setTop(0);
    obj.edit115:setWidth(65);
    obj.edit115:setHeight(30);
    obj.edit115:setField("Dano6");
    obj.edit115:setName("edit115");

    obj.layout237 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout237:setParent(obj.rectangle1);
    obj.layout237:setLeft(455);
    obj.layout237:setTop(1129);
    obj.layout237:setWidth(55);
    obj.layout237:setHeight(30);
    obj.layout237:setName("layout237");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.layout237);
    obj.edit116:setTransparent(true);
    obj.edit116:setFontSize(14);
    obj.edit116:setFontColor("#ffffff");
    obj.edit116:setHorzTextAlign("leading");
    obj.edit116:setVertTextAlign("center");
    obj.edit116:setLeft(0);
    obj.edit116:setTop(0);
    obj.edit116:setWidth(55);
    obj.edit116:setHeight(30);
    obj.edit116:setField("Alc6");
    obj.edit116:setName("edit116");

    obj.layout238 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout238:setParent(obj.rectangle1);
    obj.layout238:setLeft(510);
    obj.layout238:setTop(1129);
    obj.layout238:setWidth(60);
    obj.layout238:setHeight(30);
    obj.layout238:setName("layout238");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.layout238);
    obj.edit117:setTransparent(true);
    obj.edit117:setFontSize(14);
    obj.edit117:setFontColor("#ffffff");
    obj.edit117:setHorzTextAlign("leading");
    obj.edit117:setVertTextAlign("center");
    obj.edit117:setLeft(0);
    obj.edit117:setTop(0);
    obj.edit117:setWidth(60);
    obj.edit117:setHeight(30);
    obj.edit117:setField("Cad6");
    obj.edit117:setName("edit117");

    obj.layout239 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout239:setParent(obj.rectangle1);
    obj.layout239:setLeft(570);
    obj.layout239:setTop(1129);
    obj.layout239:setWidth(50);
    obj.layout239:setHeight(30);
    obj.layout239:setName("layout239");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.layout239);
    obj.edit118:setTransparent(true);
    obj.edit118:setFontSize(14);
    obj.edit118:setFontColor("#ffffff");
    obj.edit118:setHorzTextAlign("leading");
    obj.edit118:setVertTextAlign("center");
    obj.edit118:setLeft(0);
    obj.edit118:setTop(0);
    obj.edit118:setWidth(50);
    obj.edit118:setHeight(30);
    obj.edit118:setField("Pente6");
    obj.edit118:setName("edit118");

    obj.layout240 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout240:setParent(obj.rectangle1);
    obj.layout240:setLeft(70);
    obj.layout240:setTop(1154);
    obj.layout240:setWidth(180);
    obj.layout240:setHeight(30);
    obj.layout240:setName("layout240");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.layout240);
    obj.edit119:setTransparent(true);
    obj.edit119:setFontSize(14);
    obj.edit119:setFontColor("#ffffff");
    obj.edit119:setHorzTextAlign("leading");
    obj.edit119:setVertTextAlign("center");
    obj.edit119:setLeft(0);
    obj.edit119:setTop(0);
    obj.edit119:setWidth(180);
    obj.edit119:setHeight(30);
    obj.edit119:setField("Arma7");
    obj.edit119:setName("edit119");

    obj.layout241 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout241:setParent(obj.rectangle1);
    obj.layout241:setLeft(255);
    obj.layout241:setTop(1154);
    obj.layout241:setWidth(130);
    obj.layout241:setHeight(30);
    obj.layout241:setName("layout241");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.layout241);
    obj.edit120:setTransparent(true);
    obj.edit120:setFontSize(14);
    obj.edit120:setFontColor("#ffffff");
    obj.edit120:setHorzTextAlign("leading");
    obj.edit120:setVertTextAlign("center");
    obj.edit120:setLeft(0);
    obj.edit120:setTop(0);
    obj.edit120:setWidth(130);
    obj.edit120:setHeight(30);
    obj.edit120:setField("Dif7");
    obj.edit120:setName("edit120");

    obj.layout242 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout242:setParent(obj.rectangle1);
    obj.layout242:setLeft(390);
    obj.layout242:setTop(1154);
    obj.layout242:setWidth(65);
    obj.layout242:setHeight(30);
    obj.layout242:setName("layout242");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.layout242);
    obj.edit121:setTransparent(true);
    obj.edit121:setFontSize(14);
    obj.edit121:setFontColor("#ffffff");
    obj.edit121:setHorzTextAlign("leading");
    obj.edit121:setVertTextAlign("center");
    obj.edit121:setLeft(0);
    obj.edit121:setTop(0);
    obj.edit121:setWidth(65);
    obj.edit121:setHeight(30);
    obj.edit121:setField("Dano7");
    obj.edit121:setName("edit121");

    obj.layout243 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout243:setParent(obj.rectangle1);
    obj.layout243:setLeft(455);
    obj.layout243:setTop(1154);
    obj.layout243:setWidth(55);
    obj.layout243:setHeight(30);
    obj.layout243:setName("layout243");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.layout243);
    obj.edit122:setTransparent(true);
    obj.edit122:setFontSize(14);
    obj.edit122:setFontColor("#ffffff");
    obj.edit122:setHorzTextAlign("leading");
    obj.edit122:setVertTextAlign("center");
    obj.edit122:setLeft(0);
    obj.edit122:setTop(0);
    obj.edit122:setWidth(55);
    obj.edit122:setHeight(30);
    obj.edit122:setField("Alc7");
    obj.edit122:setName("edit122");

    obj.layout244 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout244:setParent(obj.rectangle1);
    obj.layout244:setLeft(510);
    obj.layout244:setTop(1154);
    obj.layout244:setWidth(60);
    obj.layout244:setHeight(30);
    obj.layout244:setName("layout244");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.layout244);
    obj.edit123:setTransparent(true);
    obj.edit123:setFontSize(14);
    obj.edit123:setFontColor("#ffffff");
    obj.edit123:setHorzTextAlign("leading");
    obj.edit123:setVertTextAlign("center");
    obj.edit123:setLeft(0);
    obj.edit123:setTop(0);
    obj.edit123:setWidth(60);
    obj.edit123:setHeight(30);
    obj.edit123:setField("Cad7");
    obj.edit123:setName("edit123");

    obj.layout245 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout245:setParent(obj.rectangle1);
    obj.layout245:setLeft(570);
    obj.layout245:setTop(1154);
    obj.layout245:setWidth(50);
    obj.layout245:setHeight(30);
    obj.layout245:setName("layout245");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.layout245);
    obj.edit124:setTransparent(true);
    obj.edit124:setFontSize(14);
    obj.edit124:setFontColor("#ffffff");
    obj.edit124:setHorzTextAlign("leading");
    obj.edit124:setVertTextAlign("center");
    obj.edit124:setLeft(0);
    obj.edit124:setTop(0);
    obj.edit124:setWidth(50);
    obj.edit124:setHeight(30);
    obj.edit124:setField("Pente7");
    obj.edit124:setName("edit124");

    obj.layout246 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout246:setParent(obj.rectangle1);
    obj.layout246:setLeft(690);
    obj.layout246:setTop(1005);
    obj.layout246:setWidth(125);
    obj.layout246:setHeight(30);
    obj.layout246:setName("layout246");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.layout246);
    obj.edit125:setTransparent(true);
    obj.edit125:setFontSize(14);
    obj.edit125:setFontColor("#ffffff");
    obj.edit125:setHorzTextAlign("leading");
    obj.edit125:setVertTextAlign("center");
    obj.edit125:setLeft(0);
    obj.edit125:setTop(0);
    obj.edit125:setWidth(125);
    obj.edit125:setHeight(30);
    obj.edit125:setField("NivelArm");
    obj.edit125:setName("edit125");

    obj.layout247 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout247:setParent(obj.rectangle1);
    obj.layout247:setLeft(730);
    obj.layout247:setTop(1033);
    obj.layout247:setWidth(85);
    obj.layout247:setHeight(30);
    obj.layout247:setName("layout247");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.layout247);
    obj.edit126:setTransparent(true);
    obj.edit126:setFontSize(14);
    obj.edit126:setFontColor("#ffffff");
    obj.edit126:setHorzTextAlign("leading");
    obj.edit126:setVertTextAlign("center");
    obj.edit126:setLeft(0);
    obj.edit126:setTop(0);
    obj.edit126:setWidth(85);
    obj.edit126:setHeight(30);
    obj.edit126:setField("PenArm");
    obj.edit126:setName("edit126");

    obj.layout248 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout248:setParent(obj.rectangle1);
    obj.layout248:setLeft(647);
    obj.layout248:setTop(1093);
    obj.layout248:setWidth(170);
    obj.layout248:setHeight(84);
    obj.layout248:setName("layout248");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout248);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(170);
    obj.textEditor1:setHeight(84);
    obj.textEditor1:setField("DesArm");
    obj.textEditor1:setName("textEditor1");

    obj.frmCodigo2 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo2:setParent(obj);
    obj.frmCodigo2:setName("frmCodigo2");
    obj.frmCodigo2:setHeight(0);
    obj.frmCodigo2:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo2);
    obj.dataLink1:setFields({'Pata5C1', 'Pata4C1', 'Pata3C1', 'Pata2C1', 'Pata1C1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo2);
    obj.dataLink2:setFields({'Pata5C2', 'Pata4C2', 'Pata3C2', 'Pata2C2', 'Pata1C2'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo2);
    obj.dataLink3:setFields({'Pata5C3', 'Pata4C3', 'Pata3C3', 'Pata2C3', 'Pata1C3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo2);
    obj.dataLink4:setFields({'Pata5C4', 'Pata4C4', 'Pata3C4', 'Pata2C4', 'Pata1C4'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo2);
    obj.dataLink5:setFields({'Pata5C5', 'Pata4C5', 'Pata3C5', 'Pata2C5', 'Pata1C5'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo2);
    obj.dataLink6:setFields({'Pata5C6', 'Pata4C6', 'Pata3C6', 'Pata2C6', 'Pata1C6'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo2);
    obj.dataLink7:setFields({'Pata5C7', 'Pata4C7', 'Pata3C7', 'Pata2C7', 'Pata1C7'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo2);
    obj.dataLink8:setFields({'Pata5C8', 'Pata4C8', 'Pata3C8', 'Pata2C8', 'Pata1C8'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo2);
    obj.dataLink9:setFields({'Pata5C9', 'Pata4C9', 'Pata3C9', 'Pata2C9', 'Pata1C9'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo2);
    obj.dataLink10:setFields({'Pata5C10', 'Pata4C10', 'Pata3C10', 'Pata2C10', 'Pata1C10'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo2);
    obj.dataLink11:setFields({'Pata5C11', 'Pata4C11', 'Pata3C11', 'Pata2C11', 'Pata1C11'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo2);
    obj.dataLink12:setFields({'Pata5C12', 'Pata4C12', 'Pata3C12', 'Pata2C12', 'Pata1C12'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo2);
    obj.dataLink13:setFields({'Pata5C13', 'Pata4C13', 'Pata3C13', 'Pata2C13', 'Pata1C13'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo2);
    obj.dataLink14:setFields({'Pata5C14', 'Pata4C14', 'Pata3C14', 'Pata2C14', 'Pata1C14'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo2);
    obj.dataLink15:setFields({'Pata5C15', 'Pata4C15', 'Pata3C15', 'Pata2C15', 'Pata1C15'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo2);
    obj.dataLink16:setFields({'Pata5C16', 'Pata4C16', 'Pata3C16', 'Pata2C16', 'Pata1C16'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo2);
    obj.dataLink17:setFields({'Pata5C17', 'Pata4C17', 'Pata3C17', 'Pata2C17', 'Pata1C17'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo2);
    obj.dataLink18:setFields({'Pata5C18', 'Pata4C18', 'Pata3C18', 'Pata2C18', 'Pata1C18'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo2);
    obj.dataLink19:setFields({'Pata5C19', 'Pata4C19', 'Pata3C19', 'Pata2C19', 'Pata1C19'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmCodigo2);
    obj.dataLink20:setFields({'Pata5C20', 'Pata4C20', 'Pata3C20', 'Pata2C20', 'Pata1C20'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmCodigo2);
    obj.dataLink21:setFields({'Pata5C21', 'Pata4C21', 'Pata3C21', 'Pata2C21', 'Pata1C21'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.frmCodigo2);
    obj.dataLink22:setFields({'Pata5C22', 'Pata4C22', 'Pata3C22', 'Pata2C22', 'Pata1C22'});
    obj.dataLink22:setName("dataLink22");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C1 == true then
            		sheet.Pata4C1 = true;
            		sheet.Pata3C1 = true;
            		sheet.Pata2C1 = true;
            		sheet.Pata1C1 = true;
            	elseif sheet.Pata4C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata3C1 = true;
            		sheet.Pata2C1 = true;
            		sheet.Pata1C1 = true;
            	elseif sheet.Pata3C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata2C1 = true;
            		sheet.Pata1C1 = true;
            	elseif sheet.Pata2C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata3C1 = false;
            		sheet.Pata1C1 = true;	
            	elseif sheet.Pata1C1 == true then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata3C1 = false;
            		sheet.Pata2C1 = false;
            	elseif sheet.Pata1C1 == false then
            		sheet.Pata5C1 = false;
            		sheet.Pata4C1 = false;
            		sheet.Pata3C1 = false;
            		sheet.Pata2C1 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C2 == true then
            		sheet.Pata4C2 = true;
            		sheet.Pata3C2 = true;
            		sheet.Pata2C2 = true;
            		sheet.Pata1C2 = true;
            	elseif sheet.Pata4C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata3C2 = true;
            		sheet.Pata2C2 = true;
            		sheet.Pata1C2 = true;
            	elseif sheet.Pata3C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata2C2 = true;
            		sheet.Pata1C2 = true;
            	elseif sheet.Pata2C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata3C2 = false;
            		sheet.Pata1C2 = true;	
            	elseif sheet.Pata1C2 == true then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata3C2 = false;
            		sheet.Pata2C2 = false;
            	elseif sheet.Pata1C2 == false then
            		sheet.Pata5C2 = false;
            		sheet.Pata4C2 = false;
            		sheet.Pata3C2 = false;
            		sheet.Pata2C2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C3 == true then
            		sheet.Pata4C3 = true;
            		sheet.Pata3C3 = true;
            		sheet.Pata2C3 = true;
            		sheet.Pata1C3 = true;
            	elseif sheet.Pata4C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata3C3 = true;
            		sheet.Pata2C3 = true;
            		sheet.Pata1C3 = true;
            	elseif sheet.Pata3C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata2C3 = true;
            		sheet.Pata1C3 = true;
            	elseif sheet.Pata2C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata3C3 = false;
            		sheet.Pata1C3 = true;	
            	elseif sheet.Pata1C3 == true then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata3C3 = false;
            		sheet.Pata2C3 = false;
            	elseif sheet.Pata1C3 == false then
            		sheet.Pata5C3 = false;
            		sheet.Pata4C3 = false;
            		sheet.Pata3C3 = false;
            		sheet.Pata2C3 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C4 == true then
            		sheet.Pata4C4 = true;
            		sheet.Pata3C4 = true;
            		sheet.Pata2C4 = true;
            		sheet.Pata1C4 = true;
            	elseif sheet.Pata4C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata3C4 = true;
            		sheet.Pata2C4 = true;
            		sheet.Pata1C4 = true;
            	elseif sheet.Pata3C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata2C4 = true;
            		sheet.Pata1C4 = true;
            	elseif sheet.Pata2C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata3C4 = false;
            		sheet.Pata1C4 = true;	
            	elseif sheet.Pata1C4 == true then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata3C4 = false;
            		sheet.Pata2C4 = false;
            	elseif sheet.Pata1C4 == false then
            		sheet.Pata5C4 = false;
            		sheet.Pata4C4 = false;
            		sheet.Pata3C4 = false;
            		sheet.Pata2C4 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C5 == true then
            		sheet.Pata4C5 = true;
            		sheet.Pata3C5 = true;
            		sheet.Pata2C5 = true;
            		sheet.Pata1C5 = true;
            	elseif sheet.Pata4C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata3C5 = true;
            		sheet.Pata2C5 = true;
            		sheet.Pata1C5 = true;
            	elseif sheet.Pata3C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata2C5 = true;
            		sheet.Pata1C5 = true;
            	elseif sheet.Pata2C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata3C5 = false;
            		sheet.Pata1C5 = true;	
            	elseif sheet.Pata1C5 == true then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata3C5 = false;
            		sheet.Pata2C5 = false;
            	elseif sheet.Pata1C5 == false then
            		sheet.Pata5C5 = false;
            		sheet.Pata4C5 = false;
            		sheet.Pata3C5 = false;
            		sheet.Pata2C5 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C6 == true then
            		sheet.Pata4C6 = true;
            		sheet.Pata3C6 = true;
            		sheet.Pata2C6 = true;
            		sheet.Pata1C6 = true;
            	elseif sheet.Pata4C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata3C6 = true;
            		sheet.Pata2C6 = true;
            		sheet.Pata1C6 = true;
            	elseif sheet.Pata3C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata2C6 = true;
            		sheet.Pata1C6 = true;
            	elseif sheet.Pata2C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata3C6 = false;
            		sheet.Pata1C6 = true;	
            	elseif sheet.Pata1C6 == true then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata3C6 = false;
            		sheet.Pata2C6 = false;
            	elseif sheet.Pata1C6 == false then
            		sheet.Pata5C6 = false;
            		sheet.Pata4C6 = false;
            		sheet.Pata3C6 = false;
            		sheet.Pata2C6 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C7 == true then
            		sheet.Pata4C7 = true;
            		sheet.Pata3C7 = true;
            		sheet.Pata2C7 = true;
            		sheet.Pata1C7 = true;
            	elseif sheet.Pata4C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata3C7 = true;
            		sheet.Pata2C7 = true;
            		sheet.Pata1C7 = true;
            	elseif sheet.Pata3C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata2C7 = true;
            		sheet.Pata1C7 = true;
            	elseif sheet.Pata2C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata3C7 = false;
            		sheet.Pata1C7 = true;	
            	elseif sheet.Pata1C7 == true then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata3C7 = false;
            		sheet.Pata2C7 = false;
            	elseif sheet.Pata1C7 == false then
            		sheet.Pata5C7 = false;
            		sheet.Pata4C7 = false;
            		sheet.Pata3C7 = false;
            		sheet.Pata2C7 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C8 == true then
            		sheet.Pata4C8 = true;
            		sheet.Pata3C8 = true;
            		sheet.Pata2C8 = true;
            		sheet.Pata1C8 = true;
            	elseif sheet.Pata4C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata3C8 = true;
            		sheet.Pata2C8 = true;
            		sheet.Pata1C8 = true;
            	elseif sheet.Pata3C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata2C8 = true;
            		sheet.Pata1C8 = true;
            	elseif sheet.Pata2C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata3C8 = false;
            		sheet.Pata1C8 = true;	
            	elseif sheet.Pata1C8 == true then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata3C8 = false;
            		sheet.Pata2C8 = false;
            	elseif sheet.Pata1C8 == false then
            		sheet.Pata5C8 = false;
            		sheet.Pata4C8 = false;
            		sheet.Pata3C8 = false;
            		sheet.Pata2C8 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C9 == true then
            		sheet.Pata4C9 = true;
            		sheet.Pata3C9 = true;
            		sheet.Pata2C9 = true;
            		sheet.Pata1C9 = true;
            	elseif sheet.Pata4C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata3C9 = true;
            		sheet.Pata2C9 = true;
            		sheet.Pata1C9 = true;
            	elseif sheet.Pata3C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata2C9 = true;
            		sheet.Pata1C9 = true;
            	elseif sheet.Pata2C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata3C9 = false;
            		sheet.Pata1C9 = true;	
            	elseif sheet.Pata1C9 == true then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata3C9 = false;
            		sheet.Pata2C9 = false;
            	elseif sheet.Pata1C9 == false then
            		sheet.Pata5C9 = false;
            		sheet.Pata4C9 = false;
            		sheet.Pata3C9 = false;
            		sheet.Pata2C9 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C10 == true then
            		sheet.Pata4C10 = true;
            		sheet.Pata3C10 = true;
            		sheet.Pata2C10 = true;
            		sheet.Pata1C10 = true;
            	elseif sheet.Pata4C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata3C10 = true;
            		sheet.Pata2C10 = true;
            		sheet.Pata1C10 = true;
            	elseif sheet.Pata3C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata2C10 = true;
            		sheet.Pata1C10 = true;
            	elseif sheet.Pata2C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata3C10 = false;
            		sheet.Pata1C10 = true;	
            	elseif sheet.Pata1C10 == true then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata3C10 = false;
            		sheet.Pata2C10 = false;
            	elseif sheet.Pata1C10 == false then
            		sheet.Pata5C10 = false;
            		sheet.Pata4C10 = false;
            		sheet.Pata3C10 = false;
            		sheet.Pata2C10 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C11 == true then
            		sheet.Pata4C11 = true;
            		sheet.Pata3C11 = true;
            		sheet.Pata2C11 = true;
            		sheet.Pata1C11 = true;
            	elseif sheet.Pata4C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata3C11 = true;
            		sheet.Pata2C11 = true;
            		sheet.Pata1C11 = true;
            	elseif sheet.Pata3C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata2C11 = true;
            		sheet.Pata1C11 = true;
            	elseif sheet.Pata2C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata3C11 = false;
            		sheet.Pata1C11 = true;	
            	elseif sheet.Pata1C11 == true then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata3C11 = false;
            		sheet.Pata2C11 = false;
            	elseif sheet.Pata1C11 == false then
            		sheet.Pata5C11 = false;
            		sheet.Pata4C11 = false;
            		sheet.Pata3C11 = false;
            		sheet.Pata2C11 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C12 == true then
            		sheet.Pata4C12 = true;
            		sheet.Pata3C12 = true;
            		sheet.Pata2C12 = true;
            		sheet.Pata1C12 = true;
            	elseif sheet.Pata4C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata3C12 = true;
            		sheet.Pata2C12 = true;
            		sheet.Pata1C12 = true;
            	elseif sheet.Pata3C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata2C12 = true;
            		sheet.Pata1C12 = true;
            	elseif sheet.Pata2C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata3C12 = false;
            		sheet.Pata1C12 = true;	
            	elseif sheet.Pata1C12 == true then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata3C12 = false;
            		sheet.Pata2C12 = false;
            	elseif sheet.Pata1C12 == false then
            		sheet.Pata5C12 = false;
            		sheet.Pata4C12 = false;
            		sheet.Pata3C12 = false;
            		sheet.Pata2C12 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C13 == true then
            		sheet.Pata4C13 = true;
            		sheet.Pata3C13 = true;
            		sheet.Pata2C13 = true;
            		sheet.Pata1C13 = true;
            	elseif sheet.Pata4C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata3C13 = true;
            		sheet.Pata2C13 = true;
            		sheet.Pata1C13 = true;
            	elseif sheet.Pata3C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata2C13 = true;
            		sheet.Pata1C13 = true;
            	elseif sheet.Pata2C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata3C13 = false;
            		sheet.Pata1C13 = true;	
            	elseif sheet.Pata1C13 == true then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata3C13 = false;
            		sheet.Pata2C13 = false;
            	elseif sheet.Pata1C13 == false then
            		sheet.Pata5C13 = false;
            		sheet.Pata4C13 = false;
            		sheet.Pata3C13 = false;
            		sheet.Pata2C13 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C14 == true then
            		sheet.Pata4C14 = true;
            		sheet.Pata3C14 = true;
            		sheet.Pata2C14 = true;
            		sheet.Pata1C14 = true;
            	elseif sheet.Pata4C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata3C14 = true;
            		sheet.Pata2C14 = true;
            		sheet.Pata1C14 = true;
            	elseif sheet.Pata3C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata2C14 = true;
            		sheet.Pata1C14 = true;
            	elseif sheet.Pata2C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata3C14 = false;
            		sheet.Pata1C14 = true;	
            	elseif sheet.Pata1C14 == true then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata3C14 = false;
            		sheet.Pata2C14 = false;
            	elseif sheet.Pata1C14 == false then
            		sheet.Pata5C14 = false;
            		sheet.Pata4C14 = false;
            		sheet.Pata3C14 = false;
            		sheet.Pata2C14 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C15 == true then
            		sheet.Pata4C15 = true;
            		sheet.Pata3C15 = true;
            		sheet.Pata2C15 = true;
            		sheet.Pata1C15 = true;
            	elseif sheet.Pata4C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata3C15 = true;
            		sheet.Pata2C15 = true;
            		sheet.Pata1C15 = true;
            	elseif sheet.Pata3C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata2C15 = true;
            		sheet.Pata1C15 = true;
            	elseif sheet.Pata2C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata3C15 = false;
            		sheet.Pata1C15 = true;	
            	elseif sheet.Pata1C15 == true then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata3C15 = false;
            		sheet.Pata2C15 = false;
            	elseif sheet.Pata1C15 == false then
            		sheet.Pata5C15 = false;
            		sheet.Pata4C15 = false;
            		sheet.Pata3C15 = false;
            		sheet.Pata2C15 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C16 == true then
            		sheet.Pata4C16 = true;
            		sheet.Pata3C16 = true;
            		sheet.Pata2C16 = true;
            		sheet.Pata1C16 = true;
            	elseif sheet.Pata4C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata3C16 = true;
            		sheet.Pata2C16 = true;
            		sheet.Pata1C16 = true;
            	elseif sheet.Pata3C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata2C16 = true;
            		sheet.Pata1C16 = true;
            	elseif sheet.Pata2C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata3C16 = false;
            		sheet.Pata1C16 = true;	
            	elseif sheet.Pata1C16 == true then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata3C16 = false;
            		sheet.Pata2C16 = false;
            	elseif sheet.Pata1C16 == false then
            		sheet.Pata5C16 = false;
            		sheet.Pata4C16 = false;
            		sheet.Pata3C16 = false;
            		sheet.Pata2C16 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C17 == true then
            		sheet.Pata4C17 = true;
            		sheet.Pata3C17 = true;
            		sheet.Pata2C17 = true;
            		sheet.Pata1C17 = true;
            	elseif sheet.Pata4C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata3C17 = true;
            		sheet.Pata2C17 = true;
            		sheet.Pata1C17 = true;
            	elseif sheet.Pata3C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata2C17 = true;
            		sheet.Pata1C17 = true;
            	elseif sheet.Pata2C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata3C17 = false;
            		sheet.Pata1C17 = true;	
            	elseif sheet.Pata1C17 == true then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata3C17 = false;
            		sheet.Pata2C17 = false;
            	elseif sheet.Pata1C17 == false then
            		sheet.Pata5C17 = false;
            		sheet.Pata4C17 = false;
            		sheet.Pata3C17 = false;
            		sheet.Pata2C17 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C18 == true then
            		sheet.Pata4C18 = true;
            		sheet.Pata3C18 = true;
            		sheet.Pata2C18 = true;
            		sheet.Pata1C18 = true;
            	elseif sheet.Pata4C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata3C18 = true;
            		sheet.Pata2C18 = true;
            		sheet.Pata1C18 = true;
            	elseif sheet.Pata3C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata2C18 = true;
            		sheet.Pata1C18 = true;
            	elseif sheet.Pata2C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata3C18 = false;
            		sheet.Pata1C18 = true;	
            	elseif sheet.Pata1C18 == true then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata3C18 = false;
            		sheet.Pata2C18 = false;
            	elseif sheet.Pata1C18 == false then
            		sheet.Pata5C18 = false;
            		sheet.Pata4C18 = false;
            		sheet.Pata3C18 = false;
            		sheet.Pata2C18 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C19 == true then
            		sheet.Pata4C19 = true;
            		sheet.Pata3C19 = true;
            		sheet.Pata2C19 = true;
            		sheet.Pata1C19 = true;
            	elseif sheet.Pata4C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata3C19 = true;
            		sheet.Pata2C19 = true;
            		sheet.Pata1C19 = true;
            	elseif sheet.Pata3C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata2C19 = true;
            		sheet.Pata1C19 = true;
            	elseif sheet.Pata2C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata3C19 = false;
            		sheet.Pata1C19 = true;	
            	elseif sheet.Pata1C19 == true then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata3C19 = false;
            		sheet.Pata2C19 = false;
            	elseif sheet.Pata1C19 == false then
            		sheet.Pata5C19 = false;
            		sheet.Pata4C19 = false;
            		sheet.Pata3C19 = false;
            		sheet.Pata2C19 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C20 == true then
            		sheet.Pata4C20 = true;
            		sheet.Pata3C20 = true;
            		sheet.Pata2C20 = true;
            		sheet.Pata1C20 = true;
            	elseif sheet.Pata4C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata3C20 = true;
            		sheet.Pata2C20 = true;
            		sheet.Pata1C20 = true;
            	elseif sheet.Pata3C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata2C20 = true;
            		sheet.Pata1C20 = true;
            	elseif sheet.Pata2C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata3C20 = false;
            		sheet.Pata1C20 = true;	
            	elseif sheet.Pata1C20 == true then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata3C20 = false;
            		sheet.Pata2C20 = false;
            	elseif sheet.Pata1C20 == false then
            		sheet.Pata5C20 = false;
            		sheet.Pata4C20 = false;
            		sheet.Pata3C20 = false;
            		sheet.Pata2C20 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C21 == true then
            		sheet.Pata4C21 = true;
            		sheet.Pata3C21 = true;
            		sheet.Pata2C21 = true;
            		sheet.Pata1C21 = true;
            	elseif sheet.Pata4C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata3C21 = true;
            		sheet.Pata2C21 = true;
            		sheet.Pata1C21 = true;
            	elseif sheet.Pata3C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata2C21 = true;
            		sheet.Pata1C21 = true;
            	elseif sheet.Pata2C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata3C21 = false;
            		sheet.Pata1C21 = true;	
            	elseif sheet.Pata1C21 == true then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata3C21 = false;
            		sheet.Pata2C21 = false;
            	elseif sheet.Pata1C21 == false then
            		sheet.Pata5C21 = false;
            		sheet.Pata4C21 = false;
            		sheet.Pata3C21 = false;
            		sheet.Pata2C21 = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Pata5C22 == true then
            		sheet.Pata4C22 = true;
            		sheet.Pata3C22 = true;
            		sheet.Pata2C22 = true;
            		sheet.Pata1C22 = true;
            	elseif sheet.Pata4C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata3C22 = true;
            		sheet.Pata2C22 = true;
            		sheet.Pata1C22 = true;
            	elseif sheet.Pata3C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata2C22 = true;
            		sheet.Pata1C22 = true;
            	elseif sheet.Pata2C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata3C22 = false;
            		sheet.Pata1C22 = true;	
            	elseif sheet.Pata1C22 == true then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata3C22 = false;
            		sheet.Pata2C22 = false;
            	elseif sheet.Pata1C22 == false then
            		sheet.Pata5C22 = false;
            		sheet.Pata4C22 = false;
            		sheet.Pata3C22 = false;
            		sheet.Pata2C22 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.layout189 ~= nil then self.layout189:destroy(); self.layout189 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.layout195 ~= nil then self.layout195:destroy(); self.layout195 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.layout187 ~= nil then self.layout187:destroy(); self.layout187 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.layout247 ~= nil then self.layout247:destroy(); self.layout247 = nil; end;
        if self.layout196 ~= nil then self.layout196:destroy(); self.layout196 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.layout223 ~= nil then self.layout223:destroy(); self.layout223 = nil; end;
        if self.layout236 ~= nil then self.layout236:destroy(); self.layout236 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout194 ~= nil then self.layout194:destroy(); self.layout194 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.layout212 ~= nil then self.layout212:destroy(); self.layout212 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.layout158 ~= nil then self.layout158:destroy(); self.layout158 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.layout174 ~= nil then self.layout174:destroy(); self.layout174 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout210 ~= nil then self.layout210:destroy(); self.layout210 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.layout205 ~= nil then self.layout205:destroy(); self.layout205 = nil; end;
        if self.layout232 ~= nil then self.layout232:destroy(); self.layout232 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout203 ~= nil then self.layout203:destroy(); self.layout203 = nil; end;
        if self.layout176 ~= nil then self.layout176:destroy(); self.layout176 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.layout185 ~= nil then self.layout185:destroy(); self.layout185 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.layout248 ~= nil then self.layout248:destroy(); self.layout248 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.layout235 ~= nil then self.layout235:destroy(); self.layout235 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout246 ~= nil then self.layout246:destroy(); self.layout246 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout191 ~= nil then self.layout191:destroy(); self.layout191 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.layout183 ~= nil then self.layout183:destroy(); self.layout183 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.layout186 ~= nil then self.layout186:destroy(); self.layout186 = nil; end;
        if self.layout229 ~= nil then self.layout229:destroy(); self.layout229 = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.layout225 ~= nil then self.layout225:destroy(); self.layout225 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout162 ~= nil then self.layout162:destroy(); self.layout162 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.layout241 ~= nil then self.layout241:destroy(); self.layout241 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.layout206 ~= nil then self.layout206:destroy(); self.layout206 = nil; end;
        if self.layout207 ~= nil then self.layout207:destroy(); self.layout207 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.layout244 ~= nil then self.layout244:destroy(); self.layout244 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox106 ~= nil then self.imageCheckBox106:destroy(); self.imageCheckBox106 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.layout193 ~= nil then self.layout193:destroy(); self.layout193 = nil; end;
        if self.layout242 ~= nil then self.layout242:destroy(); self.layout242 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.layout200 ~= nil then self.layout200:destroy(); self.layout200 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.layout228 ~= nil then self.layout228:destroy(); self.layout228 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout211 ~= nil then self.layout211:destroy(); self.layout211 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.layout230 ~= nil then self.layout230:destroy(); self.layout230 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout165 ~= nil then self.layout165:destroy(); self.layout165 = nil; end;
        if self.layout198 ~= nil then self.layout198:destroy(); self.layout198 = nil; end;
        if self.layout216 ~= nil then self.layout216:destroy(); self.layout216 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout226 ~= nil then self.layout226:destroy(); self.layout226 = nil; end;
        if self.layout222 ~= nil then self.layout222:destroy(); self.layout222 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout224 ~= nil then self.layout224:destroy(); self.layout224 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout164 ~= nil then self.layout164:destroy(); self.layout164 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout202 ~= nil then self.layout202:destroy(); self.layout202 = nil; end;
        if self.layout220 ~= nil then self.layout220:destroy(); self.layout220 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.layout170 ~= nil then self.layout170:destroy(); self.layout170 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.layout227 ~= nil then self.layout227:destroy(); self.layout227 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.imageCheckBox111 ~= nil then self.imageCheckBox111:destroy(); self.imageCheckBox111 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.layout240 ~= nil then self.layout240:destroy(); self.layout240 = nil; end;
        if self.layout209 ~= nil then self.layout209:destroy(); self.layout209 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.layout201 ~= nil then self.layout201:destroy(); self.layout201 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout190 ~= nil then self.layout190:destroy(); self.layout190 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.layout219 ~= nil then self.layout219:destroy(); self.layout219 = nil; end;
        if self.layout245 ~= nil then self.layout245:destroy(); self.layout245 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout218 ~= nil then self.layout218:destroy(); self.layout218 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout171 ~= nil then self.layout171:destroy(); self.layout171 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.layout177 ~= nil then self.layout177:destroy(); self.layout177 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout169 ~= nil then self.layout169:destroy(); self.layout169 = nil; end;
        if self.layout217 ~= nil then self.layout217:destroy(); self.layout217 = nil; end;
        if self.layout199 ~= nil then self.layout199:destroy(); self.layout199 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.layout243 ~= nil then self.layout243:destroy(); self.layout243 = nil; end;
        if self.layout192 ~= nil then self.layout192:destroy(); self.layout192 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.layout178 ~= nil then self.layout178:destroy(); self.layout178 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout180 ~= nil then self.layout180:destroy(); self.layout180 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout204 ~= nil then self.layout204:destroy(); self.layout204 = nil; end;
        if self.layout172 ~= nil then self.layout172:destroy(); self.layout172 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.layout215 ~= nil then self.layout215:destroy(); self.layout215 = nil; end;
        if self.layout221 ~= nil then self.layout221:destroy(); self.layout221 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout173 ~= nil then self.layout173:destroy(); self.layout173 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.layout234 ~= nil then self.layout234:destroy(); self.layout234 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.layout238 ~= nil then self.layout238:destroy(); self.layout238 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.layout179 ~= nil then self.layout179:destroy(); self.layout179 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.layout213 ~= nil then self.layout213:destroy(); self.layout213 = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.frmCodigo2 ~= nil then self.frmCodigo2:destroy(); self.frmCodigo2 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.layout233 ~= nil then self.layout233:destroy(); self.layout233 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout208 ~= nil then self.layout208:destroy(); self.layout208 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout175 ~= nil then self.layout175:destroy(); self.layout175 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.layout231 ~= nil then self.layout231:destroy(); self.layout231 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.imageCheckBox121 ~= nil then self.imageCheckBox121:destroy(); self.imageCheckBox121 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.layout197 ~= nil then self.layout197:destroy(); self.layout197 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.layout214 ~= nil then self.layout214:destroy(); self.layout214 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.layout184 ~= nil then self.layout184:destroy(); self.layout184 = nil; end;
        if self.layout161 ~= nil then self.layout161:destroy(); self.layout161 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.layout239 ~= nil then self.layout239:destroy(); self.layout239 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.layout237 ~= nil then self.layout237:destroy(); self.layout237 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmLobisomen2_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmLobisomen2_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmLobisomen2_svg = {
    newEditor = newfrmLobisomen2_svg, 
    new = newfrmLobisomen2_svg, 
    name = "frmLobisomen2_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmLobisomen2_svg = _frmLobisomen2_svg;
Firecast.registrarForm(_frmLobisomen2_svg);

return _frmLobisomen2_svg;
