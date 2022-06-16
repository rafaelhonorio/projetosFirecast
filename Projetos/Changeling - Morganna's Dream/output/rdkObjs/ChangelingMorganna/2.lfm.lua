require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmChangelingMorganna2_svg()
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
    obj:setName("frmChangelingMorganna2_svg");
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
    obj.image1:setSRC("/ChangelingMorganna/images/2.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(220);
    obj.layout1:setTop(180);
    obj.layout1:setWidth(215);
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
    obj.edit1:setWidth(215);
    obj.edit1:setHeight(30);
    obj.edit1:setField("ConFam");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(220);
    obj.layout2:setTop(212);
    obj.layout2:setWidth(220);
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
    obj.edit2:setWidth(215);
    obj.edit2:setHeight(30);
    obj.edit2:setField("MesSus");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(80);
    obj.layout3:setTop(360);
    obj.layout3:setWidth(170);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(15);
    obj.edit3:setFontColor("#ffffff");
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(170);
    obj.edit3:setHeight(30);
    obj.edit3:setField("TextoOutraCaracteristicas1");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(80);
    obj.layout4:setTop(380);
    obj.layout4:setWidth(170);
    obj.layout4:setHeight(30);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(15);
    obj.edit4:setFontColor("#ffffff");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(170);
    obj.edit4:setHeight(30);
    obj.edit4:setField("TextoOutraCaracteristicas2");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(80);
    obj.layout5:setTop(398);
    obj.layout5:setWidth(170);
    obj.layout5:setHeight(30);
    obj.layout5:setName("layout5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(15);
    obj.edit5:setFontColor("#ffffff");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(170);
    obj.edit5:setHeight(30);
    obj.edit5:setField("TextoOutraCaracteristicas3");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(80);
    obj.layout6:setTop(417);
    obj.layout6:setWidth(170);
    obj.layout6:setHeight(30);
    obj.layout6:setName("layout6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(15);
    obj.edit6:setFontColor("#ffffff");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(170);
    obj.edit6:setHeight(30);
    obj.edit6:setField("TextoOutraCaracteristicas4");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(80);
    obj.layout7:setTop(438);
    obj.layout7:setWidth(170);
    obj.layout7:setHeight(30);
    obj.layout7:setName("layout7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(15);
    obj.edit7:setFontColor("#ffffff");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(170);
    obj.edit7:setHeight(30);
    obj.edit7:setField("TextoOutraCaracteristicas5");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(80);
    obj.layout8:setTop(457);
    obj.layout8:setWidth(170);
    obj.layout8:setHeight(30);
    obj.layout8:setName("layout8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(15);
    obj.edit8:setFontColor("#ffffff");
    obj.edit8:setHorzTextAlign("leading");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(170);
    obj.edit8:setHeight(30);
    obj.edit8:setField("TextoOutraCaracteristicas6");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(80);
    obj.layout9:setTop(477);
    obj.layout9:setWidth(170);
    obj.layout9:setHeight(30);
    obj.layout9:setName("layout9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(15);
    obj.edit9:setFontColor("#ffffff");
    obj.edit9:setHorzTextAlign("leading");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(170);
    obj.edit9:setHeight(30);
    obj.edit9:setField("TextoOutraCaracteristicas7");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(325);
    obj.layout10:setTop(360);
    obj.layout10:setWidth(170);
    obj.layout10:setHeight(30);
    obj.layout10:setName("layout10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(15);
    obj.edit10:setFontColor("#ffffff");
    obj.edit10:setHorzTextAlign("leading");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(170);
    obj.edit10:setHeight(30);
    obj.edit10:setField("TextoOutraCaracteristicas8");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(325);
    obj.layout11:setTop(380);
    obj.layout11:setWidth(170);
    obj.layout11:setHeight(30);
    obj.layout11:setName("layout11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(15);
    obj.edit11:setFontColor("#ffffff");
    obj.edit11:setHorzTextAlign("leading");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(170);
    obj.edit11:setHeight(30);
    obj.edit11:setField("TextoOutraCaracteristicas9");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(325);
    obj.layout12:setTop(398);
    obj.layout12:setWidth(170);
    obj.layout12:setHeight(30);
    obj.layout12:setName("layout12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(15);
    obj.edit12:setFontColor("#ffffff");
    obj.edit12:setHorzTextAlign("leading");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(170);
    obj.edit12:setHeight(30);
    obj.edit12:setField("TextoOutraCaracteristicas10");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(325);
    obj.layout13:setTop(417);
    obj.layout13:setWidth(170);
    obj.layout13:setHeight(30);
    obj.layout13:setName("layout13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(15);
    obj.edit13:setFontColor("#ffffff");
    obj.edit13:setHorzTextAlign("leading");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(170);
    obj.edit13:setHeight(30);
    obj.edit13:setField("TextoOutraCaracteristicas11");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(325);
    obj.layout14:setTop(438);
    obj.layout14:setWidth(170);
    obj.layout14:setHeight(30);
    obj.layout14:setName("layout14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout14);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(15);
    obj.edit14:setFontColor("#ffffff");
    obj.edit14:setHorzTextAlign("leading");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(170);
    obj.edit14:setHeight(30);
    obj.edit14:setField("TextoOutraCaracteristicas12");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(325);
    obj.layout15:setTop(457);
    obj.layout15:setWidth(170);
    obj.layout15:setHeight(30);
    obj.layout15:setName("layout15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(15);
    obj.edit15:setFontColor("#ffffff");
    obj.edit15:setHorzTextAlign("leading");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(170);
    obj.edit15:setHeight(30);
    obj.edit15:setField("TextoOutraCaracteristicas13");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(325);
    obj.layout16:setTop(477);
    obj.layout16:setWidth(170);
    obj.layout16:setHeight(30);
    obj.layout16:setName("layout16");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout16);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(15);
    obj.edit16:setFontColor("#ffffff");
    obj.edit16:setHorzTextAlign("leading");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(170);
    obj.edit16:setHeight(30);
    obj.edit16:setField("TextoOutraCaracteristicas14");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(570);
    obj.layout17:setTop(360);
    obj.layout17:setWidth(170);
    obj.layout17:setHeight(30);
    obj.layout17:setName("layout17");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout17);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(15);
    obj.edit17:setFontColor("#ffffff");
    obj.edit17:setHorzTextAlign("leading");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(170);
    obj.edit17:setHeight(30);
    obj.edit17:setField("TextoOutraCaracteristicas15");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(570);
    obj.layout18:setTop(380);
    obj.layout18:setWidth(170);
    obj.layout18:setHeight(30);
    obj.layout18:setName("layout18");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout18);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(15);
    obj.edit18:setFontColor("#ffffff");
    obj.edit18:setHorzTextAlign("leading");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(170);
    obj.edit18:setHeight(30);
    obj.edit18:setField("TextoOutraCaracteristicas16");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(570);
    obj.layout19:setTop(398);
    obj.layout19:setWidth(170);
    obj.layout19:setHeight(30);
    obj.layout19:setName("layout19");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout19);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(15);
    obj.edit19:setFontColor("#ffffff");
    obj.edit19:setHorzTextAlign("leading");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(170);
    obj.edit19:setHeight(30);
    obj.edit19:setField("TextoOutraCaracteristicas17");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(570);
    obj.layout20:setTop(417);
    obj.layout20:setWidth(170);
    obj.layout20:setHeight(30);
    obj.layout20:setName("layout20");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout20);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(15);
    obj.edit20:setFontColor("#ffffff");
    obj.edit20:setHorzTextAlign("leading");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(170);
    obj.edit20:setHeight(30);
    obj.edit20:setField("TextoOutraCaracteristicas18");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(570);
    obj.layout21:setTop(438);
    obj.layout21:setWidth(170);
    obj.layout21:setHeight(30);
    obj.layout21:setName("layout21");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout21);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(15);
    obj.edit21:setFontColor("#ffffff");
    obj.edit21:setHorzTextAlign("leading");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(170);
    obj.edit21:setHeight(30);
    obj.edit21:setField("TextoOutraCaracteristicas19");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(570);
    obj.layout22:setTop(457);
    obj.layout22:setWidth(170);
    obj.layout22:setHeight(30);
    obj.layout22:setName("layout22");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout22);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(15);
    obj.edit22:setFontColor("#ffffff");
    obj.edit22:setHorzTextAlign("leading");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(170);
    obj.edit22:setHeight(30);
    obj.edit22:setField("TextoOutraCaracteristicas20");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(570);
    obj.layout23:setTop(477);
    obj.layout23:setWidth(170);
    obj.layout23:setHeight(30);
    obj.layout23:setName("layout23");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout23);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(15);
    obj.edit23:setFontColor("#ffffff");
    obj.edit23:setHorzTextAlign("leading");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(170);
    obj.edit23:setHeight(30);
    obj.edit23:setField("TextoOutraCaracteristicas21");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(225);
    obj.layout24:setTop(242);
    obj.layout24:setWidth(210);
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
    obj.edit24:setWidth(210);
    obj.edit24:setHeight(30);
    obj.edit24:setField("SociGuil");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(208);
    obj.layout25:setTop(277);
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
    obj.edit25:setField("DiaNom");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(468);
    obj.layout26:setTop(201);
    obj.layout26:setWidth(365);
    obj.layout26:setHeight(104);
    obj.layout26:setName("layout26");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout26);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(365);
    obj.textEditor1:setHeight(104);
    obj.textEditor1:setField("Tesouros");
    obj.textEditor1:setName("textEditor1");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(249);
    obj.layout27:setTop(366);
    obj.layout27:setWidth(20);
    obj.layout27:setHeight(20);
    obj.layout27:setName("layout27");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout27);
    obj.imageCheckBox1:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox1:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox1:setWidth(20);
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setField("bola1OutraCaracteristicas1");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(249);
    obj.layout28:setTop(385);
    obj.layout28:setWidth(20);
    obj.layout28:setHeight(20);
    obj.layout28:setName("layout28");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout28);
    obj.imageCheckBox2:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox2:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox2:setWidth(20);
    obj.imageCheckBox2:setHeight(20);
    obj.imageCheckBox2:setField("bola1OutraCaracteristicas2");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(249);
    obj.layout29:setTop(405);
    obj.layout29:setWidth(20);
    obj.layout29:setHeight(20);
    obj.layout29:setName("layout29");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout29);
    obj.imageCheckBox3:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox3:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox3:setWidth(20);
    obj.imageCheckBox3:setHeight(20);
    obj.imageCheckBox3:setField("bola1OutraCaracteristicas3");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(249);
    obj.layout30:setTop(426);
    obj.layout30:setWidth(20);
    obj.layout30:setHeight(20);
    obj.layout30:setName("layout30");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout30);
    obj.imageCheckBox4:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox4:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox4:setWidth(20);
    obj.imageCheckBox4:setHeight(20);
    obj.imageCheckBox4:setField("bola1OutraCaracteristicas4");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(249);
    obj.layout31:setTop(445);
    obj.layout31:setWidth(20);
    obj.layout31:setHeight(20);
    obj.layout31:setName("layout31");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout31);
    obj.imageCheckBox5:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox5:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox5:setWidth(20);
    obj.imageCheckBox5:setHeight(20);
    obj.imageCheckBox5:setField("bola1OutraCaracteristicas5");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(249);
    obj.layout32:setTop(466);
    obj.layout32:setWidth(20);
    obj.layout32:setHeight(20);
    obj.layout32:setName("layout32");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout32);
    obj.imageCheckBox6:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox6:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox6:setWidth(20);
    obj.imageCheckBox6:setHeight(20);
    obj.imageCheckBox6:setField("bola1OutraCaracteristicas6");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(249);
    obj.layout33:setTop(486);
    obj.layout33:setWidth(20);
    obj.layout33:setHeight(20);
    obj.layout33:setName("layout33");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout33);
    obj.imageCheckBox7:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox7:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox7:setWidth(20);
    obj.imageCheckBox7:setHeight(20);
    obj.imageCheckBox7:setField("bola1OutraCaracteristicas7");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(494);
    obj.layout34:setTop(366);
    obj.layout34:setWidth(20);
    obj.layout34:setHeight(20);
    obj.layout34:setName("layout34");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout34);
    obj.imageCheckBox8:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox8:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox8:setWidth(20);
    obj.imageCheckBox8:setHeight(20);
    obj.imageCheckBox8:setField("bola1OutraCaracteristicas8");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(494);
    obj.layout35:setTop(385);
    obj.layout35:setWidth(20);
    obj.layout35:setHeight(20);
    obj.layout35:setName("layout35");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout35);
    obj.imageCheckBox9:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox9:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox9:setWidth(20);
    obj.imageCheckBox9:setHeight(20);
    obj.imageCheckBox9:setField("bola1OutraCaracteristicas9");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(494);
    obj.layout36:setTop(405);
    obj.layout36:setWidth(20);
    obj.layout36:setHeight(20);
    obj.layout36:setName("layout36");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout36);
    obj.imageCheckBox10:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox10:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox10:setWidth(20);
    obj.imageCheckBox10:setHeight(20);
    obj.imageCheckBox10:setField("bola1OutraCaracteristicas10");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(494);
    obj.layout37:setTop(426);
    obj.layout37:setWidth(20);
    obj.layout37:setHeight(20);
    obj.layout37:setName("layout37");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout37);
    obj.imageCheckBox11:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox11:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox11:setWidth(20);
    obj.imageCheckBox11:setHeight(20);
    obj.imageCheckBox11:setField("bola1OutraCaracteristicas11");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(494);
    obj.layout38:setTop(445);
    obj.layout38:setWidth(20);
    obj.layout38:setHeight(20);
    obj.layout38:setName("layout38");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout38);
    obj.imageCheckBox12:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox12:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox12:setWidth(20);
    obj.imageCheckBox12:setHeight(20);
    obj.imageCheckBox12:setField("bola1OutraCaracteristicas12");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(494);
    obj.layout39:setTop(466);
    obj.layout39:setWidth(20);
    obj.layout39:setHeight(20);
    obj.layout39:setName("layout39");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout39);
    obj.imageCheckBox13:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox13:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox13:setWidth(20);
    obj.imageCheckBox13:setHeight(20);
    obj.imageCheckBox13:setField("bola1OutraCaracteristicas13");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(494);
    obj.layout40:setTop(486);
    obj.layout40:setWidth(20);
    obj.layout40:setHeight(20);
    obj.layout40:setName("layout40");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout40);
    obj.imageCheckBox14:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox14:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox14:setWidth(20);
    obj.imageCheckBox14:setHeight(20);
    obj.imageCheckBox14:setField("bola1OutraCaracteristicas14");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(739);
    obj.layout41:setTop(366);
    obj.layout41:setWidth(20);
    obj.layout41:setHeight(20);
    obj.layout41:setName("layout41");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout41);
    obj.imageCheckBox15:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox15:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox15:setWidth(20);
    obj.imageCheckBox15:setHeight(20);
    obj.imageCheckBox15:setField("bola1OutraCaracteristicas15");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(739);
    obj.layout42:setTop(385);
    obj.layout42:setWidth(20);
    obj.layout42:setHeight(20);
    obj.layout42:setName("layout42");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout42);
    obj.imageCheckBox16:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox16:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox16:setWidth(20);
    obj.imageCheckBox16:setHeight(20);
    obj.imageCheckBox16:setField("bola1OutraCaracteristicas16");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(739);
    obj.layout43:setTop(405);
    obj.layout43:setWidth(20);
    obj.layout43:setHeight(20);
    obj.layout43:setName("layout43");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout43);
    obj.imageCheckBox17:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox17:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox17:setWidth(20);
    obj.imageCheckBox17:setHeight(20);
    obj.imageCheckBox17:setField("bola1OutraCaracteristicas17");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(739);
    obj.layout44:setTop(426);
    obj.layout44:setWidth(20);
    obj.layout44:setHeight(20);
    obj.layout44:setName("layout44");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout44);
    obj.imageCheckBox18:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox18:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox18:setWidth(20);
    obj.imageCheckBox18:setHeight(20);
    obj.imageCheckBox18:setField("bola1OutraCaracteristicas18");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(739);
    obj.layout45:setTop(445);
    obj.layout45:setWidth(20);
    obj.layout45:setHeight(20);
    obj.layout45:setName("layout45");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout45);
    obj.imageCheckBox19:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox19:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox19:setWidth(20);
    obj.imageCheckBox19:setHeight(20);
    obj.imageCheckBox19:setField("bola1OutraCaracteristicas19");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(739);
    obj.layout46:setTop(466);
    obj.layout46:setWidth(20);
    obj.layout46:setHeight(20);
    obj.layout46:setName("layout46");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout46);
    obj.imageCheckBox20:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox20:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox20:setWidth(20);
    obj.imageCheckBox20:setHeight(20);
    obj.imageCheckBox20:setField("bola1OutraCaracteristicas20");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(739);
    obj.layout47:setTop(486);
    obj.layout47:setWidth(20);
    obj.layout47:setHeight(20);
    obj.layout47:setName("layout47");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout47);
    obj.imageCheckBox21:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox21:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox21:setWidth(20);
    obj.imageCheckBox21:setHeight(20);
    obj.imageCheckBox21:setField("bola1OutraCaracteristicas21");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(263);
    obj.layout48:setTop(366);
    obj.layout48:setWidth(20);
    obj.layout48:setHeight(20);
    obj.layout48:setName("layout48");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout48);
    obj.imageCheckBox22:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox22:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox22:setWidth(20);
    obj.imageCheckBox22:setHeight(20);
    obj.imageCheckBox22:setField("bola2OutraCaracteristicas1");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(263);
    obj.layout49:setTop(386);
    obj.layout49:setWidth(20);
    obj.layout49:setHeight(20);
    obj.layout49:setName("layout49");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout49);
    obj.imageCheckBox23:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox23:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox23:setWidth(20);
    obj.imageCheckBox23:setHeight(20);
    obj.imageCheckBox23:setField("bola2OutraCaracteristicas2");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(263);
    obj.layout50:setTop(405);
    obj.layout50:setWidth(20);
    obj.layout50:setHeight(20);
    obj.layout50:setName("layout50");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout50);
    obj.imageCheckBox24:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox24:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox24:setWidth(20);
    obj.imageCheckBox24:setHeight(20);
    obj.imageCheckBox24:setField("bola2OutraCaracteristicas3");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(263);
    obj.layout51:setTop(426);
    obj.layout51:setWidth(20);
    obj.layout51:setHeight(20);
    obj.layout51:setName("layout51");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout51);
    obj.imageCheckBox25:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox25:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox25:setWidth(20);
    obj.imageCheckBox25:setHeight(20);
    obj.imageCheckBox25:setField("bola2OutraCaracteristicas4");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(263);
    obj.layout52:setTop(445);
    obj.layout52:setWidth(20);
    obj.layout52:setHeight(20);
    obj.layout52:setName("layout52");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout52);
    obj.imageCheckBox26:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox26:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox26:setWidth(20);
    obj.imageCheckBox26:setHeight(20);
    obj.imageCheckBox26:setField("bola2OutraCaracteristicas5");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(263);
    obj.layout53:setTop(466);
    obj.layout53:setWidth(20);
    obj.layout53:setHeight(20);
    obj.layout53:setName("layout53");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout53);
    obj.imageCheckBox27:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox27:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox27:setWidth(20);
    obj.imageCheckBox27:setHeight(20);
    obj.imageCheckBox27:setField("bola2OutraCaracteristicas6");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(263);
    obj.layout54:setTop(486);
    obj.layout54:setWidth(20);
    obj.layout54:setHeight(20);
    obj.layout54:setName("layout54");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout54);
    obj.imageCheckBox28:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox28:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox28:setWidth(20);
    obj.imageCheckBox28:setHeight(20);
    obj.imageCheckBox28:setField("bola2OutraCaracteristicas7");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(508);
    obj.layout55:setTop(366);
    obj.layout55:setWidth(20);
    obj.layout55:setHeight(20);
    obj.layout55:setName("layout55");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout55);
    obj.imageCheckBox29:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox29:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox29:setWidth(20);
    obj.imageCheckBox29:setHeight(20);
    obj.imageCheckBox29:setField("bola2OutraCaracteristicas8");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(508);
    obj.layout56:setTop(386);
    obj.layout56:setWidth(20);
    obj.layout56:setHeight(20);
    obj.layout56:setName("layout56");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout56);
    obj.imageCheckBox30:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox30:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox30:setWidth(20);
    obj.imageCheckBox30:setHeight(20);
    obj.imageCheckBox30:setField("bola2OutraCaracteristicas9");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(508);
    obj.layout57:setTop(405);
    obj.layout57:setWidth(20);
    obj.layout57:setHeight(20);
    obj.layout57:setName("layout57");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout57);
    obj.imageCheckBox31:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox31:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox31:setWidth(20);
    obj.imageCheckBox31:setHeight(20);
    obj.imageCheckBox31:setField("bola2OutraCaracteristicas10");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(508);
    obj.layout58:setTop(426);
    obj.layout58:setWidth(20);
    obj.layout58:setHeight(20);
    obj.layout58:setName("layout58");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout58);
    obj.imageCheckBox32:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox32:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox32:setWidth(20);
    obj.imageCheckBox32:setHeight(20);
    obj.imageCheckBox32:setField("bola2OutraCaracteristicas11");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(508);
    obj.layout59:setTop(445);
    obj.layout59:setWidth(20);
    obj.layout59:setHeight(20);
    obj.layout59:setName("layout59");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout59);
    obj.imageCheckBox33:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox33:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox33:setWidth(20);
    obj.imageCheckBox33:setHeight(20);
    obj.imageCheckBox33:setField("bola2OutraCaracteristicas12");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(508);
    obj.layout60:setTop(466);
    obj.layout60:setWidth(20);
    obj.layout60:setHeight(20);
    obj.layout60:setName("layout60");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout60);
    obj.imageCheckBox34:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox34:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox34:setWidth(20);
    obj.imageCheckBox34:setHeight(20);
    obj.imageCheckBox34:setField("bola2OutraCaracteristicas13");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(508);
    obj.layout61:setTop(486);
    obj.layout61:setWidth(20);
    obj.layout61:setHeight(20);
    obj.layout61:setName("layout61");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout61);
    obj.imageCheckBox35:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox35:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox35:setWidth(20);
    obj.imageCheckBox35:setHeight(20);
    obj.imageCheckBox35:setField("bola2OutraCaracteristicas14");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(753);
    obj.layout62:setTop(366);
    obj.layout62:setWidth(20);
    obj.layout62:setHeight(20);
    obj.layout62:setName("layout62");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout62);
    obj.imageCheckBox36:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox36:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox36:setWidth(20);
    obj.imageCheckBox36:setHeight(20);
    obj.imageCheckBox36:setField("bola2OutraCaracteristicas15");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(753);
    obj.layout63:setTop(386);
    obj.layout63:setWidth(20);
    obj.layout63:setHeight(20);
    obj.layout63:setName("layout63");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout63);
    obj.imageCheckBox37:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox37:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox37:setWidth(20);
    obj.imageCheckBox37:setHeight(20);
    obj.imageCheckBox37:setField("bola2OutraCaracteristicas16");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(753);
    obj.layout64:setTop(405);
    obj.layout64:setWidth(20);
    obj.layout64:setHeight(20);
    obj.layout64:setName("layout64");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout64);
    obj.imageCheckBox38:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox38:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox38:setWidth(20);
    obj.imageCheckBox38:setHeight(20);
    obj.imageCheckBox38:setField("bola2OutraCaracteristicas17");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(753);
    obj.layout65:setTop(426);
    obj.layout65:setWidth(20);
    obj.layout65:setHeight(20);
    obj.layout65:setName("layout65");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout65);
    obj.imageCheckBox39:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox39:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox39:setWidth(20);
    obj.imageCheckBox39:setHeight(20);
    obj.imageCheckBox39:setField("bola2OutraCaracteristicas18");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(753);
    obj.layout66:setTop(445);
    obj.layout66:setWidth(20);
    obj.layout66:setHeight(20);
    obj.layout66:setName("layout66");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout66);
    obj.imageCheckBox40:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox40:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox40:setWidth(20);
    obj.imageCheckBox40:setHeight(20);
    obj.imageCheckBox40:setField("bola2OutraCaracteristicas19");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(753);
    obj.layout67:setTop(466);
    obj.layout67:setWidth(20);
    obj.layout67:setHeight(20);
    obj.layout67:setName("layout67");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout67);
    obj.imageCheckBox41:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox41:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox41:setWidth(20);
    obj.imageCheckBox41:setHeight(20);
    obj.imageCheckBox41:setField("bola2OutraCaracteristicas20");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(753);
    obj.layout68:setTop(486);
    obj.layout68:setWidth(20);
    obj.layout68:setHeight(20);
    obj.layout68:setName("layout68");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout68);
    obj.imageCheckBox42:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox42:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox42:setWidth(20);
    obj.imageCheckBox42:setHeight(20);
    obj.imageCheckBox42:setField("bola2OutraCaracteristicas21");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(70);
    obj.layout69:setTop(575);
    obj.layout69:setWidth(365);
    obj.layout69:setHeight(120);
    obj.layout69:setName("layout69");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout69);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setFontColor("#ffffff");
    obj.textEditor2:setWidth(365);
    obj.textEditor2:setHeight(120);
    obj.textEditor2:setField("IdentidadeMortal");
    obj.textEditor2:setName("textEditor2");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(278);
    obj.layout70:setTop(366);
    obj.layout70:setWidth(20);
    obj.layout70:setHeight(20);
    obj.layout70:setName("layout70");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout70);
    obj.imageCheckBox43:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox43:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox43:setWidth(20);
    obj.imageCheckBox43:setHeight(20);
    obj.imageCheckBox43:setField("bola3OutraCaracteristicas1");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(278);
    obj.layout71:setTop(386);
    obj.layout71:setWidth(20);
    obj.layout71:setHeight(20);
    obj.layout71:setName("layout71");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout71);
    obj.imageCheckBox44:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox44:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox44:setWidth(20);
    obj.imageCheckBox44:setHeight(20);
    obj.imageCheckBox44:setField("bola3OutraCaracteristicas2");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(278);
    obj.layout72:setTop(405);
    obj.layout72:setWidth(20);
    obj.layout72:setHeight(20);
    obj.layout72:setName("layout72");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout72);
    obj.imageCheckBox45:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox45:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox45:setWidth(20);
    obj.imageCheckBox45:setHeight(20);
    obj.imageCheckBox45:setField("bola3OutraCaracteristicas3");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(278);
    obj.layout73:setTop(426);
    obj.layout73:setWidth(20);
    obj.layout73:setHeight(20);
    obj.layout73:setName("layout73");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout73);
    obj.imageCheckBox46:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox46:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox46:setWidth(20);
    obj.imageCheckBox46:setHeight(20);
    obj.imageCheckBox46:setField("bola3OutraCaracteristicas4");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(278);
    obj.layout74:setTop(445);
    obj.layout74:setWidth(20);
    obj.layout74:setHeight(20);
    obj.layout74:setName("layout74");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout74);
    obj.imageCheckBox47:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox47:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox47:setWidth(20);
    obj.imageCheckBox47:setHeight(20);
    obj.imageCheckBox47:setField("bola3OutraCaracteristicas5");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(278);
    obj.layout75:setTop(466);
    obj.layout75:setWidth(20);
    obj.layout75:setHeight(20);
    obj.layout75:setName("layout75");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout75);
    obj.imageCheckBox48:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox48:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox48:setWidth(20);
    obj.imageCheckBox48:setHeight(20);
    obj.imageCheckBox48:setField("bola3OutraCaracteristicas6");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(278);
    obj.layout76:setTop(486);
    obj.layout76:setWidth(20);
    obj.layout76:setHeight(20);
    obj.layout76:setName("layout76");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout76);
    obj.imageCheckBox49:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox49:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox49:setWidth(20);
    obj.imageCheckBox49:setHeight(20);
    obj.imageCheckBox49:setField("bola3OutraCaracteristicas7");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(523);
    obj.layout77:setTop(366);
    obj.layout77:setWidth(20);
    obj.layout77:setHeight(20);
    obj.layout77:setName("layout77");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout77);
    obj.imageCheckBox50:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox50:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox50:setWidth(20);
    obj.imageCheckBox50:setHeight(20);
    obj.imageCheckBox50:setField("bola3OutraCaracteristicas8");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(523);
    obj.layout78:setTop(386);
    obj.layout78:setWidth(20);
    obj.layout78:setHeight(20);
    obj.layout78:setName("layout78");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout78);
    obj.imageCheckBox51:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox51:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox51:setWidth(20);
    obj.imageCheckBox51:setHeight(20);
    obj.imageCheckBox51:setField("bola3OutraCaracteristicas9");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(523);
    obj.layout79:setTop(405);
    obj.layout79:setWidth(20);
    obj.layout79:setHeight(20);
    obj.layout79:setName("layout79");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout79);
    obj.imageCheckBox52:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox52:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox52:setWidth(20);
    obj.imageCheckBox52:setHeight(20);
    obj.imageCheckBox52:setField("bola3OutraCaracteristicas10");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(523);
    obj.layout80:setTop(426);
    obj.layout80:setWidth(20);
    obj.layout80:setHeight(20);
    obj.layout80:setName("layout80");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout80);
    obj.imageCheckBox53:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox53:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox53:setWidth(20);
    obj.imageCheckBox53:setHeight(20);
    obj.imageCheckBox53:setField("bola3OutraCaracteristicas11");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(523);
    obj.layout81:setTop(445);
    obj.layout81:setWidth(20);
    obj.layout81:setHeight(20);
    obj.layout81:setName("layout81");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout81);
    obj.imageCheckBox54:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox54:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox54:setWidth(20);
    obj.imageCheckBox54:setHeight(20);
    obj.imageCheckBox54:setField("bola3OutraCaracteristicas12");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(523);
    obj.layout82:setTop(466);
    obj.layout82:setWidth(20);
    obj.layout82:setHeight(20);
    obj.layout82:setName("layout82");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout82);
    obj.imageCheckBox55:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox55:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox55:setWidth(20);
    obj.imageCheckBox55:setHeight(20);
    obj.imageCheckBox55:setField("bola3OutraCaracteristicas13");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(523);
    obj.layout83:setTop(486);
    obj.layout83:setWidth(20);
    obj.layout83:setHeight(20);
    obj.layout83:setName("layout83");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout83);
    obj.imageCheckBox56:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox56:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox56:setWidth(20);
    obj.imageCheckBox56:setHeight(20);
    obj.imageCheckBox56:setField("bola3OutraCaracteristicas14");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(768);
    obj.layout84:setTop(366);
    obj.layout84:setWidth(20);
    obj.layout84:setHeight(20);
    obj.layout84:setName("layout84");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout84);
    obj.imageCheckBox57:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox57:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox57:setWidth(20);
    obj.imageCheckBox57:setHeight(20);
    obj.imageCheckBox57:setField("bola3OutraCaracteristicas15");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(768);
    obj.layout85:setTop(386);
    obj.layout85:setWidth(20);
    obj.layout85:setHeight(20);
    obj.layout85:setName("layout85");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout85);
    obj.imageCheckBox58:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox58:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox58:setWidth(20);
    obj.imageCheckBox58:setHeight(20);
    obj.imageCheckBox58:setField("bola3OutraCaracteristicas16");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(768);
    obj.layout86:setTop(405);
    obj.layout86:setWidth(20);
    obj.layout86:setHeight(20);
    obj.layout86:setName("layout86");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout86);
    obj.imageCheckBox59:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox59:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox59:setWidth(20);
    obj.imageCheckBox59:setHeight(20);
    obj.imageCheckBox59:setField("bola3OutraCaracteristicas17");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(768);
    obj.layout87:setTop(426);
    obj.layout87:setWidth(20);
    obj.layout87:setHeight(20);
    obj.layout87:setName("layout87");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout87);
    obj.imageCheckBox60:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox60:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox60:setWidth(20);
    obj.imageCheckBox60:setHeight(20);
    obj.imageCheckBox60:setField("bola3OutraCaracteristicas18");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(768);
    obj.layout88:setTop(445);
    obj.layout88:setWidth(20);
    obj.layout88:setHeight(20);
    obj.layout88:setName("layout88");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout88);
    obj.imageCheckBox61:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox61:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox61:setWidth(20);
    obj.imageCheckBox61:setHeight(20);
    obj.imageCheckBox61:setField("bola3OutraCaracteristicas19");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(768);
    obj.layout89:setTop(466);
    obj.layout89:setWidth(20);
    obj.layout89:setHeight(20);
    obj.layout89:setName("layout89");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout89);
    obj.imageCheckBox62:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox62:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox62:setWidth(20);
    obj.imageCheckBox62:setHeight(20);
    obj.imageCheckBox62:setField("bola3OutraCaracteristicas20");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(768);
    obj.layout90:setTop(486);
    obj.layout90:setWidth(20);
    obj.layout90:setHeight(20);
    obj.layout90:setName("layout90");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout90);
    obj.imageCheckBox63:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox63:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox63:setWidth(20);
    obj.imageCheckBox63:setHeight(20);
    obj.imageCheckBox63:setField("bola3OutraCaracteristicas21");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(468);
    obj.layout91:setTop(575);
    obj.layout91:setWidth(365);
    obj.layout91:setHeight(120);
    obj.layout91:setName("layout91");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout91);
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setFontSize(16);
    obj.textEditor3:setFontColor("#ffffff");
    obj.textEditor3:setWidth(365);
    obj.textEditor3:setHeight(120);
    obj.textEditor3:setField("IdentidadeChangeling");
    obj.textEditor3:setName("textEditor3");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(292);
    obj.layout92:setTop(366);
    obj.layout92:setWidth(20);
    obj.layout92:setHeight(20);
    obj.layout92:setName("layout92");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout92);
    obj.imageCheckBox64:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox64:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox64:setWidth(20);
    obj.imageCheckBox64:setHeight(20);
    obj.imageCheckBox64:setField("bola4OutraCaracteristicas1");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(292);
    obj.layout93:setTop(386);
    obj.layout93:setWidth(20);
    obj.layout93:setHeight(20);
    obj.layout93:setName("layout93");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout93);
    obj.imageCheckBox65:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox65:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox65:setWidth(20);
    obj.imageCheckBox65:setHeight(20);
    obj.imageCheckBox65:setField("bola4OutraCaracteristicas2");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(292);
    obj.layout94:setTop(405);
    obj.layout94:setWidth(20);
    obj.layout94:setHeight(20);
    obj.layout94:setName("layout94");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout94);
    obj.imageCheckBox66:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox66:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox66:setWidth(20);
    obj.imageCheckBox66:setHeight(20);
    obj.imageCheckBox66:setField("bola4OutraCaracteristicas3");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(292);
    obj.layout95:setTop(426);
    obj.layout95:setWidth(20);
    obj.layout95:setHeight(20);
    obj.layout95:setName("layout95");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout95);
    obj.imageCheckBox67:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox67:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox67:setWidth(20);
    obj.imageCheckBox67:setHeight(20);
    obj.imageCheckBox67:setField("bola4OutraCaracteristicas4");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(292);
    obj.layout96:setTop(445);
    obj.layout96:setWidth(20);
    obj.layout96:setHeight(20);
    obj.layout96:setName("layout96");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout96);
    obj.imageCheckBox68:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox68:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox68:setWidth(20);
    obj.imageCheckBox68:setHeight(20);
    obj.imageCheckBox68:setField("bola4OutraCaracteristicas5");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(292);
    obj.layout97:setTop(466);
    obj.layout97:setWidth(20);
    obj.layout97:setHeight(20);
    obj.layout97:setName("layout97");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout97);
    obj.imageCheckBox69:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox69:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox69:setWidth(20);
    obj.imageCheckBox69:setHeight(20);
    obj.imageCheckBox69:setField("bola4OutraCaracteristicas6");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(292);
    obj.layout98:setTop(486);
    obj.layout98:setWidth(20);
    obj.layout98:setHeight(20);
    obj.layout98:setName("layout98");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout98);
    obj.imageCheckBox70:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox70:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox70:setWidth(20);
    obj.imageCheckBox70:setHeight(20);
    obj.imageCheckBox70:setField("bola4OutraCaracteristicas7");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(537);
    obj.layout99:setTop(366);
    obj.layout99:setWidth(20);
    obj.layout99:setHeight(20);
    obj.layout99:setName("layout99");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout99);
    obj.imageCheckBox71:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox71:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox71:setWidth(20);
    obj.imageCheckBox71:setHeight(20);
    obj.imageCheckBox71:setField("bola4OutraCaracteristicas8");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(537);
    obj.layout100:setTop(386);
    obj.layout100:setWidth(20);
    obj.layout100:setHeight(20);
    obj.layout100:setName("layout100");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout100);
    obj.imageCheckBox72:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox72:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox72:setWidth(20);
    obj.imageCheckBox72:setHeight(20);
    obj.imageCheckBox72:setField("bola4OutraCaracteristicas9");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(537);
    obj.layout101:setTop(405);
    obj.layout101:setWidth(20);
    obj.layout101:setHeight(20);
    obj.layout101:setName("layout101");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout101);
    obj.imageCheckBox73:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox73:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox73:setWidth(20);
    obj.imageCheckBox73:setHeight(20);
    obj.imageCheckBox73:setField("bola4OutraCaracteristicas10");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(537);
    obj.layout102:setTop(426);
    obj.layout102:setWidth(20);
    obj.layout102:setHeight(20);
    obj.layout102:setName("layout102");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout102);
    obj.imageCheckBox74:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox74:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox74:setWidth(20);
    obj.imageCheckBox74:setHeight(20);
    obj.imageCheckBox74:setField("bola4OutraCaracteristicas11");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(537);
    obj.layout103:setTop(445);
    obj.layout103:setWidth(20);
    obj.layout103:setHeight(20);
    obj.layout103:setName("layout103");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout103);
    obj.imageCheckBox75:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox75:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox75:setWidth(20);
    obj.imageCheckBox75:setHeight(20);
    obj.imageCheckBox75:setField("bola4OutraCaracteristicas12");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(537);
    obj.layout104:setTop(466);
    obj.layout104:setWidth(20);
    obj.layout104:setHeight(20);
    obj.layout104:setName("layout104");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout104);
    obj.imageCheckBox76:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox76:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox76:setWidth(20);
    obj.imageCheckBox76:setHeight(20);
    obj.imageCheckBox76:setField("bola4OutraCaracteristicas13");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(537);
    obj.layout105:setTop(486);
    obj.layout105:setWidth(20);
    obj.layout105:setHeight(20);
    obj.layout105:setName("layout105");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout105);
    obj.imageCheckBox77:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox77:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox77:setWidth(20);
    obj.imageCheckBox77:setHeight(20);
    obj.imageCheckBox77:setField("bola4OutraCaracteristicas14");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(782);
    obj.layout106:setTop(366);
    obj.layout106:setWidth(20);
    obj.layout106:setHeight(20);
    obj.layout106:setName("layout106");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout106);
    obj.imageCheckBox78:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox78:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox78:setWidth(20);
    obj.imageCheckBox78:setHeight(20);
    obj.imageCheckBox78:setField("bola4OutraCaracteristicas15");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(782);
    obj.layout107:setTop(386);
    obj.layout107:setWidth(20);
    obj.layout107:setHeight(20);
    obj.layout107:setName("layout107");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout107);
    obj.imageCheckBox79:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox79:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox79:setWidth(20);
    obj.imageCheckBox79:setHeight(20);
    obj.imageCheckBox79:setField("bola4OutraCaracteristicas16");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(782);
    obj.layout108:setTop(405);
    obj.layout108:setWidth(20);
    obj.layout108:setHeight(20);
    obj.layout108:setName("layout108");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout108);
    obj.imageCheckBox80:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox80:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox80:setWidth(20);
    obj.imageCheckBox80:setHeight(20);
    obj.imageCheckBox80:setField("bola4OutraCaracteristicas17");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(782);
    obj.layout109:setTop(426);
    obj.layout109:setWidth(20);
    obj.layout109:setHeight(20);
    obj.layout109:setName("layout109");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout109);
    obj.imageCheckBox81:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox81:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox81:setWidth(20);
    obj.imageCheckBox81:setHeight(20);
    obj.imageCheckBox81:setField("bola4OutraCaracteristicas18");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(782);
    obj.layout110:setTop(445);
    obj.layout110:setWidth(20);
    obj.layout110:setHeight(20);
    obj.layout110:setName("layout110");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout110);
    obj.imageCheckBox82:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox82:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox82:setWidth(20);
    obj.imageCheckBox82:setHeight(20);
    obj.imageCheckBox82:setField("bola4OutraCaracteristicas19");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(782);
    obj.layout111:setTop(466);
    obj.layout111:setWidth(20);
    obj.layout111:setHeight(20);
    obj.layout111:setName("layout111");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout111);
    obj.imageCheckBox83:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox83:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox83:setWidth(20);
    obj.imageCheckBox83:setHeight(20);
    obj.imageCheckBox83:setField("bola4OutraCaracteristicas20");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(782);
    obj.layout112:setTop(486);
    obj.layout112:setWidth(20);
    obj.layout112:setHeight(20);
    obj.layout112:setName("layout112");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout112);
    obj.imageCheckBox84:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox84:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox84:setWidth(20);
    obj.imageCheckBox84:setHeight(20);
    obj.imageCheckBox84:setField("bola4OutraCaracteristicas21");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(70);
    obj.layout113:setTop(752);
    obj.layout113:setWidth(760);
    obj.layout113:setHeight(155);
    obj.layout113:setName("layout113");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout113);
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setFontSize(16);
    obj.textEditor4:setFontColor("#ffffff");
    obj.textEditor4:setWidth(760);
    obj.textEditor4:setHeight(155);
    obj.textEditor4:setField("Juramentos");
    obj.textEditor4:setName("textEditor4");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(306);
    obj.layout114:setTop(366);
    obj.layout114:setWidth(20);
    obj.layout114:setHeight(20);
    obj.layout114:setName("layout114");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout114);
    obj.imageCheckBox85:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox85:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox85:setWidth(20);
    obj.imageCheckBox85:setHeight(20);
    obj.imageCheckBox85:setField("bola5OutraCaracteristicas1");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(306);
    obj.layout115:setTop(386);
    obj.layout115:setWidth(20);
    obj.layout115:setHeight(20);
    obj.layout115:setName("layout115");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout115);
    obj.imageCheckBox86:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox86:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox86:setWidth(20);
    obj.imageCheckBox86:setHeight(20);
    obj.imageCheckBox86:setField("bola5OutraCaracteristicas2");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(306);
    obj.layout116:setTop(405);
    obj.layout116:setWidth(20);
    obj.layout116:setHeight(20);
    obj.layout116:setName("layout116");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout116);
    obj.imageCheckBox87:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox87:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox87:setWidth(20);
    obj.imageCheckBox87:setHeight(20);
    obj.imageCheckBox87:setField("bola5OutraCaracteristicas3");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(306);
    obj.layout117:setTop(426);
    obj.layout117:setWidth(20);
    obj.layout117:setHeight(20);
    obj.layout117:setName("layout117");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout117);
    obj.imageCheckBox88:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox88:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox88:setWidth(20);
    obj.imageCheckBox88:setHeight(20);
    obj.imageCheckBox88:setField("bola5OutraCaracteristicas4");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(306);
    obj.layout118:setTop(445);
    obj.layout118:setWidth(20);
    obj.layout118:setHeight(20);
    obj.layout118:setName("layout118");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout118);
    obj.imageCheckBox89:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox89:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox89:setWidth(20);
    obj.imageCheckBox89:setHeight(20);
    obj.imageCheckBox89:setField("bola5OutraCaracteristicas5");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(306);
    obj.layout119:setTop(466);
    obj.layout119:setWidth(20);
    obj.layout119:setHeight(20);
    obj.layout119:setName("layout119");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout119);
    obj.imageCheckBox90:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox90:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox90:setWidth(20);
    obj.imageCheckBox90:setHeight(20);
    obj.imageCheckBox90:setField("bola5OutraCaracteristicas6");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(306);
    obj.layout120:setTop(486);
    obj.layout120:setWidth(20);
    obj.layout120:setHeight(20);
    obj.layout120:setName("layout120");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout120);
    obj.imageCheckBox91:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox91:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox91:setWidth(20);
    obj.imageCheckBox91:setHeight(20);
    obj.imageCheckBox91:setField("bola5OutraCaracteristicas7");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(551);
    obj.layout121:setTop(366);
    obj.layout121:setWidth(20);
    obj.layout121:setHeight(20);
    obj.layout121:setName("layout121");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout121);
    obj.imageCheckBox92:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox92:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox92:setWidth(20);
    obj.imageCheckBox92:setHeight(20);
    obj.imageCheckBox92:setField("bola5OutraCaracteristicas8");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(551);
    obj.layout122:setTop(386);
    obj.layout122:setWidth(20);
    obj.layout122:setHeight(20);
    obj.layout122:setName("layout122");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout122);
    obj.imageCheckBox93:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox93:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox93:setWidth(20);
    obj.imageCheckBox93:setHeight(20);
    obj.imageCheckBox93:setField("bola5OutraCaracteristicas9");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(551);
    obj.layout123:setTop(405);
    obj.layout123:setWidth(20);
    obj.layout123:setHeight(20);
    obj.layout123:setName("layout123");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout123);
    obj.imageCheckBox94:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox94:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox94:setWidth(20);
    obj.imageCheckBox94:setHeight(20);
    obj.imageCheckBox94:setField("bola5OutraCaracteristicas10");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(551);
    obj.layout124:setTop(426);
    obj.layout124:setWidth(20);
    obj.layout124:setHeight(20);
    obj.layout124:setName("layout124");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout124);
    obj.imageCheckBox95:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox95:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox95:setWidth(20);
    obj.imageCheckBox95:setHeight(20);
    obj.imageCheckBox95:setField("bola5OutraCaracteristicas11");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(551);
    obj.layout125:setTop(445);
    obj.layout125:setWidth(20);
    obj.layout125:setHeight(20);
    obj.layout125:setName("layout125");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout125);
    obj.imageCheckBox96:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox96:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox96:setWidth(20);
    obj.imageCheckBox96:setHeight(20);
    obj.imageCheckBox96:setField("bola5OutraCaracteristicas12");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(551);
    obj.layout126:setTop(466);
    obj.layout126:setWidth(20);
    obj.layout126:setHeight(20);
    obj.layout126:setName("layout126");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout126);
    obj.imageCheckBox97:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox97:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox97:setWidth(20);
    obj.imageCheckBox97:setHeight(20);
    obj.imageCheckBox97:setField("bola5OutraCaracteristicas13");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(551);
    obj.layout127:setTop(486);
    obj.layout127:setWidth(20);
    obj.layout127:setHeight(20);
    obj.layout127:setName("layout127");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout127);
    obj.imageCheckBox98:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox98:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox98:setWidth(20);
    obj.imageCheckBox98:setHeight(20);
    obj.imageCheckBox98:setField("bola5OutraCaracteristicas14");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(796);
    obj.layout128:setTop(366);
    obj.layout128:setWidth(20);
    obj.layout128:setHeight(20);
    obj.layout128:setName("layout128");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout128);
    obj.imageCheckBox99:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox99:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox99:setWidth(20);
    obj.imageCheckBox99:setHeight(20);
    obj.imageCheckBox99:setField("bola5OutraCaracteristicas15");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(796);
    obj.layout129:setTop(386);
    obj.layout129:setWidth(20);
    obj.layout129:setHeight(20);
    obj.layout129:setName("layout129");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout129);
    obj.imageCheckBox100:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox100:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox100:setWidth(20);
    obj.imageCheckBox100:setHeight(20);
    obj.imageCheckBox100:setField("bola5OutraCaracteristicas16");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(796);
    obj.layout130:setTop(405);
    obj.layout130:setWidth(20);
    obj.layout130:setHeight(20);
    obj.layout130:setName("layout130");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout130);
    obj.imageCheckBox101:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox101:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox101:setWidth(20);
    obj.imageCheckBox101:setHeight(20);
    obj.imageCheckBox101:setField("bola5OutraCaracteristicas17");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(796);
    obj.layout131:setTop(426);
    obj.layout131:setWidth(20);
    obj.layout131:setHeight(20);
    obj.layout131:setName("layout131");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout131);
    obj.imageCheckBox102:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox102:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox102:setWidth(20);
    obj.imageCheckBox102:setHeight(20);
    obj.imageCheckBox102:setField("bola5OutraCaracteristicas18");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(796);
    obj.layout132:setTop(445);
    obj.layout132:setWidth(20);
    obj.layout132:setHeight(20);
    obj.layout132:setName("layout132");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout132);
    obj.imageCheckBox103:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox103:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox103:setWidth(20);
    obj.imageCheckBox103:setHeight(20);
    obj.imageCheckBox103:setField("bola5OutraCaracteristicas19");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(796);
    obj.layout133:setTop(466);
    obj.layout133:setWidth(20);
    obj.layout133:setHeight(20);
    obj.layout133:setName("layout133");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout133);
    obj.imageCheckBox104:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox104:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox104:setWidth(20);
    obj.imageCheckBox104:setHeight(20);
    obj.imageCheckBox104:setField("bola5OutraCaracteristicas20");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(796);
    obj.layout134:setTop(486);
    obj.layout134:setWidth(20);
    obj.layout134:setHeight(20);
    obj.layout134:setName("layout134");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout134);
    obj.imageCheckBox105:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox105:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox105:setWidth(20);
    obj.imageCheckBox105:setHeight(20);
    obj.imageCheckBox105:setField("bola5OutraCaracteristicas21");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(70);
    obj.layout135:setTop(948);
    obj.layout135:setWidth(760);
    obj.layout135:setHeight(255);
    obj.layout135:setName("layout135");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout135);
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setFontSize(16);
    obj.textEditor5:setFontColor("#ffffff");
    obj.textEditor5:setWidth(760);
    obj.textEditor5:setHeight(255);
    obj.textEditor5:setField("ObjetosQuimericos");
    obj.textEditor5:setName("textEditor5");

    obj.frmCodigo2 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo2:setParent(obj);
    obj.frmCodigo2:setName("frmCodigo2");
    obj.frmCodigo2:setHeight(0);
    obj.frmCodigo2:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo2);
    obj.dataLink1:setFields({'bola5OutraCaracteristicas1', 'bola4OutraCaracteristicas1', 'bola3OutraCaracteristicas1', 'bola2OutraCaracteristicas1', 'bola1OutraCaracteristicas1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo2);
    obj.dataLink2:setFields({'bola5OutraCaracteristicas2', 'bola4OutraCaracteristicas2', 'bola3OutraCaracteristicas2', 'bola2OutraCaracteristicas2', 'bola1OutraCaracteristicas2'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo2);
    obj.dataLink3:setFields({'bola5OutraCaracteristicas3', 'bola4OutraCaracteristicas3', 'bola3OutraCaracteristicas3', 'bola2OutraCaracteristicas3', 'bola1OutraCaracteristicas3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo2);
    obj.dataLink4:setFields({'bola5OutraCaracteristicas4', 'bola4OutraCaracteristicas4', 'bola3OutraCaracteristicas4', 'bola2OutraCaracteristicas4', 'bola1OutraCaracteristicas4'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo2);
    obj.dataLink5:setFields({'bola5OutraCaracteristicas5', 'bola4OutraCaracteristicas5', 'bola3OutraCaracteristicas5', 'bola2OutraCaracteristicas5', 'bola1OutraCaracteristicas5'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo2);
    obj.dataLink6:setFields({'bola5OutraCaracteristicas6', 'bola4OutraCaracteristicas6', 'bola3OutraCaracteristicas6', 'bola2OutraCaracteristicas6', 'bola1OutraCaracteristicas6'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo2);
    obj.dataLink7:setFields({'bola5OutraCaracteristicas7', 'bola4OutraCaracteristicas7', 'bola3OutraCaracteristicas7', 'bola2OutraCaracteristicas7', 'bola1OutraCaracteristicas7'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo2);
    obj.dataLink8:setFields({'bola5OutraCaracteristicas8', 'bola4OutraCaracteristicas8', 'bola3OutraCaracteristicas8', 'bola2OutraCaracteristicas8', 'bola1OutraCaracteristicas8'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo2);
    obj.dataLink9:setFields({'bola5OutraCaracteristicas9', 'bola4OutraCaracteristicas9', 'bola3OutraCaracteristicas9', 'bola2OutraCaracteristicas9', 'bola1OutraCaracteristicas9'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo2);
    obj.dataLink10:setFields({'bola5OutraCaracteristicas10', 'bola4OutraCaracteristicas10', 'bola3OutraCaracteristicas10', 'bola2OutraCaracteristicas10', 'bola1OutraCaracteristicas10'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo2);
    obj.dataLink11:setFields({'bola5OutraCaracteristicas11', 'bola4OutraCaracteristicas11', 'bola3OutraCaracteristicas11', 'bola2OutraCaracteristicas11', 'bola1OutraCaracteristicas11'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo2);
    obj.dataLink12:setFields({'bola5OutraCaracteristicas12', 'bola4OutraCaracteristicas12', 'bola3OutraCaracteristicas12', 'bola2OutraCaracteristicas12', 'bola1OutraCaracteristicas12'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo2);
    obj.dataLink13:setFields({'bola5OutraCaracteristicas13', 'bola4OutraCaracteristicas13', 'bola3OutraCaracteristicas13', 'bola2OutraCaracteristicas13', 'bola1OutraCaracteristicas13'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo2);
    obj.dataLink14:setFields({'bola5OutraCaracteristicas14', 'bola4OutraCaracteristicas14', 'bola3OutraCaracteristicas14', 'bola2OutraCaracteristicas14', 'bola1OutraCaracteristicas14'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo2);
    obj.dataLink15:setFields({'bola5OutraCaracteristicas15', 'bola4OutraCaracteristicas15', 'bola3OutraCaracteristicas15', 'bola2OutraCaracteristicas15', 'bola1OutraCaracteristicas15'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo2);
    obj.dataLink16:setFields({'bola5OutraCaracteristicas16', 'bola4OutraCaracteristicas16', 'bola3OutraCaracteristicas16', 'bola2OutraCaracteristicas16', 'bola1OutraCaracteristicas16'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo2);
    obj.dataLink17:setFields({'bola5OutraCaracteristicas17', 'bola4OutraCaracteristicas17', 'bola3OutraCaracteristicas17', 'bola2OutraCaracteristicas17', 'bola1OutraCaracteristicas17'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo2);
    obj.dataLink18:setFields({'bola5OutraCaracteristicas18', 'bola4OutraCaracteristicas18', 'bola3OutraCaracteristicas18', 'bola2OutraCaracteristicas18', 'bola1OutraCaracteristicas18'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo2);
    obj.dataLink19:setFields({'bola5OutraCaracteristicas19', 'bola4OutraCaracteristicas19', 'bola3OutraCaracteristicas19', 'bola2OutraCaracteristicas19', 'bola1OutraCaracteristicas19'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmCodigo2);
    obj.dataLink20:setFields({'bola5OutraCaracteristicas20', 'bola4OutraCaracteristicas20', 'bola3OutraCaracteristicas20', 'bola2OutraCaracteristicas20', 'bola1OutraCaracteristicas20'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmCodigo2);
    obj.dataLink21:setFields({'bola5OutraCaracteristicas21', 'bola4OutraCaracteristicas21', 'bola3OutraCaracteristicas21', 'bola2OutraCaracteristicas21', 'bola1OutraCaracteristicas21'});
    obj.dataLink21:setName("dataLink21");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas1 == true then
            		sheet.bola4OutraCaracteristicas1 = true;
            		sheet.bola3OutraCaracteristicas1 = true;
            		sheet.bola2OutraCaracteristicas1 = true;
            		sheet.bola1OutraCaracteristicas1 = true;
            	elseif sheet.bola4OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = true;
            		sheet.bola2OutraCaracteristicas1 = true;
            		sheet.bola1OutraCaracteristicas1 = true;
            	elseif sheet.bola3OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola2OutraCaracteristicas1 = true;
            		sheet.bola1OutraCaracteristicas1 = true;
            	elseif sheet.bola2OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = false;
            		sheet.bola1OutraCaracteristicas1 = true;	
            	elseif sheet.bola1OutraCaracteristicas1 == true then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = false;
            		sheet.bola2OutraCaracteristicas1 = false;
            	elseif sheet.bola1OutraCaracteristicas1 == false then
            		sheet.bola5OutraCaracteristicas1 = false;
            		sheet.bola4OutraCaracteristicas1 = false;
            		sheet.bola3OutraCaracteristicas1 = false;
            		sheet.bola2OutraCaracteristicas1 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas2 == true then
            		sheet.bola4OutraCaracteristicas2 = true;
            		sheet.bola3OutraCaracteristicas2 = true;
            		sheet.bola2OutraCaracteristicas2 = true;
            		sheet.bola1OutraCaracteristicas2 = true;
            	elseif sheet.bola4OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = true;
            		sheet.bola2OutraCaracteristicas2 = true;
            		sheet.bola1OutraCaracteristicas2 = true;
            	elseif sheet.bola3OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola2OutraCaracteristicas2 = true;
            		sheet.bola1OutraCaracteristicas2 = true;
            	elseif sheet.bola2OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = false;
            		sheet.bola1OutraCaracteristicas2 = true;	
            	elseif sheet.bola1OutraCaracteristicas2 == true then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = false;
            		sheet.bola2OutraCaracteristicas2 = false;
            	elseif sheet.bola1OutraCaracteristicas2 == false then
            		sheet.bola5OutraCaracteristicas2 = false;
            		sheet.bola4OutraCaracteristicas2 = false;
            		sheet.bola3OutraCaracteristicas2 = false;
            		sheet.bola2OutraCaracteristicas2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas3 == true then
            		sheet.bola4OutraCaracteristicas3 = true;
            		sheet.bola3OutraCaracteristicas3 = true;
            		sheet.bola2OutraCaracteristicas3 = true;
            		sheet.bola1OutraCaracteristicas3 = true;
            	elseif sheet.bola4OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = true;
            		sheet.bola2OutraCaracteristicas3 = true;
            		sheet.bola1OutraCaracteristicas3 = true;
            	elseif sheet.bola3OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola2OutraCaracteristicas3 = true;
            		sheet.bola1OutraCaracteristicas3 = true;
            	elseif sheet.bola2OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = false;
            		sheet.bola1OutraCaracteristicas3 = true;	
            	elseif sheet.bola1OutraCaracteristicas3 == true then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = false;
            		sheet.bola2OutraCaracteristicas3 = false;
            	elseif sheet.bola1OutraCaracteristicas3 == false then
            		sheet.bola5OutraCaracteristicas3 = false;
            		sheet.bola4OutraCaracteristicas3 = false;
            		sheet.bola3OutraCaracteristicas3 = false;
            		sheet.bola2OutraCaracteristicas3 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas4 == true then
            		sheet.bola4OutraCaracteristicas4 = true;
            		sheet.bola3OutraCaracteristicas4 = true;
            		sheet.bola2OutraCaracteristicas4 = true;
            		sheet.bola1OutraCaracteristicas4 = true;
            	elseif sheet.bola4OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = true;
            		sheet.bola2OutraCaracteristicas4 = true;
            		sheet.bola1OutraCaracteristicas4 = true;
            	elseif sheet.bola3OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola2OutraCaracteristicas4 = true;
            		sheet.bola1OutraCaracteristicas4 = true;
            	elseif sheet.bola2OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = false;
            		sheet.bola1OutraCaracteristicas4 = true;	
            	elseif sheet.bola1OutraCaracteristicas4 == true then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = false;
            		sheet.bola2OutraCaracteristicas4 = false;
            	elseif sheet.bola1OutraCaracteristicas4 == false then
            		sheet.bola5OutraCaracteristicas4 = false;
            		sheet.bola4OutraCaracteristicas4 = false;
            		sheet.bola3OutraCaracteristicas4 = false;
            		sheet.bola2OutraCaracteristicas4 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas5 == true then
            		sheet.bola4OutraCaracteristicas5 = true;
            		sheet.bola3OutraCaracteristicas5 = true;
            		sheet.bola2OutraCaracteristicas5 = true;
            		sheet.bola1OutraCaracteristicas5 = true;
            	elseif sheet.bola4OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = true;
            		sheet.bola2OutraCaracteristicas5 = true;
            		sheet.bola1OutraCaracteristicas5 = true;
            	elseif sheet.bola3OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola2OutraCaracteristicas5 = true;
            		sheet.bola1OutraCaracteristicas5 = true;
            	elseif sheet.bola2OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = false;
            		sheet.bola1OutraCaracteristicas5 = true;	
            	elseif sheet.bola1OutraCaracteristicas5 == true then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = false;
            		sheet.bola2OutraCaracteristicas5 = false;
            	elseif sheet.bola1OutraCaracteristicas5 == false then
            		sheet.bola5OutraCaracteristicas5 = false;
            		sheet.bola4OutraCaracteristicas5 = false;
            		sheet.bola3OutraCaracteristicas5 = false;
            		sheet.bola2OutraCaracteristicas5 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas6 == true then
            		sheet.bola4OutraCaracteristicas6 = true;
            		sheet.bola3OutraCaracteristicas6 = true;
            		sheet.bola2OutraCaracteristicas6 = true;
            		sheet.bola1OutraCaracteristicas6 = true;
            	elseif sheet.bola4OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = true;
            		sheet.bola2OutraCaracteristicas6 = true;
            		sheet.bola1OutraCaracteristicas6 = true;
            	elseif sheet.bola3OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola2OutraCaracteristicas6 = true;
            		sheet.bola1OutraCaracteristicas6 = true;
            	elseif sheet.bola2OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = false;
            		sheet.bola1OutraCaracteristicas6 = true;	
            	elseif sheet.bola1OutraCaracteristicas6 == true then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = false;
            		sheet.bola2OutraCaracteristicas6 = false;
            	elseif sheet.bola1OutraCaracteristicas6 == false then
            		sheet.bola5OutraCaracteristicas6 = false;
            		sheet.bola4OutraCaracteristicas6 = false;
            		sheet.bola3OutraCaracteristicas6 = false;
            		sheet.bola2OutraCaracteristicas6 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas7 == true then
            		sheet.bola4OutraCaracteristicas7 = true;
            		sheet.bola3OutraCaracteristicas7 = true;
            		sheet.bola2OutraCaracteristicas7 = true;
            		sheet.bola1OutraCaracteristicas7 = true;
            	elseif sheet.bola4OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = true;
            		sheet.bola2OutraCaracteristicas7 = true;
            		sheet.bola1OutraCaracteristicas7 = true;
            	elseif sheet.bola3OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola2OutraCaracteristicas7 = true;
            		sheet.bola1OutraCaracteristicas7 = true;
            	elseif sheet.bola2OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = false;
            		sheet.bola1OutraCaracteristicas7 = true;	
            	elseif sheet.bola1OutraCaracteristicas7 == true then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = false;
            		sheet.bola2OutraCaracteristicas7 = false;
            	elseif sheet.bola1OutraCaracteristicas7 == false then
            		sheet.bola5OutraCaracteristicas7 = false;
            		sheet.bola4OutraCaracteristicas7 = false;
            		sheet.bola3OutraCaracteristicas7 = false;
            		sheet.bola2OutraCaracteristicas7 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas8 == true then
            		sheet.bola4OutraCaracteristicas8 = true;
            		sheet.bola3OutraCaracteristicas8 = true;
            		sheet.bola2OutraCaracteristicas8 = true;
            		sheet.bola1OutraCaracteristicas8 = true;
            	elseif sheet.bola4OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = true;
            		sheet.bola2OutraCaracteristicas8 = true;
            		sheet.bola1OutraCaracteristicas8 = true;
            	elseif sheet.bola3OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola2OutraCaracteristicas8 = true;
            		sheet.bola1OutraCaracteristicas8 = true;
            	elseif sheet.bola2OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = false;
            		sheet.bola1OutraCaracteristicas8 = true;	
            	elseif sheet.bola1OutraCaracteristicas8 == true then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = false;
            		sheet.bola2OutraCaracteristicas8 = false;
            	elseif sheet.bola1OutraCaracteristicas8 == false then
            		sheet.bola5OutraCaracteristicas8 = false;
            		sheet.bola4OutraCaracteristicas8 = false;
            		sheet.bola3OutraCaracteristicas8 = false;
            		sheet.bola2OutraCaracteristicas8 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas9 == true then
            		sheet.bola4OutraCaracteristicas9 = true;
            		sheet.bola3OutraCaracteristicas9 = true;
            		sheet.bola2OutraCaracteristicas9 = true;
            		sheet.bola1OutraCaracteristicas9 = true;
            	elseif sheet.bola4OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = true;
            		sheet.bola2OutraCaracteristicas9 = true;
            		sheet.bola1OutraCaracteristicas9 = true;
            	elseif sheet.bola3OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola2OutraCaracteristicas9 = true;
            		sheet.bola1OutraCaracteristicas9 = true;
            	elseif sheet.bola2OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = false;
            		sheet.bola1OutraCaracteristicas9 = true;	
            	elseif sheet.bola1OutraCaracteristicas9 == true then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = false;
            		sheet.bola2OutraCaracteristicas9 = false;
            	elseif sheet.bola1OutraCaracteristicas9 == false then
            		sheet.bola5OutraCaracteristicas9 = false;
            		sheet.bola4OutraCaracteristicas9 = false;
            		sheet.bola3OutraCaracteristicas9 = false;
            		sheet.bola2OutraCaracteristicas9 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas10 == true then
            		sheet.bola4OutraCaracteristicas10 = true;
            		sheet.bola3OutraCaracteristicas10 = true;
            		sheet.bola2OutraCaracteristicas10 = true;
            		sheet.bola1OutraCaracteristicas10 = true;
            	elseif sheet.bola4OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = true;
            		sheet.bola2OutraCaracteristicas10 = true;
            		sheet.bola1OutraCaracteristicas10 = true;
            	elseif sheet.bola3OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola2OutraCaracteristicas10 = true;
            		sheet.bola1OutraCaracteristicas10 = true;
            	elseif sheet.bola2OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = false;
            		sheet.bola1OutraCaracteristicas10 = true;	
            	elseif sheet.bola1OutraCaracteristicas10 == true then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = false;
            		sheet.bola2OutraCaracteristicas10 = false;
            	elseif sheet.bola1OutraCaracteristicas10 == false then
            		sheet.bola5OutraCaracteristicas10 = false;
            		sheet.bola4OutraCaracteristicas10 = false;
            		sheet.bola3OutraCaracteristicas10 = false;
            		sheet.bola2OutraCaracteristicas10 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas11 == true then
            		sheet.bola4OutraCaracteristicas11 = true;
            		sheet.bola3OutraCaracteristicas11 = true;
            		sheet.bola2OutraCaracteristicas11 = true;
            		sheet.bola1OutraCaracteristicas11 = true;
            	elseif sheet.bola4OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = true;
            		sheet.bola2OutraCaracteristicas11 = true;
            		sheet.bola1OutraCaracteristicas11 = true;
            	elseif sheet.bola3OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola2OutraCaracteristicas11 = true;
            		sheet.bola1OutraCaracteristicas11 = true;
            	elseif sheet.bola2OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = false;
            		sheet.bola1OutraCaracteristicas11 = true;	
            	elseif sheet.bola1OutraCaracteristicas11 == true then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = false;
            		sheet.bola2OutraCaracteristicas11 = false;
            	elseif sheet.bola1OutraCaracteristicas11 == false then
            		sheet.bola5OutraCaracteristicas11 = false;
            		sheet.bola4OutraCaracteristicas11 = false;
            		sheet.bola3OutraCaracteristicas11 = false;
            		sheet.bola2OutraCaracteristicas11 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas12 == true then
            		sheet.bola4OutraCaracteristicas12 = true;
            		sheet.bola3OutraCaracteristicas12 = true;
            		sheet.bola2OutraCaracteristicas12 = true;
            		sheet.bola1OutraCaracteristicas12 = true;
            	elseif sheet.bola4OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = true;
            		sheet.bola2OutraCaracteristicas12 = true;
            		sheet.bola1OutraCaracteristicas12 = true;
            	elseif sheet.bola3OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola2OutraCaracteristicas12 = true;
            		sheet.bola1OutraCaracteristicas12 = true;
            	elseif sheet.bola2OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = false;
            		sheet.bola1OutraCaracteristicas12 = true;	
            	elseif sheet.bola1OutraCaracteristicas12 == true then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = false;
            		sheet.bola2OutraCaracteristicas12 = false;
            	elseif sheet.bola1OutraCaracteristicas12 == false then
            		sheet.bola5OutraCaracteristicas12 = false;
            		sheet.bola4OutraCaracteristicas12 = false;
            		sheet.bola3OutraCaracteristicas12 = false;
            		sheet.bola2OutraCaracteristicas12 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas13 == true then
            		sheet.bola4OutraCaracteristicas13 = true;
            		sheet.bola3OutraCaracteristicas13 = true;
            		sheet.bola2OutraCaracteristicas13 = true;
            		sheet.bola1OutraCaracteristicas13 = true;
            	elseif sheet.bola4OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = true;
            		sheet.bola2OutraCaracteristicas13 = true;
            		sheet.bola1OutraCaracteristicas13 = true;
            	elseif sheet.bola3OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola2OutraCaracteristicas13 = true;
            		sheet.bola1OutraCaracteristicas13 = true;
            	elseif sheet.bola2OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = false;
            		sheet.bola1OutraCaracteristicas13 = true;	
            	elseif sheet.bola1OutraCaracteristicas13 == true then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = false;
            		sheet.bola2OutraCaracteristicas13 = false;
            	elseif sheet.bola1OutraCaracteristicas13 == false then
            		sheet.bola5OutraCaracteristicas13 = false;
            		sheet.bola4OutraCaracteristicas13 = false;
            		sheet.bola3OutraCaracteristicas13 = false;
            		sheet.bola2OutraCaracteristicas13 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas14 == true then
            		sheet.bola4OutraCaracteristicas14 = true;
            		sheet.bola3OutraCaracteristicas14 = true;
            		sheet.bola2OutraCaracteristicas14 = true;
            		sheet.bola1OutraCaracteristicas14 = true;
            	elseif sheet.bola4OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = true;
            		sheet.bola2OutraCaracteristicas14 = true;
            		sheet.bola1OutraCaracteristicas14 = true;
            	elseif sheet.bola3OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola2OutraCaracteristicas14 = true;
            		sheet.bola1OutraCaracteristicas14 = true;
            	elseif sheet.bola2OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = false;
            		sheet.bola1OutraCaracteristicas14 = true;	
            	elseif sheet.bola1OutraCaracteristicas14 == true then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = false;
            		sheet.bola2OutraCaracteristicas14 = false;
            	elseif sheet.bola1OutraCaracteristicas14 == false then
            		sheet.bola5OutraCaracteristicas14 = false;
            		sheet.bola4OutraCaracteristicas14 = false;
            		sheet.bola3OutraCaracteristicas14 = false;
            		sheet.bola2OutraCaracteristicas14 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas15 == true then
            		sheet.bola4OutraCaracteristicas15 = true;
            		sheet.bola3OutraCaracteristicas15 = true;
            		sheet.bola2OutraCaracteristicas15 = true;
            		sheet.bola1OutraCaracteristicas15 = true;
            	elseif sheet.bola4OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = true;
            		sheet.bola2OutraCaracteristicas15 = true;
            		sheet.bola1OutraCaracteristicas15 = true;
            	elseif sheet.bola3OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola2OutraCaracteristicas15 = true;
            		sheet.bola1OutraCaracteristicas15 = true;
            	elseif sheet.bola2OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = false;
            		sheet.bola1OutraCaracteristicas15 = true;	
            	elseif sheet.bola1OutraCaracteristicas15 == true then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = false;
            		sheet.bola2OutraCaracteristicas15 = false;
            	elseif sheet.bola1OutraCaracteristicas15 == false then
            		sheet.bola5OutraCaracteristicas15 = false;
            		sheet.bola4OutraCaracteristicas15 = false;
            		sheet.bola3OutraCaracteristicas15 = false;
            		sheet.bola2OutraCaracteristicas15 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas16 == true then
            		sheet.bola4OutraCaracteristicas16 = true;
            		sheet.bola3OutraCaracteristicas16 = true;
            		sheet.bola2OutraCaracteristicas16 = true;
            		sheet.bola1OutraCaracteristicas16 = true;
            	elseif sheet.bola4OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = true;
            		sheet.bola2OutraCaracteristicas16 = true;
            		sheet.bola1OutraCaracteristicas16 = true;
            	elseif sheet.bola3OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola2OutraCaracteristicas16 = true;
            		sheet.bola1OutraCaracteristicas16 = true;
            	elseif sheet.bola2OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = false;
            		sheet.bola1OutraCaracteristicas16 = true;	
            	elseif sheet.bola1OutraCaracteristicas16 == true then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = false;
            		sheet.bola2OutraCaracteristicas16 = false;
            	elseif sheet.bola1OutraCaracteristicas16 == false then
            		sheet.bola5OutraCaracteristicas16 = false;
            		sheet.bola4OutraCaracteristicas16 = false;
            		sheet.bola3OutraCaracteristicas16 = false;
            		sheet.bola2OutraCaracteristicas16 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas17 == true then
            		sheet.bola4OutraCaracteristicas17 = true;
            		sheet.bola3OutraCaracteristicas17 = true;
            		sheet.bola2OutraCaracteristicas17 = true;
            		sheet.bola1OutraCaracteristicas17 = true;
            	elseif sheet.bola4OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = true;
            		sheet.bola2OutraCaracteristicas17 = true;
            		sheet.bola1OutraCaracteristicas17 = true;
            	elseif sheet.bola3OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola2OutraCaracteristicas17 = true;
            		sheet.bola1OutraCaracteristicas17 = true;
            	elseif sheet.bola2OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = false;
            		sheet.bola1OutraCaracteristicas17 = true;	
            	elseif sheet.bola1OutraCaracteristicas17 == true then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = false;
            		sheet.bola2OutraCaracteristicas17 = false;
            	elseif sheet.bola1OutraCaracteristicas17 == false then
            		sheet.bola5OutraCaracteristicas17 = false;
            		sheet.bola4OutraCaracteristicas17 = false;
            		sheet.bola3OutraCaracteristicas17 = false;
            		sheet.bola2OutraCaracteristicas17 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas18 == true then
            		sheet.bola4OutraCaracteristicas18 = true;
            		sheet.bola3OutraCaracteristicas18 = true;
            		sheet.bola2OutraCaracteristicas18 = true;
            		sheet.bola1OutraCaracteristicas18 = true;
            	elseif sheet.bola4OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = true;
            		sheet.bola2OutraCaracteristicas18 = true;
            		sheet.bola1OutraCaracteristicas18 = true;
            	elseif sheet.bola3OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola2OutraCaracteristicas18 = true;
            		sheet.bola1OutraCaracteristicas18 = true;
            	elseif sheet.bola2OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = false;
            		sheet.bola1OutraCaracteristicas18 = true;	
            	elseif sheet.bola1OutraCaracteristicas18 == true then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = false;
            		sheet.bola2OutraCaracteristicas18 = false;
            	elseif sheet.bola1OutraCaracteristicas18 == false then
            		sheet.bola5OutraCaracteristicas18 = false;
            		sheet.bola4OutraCaracteristicas18 = false;
            		sheet.bola3OutraCaracteristicas18 = false;
            		sheet.bola2OutraCaracteristicas18 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas19 == true then
            		sheet.bola4OutraCaracteristicas19 = true;
            		sheet.bola3OutraCaracteristicas19 = true;
            		sheet.bola2OutraCaracteristicas19 = true;
            		sheet.bola1OutraCaracteristicas19 = true;
            	elseif sheet.bola4OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = true;
            		sheet.bola2OutraCaracteristicas19 = true;
            		sheet.bola1OutraCaracteristicas19 = true;
            	elseif sheet.bola3OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola2OutraCaracteristicas19 = true;
            		sheet.bola1OutraCaracteristicas19 = true;
            	elseif sheet.bola2OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = false;
            		sheet.bola1OutraCaracteristicas19 = true;	
            	elseif sheet.bola1OutraCaracteristicas19 == true then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = false;
            		sheet.bola2OutraCaracteristicas19 = false;
            	elseif sheet.bola1OutraCaracteristicas19 == false then
            		sheet.bola5OutraCaracteristicas19 = false;
            		sheet.bola4OutraCaracteristicas19 = false;
            		sheet.bola3OutraCaracteristicas19 = false;
            		sheet.bola2OutraCaracteristicas19 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas20 == true then
            		sheet.bola4OutraCaracteristicas20 = true;
            		sheet.bola3OutraCaracteristicas20 = true;
            		sheet.bola2OutraCaracteristicas20 = true;
            		sheet.bola1OutraCaracteristicas20 = true;
            	elseif sheet.bola4OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = true;
            		sheet.bola2OutraCaracteristicas20 = true;
            		sheet.bola1OutraCaracteristicas20 = true;
            	elseif sheet.bola3OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola2OutraCaracteristicas20 = true;
            		sheet.bola1OutraCaracteristicas20 = true;
            	elseif sheet.bola2OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = false;
            		sheet.bola1OutraCaracteristicas20 = true;	
            	elseif sheet.bola1OutraCaracteristicas20 == true then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = false;
            		sheet.bola2OutraCaracteristicas20 = false;
            	elseif sheet.bola1OutraCaracteristicas20 == false then
            		sheet.bola5OutraCaracteristicas20 = false;
            		sheet.bola4OutraCaracteristicas20 = false;
            		sheet.bola3OutraCaracteristicas20 = false;
            		sheet.bola2OutraCaracteristicas20 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5OutraCaracteristicas21 == true then
            		sheet.bola4OutraCaracteristicas21 = true;
            		sheet.bola3OutraCaracteristicas21 = true;
            		sheet.bola2OutraCaracteristicas21 = true;
            		sheet.bola1OutraCaracteristicas21 = true;
            	elseif sheet.bola4OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = true;
            		sheet.bola2OutraCaracteristicas21 = true;
            		sheet.bola1OutraCaracteristicas21 = true;
            	elseif sheet.bola3OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola2OutraCaracteristicas21 = true;
            		sheet.bola1OutraCaracteristicas21 = true;
            	elseif sheet.bola2OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = false;
            		sheet.bola1OutraCaracteristicas21 = true;	
            	elseif sheet.bola1OutraCaracteristicas21 == true then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = false;
            		sheet.bola2OutraCaracteristicas21 = false;
            	elseif sheet.bola1OutraCaracteristicas21 == false then
            		sheet.bola5OutraCaracteristicas21 = false;
            		sheet.bola4OutraCaracteristicas21 = false;
            		sheet.bola3OutraCaracteristicas21 = false;
            		sheet.bola2OutraCaracteristicas21 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.frmCodigo2 ~= nil then self.frmCodigo2:destroy(); self.frmCodigo2 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmChangelingMorganna2_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmChangelingMorganna2_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmChangelingMorganna2_svg = {
    newEditor = newfrmChangelingMorganna2_svg, 
    new = newfrmChangelingMorganna2_svg, 
    name = "frmChangelingMorganna2_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmChangelingMorganna2_svg = _frmChangelingMorganna2_svg;
Firecast.registrarForm(_frmChangelingMorganna2_svg);

return _frmChangelingMorganna2_svg;
