require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmChangelingMorganna6_svg()
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
    obj:setName("frmChangelingMorganna6_svg");
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
    obj.image1:setSRC("/ChangelingMorganna/images/6.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(120);
    obj.layout1:setTop(117);
    obj.layout1:setWidth(190);
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
    obj.edit1:setWidth(190);
    obj.edit1:setHeight(30);
    obj.edit1:setField("NomeQuimera");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(460);
    obj.layout2:setTop(117);
    obj.layout2:setWidth(150);
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
    obj.edit2:setWidth(150);
    obj.edit2:setHeight(30);
    obj.edit2:setField("ChangelingPatrono");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(680);
    obj.layout3:setTop(117);
    obj.layout3:setWidth(145);
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
    obj.edit3:setWidth(145);
    obj.edit3:setHeight(30);
    obj.edit3:setField("ConceitoQuimera");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(73);
    obj.layout4:setTop(640);
    obj.layout4:setWidth(180);
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
    obj.edit4:setWidth(180);
    obj.edit4:setHeight(30);
    obj.edit4:setField("Nome1");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(263);
    obj.layout5:setTop(640);
    obj.layout5:setWidth(510);
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
    obj.edit5:setWidth(510);
    obj.edit5:setHeight(30);
    obj.edit5:setField("Descricao1");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(787);
    obj.layout6:setTop(640);
    obj.layout6:setWidth(30);
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
    obj.edit6:setWidth(30);
    obj.edit6:setHeight(30);
    obj.edit6:setField("Valor1");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(73);
    obj.layout7:setTop(665);
    obj.layout7:setWidth(180);
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
    obj.edit7:setWidth(180);
    obj.edit7:setHeight(30);
    obj.edit7:setField("Nome2");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(263);
    obj.layout8:setTop(665);
    obj.layout8:setWidth(510);
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
    obj.edit8:setWidth(510);
    obj.edit8:setHeight(30);
    obj.edit8:setField("Descricao2");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(787);
    obj.layout9:setTop(665);
    obj.layout9:setWidth(30);
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
    obj.edit9:setWidth(30);
    obj.edit9:setHeight(30);
    obj.edit9:setField("Valor2");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(73);
    obj.layout10:setTop(690);
    obj.layout10:setWidth(180);
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
    obj.edit10:setWidth(180);
    obj.edit10:setHeight(30);
    obj.edit10:setField("Nome3");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(263);
    obj.layout11:setTop(690);
    obj.layout11:setWidth(510);
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
    obj.edit11:setWidth(510);
    obj.edit11:setHeight(30);
    obj.edit11:setField("Descricao3");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(787);
    obj.layout12:setTop(690);
    obj.layout12:setWidth(30);
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
    obj.edit12:setWidth(30);
    obj.edit12:setHeight(30);
    obj.edit12:setField("Valor3");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(73);
    obj.layout13:setTop(715);
    obj.layout13:setWidth(180);
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
    obj.edit13:setWidth(180);
    obj.edit13:setHeight(30);
    obj.edit13:setField("Nome4");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(263);
    obj.layout14:setTop(715);
    obj.layout14:setWidth(510);
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
    obj.edit14:setWidth(510);
    obj.edit14:setHeight(30);
    obj.edit14:setField("Descricao4");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(787);
    obj.layout15:setTop(715);
    obj.layout15:setWidth(30);
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
    obj.edit15:setWidth(30);
    obj.edit15:setHeight(30);
    obj.edit15:setField("Valor4");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(73);
    obj.layout16:setTop(740);
    obj.layout16:setWidth(180);
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
    obj.edit16:setWidth(180);
    obj.edit16:setHeight(30);
    obj.edit16:setField("Nome5");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(263);
    obj.layout17:setTop(740);
    obj.layout17:setWidth(510);
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
    obj.edit17:setWidth(510);
    obj.edit17:setHeight(30);
    obj.edit17:setField("Descricao5");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(787);
    obj.layout18:setTop(740);
    obj.layout18:setWidth(30);
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
    obj.edit18:setWidth(30);
    obj.edit18:setHeight(30);
    obj.edit18:setField("Valor5");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(73);
    obj.layout19:setTop(765);
    obj.layout19:setWidth(180);
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
    obj.edit19:setWidth(180);
    obj.edit19:setHeight(30);
    obj.edit19:setField("Nome6");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(263);
    obj.layout20:setTop(765);
    obj.layout20:setWidth(510);
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
    obj.edit20:setWidth(510);
    obj.edit20:setHeight(30);
    obj.edit20:setField("Descricao6");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(787);
    obj.layout21:setTop(765);
    obj.layout21:setWidth(30);
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
    obj.edit21:setWidth(30);
    obj.edit21:setHeight(30);
    obj.edit21:setField("Valor6");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(73);
    obj.layout22:setTop(790);
    obj.layout22:setWidth(180);
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
    obj.edit22:setWidth(180);
    obj.edit22:setHeight(30);
    obj.edit22:setField("Nome7");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(263);
    obj.layout23:setTop(790);
    obj.layout23:setWidth(510);
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
    obj.edit23:setWidth(510);
    obj.edit23:setHeight(30);
    obj.edit23:setField("Descricao7");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(787);
    obj.layout24:setTop(790);
    obj.layout24:setWidth(30);
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
    obj.edit24:setWidth(30);
    obj.edit24:setHeight(30);
    obj.edit24:setField("Valor7");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(73);
    obj.layout25:setTop(815);
    obj.layout25:setWidth(180);
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
    obj.edit25:setWidth(180);
    obj.edit25:setHeight(30);
    obj.edit25:setField("Nome8");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(263);
    obj.layout26:setTop(815);
    obj.layout26:setWidth(510);
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
    obj.edit26:setWidth(510);
    obj.edit26:setHeight(30);
    obj.edit26:setField("Descricao8");
    obj.edit26:setName("edit26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(787);
    obj.layout27:setTop(815);
    obj.layout27:setWidth(30);
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
    obj.edit27:setWidth(30);
    obj.edit27:setHeight(30);
    obj.edit27:setField("Valor8");
    obj.edit27:setName("edit27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(73);
    obj.layout28:setTop(838);
    obj.layout28:setWidth(180);
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
    obj.edit28:setWidth(180);
    obj.edit28:setHeight(30);
    obj.edit28:setField("Nome9");
    obj.edit28:setName("edit28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(263);
    obj.layout29:setTop(838);
    obj.layout29:setWidth(510);
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
    obj.edit29:setWidth(510);
    obj.edit29:setHeight(30);
    obj.edit29:setField("Descricao9");
    obj.edit29:setName("edit29");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(787);
    obj.layout30:setTop(838);
    obj.layout30:setWidth(30);
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
    obj.edit30:setWidth(30);
    obj.edit30:setHeight(30);
    obj.edit30:setField("Valor9");
    obj.edit30:setName("edit30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(73);
    obj.layout31:setTop(863);
    obj.layout31:setWidth(180);
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
    obj.edit31:setWidth(180);
    obj.edit31:setHeight(30);
    obj.edit31:setField("Nome10");
    obj.edit31:setName("edit31");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(263);
    obj.layout32:setTop(863);
    obj.layout32:setWidth(510);
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
    obj.edit32:setWidth(510);
    obj.edit32:setHeight(30);
    obj.edit32:setField("Descricao10");
    obj.edit32:setName("edit32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(787);
    obj.layout33:setTop(863);
    obj.layout33:setWidth(30);
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
    obj.edit33:setWidth(30);
    obj.edit33:setHeight(30);
    obj.edit33:setField("Valor10");
    obj.edit33:setName("edit33");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(234);
    obj.layout34:setTop(221);
    obj.layout34:setWidth(20);
    obj.layout34:setHeight(20);
    obj.layout34:setName("layout34");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout34);
    obj.imageCheckBox1:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox1:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox1:setWidth(20);
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setField("bola1forcaQ");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(234);
    obj.layout35:setTop(244);
    obj.layout35:setWidth(20);
    obj.layout35:setHeight(20);
    obj.layout35:setName("layout35");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout35);
    obj.imageCheckBox2:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox2:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox2:setWidth(20);
    obj.imageCheckBox2:setHeight(20);
    obj.imageCheckBox2:setField("bola1destrezaQ");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(234);
    obj.layout36:setTop(264);
    obj.layout36:setWidth(20);
    obj.layout36:setHeight(20);
    obj.layout36:setName("layout36");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout36);
    obj.imageCheckBox3:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox3:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox3:setWidth(20);
    obj.imageCheckBox3:setHeight(20);
    obj.imageCheckBox3:setField("bola1vigorQ");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(495);
    obj.layout37:setTop(221);
    obj.layout37:setWidth(20);
    obj.layout37:setHeight(20);
    obj.layout37:setName("layout37");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout37);
    obj.imageCheckBox4:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox4:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox4:setWidth(20);
    obj.imageCheckBox4:setHeight(20);
    obj.imageCheckBox4:setField("bola1carismaQ");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(495);
    obj.layout38:setTop(244);
    obj.layout38:setWidth(20);
    obj.layout38:setHeight(20);
    obj.layout38:setName("layout38");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout38);
    obj.imageCheckBox5:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox5:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox5:setWidth(20);
    obj.imageCheckBox5:setHeight(20);
    obj.imageCheckBox5:setField("bola1manipuQ");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(495);
    obj.layout39:setTop(264);
    obj.layout39:setWidth(20);
    obj.layout39:setHeight(20);
    obj.layout39:setName("layout39");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout39);
    obj.imageCheckBox6:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox6:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox6:setWidth(20);
    obj.imageCheckBox6:setHeight(20);
    obj.imageCheckBox6:setField("bola1apareQ");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(751);
    obj.layout40:setTop(221);
    obj.layout40:setWidth(20);
    obj.layout40:setHeight(20);
    obj.layout40:setName("layout40");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout40);
    obj.imageCheckBox7:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox7:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox7:setWidth(20);
    obj.imageCheckBox7:setHeight(20);
    obj.imageCheckBox7:setField("bola1percepQ");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(751);
    obj.layout41:setTop(244);
    obj.layout41:setWidth(20);
    obj.layout41:setHeight(20);
    obj.layout41:setName("layout41");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout41);
    obj.imageCheckBox8:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox8:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox8:setWidth(20);
    obj.imageCheckBox8:setHeight(20);
    obj.imageCheckBox8:setField("bola1intelQ");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(751);
    obj.layout42:setTop(264);
    obj.layout42:setWidth(20);
    obj.layout42:setHeight(20);
    obj.layout42:setName("layout42");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout42);
    obj.imageCheckBox9:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox9:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox9:setWidth(20);
    obj.imageCheckBox9:setHeight(20);
    obj.imageCheckBox9:setField("bola1racioQ");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(234);
    obj.layout43:setTop(353);
    obj.layout43:setWidth(20);
    obj.layout43:setHeight(20);
    obj.layout43:setName("layout43");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout43);
    obj.imageCheckBox10:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox10:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox10:setWidth(20);
    obj.imageCheckBox10:setHeight(20);
    obj.imageCheckBox10:setField("bola1prontQ");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(234);
    obj.layout44:setTop(375);
    obj.layout44:setWidth(20);
    obj.layout44:setHeight(20);
    obj.layout44:setName("layout44");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout44);
    obj.imageCheckBox11:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox11:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox11:setWidth(20);
    obj.imageCheckBox11:setHeight(20);
    obj.imageCheckBox11:setField("bola1esporQ");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(234);
    obj.layout45:setTop(397);
    obj.layout45:setWidth(20);
    obj.layout45:setHeight(20);
    obj.layout45:setName("layout45");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout45);
    obj.imageCheckBox12:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox12:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox12:setWidth(20);
    obj.imageCheckBox12:setHeight(20);
    obj.imageCheckBox12:setField("bola1brigaQ");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(234);
    obj.layout46:setTop(418);
    obj.layout46:setWidth(20);
    obj.layout46:setHeight(20);
    obj.layout46:setName("layout46");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout46);
    obj.imageCheckBox13:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox13:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox13:setWidth(20);
    obj.imageCheckBox13:setHeight(20);
    obj.imageCheckBox13:setField("bola1empatQ");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(234);
    obj.layout47:setTop(440);
    obj.layout47:setWidth(20);
    obj.layout47:setHeight(20);
    obj.layout47:setName("layout47");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout47);
    obj.imageCheckBox14:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox14:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox14:setWidth(20);
    obj.imageCheckBox14:setHeight(20);
    obj.imageCheckBox14:setField("bola1expreQ");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(234);
    obj.layout48:setTop(461);
    obj.layout48:setWidth(20);
    obj.layout48:setHeight(20);
    obj.layout48:setName("layout48");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout48);
    obj.imageCheckBox15:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox15:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox15:setWidth(20);
    obj.imageCheckBox15:setHeight(20);
    obj.imageCheckBox15:setField("bola1intimQ");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(234);
    obj.layout49:setTop(481);
    obj.layout49:setWidth(20);
    obj.layout49:setHeight(20);
    obj.layout49:setName("layout49");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout49);
    obj.imageCheckBox16:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox16:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox16:setWidth(20);
    obj.imageCheckBox16:setHeight(20);
    obj.imageCheckBox16:setField("bola1tinoQ");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(234);
    obj.layout50:setTop(502);
    obj.layout50:setWidth(20);
    obj.layout50:setHeight(20);
    obj.layout50:setName("layout50");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout50);
    obj.imageCheckBox17:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox17:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox17:setWidth(20);
    obj.imageCheckBox17:setHeight(20);
    obj.imageCheckBox17:setField("bola1liderQ");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(234);
    obj.layout51:setTop(523);
    obj.layout51:setWidth(20);
    obj.layout51:setHeight(20);
    obj.layout51:setName("layout51");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout51);
    obj.imageCheckBox18:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox18:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox18:setWidth(20);
    obj.imageCheckBox18:setHeight(20);
    obj.imageCheckBox18:setField("bola1manhaQ");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(234);
    obj.layout52:setTop(544);
    obj.layout52:setWidth(20);
    obj.layout52:setHeight(20);
    obj.layout52:setName("layout52");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout52);
    obj.imageCheckBox19:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox19:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox19:setWidth(20);
    obj.imageCheckBox19:setHeight(20);
    obj.imageCheckBox19:setField("bola1labiaQ");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(234);
    obj.layout53:setTop(564);
    obj.layout53:setWidth(20);
    obj.layout53:setHeight(20);
    obj.layout53:setName("layout53");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout53);
    obj.imageCheckBox20:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox20:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox20:setWidth(20);
    obj.imageCheckBox20:setHeight(20);
    obj.imageCheckBox20:setField("bola1esquiQ");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(495);
    obj.layout54:setTop(353);
    obj.layout54:setWidth(20);
    obj.layout54:setHeight(20);
    obj.layout54:setName("layout54");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout54);
    obj.imageCheckBox21:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox21:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox21:setWidth(20);
    obj.imageCheckBox21:setHeight(20);
    obj.imageCheckBox21:setField("bola1empcaQ");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(495);
    obj.layout55:setTop(375);
    obj.layout55:setWidth(20);
    obj.layout55:setHeight(20);
    obj.layout55:setName("layout55");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout55);
    obj.imageCheckBox22:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox22:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox22:setWidth(20);
    obj.imageCheckBox22:setHeight(20);
    obj.imageCheckBox22:setField("bola1ofiQ");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(495);
    obj.layout56:setTop(397);
    obj.layout56:setWidth(20);
    obj.layout56:setHeight(20);
    obj.layout56:setName("layout56");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout56);
    obj.imageCheckBox23:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox23:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox23:setWidth(20);
    obj.imageCheckBox23:setHeight(20);
    obj.imageCheckBox23:setField("bola1conduQ");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(495);
    obj.layout57:setTop(418);
    obj.layout57:setWidth(20);
    obj.layout57:setHeight(20);
    obj.layout57:setName("layout57");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout57);
    obj.imageCheckBox24:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox24:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox24:setWidth(20);
    obj.imageCheckBox24:setHeight(20);
    obj.imageCheckBox24:setField("bola1etiqueQ");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(495);
    obj.layout58:setTop(440);
    obj.layout58:setWidth(20);
    obj.layout58:setHeight(20);
    obj.layout58:setName("layout58");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout58);
    obj.imageCheckBox25:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox25:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox25:setWidth(20);
    obj.imageCheckBox25:setHeight(20);
    obj.imageCheckBox25:setField("bola1armprQ");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(495);
    obj.layout59:setTop(461);
    obj.layout59:setWidth(20);
    obj.layout59:setHeight(20);
    obj.layout59:setName("layout59");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout59);
    obj.imageCheckBox26:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox26:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox26:setWidth(20);
    obj.imageCheckBox26:setHeight(20);
    obj.imageCheckBox26:setField("bola1segurQ");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(495);
    obj.layout60:setTop(481);
    obj.layout60:setWidth(20);
    obj.layout60:setHeight(20);
    obj.layout60:setName("layout60");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout60);
    obj.imageCheckBox27:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox27:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox27:setWidth(20);
    obj.imageCheckBox27:setHeight(20);
    obj.imageCheckBox27:setField("bola1armbrQ");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(495);
    obj.layout61:setTop(502);
    obj.layout61:setWidth(20);
    obj.layout61:setHeight(20);
    obj.layout61:setName("layout61");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout61);
    obj.imageCheckBox28:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox28:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox28:setWidth(20);
    obj.imageCheckBox28:setHeight(20);
    obj.imageCheckBox28:setField("bola1perfoQ");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(495);
    obj.layout62:setTop(523);
    obj.layout62:setWidth(20);
    obj.layout62:setHeight(20);
    obj.layout62:setName("layout62");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout62);
    obj.imageCheckBox29:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox29:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox29:setWidth(20);
    obj.imageCheckBox29:setHeight(20);
    obj.imageCheckBox29:setField("bola1furtiQ");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(495);
    obj.layout63:setTop(544);
    obj.layout63:setWidth(20);
    obj.layout63:setHeight(20);
    obj.layout63:setName("layout63");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout63);
    obj.imageCheckBox30:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox30:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox30:setWidth(20);
    obj.imageCheckBox30:setHeight(20);
    obj.imageCheckBox30:setField("bola1sobreQ");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(495);
    obj.layout64:setTop(564);
    obj.layout64:setWidth(20);
    obj.layout64:setHeight(20);
    obj.layout64:setName("layout64");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout64);
    obj.imageCheckBox31:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox31:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox31:setWidth(20);
    obj.imageCheckBox31:setHeight(20);
    obj.imageCheckBox31:setField("bola1montaQ");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(751);
    obj.layout65:setTop(353);
    obj.layout65:setWidth(20);
    obj.layout65:setHeight(20);
    obj.layout65:setName("layout65");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout65);
    obj.imageCheckBox32:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox32:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox32:setWidth(20);
    obj.imageCheckBox32:setHeight(20);
    obj.imageCheckBox32:setField("bola1instruQ");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(751);
    obj.layout66:setTop(375);
    obj.layout66:setWidth(20);
    obj.layout66:setHeight(20);
    obj.layout66:setName("layout66");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout66);
    obj.imageCheckBox33:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox33:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox33:setWidth(20);
    obj.imageCheckBox33:setHeight(20);
    obj.imageCheckBox33:setField("bola1compuQ");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(751);
    obj.layout67:setTop(397);
    obj.layout67:setWidth(20);
    obj.layout67:setHeight(20);
    obj.layout67:setName("layout67");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout67);
    obj.imageCheckBox34:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox34:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox34:setWidth(20);
    obj.imageCheckBox34:setHeight(20);
    obj.imageCheckBox34:setField("bola1enigQ");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(751);
    obj.layout68:setTop(418);
    obj.layout68:setWidth(20);
    obj.layout68:setHeight(20);
    obj.layout68:setName("layout68");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout68);
    obj.imageCheckBox35:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox35:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox35:setWidth(20);
    obj.imageCheckBox35:setHeight(20);
    obj.imageCheckBox35:setField("bola1gramaQ");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(751);
    obj.layout69:setTop(440);
    obj.layout69:setWidth(20);
    obj.layout69:setHeight(20);
    obj.layout69:setName("layout69");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout69);
    obj.imageCheckBox36:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox36:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox36:setWidth(20);
    obj.imageCheckBox36:setHeight(20);
    obj.imageCheckBox36:setField("bola1invesQ");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(751);
    obj.layout70:setTop(461);
    obj.layout70:setWidth(20);
    obj.layout70:setHeight(20);
    obj.layout70:setName("layout70");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout70);
    obj.imageCheckBox37:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox37:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox37:setWidth(20);
    obj.imageCheckBox37:setHeight(20);
    obj.imageCheckBox37:setField("bola1direiQ");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(751);
    obj.layout71:setTop(481);
    obj.layout71:setWidth(20);
    obj.layout71:setHeight(20);
    obj.layout71:setName("layout71");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout71);
    obj.imageCheckBox38:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox38:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox38:setWidth(20);
    obj.imageCheckBox38:setHeight(20);
    obj.imageCheckBox38:setField("bola1medicQ");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(751);
    obj.layout72:setTop(502);
    obj.layout72:setWidth(20);
    obj.layout72:setHeight(20);
    obj.layout72:setName("layout72");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout72);
    obj.imageCheckBox39:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox39:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox39:setWidth(20);
    obj.imageCheckBox39:setHeight(20);
    obj.imageCheckBox39:setField("bola1politQ");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(751);
    obj.layout73:setTop(523);
    obj.layout73:setWidth(20);
    obj.layout73:setHeight(20);
    obj.layout73:setName("layout73");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout73);
    obj.imageCheckBox40:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox40:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox40:setWidth(20);
    obj.imageCheckBox40:setHeight(20);
    obj.imageCheckBox40:setField("bola1cienciaQ");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(751);
    obj.layout74:setTop(544);
    obj.layout74:setWidth(20);
    obj.layout74:setHeight(20);
    obj.layout74:setName("layout74");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout74);
    obj.imageCheckBox41:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox41:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox41:setWidth(20);
    obj.imageCheckBox41:setHeight(20);
    obj.imageCheckBox41:setField("bola1tecnoQ");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(751);
    obj.layout75:setTop(564);
    obj.layout75:setWidth(20);
    obj.layout75:setHeight(20);
    obj.layout75:setName("layout75");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout75);
    obj.imageCheckBox42:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox42:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox42:setWidth(20);
    obj.imageCheckBox42:setHeight(20);
    obj.imageCheckBox42:setField("bola1linguiQ");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(75);
    obj.layout76:setTop(998);
    obj.layout76:setWidth(20);
    obj.layout76:setHeight(20);
    obj.layout76:setName("layout76");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout76);
    obj.imageCheckBox43:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox43:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox43:setWidth(20);
    obj.imageCheckBox43:setHeight(20);
    obj.imageCheckBox43:setField("bola1GlQ");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(200);
    obj.layout77:setTop(998);
    obj.layout77:setWidth(20);
    obj.layout77:setHeight(20);
    obj.layout77:setName("layout77");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout77);
    obj.imageCheckBox44:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox44:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox44:setWidth(20);
    obj.imageCheckBox44:setHeight(20);
    obj.imageCheckBox44:setField("bola6GlQ");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(77);
    obj.layout78:setTop(1023);
    obj.layout78:setWidth(18);
    obj.layout78:setHeight(18);
    obj.layout78:setName("layout78");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout78);
    obj.imageCheckBox45:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox45:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox45:setWidth(18);
    obj.imageCheckBox45:setHeight(18);
    obj.imageCheckBox45:setField("square1GlQ");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(201);
    obj.layout79:setTop(1023);
    obj.layout79:setWidth(18);
    obj.layout79:setHeight(18);
    obj.layout79:setName("layout79");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout79);
    obj.imageCheckBox46:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox46:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox46:setWidth(18);
    obj.imageCheckBox46:setHeight(18);
    obj.imageCheckBox46:setField("square6GlQ");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(75);
    obj.layout80:setTop(1079);
    obj.layout80:setWidth(20);
    obj.layout80:setHeight(20);
    obj.layout80:setName("layout80");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout80);
    obj.imageCheckBox47:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox47:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox47:setWidth(20);
    obj.imageCheckBox47:setHeight(20);
    obj.imageCheckBox47:setField("mirror1BanQ");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(200);
    obj.layout81:setTop(1079);
    obj.layout81:setWidth(20);
    obj.layout81:setHeight(20);
    obj.layout81:setName("layout81");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout81);
    obj.imageCheckBox48:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox48:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox48:setWidth(20);
    obj.imageCheckBox48:setHeight(20);
    obj.imageCheckBox48:setField("mirror6BanQ");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(77);
    obj.layout82:setTop(1101);
    obj.layout82:setWidth(18);
    obj.layout82:setHeight(18);
    obj.layout82:setName("layout82");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout82);
    obj.imageCheckBox49:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox49:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox49:setWidth(18);
    obj.imageCheckBox49:setHeight(18);
    obj.imageCheckBox49:setField("square1BanQ");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(200);
    obj.layout83:setTop(1101);
    obj.layout83:setWidth(18);
    obj.layout83:setHeight(18);
    obj.layout83:setName("layout83");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout83);
    obj.imageCheckBox50:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox50:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox50:setWidth(18);
    obj.imageCheckBox50:setHeight(18);
    obj.imageCheckBox50:setField("square6BanQ");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(75);
    obj.layout84:setTop(1157);
    obj.layout84:setWidth(20);
    obj.layout84:setHeight(20);
    obj.layout84:setName("layout84");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout84);
    obj.imageCheckBox51:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox51:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox51:setWidth(20);
    obj.imageCheckBox51:setHeight(20);
    obj.imageCheckBox51:setField("bola1FDVQ");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(200);
    obj.layout85:setTop(1157);
    obj.layout85:setWidth(20);
    obj.layout85:setHeight(20);
    obj.layout85:setName("layout85");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout85);
    obj.imageCheckBox52:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox52:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox52:setWidth(20);
    obj.imageCheckBox52:setHeight(20);
    obj.imageCheckBox52:setField("bola6FDVQ");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(77);
    obj.layout86:setTop(1179);
    obj.layout86:setWidth(18);
    obj.layout86:setHeight(18);
    obj.layout86:setName("layout86");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout86);
    obj.imageCheckBox53:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox53:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox53:setWidth(18);
    obj.imageCheckBox53:setHeight(18);
    obj.imageCheckBox53:setField("square1FDVQ");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(200);
    obj.layout87:setTop(1179);
    obj.layout87:setWidth(18);
    obj.layout87:setHeight(18);
    obj.layout87:setName("layout87");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout87);
    obj.imageCheckBox54:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox54:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox54:setWidth(18);
    obj.imageCheckBox54:setHeight(18);
    obj.imageCheckBox54:setField("square6FDVQ");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(729);
    obj.layout88:setTop(990);
    obj.layout88:setWidth(27);
    obj.layout88:setHeight(27);
    obj.layout88:setName("layout88");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout88);
    obj.imageCheckBox55:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox55:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox55:setWidth(27);
    obj.imageCheckBox55:setHeight(27);
    obj.imageCheckBox55:setField("bola1LetalQ");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(729);
    obj.layout89:setTop(1140);
    obj.layout89:setWidth(27);
    obj.layout89:setHeight(27);
    obj.layout89:setName("layout89");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout89);
    obj.imageCheckBox56:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox56:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox56:setWidth(27);
    obj.imageCheckBox56:setHeight(27);
    obj.imageCheckBox56:setField("bola6LetalQ");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(775);
    obj.layout90:setTop(990);
    obj.layout90:setWidth(27);
    obj.layout90:setHeight(27);
    obj.layout90:setName("layout90");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout90);
    obj.imageCheckBox57:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox57:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox57:setWidth(27);
    obj.imageCheckBox57:setHeight(27);
    obj.imageCheckBox57:setField("bola1AgravadoQ");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(775);
    obj.layout91:setTop(1140);
    obj.layout91:setWidth(27);
    obj.layout91:setHeight(27);
    obj.layout91:setName("layout91");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout91);
    obj.imageCheckBox58:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox58:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox58:setWidth(27);
    obj.imageCheckBox58:setHeight(27);
    obj.imageCheckBox58:setField("bola6AgravadoQ");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(248);
    obj.layout92:setTop(221);
    obj.layout92:setWidth(20);
    obj.layout92:setHeight(20);
    obj.layout92:setName("layout92");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout92);
    obj.imageCheckBox59:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox59:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox59:setWidth(20);
    obj.imageCheckBox59:setHeight(20);
    obj.imageCheckBox59:setField("bola2forcaQ");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(248);
    obj.layout93:setTop(244);
    obj.layout93:setWidth(20);
    obj.layout93:setHeight(20);
    obj.layout93:setName("layout93");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout93);
    obj.imageCheckBox60:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox60:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox60:setWidth(20);
    obj.imageCheckBox60:setHeight(20);
    obj.imageCheckBox60:setField("bola2destrezaQ");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(248);
    obj.layout94:setTop(264);
    obj.layout94:setWidth(20);
    obj.layout94:setHeight(20);
    obj.layout94:setName("layout94");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout94);
    obj.imageCheckBox61:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox61:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox61:setWidth(20);
    obj.imageCheckBox61:setHeight(20);
    obj.imageCheckBox61:setField("bola2vigorQ");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(509);
    obj.layout95:setTop(221);
    obj.layout95:setWidth(20);
    obj.layout95:setHeight(20);
    obj.layout95:setName("layout95");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout95);
    obj.imageCheckBox62:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox62:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox62:setWidth(20);
    obj.imageCheckBox62:setHeight(20);
    obj.imageCheckBox62:setField("bola2carismaQ");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(509);
    obj.layout96:setTop(244);
    obj.layout96:setWidth(20);
    obj.layout96:setHeight(20);
    obj.layout96:setName("layout96");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout96);
    obj.imageCheckBox63:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox63:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox63:setWidth(20);
    obj.imageCheckBox63:setHeight(20);
    obj.imageCheckBox63:setField("bola2manipuQ");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(509);
    obj.layout97:setTop(264);
    obj.layout97:setWidth(20);
    obj.layout97:setHeight(20);
    obj.layout97:setName("layout97");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout97);
    obj.imageCheckBox64:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox64:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox64:setWidth(20);
    obj.imageCheckBox64:setHeight(20);
    obj.imageCheckBox64:setField("bola2apareQ");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(765);
    obj.layout98:setTop(221);
    obj.layout98:setWidth(20);
    obj.layout98:setHeight(20);
    obj.layout98:setName("layout98");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout98);
    obj.imageCheckBox65:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox65:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox65:setWidth(20);
    obj.imageCheckBox65:setHeight(20);
    obj.imageCheckBox65:setField("bola2percepQ");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(765);
    obj.layout99:setTop(244);
    obj.layout99:setWidth(20);
    obj.layout99:setHeight(20);
    obj.layout99:setName("layout99");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout99);
    obj.imageCheckBox66:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox66:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox66:setWidth(20);
    obj.imageCheckBox66:setHeight(20);
    obj.imageCheckBox66:setField("bola2intelQ");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(765);
    obj.layout100:setTop(264);
    obj.layout100:setWidth(20);
    obj.layout100:setHeight(20);
    obj.layout100:setName("layout100");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout100);
    obj.imageCheckBox67:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox67:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox67:setWidth(20);
    obj.imageCheckBox67:setHeight(20);
    obj.imageCheckBox67:setField("bola2racioQ");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(248);
    obj.layout101:setTop(353);
    obj.layout101:setWidth(20);
    obj.layout101:setHeight(20);
    obj.layout101:setName("layout101");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout101);
    obj.imageCheckBox68:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox68:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox68:setWidth(20);
    obj.imageCheckBox68:setHeight(20);
    obj.imageCheckBox68:setField("bola2prontQ");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(248);
    obj.layout102:setTop(375);
    obj.layout102:setWidth(20);
    obj.layout102:setHeight(20);
    obj.layout102:setName("layout102");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout102);
    obj.imageCheckBox69:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox69:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox69:setWidth(20);
    obj.imageCheckBox69:setHeight(20);
    obj.imageCheckBox69:setField("bola2esporQ");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(248);
    obj.layout103:setTop(397);
    obj.layout103:setWidth(20);
    obj.layout103:setHeight(20);
    obj.layout103:setName("layout103");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout103);
    obj.imageCheckBox70:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox70:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox70:setWidth(20);
    obj.imageCheckBox70:setHeight(20);
    obj.imageCheckBox70:setField("bola2brigaQ");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(248);
    obj.layout104:setTop(418);
    obj.layout104:setWidth(20);
    obj.layout104:setHeight(20);
    obj.layout104:setName("layout104");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout104);
    obj.imageCheckBox71:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox71:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox71:setWidth(20);
    obj.imageCheckBox71:setHeight(20);
    obj.imageCheckBox71:setField("bola2empatQ");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(248);
    obj.layout105:setTop(440);
    obj.layout105:setWidth(20);
    obj.layout105:setHeight(20);
    obj.layout105:setName("layout105");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout105);
    obj.imageCheckBox72:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox72:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox72:setWidth(20);
    obj.imageCheckBox72:setHeight(20);
    obj.imageCheckBox72:setField("bola2expreQ");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(248);
    obj.layout106:setTop(461);
    obj.layout106:setWidth(20);
    obj.layout106:setHeight(20);
    obj.layout106:setName("layout106");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout106);
    obj.imageCheckBox73:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox73:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox73:setWidth(20);
    obj.imageCheckBox73:setHeight(20);
    obj.imageCheckBox73:setField("bola2intimQ");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(248);
    obj.layout107:setTop(481);
    obj.layout107:setWidth(20);
    obj.layout107:setHeight(20);
    obj.layout107:setName("layout107");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout107);
    obj.imageCheckBox74:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox74:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox74:setWidth(20);
    obj.imageCheckBox74:setHeight(20);
    obj.imageCheckBox74:setField("bola2tinoQ");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(248);
    obj.layout108:setTop(502);
    obj.layout108:setWidth(20);
    obj.layout108:setHeight(20);
    obj.layout108:setName("layout108");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout108);
    obj.imageCheckBox75:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox75:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox75:setWidth(20);
    obj.imageCheckBox75:setHeight(20);
    obj.imageCheckBox75:setField("bola2liderQ");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(248);
    obj.layout109:setTop(523);
    obj.layout109:setWidth(20);
    obj.layout109:setHeight(20);
    obj.layout109:setName("layout109");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout109);
    obj.imageCheckBox76:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox76:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox76:setWidth(20);
    obj.imageCheckBox76:setHeight(20);
    obj.imageCheckBox76:setField("bola2manhaQ");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(248);
    obj.layout110:setTop(544);
    obj.layout110:setWidth(20);
    obj.layout110:setHeight(20);
    obj.layout110:setName("layout110");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout110);
    obj.imageCheckBox77:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox77:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox77:setWidth(20);
    obj.imageCheckBox77:setHeight(20);
    obj.imageCheckBox77:setField("bola2labiaQ");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(248);
    obj.layout111:setTop(564);
    obj.layout111:setWidth(20);
    obj.layout111:setHeight(20);
    obj.layout111:setName("layout111");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout111);
    obj.imageCheckBox78:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox78:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox78:setWidth(20);
    obj.imageCheckBox78:setHeight(20);
    obj.imageCheckBox78:setField("bola2esquiQ");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(509);
    obj.layout112:setTop(353);
    obj.layout112:setWidth(20);
    obj.layout112:setHeight(20);
    obj.layout112:setName("layout112");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout112);
    obj.imageCheckBox79:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox79:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox79:setWidth(20);
    obj.imageCheckBox79:setHeight(20);
    obj.imageCheckBox79:setField("bola2empcaQ");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(509);
    obj.layout113:setTop(375);
    obj.layout113:setWidth(20);
    obj.layout113:setHeight(20);
    obj.layout113:setName("layout113");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout113);
    obj.imageCheckBox80:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox80:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox80:setWidth(20);
    obj.imageCheckBox80:setHeight(20);
    obj.imageCheckBox80:setField("bola2ofiQ");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(509);
    obj.layout114:setTop(397);
    obj.layout114:setWidth(20);
    obj.layout114:setHeight(20);
    obj.layout114:setName("layout114");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout114);
    obj.imageCheckBox81:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox81:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox81:setWidth(20);
    obj.imageCheckBox81:setHeight(20);
    obj.imageCheckBox81:setField("bola2conduQ");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(509);
    obj.layout115:setTop(418);
    obj.layout115:setWidth(20);
    obj.layout115:setHeight(20);
    obj.layout115:setName("layout115");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout115);
    obj.imageCheckBox82:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox82:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox82:setWidth(20);
    obj.imageCheckBox82:setHeight(20);
    obj.imageCheckBox82:setField("bola2etiqueQ");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(509);
    obj.layout116:setTop(440);
    obj.layout116:setWidth(20);
    obj.layout116:setHeight(20);
    obj.layout116:setName("layout116");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout116);
    obj.imageCheckBox83:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox83:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox83:setWidth(20);
    obj.imageCheckBox83:setHeight(20);
    obj.imageCheckBox83:setField("bola2armprQ");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(509);
    obj.layout117:setTop(461);
    obj.layout117:setWidth(20);
    obj.layout117:setHeight(20);
    obj.layout117:setName("layout117");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout117);
    obj.imageCheckBox84:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox84:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox84:setWidth(20);
    obj.imageCheckBox84:setHeight(20);
    obj.imageCheckBox84:setField("bola2segurQ");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(509);
    obj.layout118:setTop(481);
    obj.layout118:setWidth(20);
    obj.layout118:setHeight(20);
    obj.layout118:setName("layout118");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout118);
    obj.imageCheckBox85:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox85:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox85:setWidth(20);
    obj.imageCheckBox85:setHeight(20);
    obj.imageCheckBox85:setField("bola2armbrQ");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(509);
    obj.layout119:setTop(502);
    obj.layout119:setWidth(20);
    obj.layout119:setHeight(20);
    obj.layout119:setName("layout119");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout119);
    obj.imageCheckBox86:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox86:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox86:setWidth(20);
    obj.imageCheckBox86:setHeight(20);
    obj.imageCheckBox86:setField("bola2perfoQ");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(509);
    obj.layout120:setTop(523);
    obj.layout120:setWidth(20);
    obj.layout120:setHeight(20);
    obj.layout120:setName("layout120");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout120);
    obj.imageCheckBox87:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox87:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox87:setWidth(20);
    obj.imageCheckBox87:setHeight(20);
    obj.imageCheckBox87:setField("bola2furtiQ");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(509);
    obj.layout121:setTop(544);
    obj.layout121:setWidth(20);
    obj.layout121:setHeight(20);
    obj.layout121:setName("layout121");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout121);
    obj.imageCheckBox88:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox88:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox88:setWidth(20);
    obj.imageCheckBox88:setHeight(20);
    obj.imageCheckBox88:setField("bola2sobreQ");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(509);
    obj.layout122:setTop(564);
    obj.layout122:setWidth(20);
    obj.layout122:setHeight(20);
    obj.layout122:setName("layout122");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout122);
    obj.imageCheckBox89:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox89:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox89:setWidth(20);
    obj.imageCheckBox89:setHeight(20);
    obj.imageCheckBox89:setField("bola2montaQ");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(765);
    obj.layout123:setTop(353);
    obj.layout123:setWidth(20);
    obj.layout123:setHeight(20);
    obj.layout123:setName("layout123");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout123);
    obj.imageCheckBox90:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox90:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox90:setWidth(20);
    obj.imageCheckBox90:setHeight(20);
    obj.imageCheckBox90:setField("bola2instruQ");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(765);
    obj.layout124:setTop(375);
    obj.layout124:setWidth(20);
    obj.layout124:setHeight(20);
    obj.layout124:setName("layout124");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout124);
    obj.imageCheckBox91:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox91:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox91:setWidth(20);
    obj.imageCheckBox91:setHeight(20);
    obj.imageCheckBox91:setField("bola2compuQ");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(765);
    obj.layout125:setTop(397);
    obj.layout125:setWidth(20);
    obj.layout125:setHeight(20);
    obj.layout125:setName("layout125");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout125);
    obj.imageCheckBox92:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox92:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox92:setWidth(20);
    obj.imageCheckBox92:setHeight(20);
    obj.imageCheckBox92:setField("bola2enigQ");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(765);
    obj.layout126:setTop(418);
    obj.layout126:setWidth(20);
    obj.layout126:setHeight(20);
    obj.layout126:setName("layout126");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout126);
    obj.imageCheckBox93:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox93:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox93:setWidth(20);
    obj.imageCheckBox93:setHeight(20);
    obj.imageCheckBox93:setField("bola2gramaQ");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(765);
    obj.layout127:setTop(440);
    obj.layout127:setWidth(20);
    obj.layout127:setHeight(20);
    obj.layout127:setName("layout127");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout127);
    obj.imageCheckBox94:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox94:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox94:setWidth(20);
    obj.imageCheckBox94:setHeight(20);
    obj.imageCheckBox94:setField("bola2invesQ");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(765);
    obj.layout128:setTop(461);
    obj.layout128:setWidth(20);
    obj.layout128:setHeight(20);
    obj.layout128:setName("layout128");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout128);
    obj.imageCheckBox95:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox95:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox95:setWidth(20);
    obj.imageCheckBox95:setHeight(20);
    obj.imageCheckBox95:setField("bola2direiQ");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(765);
    obj.layout129:setTop(481);
    obj.layout129:setWidth(20);
    obj.layout129:setHeight(20);
    obj.layout129:setName("layout129");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout129);
    obj.imageCheckBox96:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox96:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox96:setWidth(20);
    obj.imageCheckBox96:setHeight(20);
    obj.imageCheckBox96:setField("bola2medicQ");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(765);
    obj.layout130:setTop(502);
    obj.layout130:setWidth(20);
    obj.layout130:setHeight(20);
    obj.layout130:setName("layout130");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout130);
    obj.imageCheckBox97:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox97:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox97:setWidth(20);
    obj.imageCheckBox97:setHeight(20);
    obj.imageCheckBox97:setField("bola2politQ");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(765);
    obj.layout131:setTop(523);
    obj.layout131:setWidth(20);
    obj.layout131:setHeight(20);
    obj.layout131:setName("layout131");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout131);
    obj.imageCheckBox98:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox98:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox98:setWidth(20);
    obj.imageCheckBox98:setHeight(20);
    obj.imageCheckBox98:setField("bola2cienciaQ");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(765);
    obj.layout132:setTop(544);
    obj.layout132:setWidth(20);
    obj.layout132:setHeight(20);
    obj.layout132:setName("layout132");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout132);
    obj.imageCheckBox99:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox99:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox99:setWidth(20);
    obj.imageCheckBox99:setHeight(20);
    obj.imageCheckBox99:setField("bola2tecnoQ");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(765);
    obj.layout133:setTop(564);
    obj.layout133:setWidth(20);
    obj.layout133:setHeight(20);
    obj.layout133:setName("layout133");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout133);
    obj.imageCheckBox100:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox100:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox100:setWidth(20);
    obj.imageCheckBox100:setHeight(20);
    obj.imageCheckBox100:setField("bola2linguiQ");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(100);
    obj.layout134:setTop(998);
    obj.layout134:setWidth(20);
    obj.layout134:setHeight(20);
    obj.layout134:setName("layout134");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout134);
    obj.imageCheckBox101:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox101:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox101:setWidth(20);
    obj.imageCheckBox101:setHeight(20);
    obj.imageCheckBox101:setField("bola2GlQ");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(224);
    obj.layout135:setTop(998);
    obj.layout135:setWidth(20);
    obj.layout135:setHeight(20);
    obj.layout135:setName("layout135");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout135);
    obj.imageCheckBox102:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox102:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox102:setWidth(20);
    obj.imageCheckBox102:setHeight(20);
    obj.imageCheckBox102:setField("bola7GlQ");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle1);
    obj.layout136:setLeft(102);
    obj.layout136:setTop(1023);
    obj.layout136:setWidth(18);
    obj.layout136:setHeight(18);
    obj.layout136:setName("layout136");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout136);
    obj.imageCheckBox103:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox103:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox103:setWidth(18);
    obj.imageCheckBox103:setHeight(18);
    obj.imageCheckBox103:setField("square2GlQ");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle1);
    obj.layout137:setLeft(225);
    obj.layout137:setTop(1023);
    obj.layout137:setWidth(18);
    obj.layout137:setHeight(18);
    obj.layout137:setName("layout137");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout137);
    obj.imageCheckBox104:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox104:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox104:setWidth(18);
    obj.imageCheckBox104:setHeight(18);
    obj.imageCheckBox104:setField("square7GlQ");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle1);
    obj.layout138:setLeft(100);
    obj.layout138:setTop(1079);
    obj.layout138:setWidth(20);
    obj.layout138:setHeight(20);
    obj.layout138:setName("layout138");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout138);
    obj.imageCheckBox105:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox105:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox105:setWidth(20);
    obj.imageCheckBox105:setHeight(20);
    obj.imageCheckBox105:setField("mirror2BanQ");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle1);
    obj.layout139:setLeft(224);
    obj.layout139:setTop(1079);
    obj.layout139:setWidth(20);
    obj.layout139:setHeight(20);
    obj.layout139:setName("layout139");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout139);
    obj.imageCheckBox106:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox106:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox106:setWidth(20);
    obj.imageCheckBox106:setHeight(20);
    obj.imageCheckBox106:setField("mirror7BanQ");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle1);
    obj.layout140:setLeft(101);
    obj.layout140:setTop(1101);
    obj.layout140:setWidth(18);
    obj.layout140:setHeight(18);
    obj.layout140:setName("layout140");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout140);
    obj.imageCheckBox107:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox107:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox107:setWidth(18);
    obj.imageCheckBox107:setHeight(18);
    obj.imageCheckBox107:setField("square2BanQ");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle1);
    obj.layout141:setLeft(225);
    obj.layout141:setTop(1101);
    obj.layout141:setWidth(18);
    obj.layout141:setHeight(18);
    obj.layout141:setName("layout141");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout141);
    obj.imageCheckBox108:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox108:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox108:setWidth(18);
    obj.imageCheckBox108:setHeight(18);
    obj.imageCheckBox108:setField("square7BanQ");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle1);
    obj.layout142:setLeft(100);
    obj.layout142:setTop(1157);
    obj.layout142:setWidth(20);
    obj.layout142:setHeight(20);
    obj.layout142:setName("layout142");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout142);
    obj.imageCheckBox109:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox109:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox109:setWidth(20);
    obj.imageCheckBox109:setHeight(20);
    obj.imageCheckBox109:setField("bola2FDVQ");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle1);
    obj.layout143:setLeft(224);
    obj.layout143:setTop(1157);
    obj.layout143:setWidth(20);
    obj.layout143:setHeight(20);
    obj.layout143:setName("layout143");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout143);
    obj.imageCheckBox110:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox110:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox110:setWidth(20);
    obj.imageCheckBox110:setHeight(20);
    obj.imageCheckBox110:setField("bola7FDVQ");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle1);
    obj.layout144:setLeft(102);
    obj.layout144:setTop(1179);
    obj.layout144:setWidth(18);
    obj.layout144:setHeight(18);
    obj.layout144:setName("layout144");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout144);
    obj.imageCheckBox111:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox111:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox111:setWidth(18);
    obj.imageCheckBox111:setHeight(18);
    obj.imageCheckBox111:setField("square2FDVQ");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle1);
    obj.layout145:setLeft(225);
    obj.layout145:setTop(1179);
    obj.layout145:setWidth(18);
    obj.layout145:setHeight(18);
    obj.layout145:setName("layout145");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout145);
    obj.imageCheckBox112:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox112:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox112:setWidth(18);
    obj.imageCheckBox112:setHeight(18);
    obj.imageCheckBox112:setField("square7FDVQ");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle1);
    obj.layout146:setLeft(729);
    obj.layout146:setTop(1020);
    obj.layout146:setWidth(27);
    obj.layout146:setHeight(27);
    obj.layout146:setName("layout146");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout146);
    obj.imageCheckBox113:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox113:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox113:setWidth(27);
    obj.imageCheckBox113:setHeight(27);
    obj.imageCheckBox113:setField("bola2LetalQ");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle1);
    obj.layout147:setLeft(729);
    obj.layout147:setTop(1170);
    obj.layout147:setWidth(27);
    obj.layout147:setHeight(27);
    obj.layout147:setName("layout147");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout147);
    obj.imageCheckBox114:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox114:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox114:setWidth(27);
    obj.imageCheckBox114:setHeight(27);
    obj.imageCheckBox114:setField("bola7LetalQ");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle1);
    obj.layout148:setLeft(775);
    obj.layout148:setTop(1020);
    obj.layout148:setWidth(27);
    obj.layout148:setHeight(27);
    obj.layout148:setName("layout148");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout148);
    obj.imageCheckBox115:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox115:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox115:setWidth(27);
    obj.imageCheckBox115:setHeight(27);
    obj.imageCheckBox115:setField("bola2AgravadoQ");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle1);
    obj.layout149:setLeft(775);
    obj.layout149:setTop(1170);
    obj.layout149:setWidth(27);
    obj.layout149:setHeight(27);
    obj.layout149:setName("layout149");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout149);
    obj.imageCheckBox116:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox116:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox116:setWidth(27);
    obj.imageCheckBox116:setHeight(27);
    obj.imageCheckBox116:setField("bola7AgravadoQ");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle1);
    obj.layout150:setLeft(263);
    obj.layout150:setTop(221);
    obj.layout150:setWidth(20);
    obj.layout150:setHeight(20);
    obj.layout150:setName("layout150");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout150);
    obj.imageCheckBox117:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox117:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox117:setWidth(20);
    obj.imageCheckBox117:setHeight(20);
    obj.imageCheckBox117:setField("bola3forcaQ");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle1);
    obj.layout151:setLeft(263);
    obj.layout151:setTop(244);
    obj.layout151:setWidth(20);
    obj.layout151:setHeight(20);
    obj.layout151:setName("layout151");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout151);
    obj.imageCheckBox118:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox118:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox118:setWidth(20);
    obj.imageCheckBox118:setHeight(20);
    obj.imageCheckBox118:setField("bola3destrezaQ");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle1);
    obj.layout152:setLeft(263);
    obj.layout152:setTop(264);
    obj.layout152:setWidth(20);
    obj.layout152:setHeight(20);
    obj.layout152:setName("layout152");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout152);
    obj.imageCheckBox119:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox119:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox119:setWidth(20);
    obj.imageCheckBox119:setHeight(20);
    obj.imageCheckBox119:setField("bola3vigorQ");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle1);
    obj.layout153:setLeft(524);
    obj.layout153:setTop(221);
    obj.layout153:setWidth(20);
    obj.layout153:setHeight(20);
    obj.layout153:setName("layout153");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout153);
    obj.imageCheckBox120:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox120:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox120:setWidth(20);
    obj.imageCheckBox120:setHeight(20);
    obj.imageCheckBox120:setField("bola3carismaQ");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle1);
    obj.layout154:setLeft(524);
    obj.layout154:setTop(244);
    obj.layout154:setWidth(20);
    obj.layout154:setHeight(20);
    obj.layout154:setName("layout154");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout154);
    obj.imageCheckBox121:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox121:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox121:setWidth(20);
    obj.imageCheckBox121:setHeight(20);
    obj.imageCheckBox121:setField("bola3manipuQ");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle1);
    obj.layout155:setLeft(524);
    obj.layout155:setTop(264);
    obj.layout155:setWidth(20);
    obj.layout155:setHeight(20);
    obj.layout155:setName("layout155");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout155);
    obj.imageCheckBox122:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox122:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox122:setWidth(20);
    obj.imageCheckBox122:setHeight(20);
    obj.imageCheckBox122:setField("bola3apareQ");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle1);
    obj.layout156:setLeft(780);
    obj.layout156:setTop(221);
    obj.layout156:setWidth(20);
    obj.layout156:setHeight(20);
    obj.layout156:setName("layout156");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout156);
    obj.imageCheckBox123:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox123:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox123:setWidth(20);
    obj.imageCheckBox123:setHeight(20);
    obj.imageCheckBox123:setField("bola3percepQ");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle1);
    obj.layout157:setLeft(780);
    obj.layout157:setTop(244);
    obj.layout157:setWidth(20);
    obj.layout157:setHeight(20);
    obj.layout157:setName("layout157");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout157);
    obj.imageCheckBox124:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox124:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox124:setWidth(20);
    obj.imageCheckBox124:setHeight(20);
    obj.imageCheckBox124:setField("bola3intelQ");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle1);
    obj.layout158:setLeft(780);
    obj.layout158:setTop(264);
    obj.layout158:setWidth(20);
    obj.layout158:setHeight(20);
    obj.layout158:setName("layout158");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout158);
    obj.imageCheckBox125:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox125:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox125:setWidth(20);
    obj.imageCheckBox125:setHeight(20);
    obj.imageCheckBox125:setField("bola3racioQ");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle1);
    obj.layout159:setLeft(263);
    obj.layout159:setTop(353);
    obj.layout159:setWidth(20);
    obj.layout159:setHeight(20);
    obj.layout159:setName("layout159");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout159);
    obj.imageCheckBox126:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox126:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox126:setWidth(20);
    obj.imageCheckBox126:setHeight(20);
    obj.imageCheckBox126:setField("bola3prontQ");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle1);
    obj.layout160:setLeft(263);
    obj.layout160:setTop(375);
    obj.layout160:setWidth(20);
    obj.layout160:setHeight(20);
    obj.layout160:setName("layout160");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout160);
    obj.imageCheckBox127:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox127:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox127:setWidth(20);
    obj.imageCheckBox127:setHeight(20);
    obj.imageCheckBox127:setField("bola3esporQ");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle1);
    obj.layout161:setLeft(263);
    obj.layout161:setTop(397);
    obj.layout161:setWidth(20);
    obj.layout161:setHeight(20);
    obj.layout161:setName("layout161");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout161);
    obj.imageCheckBox128:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox128:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox128:setWidth(20);
    obj.imageCheckBox128:setHeight(20);
    obj.imageCheckBox128:setField("bola3brigaQ");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle1);
    obj.layout162:setLeft(263);
    obj.layout162:setTop(418);
    obj.layout162:setWidth(20);
    obj.layout162:setHeight(20);
    obj.layout162:setName("layout162");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout162);
    obj.imageCheckBox129:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox129:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox129:setWidth(20);
    obj.imageCheckBox129:setHeight(20);
    obj.imageCheckBox129:setField("bola3empatQ");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle1);
    obj.layout163:setLeft(263);
    obj.layout163:setTop(440);
    obj.layout163:setWidth(20);
    obj.layout163:setHeight(20);
    obj.layout163:setName("layout163");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout163);
    obj.imageCheckBox130:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox130:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox130:setWidth(20);
    obj.imageCheckBox130:setHeight(20);
    obj.imageCheckBox130:setField("bola3expreQ");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle1);
    obj.layout164:setLeft(263);
    obj.layout164:setTop(461);
    obj.layout164:setWidth(20);
    obj.layout164:setHeight(20);
    obj.layout164:setName("layout164");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout164);
    obj.imageCheckBox131:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox131:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox131:setWidth(20);
    obj.imageCheckBox131:setHeight(20);
    obj.imageCheckBox131:setField("bola3intimQ");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle1);
    obj.layout165:setLeft(263);
    obj.layout165:setTop(481);
    obj.layout165:setWidth(20);
    obj.layout165:setHeight(20);
    obj.layout165:setName("layout165");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout165);
    obj.imageCheckBox132:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox132:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox132:setWidth(20);
    obj.imageCheckBox132:setHeight(20);
    obj.imageCheckBox132:setField("bola3tinoQ");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle1);
    obj.layout166:setLeft(263);
    obj.layout166:setTop(502);
    obj.layout166:setWidth(20);
    obj.layout166:setHeight(20);
    obj.layout166:setName("layout166");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout166);
    obj.imageCheckBox133:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox133:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox133:setWidth(20);
    obj.imageCheckBox133:setHeight(20);
    obj.imageCheckBox133:setField("bola3liderQ");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle1);
    obj.layout167:setLeft(263);
    obj.layout167:setTop(523);
    obj.layout167:setWidth(20);
    obj.layout167:setHeight(20);
    obj.layout167:setName("layout167");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout167);
    obj.imageCheckBox134:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox134:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox134:setWidth(20);
    obj.imageCheckBox134:setHeight(20);
    obj.imageCheckBox134:setField("bola3manhaQ");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle1);
    obj.layout168:setLeft(263);
    obj.layout168:setTop(544);
    obj.layout168:setWidth(20);
    obj.layout168:setHeight(20);
    obj.layout168:setName("layout168");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout168);
    obj.imageCheckBox135:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox135:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox135:setWidth(20);
    obj.imageCheckBox135:setHeight(20);
    obj.imageCheckBox135:setField("bola3labiaQ");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle1);
    obj.layout169:setLeft(263);
    obj.layout169:setTop(564);
    obj.layout169:setWidth(20);
    obj.layout169:setHeight(20);
    obj.layout169:setName("layout169");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout169);
    obj.imageCheckBox136:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox136:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox136:setWidth(20);
    obj.imageCheckBox136:setHeight(20);
    obj.imageCheckBox136:setField("bola3esquiQ");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle1);
    obj.layout170:setLeft(524);
    obj.layout170:setTop(353);
    obj.layout170:setWidth(20);
    obj.layout170:setHeight(20);
    obj.layout170:setName("layout170");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout170);
    obj.imageCheckBox137:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox137:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox137:setWidth(20);
    obj.imageCheckBox137:setHeight(20);
    obj.imageCheckBox137:setField("bola3empcaQ");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle1);
    obj.layout171:setLeft(524);
    obj.layout171:setTop(375);
    obj.layout171:setWidth(20);
    obj.layout171:setHeight(20);
    obj.layout171:setName("layout171");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout171);
    obj.imageCheckBox138:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox138:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox138:setWidth(20);
    obj.imageCheckBox138:setHeight(20);
    obj.imageCheckBox138:setField("bola3ofiQ");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle1);
    obj.layout172:setLeft(524);
    obj.layout172:setTop(397);
    obj.layout172:setWidth(20);
    obj.layout172:setHeight(20);
    obj.layout172:setName("layout172");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout172);
    obj.imageCheckBox139:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox139:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox139:setWidth(20);
    obj.imageCheckBox139:setHeight(20);
    obj.imageCheckBox139:setField("bola3conduQ");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle1);
    obj.layout173:setLeft(524);
    obj.layout173:setTop(418);
    obj.layout173:setWidth(20);
    obj.layout173:setHeight(20);
    obj.layout173:setName("layout173");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout173);
    obj.imageCheckBox140:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox140:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox140:setWidth(20);
    obj.imageCheckBox140:setHeight(20);
    obj.imageCheckBox140:setField("bola3etiqueQ");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle1);
    obj.layout174:setLeft(524);
    obj.layout174:setTop(440);
    obj.layout174:setWidth(20);
    obj.layout174:setHeight(20);
    obj.layout174:setName("layout174");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout174);
    obj.imageCheckBox141:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox141:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox141:setWidth(20);
    obj.imageCheckBox141:setHeight(20);
    obj.imageCheckBox141:setField("bola3armprQ");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle1);
    obj.layout175:setLeft(524);
    obj.layout175:setTop(461);
    obj.layout175:setWidth(20);
    obj.layout175:setHeight(20);
    obj.layout175:setName("layout175");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout175);
    obj.imageCheckBox142:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox142:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox142:setWidth(20);
    obj.imageCheckBox142:setHeight(20);
    obj.imageCheckBox142:setField("bola3segurQ");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle1);
    obj.layout176:setLeft(524);
    obj.layout176:setTop(481);
    obj.layout176:setWidth(20);
    obj.layout176:setHeight(20);
    obj.layout176:setName("layout176");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout176);
    obj.imageCheckBox143:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox143:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox143:setWidth(20);
    obj.imageCheckBox143:setHeight(20);
    obj.imageCheckBox143:setField("bola3armbrQ");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle1);
    obj.layout177:setLeft(524);
    obj.layout177:setTop(502);
    obj.layout177:setWidth(20);
    obj.layout177:setHeight(20);
    obj.layout177:setName("layout177");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout177);
    obj.imageCheckBox144:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox144:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox144:setWidth(20);
    obj.imageCheckBox144:setHeight(20);
    obj.imageCheckBox144:setField("bola3perfoQ");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle1);
    obj.layout178:setLeft(524);
    obj.layout178:setTop(523);
    obj.layout178:setWidth(20);
    obj.layout178:setHeight(20);
    obj.layout178:setName("layout178");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout178);
    obj.imageCheckBox145:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox145:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox145:setWidth(20);
    obj.imageCheckBox145:setHeight(20);
    obj.imageCheckBox145:setField("bola3furtiQ");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle1);
    obj.layout179:setLeft(524);
    obj.layout179:setTop(544);
    obj.layout179:setWidth(20);
    obj.layout179:setHeight(20);
    obj.layout179:setName("layout179");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout179);
    obj.imageCheckBox146:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox146:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox146:setWidth(20);
    obj.imageCheckBox146:setHeight(20);
    obj.imageCheckBox146:setField("bola3sobreQ");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle1);
    obj.layout180:setLeft(524);
    obj.layout180:setTop(564);
    obj.layout180:setWidth(20);
    obj.layout180:setHeight(20);
    obj.layout180:setName("layout180");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout180);
    obj.imageCheckBox147:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox147:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox147:setWidth(20);
    obj.imageCheckBox147:setHeight(20);
    obj.imageCheckBox147:setField("bola3montaQ");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle1);
    obj.layout181:setLeft(780);
    obj.layout181:setTop(353);
    obj.layout181:setWidth(20);
    obj.layout181:setHeight(20);
    obj.layout181:setName("layout181");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout181);
    obj.imageCheckBox148:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox148:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox148:setWidth(20);
    obj.imageCheckBox148:setHeight(20);
    obj.imageCheckBox148:setField("bola3instruQ");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle1);
    obj.layout182:setLeft(780);
    obj.layout182:setTop(375);
    obj.layout182:setWidth(20);
    obj.layout182:setHeight(20);
    obj.layout182:setName("layout182");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout182);
    obj.imageCheckBox149:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox149:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox149:setWidth(20);
    obj.imageCheckBox149:setHeight(20);
    obj.imageCheckBox149:setField("bola3compuQ");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle1);
    obj.layout183:setLeft(780);
    obj.layout183:setTop(397);
    obj.layout183:setWidth(20);
    obj.layout183:setHeight(20);
    obj.layout183:setName("layout183");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout183);
    obj.imageCheckBox150:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox150:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox150:setWidth(20);
    obj.imageCheckBox150:setHeight(20);
    obj.imageCheckBox150:setField("bola3enigQ");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle1);
    obj.layout184:setLeft(780);
    obj.layout184:setTop(418);
    obj.layout184:setWidth(20);
    obj.layout184:setHeight(20);
    obj.layout184:setName("layout184");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout184);
    obj.imageCheckBox151:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox151:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox151:setWidth(20);
    obj.imageCheckBox151:setHeight(20);
    obj.imageCheckBox151:setField("bola3gramaQ");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle1);
    obj.layout185:setLeft(780);
    obj.layout185:setTop(440);
    obj.layout185:setWidth(20);
    obj.layout185:setHeight(20);
    obj.layout185:setName("layout185");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout185);
    obj.imageCheckBox152:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox152:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox152:setWidth(20);
    obj.imageCheckBox152:setHeight(20);
    obj.imageCheckBox152:setField("bola3invesQ");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle1);
    obj.layout186:setLeft(780);
    obj.layout186:setTop(461);
    obj.layout186:setWidth(20);
    obj.layout186:setHeight(20);
    obj.layout186:setName("layout186");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout186);
    obj.imageCheckBox153:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox153:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox153:setWidth(20);
    obj.imageCheckBox153:setHeight(20);
    obj.imageCheckBox153:setField("bola3direiQ");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle1);
    obj.layout187:setLeft(780);
    obj.layout187:setTop(481);
    obj.layout187:setWidth(20);
    obj.layout187:setHeight(20);
    obj.layout187:setName("layout187");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout187);
    obj.imageCheckBox154:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox154:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox154:setWidth(20);
    obj.imageCheckBox154:setHeight(20);
    obj.imageCheckBox154:setField("bola3medicQ");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle1);
    obj.layout188:setLeft(780);
    obj.layout188:setTop(502);
    obj.layout188:setWidth(20);
    obj.layout188:setHeight(20);
    obj.layout188:setName("layout188");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout188);
    obj.imageCheckBox155:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox155:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox155:setWidth(20);
    obj.imageCheckBox155:setHeight(20);
    obj.imageCheckBox155:setField("bola3politQ");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle1);
    obj.layout189:setLeft(780);
    obj.layout189:setTop(523);
    obj.layout189:setWidth(20);
    obj.layout189:setHeight(20);
    obj.layout189:setName("layout189");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout189);
    obj.imageCheckBox156:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox156:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox156:setWidth(20);
    obj.imageCheckBox156:setHeight(20);
    obj.imageCheckBox156:setField("bola3cienciaQ");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.layout190 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout190:setParent(obj.rectangle1);
    obj.layout190:setLeft(780);
    obj.layout190:setTop(544);
    obj.layout190:setWidth(20);
    obj.layout190:setHeight(20);
    obj.layout190:setName("layout190");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout190);
    obj.imageCheckBox157:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox157:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox157:setWidth(20);
    obj.imageCheckBox157:setHeight(20);
    obj.imageCheckBox157:setField("bola3tecnoQ");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.layout191 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout191:setParent(obj.rectangle1);
    obj.layout191:setLeft(780);
    obj.layout191:setTop(564);
    obj.layout191:setWidth(20);
    obj.layout191:setHeight(20);
    obj.layout191:setName("layout191");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout191);
    obj.imageCheckBox158:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox158:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox158:setWidth(20);
    obj.imageCheckBox158:setHeight(20);
    obj.imageCheckBox158:setField("bola3linguiQ");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.layout192 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout192:setParent(obj.rectangle1);
    obj.layout192:setLeft(125);
    obj.layout192:setTop(998);
    obj.layout192:setWidth(20);
    obj.layout192:setHeight(20);
    obj.layout192:setName("layout192");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout192);
    obj.imageCheckBox159:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox159:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox159:setWidth(20);
    obj.imageCheckBox159:setHeight(20);
    obj.imageCheckBox159:setField("bola3GlQ");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.layout193 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout193:setParent(obj.rectangle1);
    obj.layout193:setLeft(249);
    obj.layout193:setTop(998);
    obj.layout193:setWidth(20);
    obj.layout193:setHeight(20);
    obj.layout193:setName("layout193");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout193);
    obj.imageCheckBox160:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox160:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox160:setWidth(20);
    obj.imageCheckBox160:setHeight(20);
    obj.imageCheckBox160:setField("bola8GlQ");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.layout194 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout194:setParent(obj.rectangle1);
    obj.layout194:setLeft(126);
    obj.layout194:setTop(1023);
    obj.layout194:setWidth(18);
    obj.layout194:setHeight(18);
    obj.layout194:setName("layout194");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout194);
    obj.imageCheckBox161:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox161:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox161:setWidth(18);
    obj.imageCheckBox161:setHeight(18);
    obj.imageCheckBox161:setField("square3GlQ");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.layout195 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout195:setParent(obj.rectangle1);
    obj.layout195:setLeft(251);
    obj.layout195:setTop(1023);
    obj.layout195:setWidth(18);
    obj.layout195:setHeight(18);
    obj.layout195:setName("layout195");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout195);
    obj.imageCheckBox162:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox162:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox162:setWidth(18);
    obj.imageCheckBox162:setHeight(18);
    obj.imageCheckBox162:setField("square8GlQ");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.layout196 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout196:setParent(obj.rectangle1);
    obj.layout196:setLeft(125);
    obj.layout196:setTop(1079);
    obj.layout196:setWidth(20);
    obj.layout196:setHeight(20);
    obj.layout196:setName("layout196");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout196);
    obj.imageCheckBox163:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox163:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox163:setWidth(20);
    obj.imageCheckBox163:setHeight(20);
    obj.imageCheckBox163:setField("mirror3BanQ");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.layout197 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout197:setParent(obj.rectangle1);
    obj.layout197:setLeft(249);
    obj.layout197:setTop(1079);
    obj.layout197:setWidth(20);
    obj.layout197:setHeight(20);
    obj.layout197:setName("layout197");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout197);
    obj.imageCheckBox164:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox164:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox164:setWidth(20);
    obj.imageCheckBox164:setHeight(20);
    obj.imageCheckBox164:setField("mirror8BanQ");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.layout198 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout198:setParent(obj.rectangle1);
    obj.layout198:setLeft(126);
    obj.layout198:setTop(1101);
    obj.layout198:setWidth(18);
    obj.layout198:setHeight(18);
    obj.layout198:setName("layout198");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout198);
    obj.imageCheckBox165:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox165:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox165:setWidth(18);
    obj.imageCheckBox165:setHeight(18);
    obj.imageCheckBox165:setField("square3BanQ");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.layout199 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout199:setParent(obj.rectangle1);
    obj.layout199:setLeft(249);
    obj.layout199:setTop(1101);
    obj.layout199:setWidth(18);
    obj.layout199:setHeight(18);
    obj.layout199:setName("layout199");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout199);
    obj.imageCheckBox166:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox166:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox166:setWidth(18);
    obj.imageCheckBox166:setHeight(18);
    obj.imageCheckBox166:setField("square8BanQ");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.layout200 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout200:setParent(obj.rectangle1);
    obj.layout200:setLeft(125);
    obj.layout200:setTop(1157);
    obj.layout200:setWidth(20);
    obj.layout200:setHeight(20);
    obj.layout200:setName("layout200");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout200);
    obj.imageCheckBox167:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox167:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox167:setWidth(20);
    obj.imageCheckBox167:setHeight(20);
    obj.imageCheckBox167:setField("bola3FDVQ");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.layout201 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout201:setParent(obj.rectangle1);
    obj.layout201:setLeft(249);
    obj.layout201:setTop(1157);
    obj.layout201:setWidth(20);
    obj.layout201:setHeight(20);
    obj.layout201:setName("layout201");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout201);
    obj.imageCheckBox168:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox168:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox168:setWidth(20);
    obj.imageCheckBox168:setHeight(20);
    obj.imageCheckBox168:setField("bola8FDVQ");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.layout202 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout202:setParent(obj.rectangle1);
    obj.layout202:setLeft(126);
    obj.layout202:setTop(1179);
    obj.layout202:setWidth(18);
    obj.layout202:setHeight(18);
    obj.layout202:setName("layout202");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout202);
    obj.imageCheckBox169:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox169:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox169:setWidth(18);
    obj.imageCheckBox169:setHeight(18);
    obj.imageCheckBox169:setField("square3FDVQ");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.layout203 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout203:setParent(obj.rectangle1);
    obj.layout203:setLeft(249);
    obj.layout203:setTop(1179);
    obj.layout203:setWidth(18);
    obj.layout203:setHeight(18);
    obj.layout203:setName("layout203");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout203);
    obj.imageCheckBox170:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox170:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox170:setWidth(18);
    obj.imageCheckBox170:setHeight(18);
    obj.imageCheckBox170:setField("square8FDVQ");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.layout204 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout204:setParent(obj.rectangle1);
    obj.layout204:setLeft(729);
    obj.layout204:setTop(1050);
    obj.layout204:setWidth(27);
    obj.layout204:setHeight(27);
    obj.layout204:setName("layout204");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout204);
    obj.imageCheckBox171:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox171:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox171:setWidth(27);
    obj.imageCheckBox171:setHeight(27);
    obj.imageCheckBox171:setField("bola3LetalQ");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.layout205 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout205:setParent(obj.rectangle1);
    obj.layout205:setLeft(775);
    obj.layout205:setTop(1050);
    obj.layout205:setWidth(27);
    obj.layout205:setHeight(27);
    obj.layout205:setName("layout205");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout205);
    obj.imageCheckBox172:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox172:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox172:setWidth(27);
    obj.imageCheckBox172:setHeight(27);
    obj.imageCheckBox172:setField("bola3AgravadoQ");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.layout206 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout206:setParent(obj.rectangle1);
    obj.layout206:setLeft(277);
    obj.layout206:setTop(221);
    obj.layout206:setWidth(20);
    obj.layout206:setHeight(20);
    obj.layout206:setName("layout206");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout206);
    obj.imageCheckBox173:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox173:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox173:setWidth(20);
    obj.imageCheckBox173:setHeight(20);
    obj.imageCheckBox173:setField("bola4forcaQ");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.layout207 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout207:setParent(obj.rectangle1);
    obj.layout207:setLeft(277);
    obj.layout207:setTop(244);
    obj.layout207:setWidth(20);
    obj.layout207:setHeight(20);
    obj.layout207:setName("layout207");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout207);
    obj.imageCheckBox174:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox174:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox174:setWidth(20);
    obj.imageCheckBox174:setHeight(20);
    obj.imageCheckBox174:setField("bola4destrezaQ");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.layout208 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout208:setParent(obj.rectangle1);
    obj.layout208:setLeft(277);
    obj.layout208:setTop(264);
    obj.layout208:setWidth(20);
    obj.layout208:setHeight(20);
    obj.layout208:setName("layout208");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout208);
    obj.imageCheckBox175:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox175:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox175:setWidth(20);
    obj.imageCheckBox175:setHeight(20);
    obj.imageCheckBox175:setField("bola4vigorQ");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.layout209 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout209:setParent(obj.rectangle1);
    obj.layout209:setLeft(538);
    obj.layout209:setTop(221);
    obj.layout209:setWidth(20);
    obj.layout209:setHeight(20);
    obj.layout209:setName("layout209");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout209);
    obj.imageCheckBox176:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox176:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox176:setWidth(20);
    obj.imageCheckBox176:setHeight(20);
    obj.imageCheckBox176:setField("bola4carismaQ");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.layout210 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout210:setParent(obj.rectangle1);
    obj.layout210:setLeft(538);
    obj.layout210:setTop(244);
    obj.layout210:setWidth(20);
    obj.layout210:setHeight(20);
    obj.layout210:setName("layout210");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout210);
    obj.imageCheckBox177:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox177:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox177:setWidth(20);
    obj.imageCheckBox177:setHeight(20);
    obj.imageCheckBox177:setField("bola4manipuQ");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.layout211 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout211:setParent(obj.rectangle1);
    obj.layout211:setLeft(538);
    obj.layout211:setTop(264);
    obj.layout211:setWidth(20);
    obj.layout211:setHeight(20);
    obj.layout211:setName("layout211");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout211);
    obj.imageCheckBox178:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox178:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox178:setWidth(20);
    obj.imageCheckBox178:setHeight(20);
    obj.imageCheckBox178:setField("bola4apareQ");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.layout212 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout212:setParent(obj.rectangle1);
    obj.layout212:setLeft(794);
    obj.layout212:setTop(221);
    obj.layout212:setWidth(20);
    obj.layout212:setHeight(20);
    obj.layout212:setName("layout212");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout212);
    obj.imageCheckBox179:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox179:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox179:setWidth(20);
    obj.imageCheckBox179:setHeight(20);
    obj.imageCheckBox179:setField("bola4percepQ");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.layout213 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout213:setParent(obj.rectangle1);
    obj.layout213:setLeft(795);
    obj.layout213:setTop(244);
    obj.layout213:setWidth(20);
    obj.layout213:setHeight(20);
    obj.layout213:setName("layout213");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout213);
    obj.imageCheckBox180:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox180:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox180:setWidth(20);
    obj.imageCheckBox180:setHeight(20);
    obj.imageCheckBox180:setField("bola4intelQ");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.layout214 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout214:setParent(obj.rectangle1);
    obj.layout214:setLeft(794);
    obj.layout214:setTop(264);
    obj.layout214:setWidth(20);
    obj.layout214:setHeight(20);
    obj.layout214:setName("layout214");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout214);
    obj.imageCheckBox181:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox181:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox181:setWidth(20);
    obj.imageCheckBox181:setHeight(20);
    obj.imageCheckBox181:setField("bola4racioQ");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.layout215 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout215:setParent(obj.rectangle1);
    obj.layout215:setLeft(277);
    obj.layout215:setTop(353);
    obj.layout215:setWidth(20);
    obj.layout215:setHeight(20);
    obj.layout215:setName("layout215");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout215);
    obj.imageCheckBox182:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox182:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox182:setWidth(20);
    obj.imageCheckBox182:setHeight(20);
    obj.imageCheckBox182:setField("bola4prontQ");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.layout216 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout216:setParent(obj.rectangle1);
    obj.layout216:setLeft(277);
    obj.layout216:setTop(375);
    obj.layout216:setWidth(20);
    obj.layout216:setHeight(20);
    obj.layout216:setName("layout216");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout216);
    obj.imageCheckBox183:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox183:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox183:setWidth(20);
    obj.imageCheckBox183:setHeight(20);
    obj.imageCheckBox183:setField("bola4esporQ");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.layout217 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout217:setParent(obj.rectangle1);
    obj.layout217:setLeft(277);
    obj.layout217:setTop(397);
    obj.layout217:setWidth(20);
    obj.layout217:setHeight(20);
    obj.layout217:setName("layout217");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout217);
    obj.imageCheckBox184:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox184:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox184:setWidth(20);
    obj.imageCheckBox184:setHeight(20);
    obj.imageCheckBox184:setField("bola4brigaQ");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.layout218 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout218:setParent(obj.rectangle1);
    obj.layout218:setLeft(277);
    obj.layout218:setTop(418);
    obj.layout218:setWidth(20);
    obj.layout218:setHeight(20);
    obj.layout218:setName("layout218");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout218);
    obj.imageCheckBox185:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox185:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox185:setWidth(20);
    obj.imageCheckBox185:setHeight(20);
    obj.imageCheckBox185:setField("bola4empatQ");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.layout219 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout219:setParent(obj.rectangle1);
    obj.layout219:setLeft(277);
    obj.layout219:setTop(440);
    obj.layout219:setWidth(20);
    obj.layout219:setHeight(20);
    obj.layout219:setName("layout219");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout219);
    obj.imageCheckBox186:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox186:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox186:setWidth(20);
    obj.imageCheckBox186:setHeight(20);
    obj.imageCheckBox186:setField("bola4expreQ");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.layout220 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout220:setParent(obj.rectangle1);
    obj.layout220:setLeft(277);
    obj.layout220:setTop(461);
    obj.layout220:setWidth(20);
    obj.layout220:setHeight(20);
    obj.layout220:setName("layout220");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout220);
    obj.imageCheckBox187:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox187:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox187:setWidth(20);
    obj.imageCheckBox187:setHeight(20);
    obj.imageCheckBox187:setField("bola4intimQ");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.layout221 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout221:setParent(obj.rectangle1);
    obj.layout221:setLeft(277);
    obj.layout221:setTop(481);
    obj.layout221:setWidth(20);
    obj.layout221:setHeight(20);
    obj.layout221:setName("layout221");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout221);
    obj.imageCheckBox188:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox188:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox188:setWidth(20);
    obj.imageCheckBox188:setHeight(20);
    obj.imageCheckBox188:setField("bola4tinoQ");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.layout222 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout222:setParent(obj.rectangle1);
    obj.layout222:setLeft(277);
    obj.layout222:setTop(502);
    obj.layout222:setWidth(20);
    obj.layout222:setHeight(20);
    obj.layout222:setName("layout222");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout222);
    obj.imageCheckBox189:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox189:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox189:setWidth(20);
    obj.imageCheckBox189:setHeight(20);
    obj.imageCheckBox189:setField("bola4liderQ");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.layout223 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout223:setParent(obj.rectangle1);
    obj.layout223:setLeft(277);
    obj.layout223:setTop(523);
    obj.layout223:setWidth(20);
    obj.layout223:setHeight(20);
    obj.layout223:setName("layout223");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout223);
    obj.imageCheckBox190:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox190:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox190:setWidth(20);
    obj.imageCheckBox190:setHeight(20);
    obj.imageCheckBox190:setField("bola4manhaQ");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.layout224 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout224:setParent(obj.rectangle1);
    obj.layout224:setLeft(277);
    obj.layout224:setTop(544);
    obj.layout224:setWidth(20);
    obj.layout224:setHeight(20);
    obj.layout224:setName("layout224");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout224);
    obj.imageCheckBox191:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox191:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox191:setWidth(20);
    obj.imageCheckBox191:setHeight(20);
    obj.imageCheckBox191:setField("bola4labiaQ");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.layout225 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout225:setParent(obj.rectangle1);
    obj.layout225:setLeft(277);
    obj.layout225:setTop(564);
    obj.layout225:setWidth(20);
    obj.layout225:setHeight(20);
    obj.layout225:setName("layout225");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout225);
    obj.imageCheckBox192:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox192:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox192:setWidth(20);
    obj.imageCheckBox192:setHeight(20);
    obj.imageCheckBox192:setField("bola4esquiQ");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.layout226 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout226:setParent(obj.rectangle1);
    obj.layout226:setLeft(538);
    obj.layout226:setTop(353);
    obj.layout226:setWidth(20);
    obj.layout226:setHeight(20);
    obj.layout226:setName("layout226");

    obj.imageCheckBox193 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox193:setParent(obj.layout226);
    obj.imageCheckBox193:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox193:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox193:setWidth(20);
    obj.imageCheckBox193:setHeight(20);
    obj.imageCheckBox193:setField("bola4empcaQ");
    obj.imageCheckBox193:setName("imageCheckBox193");

    obj.layout227 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout227:setParent(obj.rectangle1);
    obj.layout227:setLeft(538);
    obj.layout227:setTop(375);
    obj.layout227:setWidth(20);
    obj.layout227:setHeight(20);
    obj.layout227:setName("layout227");

    obj.imageCheckBox194 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox194:setParent(obj.layout227);
    obj.imageCheckBox194:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox194:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox194:setWidth(20);
    obj.imageCheckBox194:setHeight(20);
    obj.imageCheckBox194:setField("bola4ofiQ");
    obj.imageCheckBox194:setName("imageCheckBox194");

    obj.layout228 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout228:setParent(obj.rectangle1);
    obj.layout228:setLeft(538);
    obj.layout228:setTop(397);
    obj.layout228:setWidth(20);
    obj.layout228:setHeight(20);
    obj.layout228:setName("layout228");

    obj.imageCheckBox195 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox195:setParent(obj.layout228);
    obj.imageCheckBox195:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox195:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox195:setWidth(20);
    obj.imageCheckBox195:setHeight(20);
    obj.imageCheckBox195:setField("bola4conduQ");
    obj.imageCheckBox195:setName("imageCheckBox195");

    obj.layout229 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout229:setParent(obj.rectangle1);
    obj.layout229:setLeft(538);
    obj.layout229:setTop(418);
    obj.layout229:setWidth(20);
    obj.layout229:setHeight(20);
    obj.layout229:setName("layout229");

    obj.imageCheckBox196 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox196:setParent(obj.layout229);
    obj.imageCheckBox196:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox196:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox196:setWidth(20);
    obj.imageCheckBox196:setHeight(20);
    obj.imageCheckBox196:setField("bola4etiqueQ");
    obj.imageCheckBox196:setName("imageCheckBox196");

    obj.layout230 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout230:setParent(obj.rectangle1);
    obj.layout230:setLeft(538);
    obj.layout230:setTop(440);
    obj.layout230:setWidth(20);
    obj.layout230:setHeight(20);
    obj.layout230:setName("layout230");

    obj.imageCheckBox197 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox197:setParent(obj.layout230);
    obj.imageCheckBox197:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox197:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox197:setWidth(20);
    obj.imageCheckBox197:setHeight(20);
    obj.imageCheckBox197:setField("bola4armprQ");
    obj.imageCheckBox197:setName("imageCheckBox197");

    obj.layout231 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout231:setParent(obj.rectangle1);
    obj.layout231:setLeft(538);
    obj.layout231:setTop(461);
    obj.layout231:setWidth(20);
    obj.layout231:setHeight(20);
    obj.layout231:setName("layout231");

    obj.imageCheckBox198 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox198:setParent(obj.layout231);
    obj.imageCheckBox198:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox198:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox198:setWidth(20);
    obj.imageCheckBox198:setHeight(20);
    obj.imageCheckBox198:setField("bola4segurQ");
    obj.imageCheckBox198:setName("imageCheckBox198");

    obj.layout232 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout232:setParent(obj.rectangle1);
    obj.layout232:setLeft(538);
    obj.layout232:setTop(481);
    obj.layout232:setWidth(20);
    obj.layout232:setHeight(20);
    obj.layout232:setName("layout232");

    obj.imageCheckBox199 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox199:setParent(obj.layout232);
    obj.imageCheckBox199:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox199:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox199:setWidth(20);
    obj.imageCheckBox199:setHeight(20);
    obj.imageCheckBox199:setField("bola4armbrQ");
    obj.imageCheckBox199:setName("imageCheckBox199");

    obj.layout233 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout233:setParent(obj.rectangle1);
    obj.layout233:setLeft(538);
    obj.layout233:setTop(502);
    obj.layout233:setWidth(20);
    obj.layout233:setHeight(20);
    obj.layout233:setName("layout233");

    obj.imageCheckBox200 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox200:setParent(obj.layout233);
    obj.imageCheckBox200:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox200:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox200:setWidth(20);
    obj.imageCheckBox200:setHeight(20);
    obj.imageCheckBox200:setField("bola4perfoQ");
    obj.imageCheckBox200:setName("imageCheckBox200");

    obj.layout234 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout234:setParent(obj.rectangle1);
    obj.layout234:setLeft(538);
    obj.layout234:setTop(523);
    obj.layout234:setWidth(20);
    obj.layout234:setHeight(20);
    obj.layout234:setName("layout234");

    obj.imageCheckBox201 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox201:setParent(obj.layout234);
    obj.imageCheckBox201:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox201:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox201:setWidth(20);
    obj.imageCheckBox201:setHeight(20);
    obj.imageCheckBox201:setField("bola4furtiQ");
    obj.imageCheckBox201:setName("imageCheckBox201");

    obj.layout235 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout235:setParent(obj.rectangle1);
    obj.layout235:setLeft(538);
    obj.layout235:setTop(544);
    obj.layout235:setWidth(20);
    obj.layout235:setHeight(20);
    obj.layout235:setName("layout235");

    obj.imageCheckBox202 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox202:setParent(obj.layout235);
    obj.imageCheckBox202:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox202:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox202:setWidth(20);
    obj.imageCheckBox202:setHeight(20);
    obj.imageCheckBox202:setField("bola4sobreQ");
    obj.imageCheckBox202:setName("imageCheckBox202");

    obj.layout236 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout236:setParent(obj.rectangle1);
    obj.layout236:setLeft(538);
    obj.layout236:setTop(564);
    obj.layout236:setWidth(20);
    obj.layout236:setHeight(20);
    obj.layout236:setName("layout236");

    obj.imageCheckBox203 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox203:setParent(obj.layout236);
    obj.imageCheckBox203:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox203:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox203:setWidth(20);
    obj.imageCheckBox203:setHeight(20);
    obj.imageCheckBox203:setField("bola4montaQ");
    obj.imageCheckBox203:setName("imageCheckBox203");

    obj.layout237 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout237:setParent(obj.rectangle1);
    obj.layout237:setLeft(794);
    obj.layout237:setTop(353);
    obj.layout237:setWidth(20);
    obj.layout237:setHeight(20);
    obj.layout237:setName("layout237");

    obj.imageCheckBox204 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox204:setParent(obj.layout237);
    obj.imageCheckBox204:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox204:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox204:setWidth(20);
    obj.imageCheckBox204:setHeight(20);
    obj.imageCheckBox204:setField("bola4instruQ");
    obj.imageCheckBox204:setName("imageCheckBox204");

    obj.layout238 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout238:setParent(obj.rectangle1);
    obj.layout238:setLeft(794);
    obj.layout238:setTop(375);
    obj.layout238:setWidth(20);
    obj.layout238:setHeight(20);
    obj.layout238:setName("layout238");

    obj.imageCheckBox205 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox205:setParent(obj.layout238);
    obj.imageCheckBox205:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox205:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox205:setWidth(20);
    obj.imageCheckBox205:setHeight(20);
    obj.imageCheckBox205:setField("bola4compuQ");
    obj.imageCheckBox205:setName("imageCheckBox205");

    obj.layout239 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout239:setParent(obj.rectangle1);
    obj.layout239:setLeft(794);
    obj.layout239:setTop(397);
    obj.layout239:setWidth(20);
    obj.layout239:setHeight(20);
    obj.layout239:setName("layout239");

    obj.imageCheckBox206 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox206:setParent(obj.layout239);
    obj.imageCheckBox206:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox206:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox206:setWidth(20);
    obj.imageCheckBox206:setHeight(20);
    obj.imageCheckBox206:setField("bola4enigQ");
    obj.imageCheckBox206:setName("imageCheckBox206");

    obj.layout240 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout240:setParent(obj.rectangle1);
    obj.layout240:setLeft(794);
    obj.layout240:setTop(418);
    obj.layout240:setWidth(20);
    obj.layout240:setHeight(20);
    obj.layout240:setName("layout240");

    obj.imageCheckBox207 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox207:setParent(obj.layout240);
    obj.imageCheckBox207:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox207:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox207:setWidth(20);
    obj.imageCheckBox207:setHeight(20);
    obj.imageCheckBox207:setField("bola4gramaQ");
    obj.imageCheckBox207:setName("imageCheckBox207");

    obj.layout241 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout241:setParent(obj.rectangle1);
    obj.layout241:setLeft(794);
    obj.layout241:setTop(440);
    obj.layout241:setWidth(20);
    obj.layout241:setHeight(20);
    obj.layout241:setName("layout241");

    obj.imageCheckBox208 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox208:setParent(obj.layout241);
    obj.imageCheckBox208:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox208:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox208:setWidth(20);
    obj.imageCheckBox208:setHeight(20);
    obj.imageCheckBox208:setField("bola4invesQ");
    obj.imageCheckBox208:setName("imageCheckBox208");

    obj.layout242 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout242:setParent(obj.rectangle1);
    obj.layout242:setLeft(794);
    obj.layout242:setTop(461);
    obj.layout242:setWidth(20);
    obj.layout242:setHeight(20);
    obj.layout242:setName("layout242");

    obj.imageCheckBox209 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox209:setParent(obj.layout242);
    obj.imageCheckBox209:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox209:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox209:setWidth(20);
    obj.imageCheckBox209:setHeight(20);
    obj.imageCheckBox209:setField("bola4direiQ");
    obj.imageCheckBox209:setName("imageCheckBox209");

    obj.layout243 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout243:setParent(obj.rectangle1);
    obj.layout243:setLeft(794);
    obj.layout243:setTop(481);
    obj.layout243:setWidth(20);
    obj.layout243:setHeight(20);
    obj.layout243:setName("layout243");

    obj.imageCheckBox210 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox210:setParent(obj.layout243);
    obj.imageCheckBox210:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox210:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox210:setWidth(20);
    obj.imageCheckBox210:setHeight(20);
    obj.imageCheckBox210:setField("bola4medicQ");
    obj.imageCheckBox210:setName("imageCheckBox210");

    obj.layout244 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout244:setParent(obj.rectangle1);
    obj.layout244:setLeft(794);
    obj.layout244:setTop(502);
    obj.layout244:setWidth(20);
    obj.layout244:setHeight(20);
    obj.layout244:setName("layout244");

    obj.imageCheckBox211 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox211:setParent(obj.layout244);
    obj.imageCheckBox211:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox211:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox211:setWidth(20);
    obj.imageCheckBox211:setHeight(20);
    obj.imageCheckBox211:setField("bola4politQ");
    obj.imageCheckBox211:setName("imageCheckBox211");

    obj.layout245 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout245:setParent(obj.rectangle1);
    obj.layout245:setLeft(794);
    obj.layout245:setTop(523);
    obj.layout245:setWidth(20);
    obj.layout245:setHeight(20);
    obj.layout245:setName("layout245");

    obj.imageCheckBox212 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox212:setParent(obj.layout245);
    obj.imageCheckBox212:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox212:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox212:setWidth(20);
    obj.imageCheckBox212:setHeight(20);
    obj.imageCheckBox212:setField("bola4cienciaQ");
    obj.imageCheckBox212:setName("imageCheckBox212");

    obj.layout246 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout246:setParent(obj.rectangle1);
    obj.layout246:setLeft(794);
    obj.layout246:setTop(544);
    obj.layout246:setWidth(20);
    obj.layout246:setHeight(20);
    obj.layout246:setName("layout246");

    obj.imageCheckBox213 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox213:setParent(obj.layout246);
    obj.imageCheckBox213:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox213:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox213:setWidth(20);
    obj.imageCheckBox213:setHeight(20);
    obj.imageCheckBox213:setField("bola4tecnoQ");
    obj.imageCheckBox213:setName("imageCheckBox213");

    obj.layout247 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout247:setParent(obj.rectangle1);
    obj.layout247:setLeft(794);
    obj.layout247:setTop(564);
    obj.layout247:setWidth(20);
    obj.layout247:setHeight(20);
    obj.layout247:setName("layout247");

    obj.imageCheckBox214 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox214:setParent(obj.layout247);
    obj.imageCheckBox214:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox214:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox214:setWidth(20);
    obj.imageCheckBox214:setHeight(20);
    obj.imageCheckBox214:setField("bola4linguiQ");
    obj.imageCheckBox214:setName("imageCheckBox214");

    obj.layout248 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout248:setParent(obj.rectangle1);
    obj.layout248:setLeft(150);
    obj.layout248:setTop(998);
    obj.layout248:setWidth(20);
    obj.layout248:setHeight(20);
    obj.layout248:setName("layout248");

    obj.imageCheckBox215 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox215:setParent(obj.layout248);
    obj.imageCheckBox215:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox215:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox215:setWidth(20);
    obj.imageCheckBox215:setHeight(20);
    obj.imageCheckBox215:setField("bola4GlQ");
    obj.imageCheckBox215:setName("imageCheckBox215");

    obj.layout249 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout249:setParent(obj.rectangle1);
    obj.layout249:setLeft(272);
    obj.layout249:setTop(998);
    obj.layout249:setWidth(20);
    obj.layout249:setHeight(20);
    obj.layout249:setName("layout249");

    obj.imageCheckBox216 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox216:setParent(obj.layout249);
    obj.imageCheckBox216:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox216:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox216:setWidth(20);
    obj.imageCheckBox216:setHeight(20);
    obj.imageCheckBox216:setField("bola9GlQ");
    obj.imageCheckBox216:setName("imageCheckBox216");

    obj.layout250 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout250:setParent(obj.rectangle1);
    obj.layout250:setLeft(151);
    obj.layout250:setTop(1023);
    obj.layout250:setWidth(18);
    obj.layout250:setHeight(18);
    obj.layout250:setName("layout250");

    obj.imageCheckBox217 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox217:setParent(obj.layout250);
    obj.imageCheckBox217:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox217:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox217:setWidth(18);
    obj.imageCheckBox217:setHeight(18);
    obj.imageCheckBox217:setField("square4GlQ");
    obj.imageCheckBox217:setName("imageCheckBox217");

    obj.layout251 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout251:setParent(obj.rectangle1);
    obj.layout251:setLeft(273);
    obj.layout251:setTop(1023);
    obj.layout251:setWidth(18);
    obj.layout251:setHeight(18);
    obj.layout251:setName("layout251");

    obj.imageCheckBox218 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox218:setParent(obj.layout251);
    obj.imageCheckBox218:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox218:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox218:setWidth(18);
    obj.imageCheckBox218:setHeight(18);
    obj.imageCheckBox218:setField("square9GlQ");
    obj.imageCheckBox218:setName("imageCheckBox218");

    obj.layout252 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout252:setParent(obj.rectangle1);
    obj.layout252:setLeft(150);
    obj.layout252:setTop(1079);
    obj.layout252:setWidth(20);
    obj.layout252:setHeight(20);
    obj.layout252:setName("layout252");

    obj.imageCheckBox219 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox219:setParent(obj.layout252);
    obj.imageCheckBox219:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox219:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox219:setWidth(20);
    obj.imageCheckBox219:setHeight(20);
    obj.imageCheckBox219:setField("mirror4BanQ");
    obj.imageCheckBox219:setName("imageCheckBox219");

    obj.layout253 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout253:setParent(obj.rectangle1);
    obj.layout253:setLeft(272);
    obj.layout253:setTop(1079);
    obj.layout253:setWidth(20);
    obj.layout253:setHeight(20);
    obj.layout253:setName("layout253");

    obj.imageCheckBox220 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox220:setParent(obj.layout253);
    obj.imageCheckBox220:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox220:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox220:setWidth(20);
    obj.imageCheckBox220:setHeight(20);
    obj.imageCheckBox220:setField("mirror9BanQ");
    obj.imageCheckBox220:setName("imageCheckBox220");

    obj.layout254 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout254:setParent(obj.rectangle1);
    obj.layout254:setLeft(151);
    obj.layout254:setTop(1101);
    obj.layout254:setWidth(18);
    obj.layout254:setHeight(18);
    obj.layout254:setName("layout254");

    obj.imageCheckBox221 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox221:setParent(obj.layout254);
    obj.imageCheckBox221:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox221:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox221:setWidth(18);
    obj.imageCheckBox221:setHeight(18);
    obj.imageCheckBox221:setField("square4BanQ");
    obj.imageCheckBox221:setName("imageCheckBox221");

    obj.layout255 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout255:setParent(obj.rectangle1);
    obj.layout255:setLeft(273);
    obj.layout255:setTop(1101);
    obj.layout255:setWidth(18);
    obj.layout255:setHeight(18);
    obj.layout255:setName("layout255");

    obj.imageCheckBox222 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox222:setParent(obj.layout255);
    obj.imageCheckBox222:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox222:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox222:setWidth(18);
    obj.imageCheckBox222:setHeight(18);
    obj.imageCheckBox222:setField("square9BanQ");
    obj.imageCheckBox222:setName("imageCheckBox222");

    obj.layout256 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout256:setParent(obj.rectangle1);
    obj.layout256:setLeft(150);
    obj.layout256:setTop(1157);
    obj.layout256:setWidth(20);
    obj.layout256:setHeight(20);
    obj.layout256:setName("layout256");

    obj.imageCheckBox223 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox223:setParent(obj.layout256);
    obj.imageCheckBox223:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox223:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox223:setWidth(20);
    obj.imageCheckBox223:setHeight(20);
    obj.imageCheckBox223:setField("bola4FDVQ");
    obj.imageCheckBox223:setName("imageCheckBox223");

    obj.layout257 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout257:setParent(obj.rectangle1);
    obj.layout257:setLeft(272);
    obj.layout257:setTop(1157);
    obj.layout257:setWidth(20);
    obj.layout257:setHeight(20);
    obj.layout257:setName("layout257");

    obj.imageCheckBox224 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox224:setParent(obj.layout257);
    obj.imageCheckBox224:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox224:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox224:setWidth(20);
    obj.imageCheckBox224:setHeight(20);
    obj.imageCheckBox224:setField("bola9FDVQ");
    obj.imageCheckBox224:setName("imageCheckBox224");

    obj.layout258 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout258:setParent(obj.rectangle1);
    obj.layout258:setLeft(151);
    obj.layout258:setTop(1179);
    obj.layout258:setWidth(18);
    obj.layout258:setHeight(18);
    obj.layout258:setName("layout258");

    obj.imageCheckBox225 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox225:setParent(obj.layout258);
    obj.imageCheckBox225:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox225:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox225:setWidth(18);
    obj.imageCheckBox225:setHeight(18);
    obj.imageCheckBox225:setField("square4FDVQ");
    obj.imageCheckBox225:setName("imageCheckBox225");

    obj.layout259 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout259:setParent(obj.rectangle1);
    obj.layout259:setLeft(273);
    obj.layout259:setTop(1179);
    obj.layout259:setWidth(18);
    obj.layout259:setHeight(18);
    obj.layout259:setName("layout259");

    obj.imageCheckBox226 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox226:setParent(obj.layout259);
    obj.imageCheckBox226:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox226:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox226:setWidth(18);
    obj.imageCheckBox226:setHeight(18);
    obj.imageCheckBox226:setField("square9FDVQ");
    obj.imageCheckBox226:setName("imageCheckBox226");

    obj.layout260 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout260:setParent(obj.rectangle1);
    obj.layout260:setLeft(729);
    obj.layout260:setTop(1080);
    obj.layout260:setWidth(27);
    obj.layout260:setHeight(27);
    obj.layout260:setName("layout260");

    obj.imageCheckBox227 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox227:setParent(obj.layout260);
    obj.imageCheckBox227:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox227:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox227:setWidth(27);
    obj.imageCheckBox227:setHeight(27);
    obj.imageCheckBox227:setField("bola4LetalQ");
    obj.imageCheckBox227:setName("imageCheckBox227");

    obj.layout261 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout261:setParent(obj.rectangle1);
    obj.layout261:setLeft(775);
    obj.layout261:setTop(1080);
    obj.layout261:setWidth(27);
    obj.layout261:setHeight(27);
    obj.layout261:setName("layout261");

    obj.imageCheckBox228 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox228:setParent(obj.layout261);
    obj.imageCheckBox228:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox228:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox228:setWidth(27);
    obj.imageCheckBox228:setHeight(27);
    obj.imageCheckBox228:setField("bola4AgravadoQ");
    obj.imageCheckBox228:setName("imageCheckBox228");

    obj.layout262 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout262:setParent(obj.rectangle1);
    obj.layout262:setLeft(291);
    obj.layout262:setTop(221);
    obj.layout262:setWidth(20);
    obj.layout262:setHeight(20);
    obj.layout262:setName("layout262");

    obj.imageCheckBox229 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox229:setParent(obj.layout262);
    obj.imageCheckBox229:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox229:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox229:setWidth(20);
    obj.imageCheckBox229:setHeight(20);
    obj.imageCheckBox229:setField("bola5forcaQ");
    obj.imageCheckBox229:setName("imageCheckBox229");

    obj.layout263 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout263:setParent(obj.rectangle1);
    obj.layout263:setLeft(291);
    obj.layout263:setTop(244);
    obj.layout263:setWidth(20);
    obj.layout263:setHeight(20);
    obj.layout263:setName("layout263");

    obj.imageCheckBox230 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox230:setParent(obj.layout263);
    obj.imageCheckBox230:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox230:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox230:setWidth(20);
    obj.imageCheckBox230:setHeight(20);
    obj.imageCheckBox230:setField("bola5destrezaQ");
    obj.imageCheckBox230:setName("imageCheckBox230");

    obj.layout264 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout264:setParent(obj.rectangle1);
    obj.layout264:setLeft(291);
    obj.layout264:setTop(264);
    obj.layout264:setWidth(20);
    obj.layout264:setHeight(20);
    obj.layout264:setName("layout264");

    obj.imageCheckBox231 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox231:setParent(obj.layout264);
    obj.imageCheckBox231:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox231:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox231:setWidth(20);
    obj.imageCheckBox231:setHeight(20);
    obj.imageCheckBox231:setField("bola5vigorQ");
    obj.imageCheckBox231:setName("imageCheckBox231");

    obj.layout265 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout265:setParent(obj.rectangle1);
    obj.layout265:setLeft(552);
    obj.layout265:setTop(221);
    obj.layout265:setWidth(20);
    obj.layout265:setHeight(20);
    obj.layout265:setName("layout265");

    obj.imageCheckBox232 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox232:setParent(obj.layout265);
    obj.imageCheckBox232:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox232:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox232:setWidth(20);
    obj.imageCheckBox232:setHeight(20);
    obj.imageCheckBox232:setField("bola5carismaQ");
    obj.imageCheckBox232:setName("imageCheckBox232");

    obj.layout266 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout266:setParent(obj.rectangle1);
    obj.layout266:setLeft(552);
    obj.layout266:setTop(244);
    obj.layout266:setWidth(20);
    obj.layout266:setHeight(20);
    obj.layout266:setName("layout266");

    obj.imageCheckBox233 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox233:setParent(obj.layout266);
    obj.imageCheckBox233:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox233:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox233:setWidth(20);
    obj.imageCheckBox233:setHeight(20);
    obj.imageCheckBox233:setField("bola5manipuQ");
    obj.imageCheckBox233:setName("imageCheckBox233");

    obj.layout267 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout267:setParent(obj.rectangle1);
    obj.layout267:setLeft(552);
    obj.layout267:setTop(264);
    obj.layout267:setWidth(20);
    obj.layout267:setHeight(20);
    obj.layout267:setName("layout267");

    obj.imageCheckBox234 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox234:setParent(obj.layout267);
    obj.imageCheckBox234:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox234:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox234:setWidth(20);
    obj.imageCheckBox234:setHeight(20);
    obj.imageCheckBox234:setField("bola5apareQ");
    obj.imageCheckBox234:setName("imageCheckBox234");

    obj.layout268 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout268:setParent(obj.rectangle1);
    obj.layout268:setLeft(808);
    obj.layout268:setTop(221);
    obj.layout268:setWidth(20);
    obj.layout268:setHeight(20);
    obj.layout268:setName("layout268");

    obj.imageCheckBox235 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox235:setParent(obj.layout268);
    obj.imageCheckBox235:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox235:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox235:setWidth(20);
    obj.imageCheckBox235:setHeight(20);
    obj.imageCheckBox235:setField("bola5percepQ");
    obj.imageCheckBox235:setName("imageCheckBox235");

    obj.layout269 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout269:setParent(obj.rectangle1);
    obj.layout269:setLeft(808);
    obj.layout269:setTop(244);
    obj.layout269:setWidth(20);
    obj.layout269:setHeight(20);
    obj.layout269:setName("layout269");

    obj.imageCheckBox236 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox236:setParent(obj.layout269);
    obj.imageCheckBox236:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox236:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox236:setWidth(20);
    obj.imageCheckBox236:setHeight(20);
    obj.imageCheckBox236:setField("bola5intelQ");
    obj.imageCheckBox236:setName("imageCheckBox236");

    obj.layout270 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout270:setParent(obj.rectangle1);
    obj.layout270:setLeft(808);
    obj.layout270:setTop(264);
    obj.layout270:setWidth(20);
    obj.layout270:setHeight(20);
    obj.layout270:setName("layout270");

    obj.imageCheckBox237 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox237:setParent(obj.layout270);
    obj.imageCheckBox237:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox237:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox237:setWidth(20);
    obj.imageCheckBox237:setHeight(20);
    obj.imageCheckBox237:setField("bola5racioQ");
    obj.imageCheckBox237:setName("imageCheckBox237");

    obj.layout271 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout271:setParent(obj.rectangle1);
    obj.layout271:setLeft(291);
    obj.layout271:setTop(353);
    obj.layout271:setWidth(20);
    obj.layout271:setHeight(20);
    obj.layout271:setName("layout271");

    obj.imageCheckBox238 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox238:setParent(obj.layout271);
    obj.imageCheckBox238:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox238:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox238:setWidth(20);
    obj.imageCheckBox238:setHeight(20);
    obj.imageCheckBox238:setField("bola5prontQ");
    obj.imageCheckBox238:setName("imageCheckBox238");

    obj.layout272 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout272:setParent(obj.rectangle1);
    obj.layout272:setLeft(291);
    obj.layout272:setTop(375);
    obj.layout272:setWidth(20);
    obj.layout272:setHeight(20);
    obj.layout272:setName("layout272");

    obj.imageCheckBox239 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox239:setParent(obj.layout272);
    obj.imageCheckBox239:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox239:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox239:setWidth(20);
    obj.imageCheckBox239:setHeight(20);
    obj.imageCheckBox239:setField("bola5esporQ");
    obj.imageCheckBox239:setName("imageCheckBox239");

    obj.layout273 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout273:setParent(obj.rectangle1);
    obj.layout273:setLeft(291);
    obj.layout273:setTop(397);
    obj.layout273:setWidth(20);
    obj.layout273:setHeight(20);
    obj.layout273:setName("layout273");

    obj.imageCheckBox240 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox240:setParent(obj.layout273);
    obj.imageCheckBox240:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox240:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox240:setWidth(20);
    obj.imageCheckBox240:setHeight(20);
    obj.imageCheckBox240:setField("bola5brigaQ");
    obj.imageCheckBox240:setName("imageCheckBox240");

    obj.layout274 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout274:setParent(obj.rectangle1);
    obj.layout274:setLeft(291);
    obj.layout274:setTop(418);
    obj.layout274:setWidth(20);
    obj.layout274:setHeight(20);
    obj.layout274:setName("layout274");

    obj.imageCheckBox241 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox241:setParent(obj.layout274);
    obj.imageCheckBox241:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox241:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox241:setWidth(20);
    obj.imageCheckBox241:setHeight(20);
    obj.imageCheckBox241:setField("bola5empatQ");
    obj.imageCheckBox241:setName("imageCheckBox241");

    obj.layout275 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout275:setParent(obj.rectangle1);
    obj.layout275:setLeft(291);
    obj.layout275:setTop(440);
    obj.layout275:setWidth(20);
    obj.layout275:setHeight(20);
    obj.layout275:setName("layout275");

    obj.imageCheckBox242 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox242:setParent(obj.layout275);
    obj.imageCheckBox242:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox242:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox242:setWidth(20);
    obj.imageCheckBox242:setHeight(20);
    obj.imageCheckBox242:setField("bola5expreQ");
    obj.imageCheckBox242:setName("imageCheckBox242");

    obj.layout276 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout276:setParent(obj.rectangle1);
    obj.layout276:setLeft(291);
    obj.layout276:setTop(461);
    obj.layout276:setWidth(20);
    obj.layout276:setHeight(20);
    obj.layout276:setName("layout276");

    obj.imageCheckBox243 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox243:setParent(obj.layout276);
    obj.imageCheckBox243:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox243:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox243:setWidth(20);
    obj.imageCheckBox243:setHeight(20);
    obj.imageCheckBox243:setField("bola5intimQ");
    obj.imageCheckBox243:setName("imageCheckBox243");

    obj.layout277 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout277:setParent(obj.rectangle1);
    obj.layout277:setLeft(291);
    obj.layout277:setTop(481);
    obj.layout277:setWidth(20);
    obj.layout277:setHeight(20);
    obj.layout277:setName("layout277");

    obj.imageCheckBox244 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox244:setParent(obj.layout277);
    obj.imageCheckBox244:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox244:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox244:setWidth(20);
    obj.imageCheckBox244:setHeight(20);
    obj.imageCheckBox244:setField("bola5tinoQ");
    obj.imageCheckBox244:setName("imageCheckBox244");

    obj.layout278 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout278:setParent(obj.rectangle1);
    obj.layout278:setLeft(291);
    obj.layout278:setTop(502);
    obj.layout278:setWidth(20);
    obj.layout278:setHeight(20);
    obj.layout278:setName("layout278");

    obj.imageCheckBox245 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox245:setParent(obj.layout278);
    obj.imageCheckBox245:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox245:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox245:setWidth(20);
    obj.imageCheckBox245:setHeight(20);
    obj.imageCheckBox245:setField("bola5liderQ");
    obj.imageCheckBox245:setName("imageCheckBox245");

    obj.layout279 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout279:setParent(obj.rectangle1);
    obj.layout279:setLeft(291);
    obj.layout279:setTop(523);
    obj.layout279:setWidth(20);
    obj.layout279:setHeight(20);
    obj.layout279:setName("layout279");

    obj.imageCheckBox246 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox246:setParent(obj.layout279);
    obj.imageCheckBox246:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox246:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox246:setWidth(20);
    obj.imageCheckBox246:setHeight(20);
    obj.imageCheckBox246:setField("bola5manhaQ");
    obj.imageCheckBox246:setName("imageCheckBox246");

    obj.layout280 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout280:setParent(obj.rectangle1);
    obj.layout280:setLeft(291);
    obj.layout280:setTop(544);
    obj.layout280:setWidth(20);
    obj.layout280:setHeight(20);
    obj.layout280:setName("layout280");

    obj.imageCheckBox247 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox247:setParent(obj.layout280);
    obj.imageCheckBox247:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox247:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox247:setWidth(20);
    obj.imageCheckBox247:setHeight(20);
    obj.imageCheckBox247:setField("bola5labiaQ");
    obj.imageCheckBox247:setName("imageCheckBox247");

    obj.layout281 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout281:setParent(obj.rectangle1);
    obj.layout281:setLeft(291);
    obj.layout281:setTop(564);
    obj.layout281:setWidth(20);
    obj.layout281:setHeight(20);
    obj.layout281:setName("layout281");

    obj.imageCheckBox248 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox248:setParent(obj.layout281);
    obj.imageCheckBox248:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox248:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox248:setWidth(20);
    obj.imageCheckBox248:setHeight(20);
    obj.imageCheckBox248:setField("bola5esquiQ");
    obj.imageCheckBox248:setName("imageCheckBox248");

    obj.layout282 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout282:setParent(obj.rectangle1);
    obj.layout282:setLeft(552);
    obj.layout282:setTop(353);
    obj.layout282:setWidth(20);
    obj.layout282:setHeight(20);
    obj.layout282:setName("layout282");

    obj.imageCheckBox249 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox249:setParent(obj.layout282);
    obj.imageCheckBox249:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox249:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox249:setWidth(20);
    obj.imageCheckBox249:setHeight(20);
    obj.imageCheckBox249:setField("bola5empcaQ");
    obj.imageCheckBox249:setName("imageCheckBox249");

    obj.layout283 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout283:setParent(obj.rectangle1);
    obj.layout283:setLeft(552);
    obj.layout283:setTop(375);
    obj.layout283:setWidth(20);
    obj.layout283:setHeight(20);
    obj.layout283:setName("layout283");

    obj.imageCheckBox250 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox250:setParent(obj.layout283);
    obj.imageCheckBox250:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox250:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox250:setWidth(20);
    obj.imageCheckBox250:setHeight(20);
    obj.imageCheckBox250:setField("bola5ofiQ");
    obj.imageCheckBox250:setName("imageCheckBox250");

    obj.layout284 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout284:setParent(obj.rectangle1);
    obj.layout284:setLeft(552);
    obj.layout284:setTop(397);
    obj.layout284:setWidth(20);
    obj.layout284:setHeight(20);
    obj.layout284:setName("layout284");

    obj.imageCheckBox251 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox251:setParent(obj.layout284);
    obj.imageCheckBox251:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox251:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox251:setWidth(20);
    obj.imageCheckBox251:setHeight(20);
    obj.imageCheckBox251:setField("bola5conduQ");
    obj.imageCheckBox251:setName("imageCheckBox251");

    obj.layout285 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout285:setParent(obj.rectangle1);
    obj.layout285:setLeft(552);
    obj.layout285:setTop(418);
    obj.layout285:setWidth(20);
    obj.layout285:setHeight(20);
    obj.layout285:setName("layout285");

    obj.imageCheckBox252 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox252:setParent(obj.layout285);
    obj.imageCheckBox252:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox252:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox252:setWidth(20);
    obj.imageCheckBox252:setHeight(20);
    obj.imageCheckBox252:setField("bola5etiqueQ");
    obj.imageCheckBox252:setName("imageCheckBox252");

    obj.layout286 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout286:setParent(obj.rectangle1);
    obj.layout286:setLeft(552);
    obj.layout286:setTop(440);
    obj.layout286:setWidth(20);
    obj.layout286:setHeight(20);
    obj.layout286:setName("layout286");

    obj.imageCheckBox253 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox253:setParent(obj.layout286);
    obj.imageCheckBox253:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox253:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox253:setWidth(20);
    obj.imageCheckBox253:setHeight(20);
    obj.imageCheckBox253:setField("bola5armprQ");
    obj.imageCheckBox253:setName("imageCheckBox253");

    obj.layout287 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout287:setParent(obj.rectangle1);
    obj.layout287:setLeft(552);
    obj.layout287:setTop(461);
    obj.layout287:setWidth(20);
    obj.layout287:setHeight(20);
    obj.layout287:setName("layout287");

    obj.imageCheckBox254 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox254:setParent(obj.layout287);
    obj.imageCheckBox254:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox254:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox254:setWidth(20);
    obj.imageCheckBox254:setHeight(20);
    obj.imageCheckBox254:setField("bola5segurQ");
    obj.imageCheckBox254:setName("imageCheckBox254");

    obj.layout288 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout288:setParent(obj.rectangle1);
    obj.layout288:setLeft(552);
    obj.layout288:setTop(481);
    obj.layout288:setWidth(20);
    obj.layout288:setHeight(20);
    obj.layout288:setName("layout288");

    obj.imageCheckBox255 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox255:setParent(obj.layout288);
    obj.imageCheckBox255:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox255:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox255:setWidth(20);
    obj.imageCheckBox255:setHeight(20);
    obj.imageCheckBox255:setField("bola5armbrQ");
    obj.imageCheckBox255:setName("imageCheckBox255");

    obj.layout289 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout289:setParent(obj.rectangle1);
    obj.layout289:setLeft(552);
    obj.layout289:setTop(502);
    obj.layout289:setWidth(20);
    obj.layout289:setHeight(20);
    obj.layout289:setName("layout289");

    obj.imageCheckBox256 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox256:setParent(obj.layout289);
    obj.imageCheckBox256:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox256:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox256:setWidth(20);
    obj.imageCheckBox256:setHeight(20);
    obj.imageCheckBox256:setField("bola5perfoQ");
    obj.imageCheckBox256:setName("imageCheckBox256");

    obj.layout290 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout290:setParent(obj.rectangle1);
    obj.layout290:setLeft(552);
    obj.layout290:setTop(523);
    obj.layout290:setWidth(20);
    obj.layout290:setHeight(20);
    obj.layout290:setName("layout290");

    obj.imageCheckBox257 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox257:setParent(obj.layout290);
    obj.imageCheckBox257:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox257:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox257:setWidth(20);
    obj.imageCheckBox257:setHeight(20);
    obj.imageCheckBox257:setField("bola5furtiQ");
    obj.imageCheckBox257:setName("imageCheckBox257");

    obj.layout291 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout291:setParent(obj.rectangle1);
    obj.layout291:setLeft(552);
    obj.layout291:setTop(544);
    obj.layout291:setWidth(20);
    obj.layout291:setHeight(20);
    obj.layout291:setName("layout291");

    obj.imageCheckBox258 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox258:setParent(obj.layout291);
    obj.imageCheckBox258:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox258:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox258:setWidth(20);
    obj.imageCheckBox258:setHeight(20);
    obj.imageCheckBox258:setField("bola5sobreQ");
    obj.imageCheckBox258:setName("imageCheckBox258");

    obj.layout292 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout292:setParent(obj.rectangle1);
    obj.layout292:setLeft(552);
    obj.layout292:setTop(564);
    obj.layout292:setWidth(20);
    obj.layout292:setHeight(20);
    obj.layout292:setName("layout292");

    obj.imageCheckBox259 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox259:setParent(obj.layout292);
    obj.imageCheckBox259:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox259:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox259:setWidth(20);
    obj.imageCheckBox259:setHeight(20);
    obj.imageCheckBox259:setField("bola5montaQ");
    obj.imageCheckBox259:setName("imageCheckBox259");

    obj.layout293 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout293:setParent(obj.rectangle1);
    obj.layout293:setLeft(808);
    obj.layout293:setTop(353);
    obj.layout293:setWidth(20);
    obj.layout293:setHeight(20);
    obj.layout293:setName("layout293");

    obj.imageCheckBox260 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox260:setParent(obj.layout293);
    obj.imageCheckBox260:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox260:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox260:setWidth(20);
    obj.imageCheckBox260:setHeight(20);
    obj.imageCheckBox260:setField("bola5instruQ");
    obj.imageCheckBox260:setName("imageCheckBox260");

    obj.layout294 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout294:setParent(obj.rectangle1);
    obj.layout294:setLeft(808);
    obj.layout294:setTop(375);
    obj.layout294:setWidth(20);
    obj.layout294:setHeight(20);
    obj.layout294:setName("layout294");

    obj.imageCheckBox261 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox261:setParent(obj.layout294);
    obj.imageCheckBox261:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox261:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox261:setWidth(20);
    obj.imageCheckBox261:setHeight(20);
    obj.imageCheckBox261:setField("bola5compuQ");
    obj.imageCheckBox261:setName("imageCheckBox261");

    obj.layout295 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout295:setParent(obj.rectangle1);
    obj.layout295:setLeft(808);
    obj.layout295:setTop(397);
    obj.layout295:setWidth(20);
    obj.layout295:setHeight(20);
    obj.layout295:setName("layout295");

    obj.imageCheckBox262 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox262:setParent(obj.layout295);
    obj.imageCheckBox262:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox262:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox262:setWidth(20);
    obj.imageCheckBox262:setHeight(20);
    obj.imageCheckBox262:setField("bola5enigQ");
    obj.imageCheckBox262:setName("imageCheckBox262");

    obj.layout296 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout296:setParent(obj.rectangle1);
    obj.layout296:setLeft(808);
    obj.layout296:setTop(418);
    obj.layout296:setWidth(20);
    obj.layout296:setHeight(20);
    obj.layout296:setName("layout296");

    obj.imageCheckBox263 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox263:setParent(obj.layout296);
    obj.imageCheckBox263:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox263:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox263:setWidth(20);
    obj.imageCheckBox263:setHeight(20);
    obj.imageCheckBox263:setField("bola5gramaQ");
    obj.imageCheckBox263:setName("imageCheckBox263");

    obj.layout297 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout297:setParent(obj.rectangle1);
    obj.layout297:setLeft(808);
    obj.layout297:setTop(440);
    obj.layout297:setWidth(20);
    obj.layout297:setHeight(20);
    obj.layout297:setName("layout297");

    obj.imageCheckBox264 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox264:setParent(obj.layout297);
    obj.imageCheckBox264:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox264:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox264:setWidth(20);
    obj.imageCheckBox264:setHeight(20);
    obj.imageCheckBox264:setField("bola5invesQ");
    obj.imageCheckBox264:setName("imageCheckBox264");

    obj.layout298 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout298:setParent(obj.rectangle1);
    obj.layout298:setLeft(808);
    obj.layout298:setTop(461);
    obj.layout298:setWidth(20);
    obj.layout298:setHeight(20);
    obj.layout298:setName("layout298");

    obj.imageCheckBox265 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox265:setParent(obj.layout298);
    obj.imageCheckBox265:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox265:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox265:setWidth(20);
    obj.imageCheckBox265:setHeight(20);
    obj.imageCheckBox265:setField("bola5direiQ");
    obj.imageCheckBox265:setName("imageCheckBox265");

    obj.layout299 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout299:setParent(obj.rectangle1);
    obj.layout299:setLeft(808);
    obj.layout299:setTop(481);
    obj.layout299:setWidth(20);
    obj.layout299:setHeight(20);
    obj.layout299:setName("layout299");

    obj.imageCheckBox266 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox266:setParent(obj.layout299);
    obj.imageCheckBox266:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox266:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox266:setWidth(20);
    obj.imageCheckBox266:setHeight(20);
    obj.imageCheckBox266:setField("bola5medicQ");
    obj.imageCheckBox266:setName("imageCheckBox266");

    obj.layout300 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout300:setParent(obj.rectangle1);
    obj.layout300:setLeft(808);
    obj.layout300:setTop(502);
    obj.layout300:setWidth(20);
    obj.layout300:setHeight(20);
    obj.layout300:setName("layout300");

    obj.imageCheckBox267 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox267:setParent(obj.layout300);
    obj.imageCheckBox267:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox267:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox267:setWidth(20);
    obj.imageCheckBox267:setHeight(20);
    obj.imageCheckBox267:setField("bola5politQ");
    obj.imageCheckBox267:setName("imageCheckBox267");

    obj.layout301 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout301:setParent(obj.rectangle1);
    obj.layout301:setLeft(808);
    obj.layout301:setTop(523);
    obj.layout301:setWidth(20);
    obj.layout301:setHeight(20);
    obj.layout301:setName("layout301");

    obj.imageCheckBox268 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox268:setParent(obj.layout301);
    obj.imageCheckBox268:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox268:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox268:setWidth(20);
    obj.imageCheckBox268:setHeight(20);
    obj.imageCheckBox268:setField("bola5cienciaQ");
    obj.imageCheckBox268:setName("imageCheckBox268");

    obj.layout302 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout302:setParent(obj.rectangle1);
    obj.layout302:setLeft(808);
    obj.layout302:setTop(544);
    obj.layout302:setWidth(20);
    obj.layout302:setHeight(20);
    obj.layout302:setName("layout302");

    obj.imageCheckBox269 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox269:setParent(obj.layout302);
    obj.imageCheckBox269:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox269:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox269:setWidth(20);
    obj.imageCheckBox269:setHeight(20);
    obj.imageCheckBox269:setField("bola5tecnoQ");
    obj.imageCheckBox269:setName("imageCheckBox269");

    obj.layout303 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout303:setParent(obj.rectangle1);
    obj.layout303:setLeft(808);
    obj.layout303:setTop(564);
    obj.layout303:setWidth(20);
    obj.layout303:setHeight(20);
    obj.layout303:setName("layout303");

    obj.imageCheckBox270 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox270:setParent(obj.layout303);
    obj.imageCheckBox270:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox270:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox270:setWidth(20);
    obj.imageCheckBox270:setHeight(20);
    obj.imageCheckBox270:setField("bola5linguiQ");
    obj.imageCheckBox270:setName("imageCheckBox270");

    obj.layout304 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout304:setParent(obj.rectangle1);
    obj.layout304:setLeft(175);
    obj.layout304:setTop(998);
    obj.layout304:setWidth(20);
    obj.layout304:setHeight(20);
    obj.layout304:setName("layout304");

    obj.imageCheckBox271 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox271:setParent(obj.layout304);
    obj.imageCheckBox271:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox271:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox271:setWidth(20);
    obj.imageCheckBox271:setHeight(20);
    obj.imageCheckBox271:setField("bola5GlQ");
    obj.imageCheckBox271:setName("imageCheckBox271");

    obj.layout305 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout305:setParent(obj.rectangle1);
    obj.layout305:setLeft(297);
    obj.layout305:setTop(998);
    obj.layout305:setWidth(20);
    obj.layout305:setHeight(20);
    obj.layout305:setName("layout305");

    obj.imageCheckBox272 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox272:setParent(obj.layout305);
    obj.imageCheckBox272:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox272:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox272:setWidth(20);
    obj.imageCheckBox272:setHeight(20);
    obj.imageCheckBox272:setField("bola10GlQ");
    obj.imageCheckBox272:setName("imageCheckBox272");

    obj.layout306 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout306:setParent(obj.rectangle1);
    obj.layout306:setLeft(176);
    obj.layout306:setTop(1023);
    obj.layout306:setWidth(18);
    obj.layout306:setHeight(18);
    obj.layout306:setName("layout306");

    obj.imageCheckBox273 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox273:setParent(obj.layout306);
    obj.imageCheckBox273:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox273:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox273:setWidth(18);
    obj.imageCheckBox273:setHeight(18);
    obj.imageCheckBox273:setField("square5GlQ");
    obj.imageCheckBox273:setName("imageCheckBox273");

    obj.layout307 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout307:setParent(obj.rectangle1);
    obj.layout307:setLeft(297);
    obj.layout307:setTop(1023);
    obj.layout307:setWidth(18);
    obj.layout307:setHeight(18);
    obj.layout307:setName("layout307");

    obj.imageCheckBox274 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox274:setParent(obj.layout307);
    obj.imageCheckBox274:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox274:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox274:setWidth(18);
    obj.imageCheckBox274:setHeight(18);
    obj.imageCheckBox274:setField("square10GlQ");
    obj.imageCheckBox274:setName("imageCheckBox274");

    obj.layout308 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout308:setParent(obj.rectangle1);
    obj.layout308:setLeft(175);
    obj.layout308:setTop(1079);
    obj.layout308:setWidth(20);
    obj.layout308:setHeight(20);
    obj.layout308:setName("layout308");

    obj.imageCheckBox275 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox275:setParent(obj.layout308);
    obj.imageCheckBox275:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox275:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox275:setWidth(20);
    obj.imageCheckBox275:setHeight(20);
    obj.imageCheckBox275:setField("mirror5BanQ");
    obj.imageCheckBox275:setName("imageCheckBox275");

    obj.layout309 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout309:setParent(obj.rectangle1);
    obj.layout309:setLeft(297);
    obj.layout309:setTop(1079);
    obj.layout309:setWidth(20);
    obj.layout309:setHeight(20);
    obj.layout309:setName("layout309");

    obj.imageCheckBox276 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox276:setParent(obj.layout309);
    obj.imageCheckBox276:setImageChecked("ChangelingMorganna/images/mirror_on.png");
    obj.imageCheckBox276:setImageUnchecked("ChangelingMorganna/images/mirror_off.png");
    obj.imageCheckBox276:setWidth(20);
    obj.imageCheckBox276:setHeight(20);
    obj.imageCheckBox276:setField("mirror10BanQ");
    obj.imageCheckBox276:setName("imageCheckBox276");

    obj.layout310 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout310:setParent(obj.rectangle1);
    obj.layout310:setLeft(176);
    obj.layout310:setTop(1101);
    obj.layout310:setWidth(18);
    obj.layout310:setHeight(18);
    obj.layout310:setName("layout310");

    obj.imageCheckBox277 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox277:setParent(obj.layout310);
    obj.imageCheckBox277:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox277:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox277:setWidth(18);
    obj.imageCheckBox277:setHeight(18);
    obj.imageCheckBox277:setField("square5BanQ");
    obj.imageCheckBox277:setName("imageCheckBox277");

    obj.layout311 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout311:setParent(obj.rectangle1);
    obj.layout311:setLeft(297);
    obj.layout311:setTop(1101);
    obj.layout311:setWidth(18);
    obj.layout311:setHeight(18);
    obj.layout311:setName("layout311");

    obj.imageCheckBox278 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox278:setParent(obj.layout311);
    obj.imageCheckBox278:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox278:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox278:setWidth(18);
    obj.imageCheckBox278:setHeight(18);
    obj.imageCheckBox278:setField("square10BanQ");
    obj.imageCheckBox278:setName("imageCheckBox278");

    obj.layout312 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout312:setParent(obj.rectangle1);
    obj.layout312:setLeft(175);
    obj.layout312:setTop(1157);
    obj.layout312:setWidth(20);
    obj.layout312:setHeight(20);
    obj.layout312:setName("layout312");

    obj.imageCheckBox279 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox279:setParent(obj.layout312);
    obj.imageCheckBox279:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox279:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox279:setWidth(20);
    obj.imageCheckBox279:setHeight(20);
    obj.imageCheckBox279:setField("bola5FDVQ");
    obj.imageCheckBox279:setName("imageCheckBox279");

    obj.layout313 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout313:setParent(obj.rectangle1);
    obj.layout313:setLeft(297);
    obj.layout313:setTop(1157);
    obj.layout313:setWidth(20);
    obj.layout313:setHeight(20);
    obj.layout313:setName("layout313");

    obj.imageCheckBox280 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox280:setParent(obj.layout313);
    obj.imageCheckBox280:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox280:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox280:setWidth(20);
    obj.imageCheckBox280:setHeight(20);
    obj.imageCheckBox280:setField("bola10FDVQ");
    obj.imageCheckBox280:setName("imageCheckBox280");

    obj.layout314 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout314:setParent(obj.rectangle1);
    obj.layout314:setLeft(176);
    obj.layout314:setTop(1179);
    obj.layout314:setWidth(18);
    obj.layout314:setHeight(18);
    obj.layout314:setName("layout314");

    obj.imageCheckBox281 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox281:setParent(obj.layout314);
    obj.imageCheckBox281:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox281:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox281:setWidth(18);
    obj.imageCheckBox281:setHeight(18);
    obj.imageCheckBox281:setField("square5FDVQ");
    obj.imageCheckBox281:setName("imageCheckBox281");

    obj.layout315 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout315:setParent(obj.rectangle1);
    obj.layout315:setLeft(297);
    obj.layout315:setTop(1179);
    obj.layout315:setWidth(18);
    obj.layout315:setHeight(18);
    obj.layout315:setName("layout315");

    obj.imageCheckBox282 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox282:setParent(obj.layout315);
    obj.imageCheckBox282:setImageChecked("ChangelingMorganna/images/square_on.png");
    obj.imageCheckBox282:setImageUnchecked("ChangelingMorganna/images/square_off.png");
    obj.imageCheckBox282:setWidth(18);
    obj.imageCheckBox282:setHeight(18);
    obj.imageCheckBox282:setField("square10FDVQ");
    obj.imageCheckBox282:setName("imageCheckBox282");

    obj.layout316 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout316:setParent(obj.rectangle1);
    obj.layout316:setLeft(729);
    obj.layout316:setTop(1110);
    obj.layout316:setWidth(27);
    obj.layout316:setHeight(27);
    obj.layout316:setName("layout316");

    obj.imageCheckBox283 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox283:setParent(obj.layout316);
    obj.imageCheckBox283:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox283:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox283:setWidth(27);
    obj.imageCheckBox283:setHeight(27);
    obj.imageCheckBox283:setField("bola5LetalQ");
    obj.imageCheckBox283:setName("imageCheckBox283");

    obj.layout317 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout317:setParent(obj.rectangle1);
    obj.layout317:setLeft(775);
    obj.layout317:setTop(1110);
    obj.layout317:setWidth(27);
    obj.layout317:setHeight(27);
    obj.layout317:setName("layout317");

    obj.imageCheckBox284 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox284:setParent(obj.layout317);
    obj.imageCheckBox284:setImageChecked("ChangelingMorganna/images/bola_on.png");
    obj.imageCheckBox284:setImageUnchecked("ChangelingMorganna/images/bola_off.png");
    obj.imageCheckBox284:setWidth(27);
    obj.imageCheckBox284:setHeight(27);
    obj.imageCheckBox284:setField("bola5AgravadoQ");
    obj.imageCheckBox284:setName("imageCheckBox284");

    obj.layout318 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout318:setParent(obj.rectangle1);
    obj.layout318:setLeft(325);
    obj.layout318:setTop(963);
    obj.layout318:setWidth(247);
    obj.layout318:setHeight(242);
    obj.layout318:setName("layout318");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout318);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(247);
    obj.textEditor1:setHeight(242);
    obj.textEditor1:setField("DescricaoQuimera");
    obj.textEditor1:setName("textEditor1");

    obj.frmCodigo3 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo3:setParent(obj);
    obj.frmCodigo3:setName("frmCodigo3");
    obj.frmCodigo3:setHeight(0);
    obj.frmCodigo3:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo3);
    obj.dataLink1:setFields({'bola1forcaQ', 'bola1destrezaQ', 'bola1vigorQ', 'bola1carismaQ', 'bola1manipuQ', 'bola1apareQ', 'bola1percepQ', 'bola1intelQ', 'bola1racioQ'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo3);
    obj.dataLink2:setFields({'bola5forcaQ', 'bola4forcaQ', 'bola3forcaQ', 'bola2forcaQ', 'bola1forcaQ'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo3);
    obj.dataLink3:setFields({'bola5destrezaQ', 'bola4destrezaQ', 'bola3destrezaQ', 'bola2destrezaQ', 'bola1destrezaQ'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo3);
    obj.dataLink4:setFields({'bola5vigorQ', 'bola4vigorQ', 'bola3vigorQ', 'bola2vigorQ', 'bola1vigorQ'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo3);
    obj.dataLink5:setFields({'bola5carismaQ', 'bola4carismaQ', 'bola3carismaQ', 'bola2carismaQ', 'bola1carismaQ'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo3);
    obj.dataLink6:setFields({'bola5manipuQ', 'bola4manipuQ', 'bola3manipuQ', 'bola2manipuQ', 'bola1manipuQ'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo3);
    obj.dataLink7:setFields({'bola5apareQ', 'bola4apareQ', 'bola3apareQ', 'bola2apareQ', 'bola1apareQ'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo3);
    obj.dataLink8:setFields({'bola5percepQ', 'bola4percepQ', 'bola3percepQ', 'bola2percepQ', 'bola1percepQ'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo3);
    obj.dataLink9:setFields({'bola5intelQ', 'bola4intelQ', 'bola3intelQ', 'bola2intelQ', 'bola1intelQ'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo3);
    obj.dataLink10:setFields({'bola5racioQ', 'bola4racioQ', 'bola3racioQ', 'bola2racioQ', 'bola1racioQ'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo3);
    obj.dataLink11:setFields({'bola5prontQ', 'bola4prontQ', 'bola3prontQ', 'bola2prontQ', 'bola1prontQ'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo3);
    obj.dataLink12:setFields({'bola5esporQ', 'bola4esporQ', 'bola3esporQ', 'bola2esporQ', 'bola1esporQ'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo3);
    obj.dataLink13:setFields({'bola5brigaQ', 'bola4brigaQ', 'bola3brigaQ', 'bola2brigaQ', 'bola1brigaQ'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo3);
    obj.dataLink14:setFields({'bola5empatQ', 'bola4empatQ', 'bola3empatQ', 'bola2empatQ', 'bola1empatQ'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo3);
    obj.dataLink15:setFields({'bola5expreQ', 'bola4expreQ', 'bola3expreQ', 'bola2expreQ', 'bola1expreQ'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo3);
    obj.dataLink16:setFields({'bola5intimQ', 'bola4intimQ', 'bola3intimQ', 'bola2intimQ', 'bola1intimQ'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo3);
    obj.dataLink17:setFields({'bola5tinoQ', 'bola4tinoQ', 'bola3tinoQ', 'bola2tinoQ', 'bola1tinoQ'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo3);
    obj.dataLink18:setFields({'bola5liderQ', 'bola4liderQ', 'bola3liderQ', 'bola2liderQ', 'bola1liderQ'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo3);
    obj.dataLink19:setFields({'bola5manhaQ', 'bola4manhaQ', 'bola3manhaQ', 'bola2manhaQ', 'bola1manhaQ'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmCodigo3);
    obj.dataLink20:setFields({'bola5labiaQ', 'bola4labiaQ', 'bola3labiaQ', 'bola2labiaQ', 'bola1labiaQ'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmCodigo3);
    obj.dataLink21:setFields({'bola5esquiQ', 'bola4esquiQ', 'bola3esquiQ', 'bola2esquiQ', 'bola1esquiQ'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.frmCodigo3);
    obj.dataLink22:setFields({'bola5empcaQ', 'bola4empcaQ', 'bola3empcaQ', 'bola2empcaQ', 'bola1empcaQ'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.frmCodigo3);
    obj.dataLink23:setFields({'bola5ofiQ', 'bola4ofiQ', 'bola3ofiQ', 'bola2ofiQ', 'bola1ofiQ'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.frmCodigo3);
    obj.dataLink24:setFields({'bola5conduQ', 'bola4conduQ', 'bola3conduQ', 'bola2conduQ', 'bola1conduQ'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.frmCodigo3);
    obj.dataLink25:setFields({'bola5etiqueQ', 'bola4etiqueQ', 'bola3etiqueQ', 'bola2etiqueQ', 'bola1etiqueQ'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.frmCodigo3);
    obj.dataLink26:setFields({'bola5armprQ', 'bola4armprQ', 'bola3armprQ', 'bola2armprQ', 'bola1armprQ'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.frmCodigo3);
    obj.dataLink27:setFields({'bola5segurQ', 'bola4segurQ', 'bola3segurQ', 'bola2segurQ', 'bola1segurQ'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.frmCodigo3);
    obj.dataLink28:setFields({'bola5armbrQ', 'bola4armbrQ', 'bola3armbrQ', 'bola2armbrQ', 'bola1armbrQ'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.frmCodigo3);
    obj.dataLink29:setFields({'bola5perfoQ', 'bola4perfoQ', 'bola3perfoQ', 'bola2perfoQ', 'bola1perfoQ'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.frmCodigo3);
    obj.dataLink30:setFields({'bola5furtiQ', 'bola4furtiQ', 'bola3furtiQ', 'bola2furtiQ', 'bola1furtiQ'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.frmCodigo3);
    obj.dataLink31:setFields({'bola5sobreQ', 'bola4sobreQ', 'bola3sobreQ', 'bola2sobreQ', 'bola1sobreQ'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.frmCodigo3);
    obj.dataLink32:setFields({'bola5montaQ', 'bola4montaQ', 'bola3montaQ', 'bola2montaQ', 'bola1montaQ'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.frmCodigo3);
    obj.dataLink33:setFields({'bola5instruQ', 'bola4instruQ', 'bola3instruQ', 'bola2instruQ', 'bola1instruQ'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.frmCodigo3);
    obj.dataLink34:setFields({'bola5compuQ', 'bola4compuQ', 'bola3compuQ', 'bola2compuQ', 'bola1compuQ'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmCodigo3);
    obj.dataLink35:setFields({'bola5enigQ', 'bola4enigQ', 'bola3enigQ', 'bola2enigQ', 'bola1enigQ'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.frmCodigo3);
    obj.dataLink36:setFields({'bola5gramaQ', 'bola4gramaQ', 'bola3gramaQ', 'bola2gramaQ', 'bola1gramaQ'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.frmCodigo3);
    obj.dataLink37:setFields({'bola5invesQ', 'bola4invesQ', 'bola3invesQ', 'bola2invesQ', 'bola1invesQ'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.frmCodigo3);
    obj.dataLink38:setFields({'bola5direiQ', 'bola4direiQ', 'bola3direiQ', 'bola2direiQ', 'bola1direiQ'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.frmCodigo3);
    obj.dataLink39:setFields({'bola5medicQ', 'bola4medicQ', 'bola3medicQ', 'bola2medicQ', 'bola1medicQ'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.frmCodigo3);
    obj.dataLink40:setFields({'bola5politQ', 'bola4politQ', 'bola3politQ', 'bola2politQ', 'bola1politQ'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.frmCodigo3);
    obj.dataLink41:setFields({'bola5cienciaQ', 'bola4cienciaQ', 'bola3cienciaQ', 'bola2cienciaQ', 'bola1cienciaQ'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.frmCodigo3);
    obj.dataLink42:setFields({'bola5tecnoQ', 'bola4tecnoQ', 'bola3tecnoQ', 'bola2tecnoQ', 'bola1tecnoQ'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.frmCodigo3);
    obj.dataLink43:setFields({'bola5linguiQ', 'bola4linguiQ', 'bola3linguiQ', 'bola2linguiQ', 'bola1linguiQ'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.frmCodigo3);
    obj.dataLink44:setFields({'bola10GlQ', 'bola9GlQ', 'bola8GlQ', 'bola7GlQ', 'bola6GlQ', 'bola5GlQ', 'bola4GlQ', 'bola3GlQ', 'bola2GlQ', 'bola1GlQ'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.frmCodigo3);
    obj.dataLink45:setFields({'square10GlQ', 'square9GlQ', 'square8GlQ', 'square7GlQ', 'square6GlQ', 'square5GlQ', 'square4GlQ', 'square3GlQ', 'square2GlQ', 'square1GlQ'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.frmCodigo3);
    obj.dataLink46:setFields({'mirror10BanQ', 'mirror9BanQ', 'mirror8BanQ', 'mirror7BanQ', 'mirror6BanQ', 'mirror5BanQ', 'mirror4BanQ', 'mirror3BanQ', 'mirror2BanQ', 'mirror1BanQ'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.frmCodigo3);
    obj.dataLink47:setFields({'square10BanQ', 'square9BanQ', 'square8BanQ', 'square7BanQ', 'square6BanQ', 'square5BanQ', 'square4BanQ', 'square3BanQ', 'square2BanQ', 'square1BanQ'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.frmCodigo3);
    obj.dataLink48:setFields({'bola10FDVQ', 'bola9FDVQ', 'bola8FDVQ', 'bola7FDVQ', 'bola6FDVQ', 'bola5FDVQ', 'bola4FDVQ', 'bola3FDVQ', 'bola2FDVQ', 'bola1FDVQ'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.frmCodigo3);
    obj.dataLink49:setFields({'square10FDVQ', 'square9FDVQ', 'square8FDVQ', 'square7FDVQ', 'square6FDVQ', 'square5FDVQ', 'square4FDVQ', 'square3FDVQ', 'square2FDVQ', 'square1FDVQ'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.frmCodigo3);
    obj.dataLink50:setFields({'bola7LetalQ', 'bola6LetalQ', 'bola5LetalQ', 'bola4LetalQ', 'bola3LetalQ', 'bola2LetalQ', 'bola1LetalQ'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.frmCodigo3);
    obj.dataLink51:setFields({'bola7AgravadoQ', 'bola6AgravadoQ', 'bola5AgravadoQ', 'bola4AgravadoQ', 'bola3AgravadoQ', 'bola2AgravadoQ', 'bola1AgravadoQ'});
    obj.dataLink51:setName("dataLink51");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5forcaQ == true then
            		sheet.bola4forcaQ = true;
            		sheet.bola3forcaQ = true;
            		sheet.bola2forcaQ = true;
            		sheet.bola1forcaQ = true;
            	elseif sheet.bola4forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola3forcaQ = true;
            		sheet.bola2forcaQ = true;
            		sheet.bola1forcaQ = true;
            	elseif sheet.bola3forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola2forcaQ = true;
            		sheet.bola1forcaQ = true;
            	elseif sheet.bola2forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola3forcaQ = false;
            		sheet.bola1forcaQ = true;	
            	elseif sheet.bola1forcaQ == true then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola3forcaQ = false;
            		sheet.bola2forcaQ = false;
            	elseif sheet.bola1forcaQ == false then
            		sheet.bola5forcaQ = false;
            		sheet.bola4forcaQ = false;
            		sheet.bola3forcaQ = false;
            		sheet.bola2forcaQ = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5destrezaQ == true then
            		sheet.bola4destrezaQ = true;
            		sheet.bola3destrezaQ = true;
            		sheet.bola2destrezaQ = true;
            		sheet.bola1destrezaQ = true;
            	elseif sheet.bola4destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola3destrezaQ = true;
            		sheet.bola2destrezaQ = true;
            		sheet.bola1destrezaQ = true;
            	elseif sheet.bola3destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola2destrezaQ = true;
            		sheet.bola1destrezaQ = true;
            	elseif sheet.bola2destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola3destrezaQ = false;
            		sheet.bola1destrezaQ = true;	
            	elseif sheet.bola1destrezaQ == true then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola3destrezaQ = false;
            		sheet.bola2destrezaQ = false;
            	elseif sheet.bola1destrezaQ == false then
            		sheet.bola5destrezaQ = false;
            		sheet.bola4destrezaQ = false;
            		sheet.bola3destrezaQ = false;
            		sheet.bola2destrezaQ = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5vigorQ == true then
            		sheet.bola4vigorQ = true;
            		sheet.bola3vigorQ = true;
            		sheet.bola2vigorQ = true;
            		sheet.bola1vigorQ = true;
            	elseif sheet.bola4vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola3vigorQ = true;
            		sheet.bola2vigorQ = true;
            		sheet.bola1vigorQ = true;
            	elseif sheet.bola3vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola2vigorQ = true;
            		sheet.bola1vigorQ = true;
            	elseif sheet.bola2vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola3vigorQ = false;
            		sheet.bola1vigorQ = true;	
            	elseif sheet.bola1vigorQ == true then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola3vigorQ = false;
            		sheet.bola2vigorQ = false;
            	elseif sheet.bola1vigorQ == false then
            		sheet.bola5vigorQ = false;
            		sheet.bola4vigorQ = false;
            		sheet.bola3vigorQ = false;
            		sheet.bola2vigorQ = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5carismaQ == true then
            		sheet.bola4carismaQ = true;
            		sheet.bola3carismaQ = true;
            		sheet.bola2carismaQ = true;
            		sheet.bola1carismaQ = true;
            	elseif sheet.bola4carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola3carismaQ = true;
            		sheet.bola2carismaQ = true;
            		sheet.bola1carismaQ = true;
            	elseif sheet.bola3carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola2carismaQ = true;
            		sheet.bola1carismaQ = true;
            	elseif sheet.bola2carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola3carismaQ = false;
            		sheet.bola1carismaQ = true;	
            	elseif sheet.bola1carismaQ == true then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola3carismaQ = false;
            		sheet.bola2carismaQ = false;
            	elseif sheet.bola1carismaQ == false then
            		sheet.bola5carismaQ = false;
            		sheet.bola4carismaQ = false;
            		sheet.bola3carismaQ = false;
            		sheet.bola2carismaQ = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5manipuQ == true then
            		sheet.bola4manipuQ = true;
            		sheet.bola3manipuQ = true;
            		sheet.bola2manipuQ = true;
            		sheet.bola1manipuQ = true;
            	elseif sheet.bola4manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola3manipuQ = true;
            		sheet.bola2manipuQ = true;
            		sheet.bola1manipuQ = true;
            	elseif sheet.bola3manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola2manipuQ = true;
            		sheet.bola1manipuQ = true;
            	elseif sheet.bola2manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola3manipuQ = false;
            		sheet.bola1manipuQ = true;	
            	elseif sheet.bola1manipuQ == true then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola3manipuQ = false;
            		sheet.bola2manipuQ = false;
            	elseif sheet.bola1manipuQ == false then
            		sheet.bola5manipuQ = false;
            		sheet.bola4manipuQ = false;
            		sheet.bola3manipuQ = false;
            		sheet.bola2manipuQ = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5apareQ == true then
            		sheet.bola4apareQ = true;
            		sheet.bola3apareQ = true;
            		sheet.bola2apareQ = true;
            		sheet.bola1apareQ = true;
            	elseif sheet.bola4apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola3apareQ = true;
            		sheet.bola2apareQ = true;
            		sheet.bola1apareQ = true;
            	elseif sheet.bola3apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola2apareQ = true;
            		sheet.bola1apareQ = true;
            	elseif sheet.bola2apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola3apareQ = false;
            		sheet.bola1apareQ = true;	
            	elseif sheet.bola1apareQ == true then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola3apareQ = false;
            		sheet.bola2apareQ = false;
            	elseif sheet.bola1apareQ == false then
            		sheet.bola5apareQ = false;
            		sheet.bola4apareQ = false;
            		sheet.bola3apareQ = false;
            		sheet.bola2apareQ = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5percepQ == true then
            		sheet.bola4percepQ = true;
            		sheet.bola3percepQ = true;
            		sheet.bola2percepQ = true;
            		sheet.bola1percepQ = true;
            	elseif sheet.bola4percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola3percepQ = true;
            		sheet.bola2percepQ = true;
            		sheet.bola1percepQ = true;
            	elseif sheet.bola3percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola2percepQ = true;
            		sheet.bola1percepQ = true;
            	elseif sheet.bola2percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola3percepQ = false;
            		sheet.bola1percepQ = true;	
            	elseif sheet.bola1percepQ == true then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola3percepQ = false;
            		sheet.bola2percepQ = false;
            	elseif sheet.bola1percepQ == false then
            		sheet.bola5percepQ = false;
            		sheet.bola4percepQ = false;
            		sheet.bola3percepQ = false;
            		sheet.bola2percepQ = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5intelQ == true then
            		sheet.bola4intelQ = true;
            		sheet.bola3intelQ = true;
            		sheet.bola2intelQ = true;
            		sheet.bola1intelQ = true;
            	elseif sheet.bola4intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola3intelQ = true;
            		sheet.bola2intelQ = true;
            		sheet.bola1intelQ = true;
            	elseif sheet.bola3intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola2intelQ = true;
            		sheet.bola1intelQ = true;
            	elseif sheet.bola2intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola3intelQ = false;
            		sheet.bola1intelQ = true;	
            	elseif sheet.bola1intelQ == true then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola3intelQ = false;
            		sheet.bola2intelQ = false;
            	elseif sheet.bola1intelQ == false then
            		sheet.bola5intelQ = false;
            		sheet.bola4intelQ = false;
            		sheet.bola3intelQ = false;
            		sheet.bola2intelQ = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5racioQ == true then
            		sheet.bola4racioQ = true;
            		sheet.bola3racioQ = true;
            		sheet.bola2racioQ = true;
            		sheet.bola1racioQ = true;
            	elseif sheet.bola4racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola3racioQ = true;
            		sheet.bola2racioQ = true;
            		sheet.bola1racioQ = true;
            	elseif sheet.bola3racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola2racioQ = true;
            		sheet.bola1racioQ = true;
            	elseif sheet.bola2racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola3racioQ = false;
            		sheet.bola1racioQ = true;	
            	elseif sheet.bola1racioQ == true then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola3racioQ = false;
            		sheet.bola2racioQ = false;
            	elseif sheet.bola1racioQ == false then
            		sheet.bola5racioQ = false;
            		sheet.bola4racioQ = false;
            		sheet.bola3racioQ = false;
            		sheet.bola2racioQ = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5prontQ == true then
            		sheet.bola4prontQ = true;
            		sheet.bola3prontQ = true;
            		sheet.bola2prontQ = true;
            		sheet.bola1prontQ = true;
            	elseif sheet.bola4prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola3prontQ = true;
            		sheet.bola2prontQ = true;
            		sheet.bola1prontQ = true;
            	elseif sheet.bola3prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola2prontQ = true;
            		sheet.bola1prontQ = true;
            	elseif sheet.bola2prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola3prontQ = false;
            		sheet.bola1prontQ = true;	
            	elseif sheet.bola1prontQ == true then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola3prontQ = false;
            		sheet.bola2prontQ = false;
            	elseif sheet.bola1prontQ == false then
            		sheet.bola5prontQ = false;
            		sheet.bola4prontQ = false;
            		sheet.bola3prontQ = false;
            		sheet.bola2prontQ = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5esporQ == true then
            		sheet.bola4esporQ = true;
            		sheet.bola3esporQ = true;
            		sheet.bola2esporQ = true;
            		sheet.bola1esporQ = true;
            	elseif sheet.bola4esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola3esporQ = true;
            		sheet.bola2esporQ = true;
            		sheet.bola1esporQ = true;
            	elseif sheet.bola3esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola2esporQ = true;
            		sheet.bola1esporQ = true;
            	elseif sheet.bola2esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola3esporQ = false;
            		sheet.bola1esporQ = true;	
            	elseif sheet.bola1esporQ == true then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola3esporQ = false;
            		sheet.bola2esporQ = false;
            	elseif sheet.bola1esporQ == false then
            		sheet.bola5esporQ = false;
            		sheet.bola4esporQ = false;
            		sheet.bola3esporQ = false;
            		sheet.bola2esporQ = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5brigaQ == true then
            		sheet.bola4brigaQ = true;
            		sheet.bola3brigaQ = true;
            		sheet.bola2brigaQ = true;
            		sheet.bola1brigaQ = true;
            	elseif sheet.bola4brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola3brigaQ = true;
            		sheet.bola2brigaQ = true;
            		sheet.bola1brigaQ = true;
            	elseif sheet.bola3brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola2brigaQ = true;
            		sheet.bola1brigaQ = true;
            	elseif sheet.bola2brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola3brigaQ = false;
            		sheet.bola1brigaQ = true;	
            	elseif sheet.bola1brigaQ == true then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola3brigaQ = false;
            		sheet.bola2brigaQ = false;
            	elseif sheet.bola1brigaQ == false then
            		sheet.bola5brigaQ = false;
            		sheet.bola4brigaQ = false;
            		sheet.bola3brigaQ = false;
            		sheet.bola2brigaQ = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5empatQ == true then
            		sheet.bola4empatQ = true;
            		sheet.bola3empatQ = true;
            		sheet.bola2empatQ = true;
            		sheet.bola1empatQ = true;
            	elseif sheet.bola4empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola3empatQ = true;
            		sheet.bola2empatQ = true;
            		sheet.bola1empatQ = true;
            	elseif sheet.bola3empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola2empatQ = true;
            		sheet.bola1empatQ = true;
            	elseif sheet.bola2empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola3empatQ = false;
            		sheet.bola1empatQ = true;	
            	elseif sheet.bola1empatQ == true then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola3empatQ = false;
            		sheet.bola2empatQ = false;
            	elseif sheet.bola1empatQ == false then
            		sheet.bola5empatQ = false;
            		sheet.bola4empatQ = false;
            		sheet.bola3empatQ = false;
            		sheet.bola2empatQ = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5expreQ == true then
            		sheet.bola4expreQ = true;
            		sheet.bola3expreQ = true;
            		sheet.bola2expreQ = true;
            		sheet.bola1expreQ = true;
            	elseif sheet.bola4expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola3expreQ = true;
            		sheet.bola2expreQ = true;
            		sheet.bola1expreQ = true;
            	elseif sheet.bola3expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola2expreQ = true;
            		sheet.bola1expreQ = true;
            	elseif sheet.bola2expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola3expreQ = false;
            		sheet.bola1expreQ = true;	
            	elseif sheet.bola1expreQ == true then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola3expreQ = false;
            		sheet.bola2expreQ = false;
            	elseif sheet.bola1expreQ == false then
            		sheet.bola5expreQ = false;
            		sheet.bola4expreQ = false;
            		sheet.bola3expreQ = false;
            		sheet.bola2expreQ = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5intimQ == true then
            		sheet.bola4intimQ = true;
            		sheet.bola3intimQ = true;
            		sheet.bola2intimQ = true;
            		sheet.bola1intimQ = true;
            	elseif sheet.bola4intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola3intimQ = true;
            		sheet.bola2intimQ = true;
            		sheet.bola1intimQ = true;
            	elseif sheet.bola3intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola2intimQ = true;
            		sheet.bola1intimQ = true;
            	elseif sheet.bola2intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola3intimQ = false;
            		sheet.bola1intimQ = true;	
            	elseif sheet.bola1intimQ == true then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola3intimQ = false;
            		sheet.bola2intimQ = false;
            	elseif sheet.bola1intimQ == false then
            		sheet.bola5intimQ = false;
            		sheet.bola4intimQ = false;
            		sheet.bola3intimQ = false;
            		sheet.bola2intimQ = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5tinoQ == true then
            		sheet.bola4tinoQ = true;
            		sheet.bola3tinoQ = true;
            		sheet.bola2tinoQ = true;
            		sheet.bola1tinoQ = true;
            	elseif sheet.bola4tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola3tinoQ = true;
            		sheet.bola2tinoQ = true;
            		sheet.bola1tinoQ = true;
            	elseif sheet.bola3tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola2tinoQ = true;
            		sheet.bola1tinoQ = true;
            	elseif sheet.bola2tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola3tinoQ = false;
            		sheet.bola1tinoQ = true;	
            	elseif sheet.bola1tinoQ == true then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola3tinoQ = false;
            		sheet.bola2tinoQ = false;
            	elseif sheet.bola1tinoQ == false then
            		sheet.bola5tinoQ = false;
            		sheet.bola4tinoQ = false;
            		sheet.bola3tinoQ = false;
            		sheet.bola2tinoQ = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5liderQ == true then
            		sheet.bola4liderQ = true;
            		sheet.bola3liderQ = true;
            		sheet.bola2liderQ = true;
            		sheet.bola1liderQ = true;
            	elseif sheet.bola4liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola3liderQ = true;
            		sheet.bola2liderQ = true;
            		sheet.bola1liderQ = true;
            	elseif sheet.bola3liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola2liderQ = true;
            		sheet.bola1liderQ = true;
            	elseif sheet.bola2liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola3liderQ = false;
            		sheet.bola1liderQ = true;	
            	elseif sheet.bola1liderQ == true then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola3liderQ = false;
            		sheet.bola2liderQ = false;
            	elseif sheet.bola1liderQ == false then
            		sheet.bola5liderQ = false;
            		sheet.bola4liderQ = false;
            		sheet.bola3liderQ = false;
            		sheet.bola2liderQ = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5manhaQ == true then
            		sheet.bola4manhaQ = true;
            		sheet.bola3manhaQ = true;
            		sheet.bola2manhaQ = true;
            		sheet.bola1manhaQ = true;
            	elseif sheet.bola4manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola3manhaQ = true;
            		sheet.bola2manhaQ = true;
            		sheet.bola1manhaQ = true;
            	elseif sheet.bola3manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola2manhaQ = true;
            		sheet.bola1manhaQ = true;
            	elseif sheet.bola2manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola3manhaQ = false;
            		sheet.bola1manhaQ = true;	
            	elseif sheet.bola1manhaQ == true then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola3manhaQ = false;
            		sheet.bola2manhaQ = false;
            	elseif sheet.bola1manhaQ == false then
            		sheet.bola5manhaQ = false;
            		sheet.bola4manhaQ = false;
            		sheet.bola3manhaQ = false;
            		sheet.bola2manhaQ = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5labiaQ == true then
            		sheet.bola4labiaQ = true;
            		sheet.bola3labiaQ = true;
            		sheet.bola2labiaQ = true;
            		sheet.bola1labiaQ = true;
            	elseif sheet.bola4labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola3labiaQ = true;
            		sheet.bola2labiaQ = true;
            		sheet.bola1labiaQ = true;
            	elseif sheet.bola3labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola2labiaQ = true;
            		sheet.bola1labiaQ = true;
            	elseif sheet.bola2labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola3labiaQ = false;
            		sheet.bola1labiaQ = true;	
            	elseif sheet.bola1labiaQ == true then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola3labiaQ = false;
            		sheet.bola2labiaQ = false;
            	elseif sheet.bola1labiaQ == false then
            		sheet.bola5labiaQ = false;
            		sheet.bola4labiaQ = false;
            		sheet.bola3labiaQ = false;
            		sheet.bola2labiaQ = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5esquiQ == true then
            		sheet.bola4esquiQ = true;
            		sheet.bola3esquiQ = true;
            		sheet.bola2esquiQ = true;
            		sheet.bola1esquiQ = true;
            	elseif sheet.bola4esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola3esquiQ = true;
            		sheet.bola2esquiQ = true;
            		sheet.bola1esquiQ = true;
            	elseif sheet.bola3esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola2esquiQ = true;
            		sheet.bola1esquiQ = true;
            	elseif sheet.bola2esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola3esquiQ = false;
            		sheet.bola1esquiQ = true;	
            	elseif sheet.bola1esquiQ == true then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola3esquiQ = false;
            		sheet.bola2esquiQ = false;
            	elseif sheet.bola1esquiQ == false then
            		sheet.bola5esquiQ = false;
            		sheet.bola4esquiQ = false;
            		sheet.bola3esquiQ = false;
            		sheet.bola2esquiQ = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5empcaQ == true then
            		sheet.bola4empcaQ = true;
            		sheet.bola3empcaQ = true;
            		sheet.bola2empcaQ = true;
            		sheet.bola1empcaQ = true;
            	elseif sheet.bola4empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola3empcaQ = true;
            		sheet.bola2empcaQ = true;
            		sheet.bola1empcaQ = true;
            	elseif sheet.bola3empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola2empcaQ = true;
            		sheet.bola1empcaQ = true;
            	elseif sheet.bola2empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola3empcaQ = false;
            		sheet.bola1empcaQ = true;	
            	elseif sheet.bola1empcaQ == true then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola3empcaQ = false;
            		sheet.bola2empcaQ = false;
            	elseif sheet.bola1empcaQ == false then
            		sheet.bola5empcaQ = false;
            		sheet.bola4empcaQ = false;
            		sheet.bola3empcaQ = false;
            		sheet.bola2empcaQ = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5ofiQ == true then
            		sheet.bola4ofiQ = true;
            		sheet.bola3ofiQ = true;
            		sheet.bola2ofiQ = true;
            		sheet.bola1ofiQ = true;
            	elseif sheet.bola4ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola3ofiQ = true;
            		sheet.bola2ofiQ = true;
            		sheet.bola1ofiQ = true;
            	elseif sheet.bola3ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola2ofiQ = true;
            		sheet.bola1ofiQ = true;
            	elseif sheet.bola2ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola3ofiQ = false;
            		sheet.bola1ofiQ = true;	
            	elseif sheet.bola1ofiQ == true then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola3ofiQ = false;
            		sheet.bola2ofiQ = false;
            	elseif sheet.bola1ofiQ == false then
            		sheet.bola5ofiQ = false;
            		sheet.bola4ofiQ = false;
            		sheet.bola3ofiQ = false;
            		sheet.bola2ofiQ = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5conduQ == true then
            		sheet.bola4conduQ = true;
            		sheet.bola3conduQ = true;
            		sheet.bola2conduQ = true;
            		sheet.bola1conduQ = true;
            	elseif sheet.bola4conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola3conduQ = true;
            		sheet.bola2conduQ = true;
            		sheet.bola1conduQ = true;
            	elseif sheet.bola3conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola2conduQ = true;
            		sheet.bola1conduQ = true;
            	elseif sheet.bola2conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola3conduQ = false;
            		sheet.bola1conduQ = true;	
            	elseif sheet.bola1conduQ == true then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola3conduQ = false;
            		sheet.bola2conduQ = false;
            	elseif sheet.bola1conduQ == false then
            		sheet.bola5conduQ = false;
            		sheet.bola4conduQ = false;
            		sheet.bola3conduQ = false;
            		sheet.bola2conduQ = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5etiqueQ == true then
            		sheet.bola4etiqueQ = true;
            		sheet.bola3etiqueQ = true;
            		sheet.bola2etiqueQ = true;
            		sheet.bola1etiqueQ = true;
            	elseif sheet.bola4etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola3etiqueQ = true;
            		sheet.bola2etiqueQ = true;
            		sheet.bola1etiqueQ = true;
            	elseif sheet.bola3etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola2etiqueQ = true;
            		sheet.bola1etiqueQ = true;
            	elseif sheet.bola2etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola3etiqueQ = false;
            		sheet.bola1etiqueQ = true;	
            	elseif sheet.bola1etiqueQ == true then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola3etiqueQ = false;
            		sheet.bola2etiqueQ = false;
            	elseif sheet.bola1etiqueQ == false then
            		sheet.bola5etiqueQ = false;
            		sheet.bola4etiqueQ = false;
            		sheet.bola3etiqueQ = false;
            		sheet.bola2etiqueQ = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5armprQ == true then
            		sheet.bola4armprQ = true;
            		sheet.bola3armprQ = true;
            		sheet.bola2armprQ = true;
            		sheet.bola1armprQ = true;
            	elseif sheet.bola4armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola3armprQ = true;
            		sheet.bola2armprQ = true;
            		sheet.bola1armprQ = true;
            	elseif sheet.bola3armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola2armprQ = true;
            		sheet.bola1armprQ = true;
            	elseif sheet.bola2armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola3armprQ = false;
            		sheet.bola1armprQ = true;	
            	elseif sheet.bola1armprQ == true then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola3armprQ = false;
            		sheet.bola2armprQ = false;
            	elseif sheet.bola1armprQ == false then
            		sheet.bola5armprQ = false;
            		sheet.bola4armprQ = false;
            		sheet.bola3armprQ = false;
            		sheet.bola2armprQ = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5segurQ == true then
            		sheet.bola4segurQ = true;
            		sheet.bola3segurQ = true;
            		sheet.bola2segurQ = true;
            		sheet.bola1segurQ = true;
            	elseif sheet.bola4segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola3segurQ = true;
            		sheet.bola2segurQ = true;
            		sheet.bola1segurQ = true;
            	elseif sheet.bola3segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola2segurQ = true;
            		sheet.bola1segurQ = true;
            	elseif sheet.bola2segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola3segurQ = false;
            		sheet.bola1segurQ = true;	
            	elseif sheet.bola1segurQ == true then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola3segurQ = false;
            		sheet.bola2segurQ = false;
            	elseif sheet.bola1segurQ == false then
            		sheet.bola5segurQ = false;
            		sheet.bola4segurQ = false;
            		sheet.bola3segurQ = false;
            		sheet.bola2segurQ = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5armbrQ == true then
            		sheet.bola4armbrQ = true;
            		sheet.bola3armbrQ = true;
            		sheet.bola2armbrQ = true;
            		sheet.bola1armbrQ = true;
            	elseif sheet.bola4armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola3armbrQ = true;
            		sheet.bola2armbrQ = true;
            		sheet.bola1armbrQ = true;
            	elseif sheet.bola3armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola2armbrQ = true;
            		sheet.bola1armbrQ = true;
            	elseif sheet.bola2armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola3armbrQ = false;
            		sheet.bola1armbrQ = true;	
            	elseif sheet.bola1armbrQ == true then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola3armbrQ = false;
            		sheet.bola2armbrQ = false;
            	elseif sheet.bola1armbrQ == false then
            		sheet.bola5armbrQ = false;
            		sheet.bola4armbrQ = false;
            		sheet.bola3armbrQ = false;
            		sheet.bola2armbrQ = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5perfoQ == true then
            		sheet.bola4perfoQ = true;
            		sheet.bola3perfoQ = true;
            		sheet.bola2perfoQ = true;
            		sheet.bola1perfoQ = true;
            	elseif sheet.bola4perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola3perfoQ = true;
            		sheet.bola2perfoQ = true;
            		sheet.bola1perfoQ = true;
            	elseif sheet.bola3perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola2perfoQ = true;
            		sheet.bola1perfoQ = true;
            	elseif sheet.bola2perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola3perfoQ = false;
            		sheet.bola1perfoQ = true;	
            	elseif sheet.bola1perfoQ == true then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola3perfoQ = false;
            		sheet.bola2perfoQ = false;
            	elseif sheet.bola1perfoQ == false then
            		sheet.bola5perfoQ = false;
            		sheet.bola4perfoQ = false;
            		sheet.bola3perfoQ = false;
            		sheet.bola2perfoQ = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5furtiQ == true then
            		sheet.bola4furtiQ = true;
            		sheet.bola3furtiQ = true;
            		sheet.bola2furtiQ = true;
            		sheet.bola1furtiQ = true;
            	elseif sheet.bola4furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola3furtiQ = true;
            		sheet.bola2furtiQ = true;
            		sheet.bola1furtiQ = true;
            	elseif sheet.bola3furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola2furtiQ = true;
            		sheet.bola1furtiQ = true;
            	elseif sheet.bola2furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola3furtiQ = false;
            		sheet.bola1furtiQ = true;	
            	elseif sheet.bola1furtiQ == true then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola3furtiQ = false;
            		sheet.bola2furtiQ = false;
            	elseif sheet.bola1furtiQ == false then
            		sheet.bola5furtiQ = false;
            		sheet.bola4furtiQ = false;
            		sheet.bola3furtiQ = false;
            		sheet.bola2furtiQ = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5sobreQ == true then
            		sheet.bola4sobreQ = true;
            		sheet.bola3sobreQ = true;
            		sheet.bola2sobreQ = true;
            		sheet.bola1sobreQ = true;
            	elseif sheet.bola4sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola3sobreQ = true;
            		sheet.bola2sobreQ = true;
            		sheet.bola1sobreQ = true;
            	elseif sheet.bola3sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola2sobreQ = true;
            		sheet.bola1sobreQ = true;
            	elseif sheet.bola2sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola3sobreQ = false;
            		sheet.bola1sobreQ = true;	
            	elseif sheet.bola1sobreQ == true then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola3sobreQ = false;
            		sheet.bola2sobreQ = false;
            	elseif sheet.bola1sobreQ == false then
            		sheet.bola5sobreQ = false;
            		sheet.bola4sobreQ = false;
            		sheet.bola3sobreQ = false;
            		sheet.bola2sobreQ = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5montaQ == true then
            		sheet.bola4montaQ = true;
            		sheet.bola3montaQ = true;
            		sheet.bola2montaQ = true;
            		sheet.bola1montaQ = true;
            	elseif sheet.bola4montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola3montaQ = true;
            		sheet.bola2montaQ = true;
            		sheet.bola1montaQ = true;
            	elseif sheet.bola3montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola2montaQ = true;
            		sheet.bola1montaQ = true;
            	elseif sheet.bola2montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola3montaQ = false;
            		sheet.bola1montaQ = true;	
            	elseif sheet.bola1montaQ == true then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola3montaQ = false;
            		sheet.bola2montaQ = false;
            	elseif sheet.bola1montaQ == false then
            		sheet.bola5montaQ = false;
            		sheet.bola4montaQ = false;
            		sheet.bola3montaQ = false;
            		sheet.bola2montaQ = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5instruQ == true then
            		sheet.bola4instruQ = true;
            		sheet.bola3instruQ = true;
            		sheet.bola2instruQ = true;
            		sheet.bola1instruQ = true;
            	elseif sheet.bola4instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola3instruQ = true;
            		sheet.bola2instruQ = true;
            		sheet.bola1instruQ = true;
            	elseif sheet.bola3instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola2instruQ = true;
            		sheet.bola1instruQ = true;
            	elseif sheet.bola2instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola3instruQ = false;
            		sheet.bola1instruQ = true;	
            	elseif sheet.bola1instruQ == true then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola3instruQ = false;
            		sheet.bola2instruQ = false;
            	elseif sheet.bola1instruQ == false then
            		sheet.bola5instruQ = false;
            		sheet.bola4instruQ = false;
            		sheet.bola3instruQ = false;
            		sheet.bola2instruQ = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5compuQ == true then
            		sheet.bola4compuQ = true;
            		sheet.bola3compuQ = true;
            		sheet.bola2compuQ = true;
            		sheet.bola1compuQ = true;
            	elseif sheet.bola4compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola3compuQ = true;
            		sheet.bola2compuQ = true;
            		sheet.bola1compuQ = true;
            	elseif sheet.bola3compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola2compuQ = true;
            		sheet.bola1compuQ = true;
            	elseif sheet.bola2compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola3compuQ = false;
            		sheet.bola1compuQ = true;	
            	elseif sheet.bola1compuQ == true then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola3compuQ = false;
            		sheet.bola2compuQ = false;
            	elseif sheet.bola1compuQ == false then
            		sheet.bola5compuQ = false;
            		sheet.bola4compuQ = false;
            		sheet.bola3compuQ = false;
            		sheet.bola2compuQ = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5enigQ == true then
            		sheet.bola4enigQ = true;
            		sheet.bola3enigQ = true;
            		sheet.bola2enigQ = true;
            		sheet.bola1enigQ = true;
            	elseif sheet.bola4enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola3enigQ = true;
            		sheet.bola2enigQ = true;
            		sheet.bola1enigQ = true;
            	elseif sheet.bola3enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola2enigQ = true;
            		sheet.bola1enigQ = true;
            	elseif sheet.bola2enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola3enigQ = false;
            		sheet.bola1enigQ = true;	
            	elseif sheet.bola1enigQ == true then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola3enigQ = false;
            		sheet.bola2enigQ = false;
            	elseif sheet.bola1enigQ == false then
            		sheet.bola5enigQ = false;
            		sheet.bola4enigQ = false;
            		sheet.bola3enigQ = false;
            		sheet.bola2enigQ = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5gramaQ == true then
            		sheet.bola4gramaQ = true;
            		sheet.bola3gramaQ = true;
            		sheet.bola2gramaQ = true;
            		sheet.bola1gramaQ = true;
            	elseif sheet.bola4gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola3gramaQ = true;
            		sheet.bola2gramaQ = true;
            		sheet.bola1gramaQ = true;
            	elseif sheet.bola3gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola2gramaQ = true;
            		sheet.bola1gramaQ = true;
            	elseif sheet.bola2gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola3gramaQ = false;
            		sheet.bola1gramaQ = true;	
            	elseif sheet.bola1gramaQ == true then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola3gramaQ = false;
            		sheet.bola2gramaQ = false;
            	elseif sheet.bola1gramaQ == false then
            		sheet.bola5gramaQ = false;
            		sheet.bola4gramaQ = false;
            		sheet.bola3gramaQ = false;
            		sheet.bola2gramaQ = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5invesQ == true then
            		sheet.bola4invesQ = true;
            		sheet.bola3invesQ = true;
            		sheet.bola2invesQ = true;
            		sheet.bola1invesQ = true;
            	elseif sheet.bola4invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola3invesQ = true;
            		sheet.bola2invesQ = true;
            		sheet.bola1invesQ = true;
            	elseif sheet.bola3invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola2invesQ = true;
            		sheet.bola1invesQ = true;
            	elseif sheet.bola2invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola3invesQ = false;
            		sheet.bola1invesQ = true;	
            	elseif sheet.bola1invesQ == true then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola3invesQ = false;
            		sheet.bola2invesQ = false;
            	elseif sheet.bola1invesQ == false then
            		sheet.bola5invesQ = false;
            		sheet.bola4invesQ = false;
            		sheet.bola3invesQ = false;
            		sheet.bola2invesQ = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5direiQ == true then
            		sheet.bola4direiQ = true;
            		sheet.bola3direiQ = true;
            		sheet.bola2direiQ = true;
            		sheet.bola1direiQ = true;
            	elseif sheet.bola4direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola3direiQ = true;
            		sheet.bola2direiQ = true;
            		sheet.bola1direiQ = true;
            	elseif sheet.bola3direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola2direiQ = true;
            		sheet.bola1direiQ = true;
            	elseif sheet.bola2direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola3direiQ = false;
            		sheet.bola1direiQ = true;	
            	elseif sheet.bola1direiQ == true then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola3direiQ = false;
            		sheet.bola2direiQ = false;
            	elseif sheet.bola1direiQ == false then
            		sheet.bola5direiQ = false;
            		sheet.bola4direiQ = false;
            		sheet.bola3direiQ = false;
            		sheet.bola2direiQ = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5medicQ == true then
            		sheet.bola4medicQ = true;
            		sheet.bola3medicQ = true;
            		sheet.bola2medicQ = true;
            		sheet.bola1medicQ = true;
            	elseif sheet.bola4medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola3medicQ = true;
            		sheet.bola2medicQ = true;
            		sheet.bola1medicQ = true;
            	elseif sheet.bola3medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola2medicQ = true;
            		sheet.bola1medicQ = true;
            	elseif sheet.bola2medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola3medicQ = false;
            		sheet.bola1medicQ = true;	
            	elseif sheet.bola1medicQ == true then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola3medicQ = false;
            		sheet.bola2medicQ = false;
            	elseif sheet.bola1medicQ == false then
            		sheet.bola5medicQ = false;
            		sheet.bola4medicQ = false;
            		sheet.bola3medicQ = false;
            		sheet.bola2medicQ = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5politQ == true then
            		sheet.bola4politQ = true;
            		sheet.bola3politQ = true;
            		sheet.bola2politQ = true;
            		sheet.bola1politQ = true;
            	elseif sheet.bola4politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola3politQ = true;
            		sheet.bola2politQ = true;
            		sheet.bola1politQ = true;
            	elseif sheet.bola3politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola2politQ = true;
            		sheet.bola1politQ = true;
            	elseif sheet.bola2politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola3politQ = false;
            		sheet.bola1politQ = true;	
            	elseif sheet.bola1politQ == true then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola3politQ = false;
            		sheet.bola2politQ = false;
            	elseif sheet.bola1politQ == false then
            		sheet.bola5politQ = false;
            		sheet.bola4politQ = false;
            		sheet.bola3politQ = false;
            		sheet.bola2politQ = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5cienciaQ == true then
            		sheet.bola4cienciaQ = true;
            		sheet.bola3cienciaQ = true;
            		sheet.bola2cienciaQ = true;
            		sheet.bola1cienciaQ = true;
            	elseif sheet.bola4cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola3cienciaQ = true;
            		sheet.bola2cienciaQ = true;
            		sheet.bola1cienciaQ = true;
            	elseif sheet.bola3cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola2cienciaQ = true;
            		sheet.bola1cienciaQ = true;
            	elseif sheet.bola2cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola3cienciaQ = false;
            		sheet.bola1cienciaQ = true;	
            	elseif sheet.bola1cienciaQ == true then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola3cienciaQ = false;
            		sheet.bola2cienciaQ = false;
            	elseif sheet.bola1cienciaQ == false then
            		sheet.bola5cienciaQ = false;
            		sheet.bola4cienciaQ = false;
            		sheet.bola3cienciaQ = false;
            		sheet.bola2cienciaQ = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5tecnoQ == true then
            		sheet.bola4tecnoQ = true;
            		sheet.bola3tecnoQ = true;
            		sheet.bola2tecnoQ = true;
            		sheet.bola1tecnoQ = true;
            	elseif sheet.bola4tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola3tecnoQ = true;
            		sheet.bola2tecnoQ = true;
            		sheet.bola1tecnoQ = true;
            	elseif sheet.bola3tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola2tecnoQ = true;
            		sheet.bola1tecnoQ = true;
            	elseif sheet.bola2tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola3tecnoQ = false;
            		sheet.bola1tecnoQ = true;	
            	elseif sheet.bola1tecnoQ == true then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola3tecnoQ = false;
            		sheet.bola2tecnoQ = false;
            	elseif sheet.bola1tecnoQ == false then
            		sheet.bola5tecnoQ = false;
            		sheet.bola4tecnoQ = false;
            		sheet.bola3tecnoQ = false;
            		sheet.bola2tecnoQ = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola5linguiQ == true then
            		sheet.bola4linguiQ = true;
            		sheet.bola3linguiQ = true;
            		sheet.bola2linguiQ = true;
            		sheet.bola1linguiQ = true;
            	elseif sheet.bola4linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola3linguiQ = true;
            		sheet.bola2linguiQ = true;
            		sheet.bola1linguiQ = true;
            	elseif sheet.bola3linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola2linguiQ = true;
            		sheet.bola1linguiQ = true;
            	elseif sheet.bola2linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola3linguiQ = false;
            		sheet.bola1linguiQ = true;	
            	elseif sheet.bola1linguiQ == true then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola3linguiQ = false;
            		sheet.bola2linguiQ = false;
            	elseif sheet.bola1linguiQ == false then
            		sheet.bola5linguiQ = false;
            		sheet.bola4linguiQ = false;
            		sheet.bola3linguiQ = false;
            		sheet.bola2linguiQ = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola10GlQ == true then
            		sheet.bola9GlQ = true;
            		sheet.bola8GlQ = true;
            		sheet.bola7GlQ = true;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola9GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola8GlQ = true;
            		sheet.bola7GlQ = true;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola8GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola7GlQ = true;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola7GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola6GlQ = true;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola6GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola5GlQ = true;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola5GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola4GlQ = true;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola4GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola3GlQ = true;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola3GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola2GlQ = true;
            		sheet.bola1GlQ = true;
            	elseif sheet.bola2GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola3GlQ = false;
            		sheet.bola1GlQ = true;	
            	elseif sheet.bola1GlQ == true then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola3GlQ = false;
            		sheet.bola2GlQ = false;
            	elseif sheet.bola1GlQ == false then
            		sheet.bola10GlQ = false;
            		sheet.bola9GlQ = false;
            		sheet.bola8GlQ = false;
            		sheet.bola7GlQ = false;
            		sheet.bola6GlQ = false;
            		sheet.bola5GlQ = false;
            		sheet.bola4GlQ = false;
            		sheet.bola3GlQ = false;
            		sheet.bola2GlQ = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10GlQ == true then
            		sheet.square9GlQ = true;
            		sheet.square8GlQ = true;
            		sheet.square7GlQ = true;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square9GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square8GlQ = true;
            		sheet.square7GlQ = true;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square8GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square7GlQ = true;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square7GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square6GlQ = true;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square6GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square5GlQ = true;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square5GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square4GlQ = true;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square4GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square3GlQ = true;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square3GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square2GlQ = true;
            		sheet.square1GlQ = true;
            	elseif sheet.square2GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square3GlQ = false;
            		sheet.square1GlQ = true;	
            	elseif sheet.square1GlQ == true then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square3GlQ = false;
            		sheet.square2GlQ = false;
            	elseif sheet.square1GlQ == false then
            		sheet.square10GlQ = false;
            		sheet.square9GlQ = false;
            		sheet.square8GlQ = false;
            		sheet.square7GlQ = false;
            		sheet.square6GlQ = false;
            		sheet.square5GlQ = false;
            		sheet.square4GlQ = false;
            		sheet.square3GlQ = false;
            		sheet.square2GlQ = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mirror10BanQ == true then
            		sheet.mirror9BanQ = true;
            		sheet.mirror8BanQ = true;
            		sheet.mirror7BanQ = true;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror9BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror8BanQ = true;
            		sheet.mirror7BanQ = true;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror8BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror7BanQ = true;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror7BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror6BanQ = true;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror6BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror5BanQ = true;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror5BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror4BanQ = true;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror4BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror3BanQ = true;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror3BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror2BanQ = true;
            		sheet.mirror1BanQ = true;
            	elseif sheet.mirror2BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror3BanQ = false;
            		sheet.mirror1BanQ = true;	
            	elseif sheet.mirror1BanQ == true then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror3BanQ = false;
            		sheet.mirror2BanQ = false;
            	elseif sheet.mirror1BanQ == false then
            		sheet.mirror10BanQ = false;
            		sheet.mirror9BanQ = false;
            		sheet.mirror8BanQ = false;
            		sheet.mirror7BanQ = false;
            		sheet.mirror6BanQ = false;
            		sheet.mirror5BanQ = false;
            		sheet.mirror4BanQ = false;
            		sheet.mirror3BanQ = false;
            		sheet.mirror2BanQ = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10BanQ == true then
            		sheet.square9BanQ = true;
            		sheet.square8BanQ = true;
            		sheet.square7BanQ = true;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square9BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square8BanQ = true;
            		sheet.square7BanQ = true;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square8BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square7BanQ = true;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square7BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square6BanQ = true;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square6BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square5BanQ = true;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square5BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square4BanQ = true;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square4BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square3BanQ = true;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square3BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square2BanQ = true;
            		sheet.square1BanQ = true;
            	elseif sheet.square2BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square3BanQ = false;
            		sheet.square1BanQ = true;	
            	elseif sheet.square1BanQ == true then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square3BanQ = false;
            		sheet.square2BanQ = false;
            	elseif sheet.square1BanQ == false then
            		sheet.square10BanQ = false;
            		sheet.square9BanQ = false;
            		sheet.square8BanQ = false;
            		sheet.square7BanQ = false;
            		sheet.square6BanQ = false;
            		sheet.square5BanQ = false;
            		sheet.square4BanQ = false;
            		sheet.square3BanQ = false;
            		sheet.square2BanQ = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola10FDVQ == true then
            		sheet.bola9FDVQ = true;
            		sheet.bola8FDVQ = true;
            		sheet.bola7FDVQ = true;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola9FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola8FDVQ = true;
            		sheet.bola7FDVQ = true;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola8FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola7FDVQ = true;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola7FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola6FDVQ = true;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola6FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola5FDVQ = true;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola5FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola4FDVQ = true;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola4FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola3FDVQ = true;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola3FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola2FDVQ = true;
            		sheet.bola1FDVQ = true;
            	elseif sheet.bola2FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola3FDVQ = false;
            		sheet.bola1FDVQ = true;	
            	elseif sheet.bola1FDVQ == true then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola3FDVQ = false;
            		sheet.bola2FDVQ = false;
            	elseif sheet.bola1FDVQ == false then
            		sheet.bola10FDVQ = false;
            		sheet.bola9FDVQ = false;
            		sheet.bola8FDVQ = false;
            		sheet.bola7FDVQ = false;
            		sheet.bola6FDVQ = false;
            		sheet.bola5FDVQ = false;
            		sheet.bola4FDVQ = false;
            		sheet.bola3FDVQ = false;
            		sheet.bola2FDVQ = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.square10FDVQ == true then
            		sheet.square9FDVQ = true;
            		sheet.square8FDVQ = true;
            		sheet.square7FDVQ = true;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square9FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square8FDVQ = true;
            		sheet.square7FDVQ = true;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square8FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square7FDVQ = true;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square7FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square6FDVQ = true;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square6FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square5FDVQ = true;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square5FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square4FDVQ = true;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square4FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square3FDVQ = true;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square3FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square2FDVQ = true;
            		sheet.square1FDVQ = true;
            	elseif sheet.square2FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square3FDVQ = false;
            		sheet.square1FDVQ = true;	
            	elseif sheet.square1FDVQ == true then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square3FDVQ = false;
            		sheet.square2FDVQ = false;
            	elseif sheet.square1FDVQ == false then
            		sheet.square10FDVQ = false;
            		sheet.square9FDVQ = false;
            		sheet.square8FDVQ = false;
            		sheet.square7FDVQ = false;
            		sheet.square6FDVQ = false;
            		sheet.square5FDVQ = false;
            		sheet.square4FDVQ = false;
            		sheet.square3FDVQ = false;
            		sheet.square2FDVQ = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola7LetalQ == true then
            		sheet.bola6LetalQ = true;
            		sheet.bola5LetalQ = true;
            		sheet.bola4LetalQ = true;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola6LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola5LetalQ = true;
            		sheet.bola4LetalQ = true;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola5LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola4LetalQ = true;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola4LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola3LetalQ = true;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola3LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola2LetalQ = true;
            		sheet.bola1LetalQ = true;
            	elseif sheet.bola2LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola3LetalQ = false;
            		sheet.bola1LetalQ = true;	
            	elseif sheet.bola1LetalQ == true then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola3LetalQ = false;
            		sheet.bola2LetalQ = false;
            	elseif sheet.bola1LetalQ == false then
            		sheet.bola7LetalQ = false;
            		sheet.bola6LetalQ = false;
            		sheet.bola5LetalQ = false;
            		sheet.bola4LetalQ = false;
            		sheet.bola3LetalQ = false;
            		sheet.bola2LetalQ = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bola7AgravadoQ == true then
            		sheet.bola6AgravadoQ = true;
            		sheet.bola5AgravadoQ = true;
            		sheet.bola4AgravadoQ = true;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola6AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola5AgravadoQ = true;
            		sheet.bola4AgravadoQ = true;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola5AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola4AgravadoQ = true;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola4AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola3AgravadoQ = true;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola3AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola2AgravadoQ = true;
            		sheet.bola1AgravadoQ = true;
            	elseif sheet.bola2AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola3AgravadoQ = false;
            		sheet.bola1AgravadoQ = true;	
            	elseif sheet.bola1AgravadoQ == true then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola3AgravadoQ = false;
            		sheet.bola2AgravadoQ = false;
            	elseif sheet.bola1AgravadoQ == false then
            		sheet.bola7AgravadoQ = false;
            		sheet.bola6AgravadoQ = false;
            		sheet.bola5AgravadoQ = false;
            		sheet.bola4AgravadoQ = false;
            		sheet.bola3AgravadoQ = false;
            		sheet.bola2AgravadoQ = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.imageCheckBox227 ~= nil then self.imageCheckBox227:destroy(); self.imageCheckBox227 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.layout266 ~= nil then self.layout266:destroy(); self.layout266 = nil; end;
        if self.layout275 ~= nil then self.layout275:destroy(); self.layout275 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.imageCheckBox200 ~= nil then self.imageCheckBox200:destroy(); self.imageCheckBox200 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.imageCheckBox175 ~= nil then self.imageCheckBox175:destroy(); self.imageCheckBox175 = nil; end;
        if self.imageCheckBox225 ~= nil then self.imageCheckBox225:destroy(); self.imageCheckBox225 = nil; end;
        if self.layout189 ~= nil then self.layout189:destroy(); self.layout189 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.layout195 ~= nil then self.layout195:destroy(); self.layout195 = nil; end;
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.layout257 ~= nil then self.layout257:destroy(); self.layout257 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.layout290 ~= nil then self.layout290:destroy(); self.layout290 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.layout187 ~= nil then self.layout187:destroy(); self.layout187 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.layout247 ~= nil then self.layout247:destroy(); self.layout247 = nil; end;
        if self.layout196 ~= nil then self.layout196:destroy(); self.layout196 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.imageCheckBox251 ~= nil then self.imageCheckBox251:destroy(); self.imageCheckBox251 = nil; end;
        if self.layout285 ~= nil then self.layout285:destroy(); self.layout285 = nil; end;
        if self.imageCheckBox210 ~= nil then self.imageCheckBox210:destroy(); self.imageCheckBox210 = nil; end;
        if self.layout289 ~= nil then self.layout289:destroy(); self.layout289 = nil; end;
        if self.imageCheckBox126 ~= nil then self.imageCheckBox126:destroy(); self.imageCheckBox126 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.layout249 ~= nil then self.layout249:destroy(); self.layout249 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.imageCheckBox166 ~= nil then self.imageCheckBox166:destroy(); self.imageCheckBox166 = nil; end;
        if self.imageCheckBox271 ~= nil then self.imageCheckBox271:destroy(); self.imageCheckBox271 = nil; end;
        if self.layout283 ~= nil then self.layout283:destroy(); self.layout283 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.imageCheckBox176 ~= nil then self.imageCheckBox176:destroy(); self.imageCheckBox176 = nil; end;
        if self.layout223 ~= nil then self.layout223:destroy(); self.layout223 = nil; end;
        if self.layout236 ~= nil then self.layout236:destroy(); self.layout236 = nil; end;
        if self.layout251 ~= nil then self.layout251:destroy(); self.layout251 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout194 ~= nil then self.layout194:destroy(); self.layout194 = nil; end;
        if self.imageCheckBox181 ~= nil then self.imageCheckBox181:destroy(); self.imageCheckBox181 = nil; end;
        if self.imageCheckBox174 ~= nil then self.imageCheckBox174:destroy(); self.imageCheckBox174 = nil; end;
        if self.imageCheckBox196 ~= nil then self.imageCheckBox196:destroy(); self.imageCheckBox196 = nil; end;
        if self.imageCheckBox129 ~= nil then self.imageCheckBox129:destroy(); self.imageCheckBox129 = nil; end;
        if self.layout276 ~= nil then self.layout276:destroy(); self.layout276 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.imageCheckBox168 ~= nil then self.imageCheckBox168:destroy(); self.imageCheckBox168 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.layout212 ~= nil then self.layout212:destroy(); self.layout212 = nil; end;
        if self.layout158 ~= nil then self.layout158:destroy(); self.layout158 = nil; end;
        if self.imageCheckBox145 ~= nil then self.imageCheckBox145:destroy(); self.imageCheckBox145 = nil; end;
        if self.imageCheckBox191 ~= nil then self.imageCheckBox191:destroy(); self.imageCheckBox191 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.layout174 ~= nil then self.layout174:destroy(); self.layout174 = nil; end;
        if self.imageCheckBox248 ~= nil then self.imageCheckBox248:destroy(); self.imageCheckBox248 = nil; end;
        if self.layout316 ~= nil then self.layout316:destroy(); self.layout316 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.layout311 ~= nil then self.layout311:destroy(); self.layout311 = nil; end;
        if self.layout312 ~= nil then self.layout312:destroy(); self.layout312 = nil; end;
        if self.imageCheckBox150 ~= nil then self.imageCheckBox150:destroy(); self.imageCheckBox150 = nil; end;
        if self.imageCheckBox136 ~= nil then self.imageCheckBox136:destroy(); self.imageCheckBox136 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout210 ~= nil then self.layout210:destroy(); self.layout210 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.layout205 ~= nil then self.layout205:destroy(); self.layout205 = nil; end;
        if self.layout232 ~= nil then self.layout232:destroy(); self.layout232 = nil; end;
        if self.imageCheckBox214 ~= nil then self.imageCheckBox214:destroy(); self.imageCheckBox214 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.imageCheckBox241 ~= nil then self.imageCheckBox241:destroy(); self.imageCheckBox241 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout203 ~= nil then self.layout203:destroy(); self.layout203 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.layout176 ~= nil then self.layout176:destroy(); self.layout176 = nil; end;
        if self.layout252 ~= nil then self.layout252:destroy(); self.layout252 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox131 ~= nil then self.imageCheckBox131:destroy(); self.imageCheckBox131 = nil; end;
        if self.layout300 ~= nil then self.layout300:destroy(); self.layout300 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.layout185 ~= nil then self.layout185:destroy(); self.layout185 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.imageCheckBox154 ~= nil then self.imageCheckBox154:destroy(); self.imageCheckBox154 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.layout307 ~= nil then self.layout307:destroy(); self.layout307 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.layout248 ~= nil then self.layout248:destroy(); self.layout248 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.layout235 ~= nil then self.layout235:destroy(); self.layout235 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.layout259 ~= nil then self.layout259:destroy(); self.layout259 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.layout317 ~= nil then self.layout317:destroy(); self.layout317 = nil; end;
        if self.layout288 ~= nil then self.layout288:destroy(); self.layout288 = nil; end;
        if self.imageCheckBox224 ~= nil then self.imageCheckBox224:destroy(); self.imageCheckBox224 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout246 ~= nil then self.layout246:destroy(); self.layout246 = nil; end;
        if self.layout256 ~= nil then self.layout256:destroy(); self.layout256 = nil; end;
        if self.imageCheckBox233 ~= nil then self.imageCheckBox233:destroy(); self.imageCheckBox233 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout191 ~= nil then self.layout191:destroy(); self.layout191 = nil; end;
        if self.layout273 ~= nil then self.layout273:destroy(); self.layout273 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.layout183 ~= nil then self.layout183:destroy(); self.layout183 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.layout186 ~= nil then self.layout186:destroy(); self.layout186 = nil; end;
        if self.layout229 ~= nil then self.layout229:destroy(); self.layout229 = nil; end;
        if self.imageCheckBox208 ~= nil then self.imageCheckBox208:destroy(); self.imageCheckBox208 = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.imageCheckBox239 ~= nil then self.imageCheckBox239:destroy(); self.imageCheckBox239 = nil; end;
        if self.layout277 ~= nil then self.layout277:destroy(); self.layout277 = nil; end;
        if self.layout310 ~= nil then self.layout310:destroy(); self.layout310 = nil; end;
        if self.imageCheckBox207 ~= nil then self.imageCheckBox207:destroy(); self.imageCheckBox207 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.imageCheckBox194 ~= nil then self.imageCheckBox194:destroy(); self.imageCheckBox194 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.imageCheckBox155 ~= nil then self.imageCheckBox155:destroy(); self.imageCheckBox155 = nil; end;
        if self.layout225 ~= nil then self.layout225:destroy(); self.layout225 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.layout278 ~= nil then self.layout278:destroy(); self.layout278 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout162 ~= nil then self.layout162:destroy(); self.layout162 = nil; end;
        if self.layout260 ~= nil then self.layout260:destroy(); self.layout260 = nil; end;
        if self.layout261 ~= nil then self.layout261:destroy(); self.layout261 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.layout270 ~= nil then self.layout270:destroy(); self.layout270 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.layout241 ~= nil then self.layout241:destroy(); self.layout241 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox182 ~= nil then self.imageCheckBox182:destroy(); self.imageCheckBox182 = nil; end;
        if self.layout254 ~= nil then self.layout254:destroy(); self.layout254 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.layout206 ~= nil then self.layout206:destroy(); self.layout206 = nil; end;
        if self.layout207 ~= nil then self.layout207:destroy(); self.layout207 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.layout244 ~= nil then self.layout244:destroy(); self.layout244 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.imageCheckBox219 ~= nil then self.imageCheckBox219:destroy(); self.imageCheckBox219 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout279 ~= nil then self.layout279:destroy(); self.layout279 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.layout262 ~= nil then self.layout262:destroy(); self.layout262 = nil; end;
        if self.imageCheckBox246 ~= nil then self.imageCheckBox246:destroy(); self.imageCheckBox246 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.layout315 ~= nil then self.layout315:destroy(); self.layout315 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.imageCheckBox260 ~= nil then self.imageCheckBox260:destroy(); self.imageCheckBox260 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.imageCheckBox173 ~= nil then self.imageCheckBox173:destroy(); self.imageCheckBox173 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox106 ~= nil then self.imageCheckBox106:destroy(); self.imageCheckBox106 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.imageCheckBox128 ~= nil then self.imageCheckBox128:destroy(); self.imageCheckBox128 = nil; end;
        if self.layout193 ~= nil then self.layout193:destroy(); self.layout193 = nil; end;
        if self.imageCheckBox193 ~= nil then self.imageCheckBox193:destroy(); self.imageCheckBox193 = nil; end;
        if self.imageCheckBox205 ~= nil then self.imageCheckBox205:destroy(); self.imageCheckBox205 = nil; end;
        if self.layout242 ~= nil then self.layout242:destroy(); self.layout242 = nil; end;
        if self.imageCheckBox213 ~= nil then self.imageCheckBox213:destroy(); self.imageCheckBox213 = nil; end;
        if self.imageCheckBox255 ~= nil then self.imageCheckBox255:destroy(); self.imageCheckBox255 = nil; end;
        if self.layout200 ~= nil then self.layout200:destroy(); self.layout200 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.layout228 ~= nil then self.layout228:destroy(); self.layout228 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.layout296 ~= nil then self.layout296:destroy(); self.layout296 = nil; end;
        if self.layout318 ~= nil then self.layout318:destroy(); self.layout318 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox249 ~= nil then self.imageCheckBox249:destroy(); self.imageCheckBox249 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.layout267 ~= nil then self.layout267:destroy(); self.layout267 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.layout268 ~= nil then self.layout268:destroy(); self.layout268 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.imageCheckBox231 ~= nil then self.imageCheckBox231:destroy(); self.imageCheckBox231 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.imageCheckBox247 ~= nil then self.imageCheckBox247:destroy(); self.imageCheckBox247 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.layout211 ~= nil then self.layout211:destroy(); self.layout211 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.layout309 ~= nil then self.layout309:destroy(); self.layout309 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.imageCheckBox125 ~= nil then self.imageCheckBox125:destroy(); self.imageCheckBox125 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.layout230 ~= nil then self.layout230:destroy(); self.layout230 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.layout165 ~= nil then self.layout165:destroy(); self.layout165 = nil; end;
        if self.layout198 ~= nil then self.layout198:destroy(); self.layout198 = nil; end;
        if self.layout216 ~= nil then self.layout216:destroy(); self.layout216 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout226 ~= nil then self.layout226:destroy(); self.layout226 = nil; end;
        if self.layout222 ~= nil then self.layout222:destroy(); self.layout222 = nil; end;
        if self.layout302 ~= nil then self.layout302:destroy(); self.layout302 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout303 ~= nil then self.layout303:destroy(); self.layout303 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout224 ~= nil then self.layout224:destroy(); self.layout224 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.imageCheckBox142 ~= nil then self.imageCheckBox142:destroy(); self.imageCheckBox142 = nil; end;
        if self.layout164 ~= nil then self.layout164:destroy(); self.layout164 = nil; end;
        if self.imageCheckBox264 ~= nil then self.imageCheckBox264:destroy(); self.imageCheckBox264 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout202 ~= nil then self.layout202:destroy(); self.layout202 = nil; end;
        if self.layout220 ~= nil then self.layout220:destroy(); self.layout220 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.layout272 ~= nil then self.layout272:destroy(); self.layout272 = nil; end;
        if self.imageCheckBox180 ~= nil then self.imageCheckBox180:destroy(); self.imageCheckBox180 = nil; end;
        if self.imageCheckBox253 ~= nil then self.imageCheckBox253:destroy(); self.imageCheckBox253 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.imageCheckBox252 ~= nil then self.imageCheckBox252:destroy(); self.imageCheckBox252 = nil; end;
        if self.imageCheckBox262 ~= nil then self.imageCheckBox262:destroy(); self.imageCheckBox262 = nil; end;
        if self.imageCheckBox157 ~= nil then self.imageCheckBox157:destroy(); self.imageCheckBox157 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.layout170 ~= nil then self.layout170:destroy(); self.layout170 = nil; end;
        if self.imageCheckBox172 ~= nil then self.imageCheckBox172:destroy(); self.imageCheckBox172 = nil; end;
        if self.imageCheckBox156 ~= nil then self.imageCheckBox156:destroy(); self.imageCheckBox156 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.imageCheckBox127 ~= nil then self.imageCheckBox127:destroy(); self.imageCheckBox127 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.layout227 ~= nil then self.layout227:destroy(); self.layout227 = nil; end;
        if self.imageCheckBox222 ~= nil then self.imageCheckBox222:destroy(); self.imageCheckBox222 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.imageCheckBox158 ~= nil then self.imageCheckBox158:destroy(); self.imageCheckBox158 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.imageCheckBox179 ~= nil then self.imageCheckBox179:destroy(); self.imageCheckBox179 = nil; end;
        if self.imageCheckBox171 ~= nil then self.imageCheckBox171:destroy(); self.imageCheckBox171 = nil; end;
        if self.imageCheckBox220 ~= nil then self.imageCheckBox220:destroy(); self.imageCheckBox220 = nil; end;
        if self.imageCheckBox235 ~= nil then self.imageCheckBox235:destroy(); self.imageCheckBox235 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.imageCheckBox204 ~= nil then self.imageCheckBox204:destroy(); self.imageCheckBox204 = nil; end;
        if self.imageCheckBox250 ~= nil then self.imageCheckBox250:destroy(); self.imageCheckBox250 = nil; end;
        if self.imageCheckBox197 ~= nil then self.imageCheckBox197:destroy(); self.imageCheckBox197 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.imageCheckBox242 ~= nil then self.imageCheckBox242:destroy(); self.imageCheckBox242 = nil; end;
        if self.imageCheckBox111 ~= nil then self.imageCheckBox111:destroy(); self.imageCheckBox111 = nil; end;
        if self.layout263 ~= nil then self.layout263:destroy(); self.layout263 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox211 ~= nil then self.imageCheckBox211:destroy(); self.imageCheckBox211 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.imageCheckBox268 ~= nil then self.imageCheckBox268:destroy(); self.imageCheckBox268 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.layout240 ~= nil then self.layout240:destroy(); self.layout240 = nil; end;
        if self.imageCheckBox165 ~= nil then self.imageCheckBox165:destroy(); self.imageCheckBox165 = nil; end;
        if self.layout209 ~= nil then self.layout209:destroy(); self.layout209 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.layout295 ~= nil then self.layout295:destroy(); self.layout295 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.layout201 ~= nil then self.layout201:destroy(); self.layout201 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.layout190 ~= nil then self.layout190:destroy(); self.layout190 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.imageCheckBox237 ~= nil then self.imageCheckBox237:destroy(); self.imageCheckBox237 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.layout219 ~= nil then self.layout219:destroy(); self.layout219 = nil; end;
        if self.layout245 ~= nil then self.layout245:destroy(); self.layout245 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout218 ~= nil then self.layout218:destroy(); self.layout218 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.imageCheckBox195 ~= nil then self.imageCheckBox195:destroy(); self.imageCheckBox195 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.imageCheckBox283 ~= nil then self.imageCheckBox283:destroy(); self.imageCheckBox283 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.layout250 ~= nil then self.layout250:destroy(); self.layout250 = nil; end;
        if self.layout171 ~= nil then self.layout171:destroy(); self.layout171 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.imageCheckBox215 ~= nil then self.imageCheckBox215:destroy(); self.imageCheckBox215 = nil; end;
        if self.layout177 ~= nil then self.layout177:destroy(); self.layout177 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.imageCheckBox153 ~= nil then self.imageCheckBox153:destroy(); self.imageCheckBox153 = nil; end;
        if self.layout169 ~= nil then self.layout169:destroy(); self.layout169 = nil; end;
        if self.layout217 ~= nil then self.layout217:destroy(); self.layout217 = nil; end;
        if self.layout199 ~= nil then self.layout199:destroy(); self.layout199 = nil; end;
        if self.imageCheckBox192 ~= nil then self.imageCheckBox192:destroy(); self.imageCheckBox192 = nil; end;
        if self.layout298 ~= nil then self.layout298:destroy(); self.layout298 = nil; end;
        if self.imageCheckBox244 ~= nil then self.imageCheckBox244:destroy(); self.imageCheckBox244 = nil; end;
        if self.layout243 ~= nil then self.layout243:destroy(); self.layout243 = nil; end;
        if self.layout192 ~= nil then self.layout192:destroy(); self.layout192 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.imageCheckBox138 ~= nil then self.imageCheckBox138:destroy(); self.imageCheckBox138 = nil; end;
        if self.imageCheckBox198 ~= nil then self.imageCheckBox198:destroy(); self.imageCheckBox198 = nil; end;
        if self.imageCheckBox199 ~= nil then self.imageCheckBox199:destroy(); self.imageCheckBox199 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout178 ~= nil then self.layout178:destroy(); self.layout178 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.layout180 ~= nil then self.layout180:destroy(); self.layout180 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout204 ~= nil then self.layout204:destroy(); self.layout204 = nil; end;
        if self.layout172 ~= nil then self.layout172:destroy(); self.layout172 = nil; end;
        if self.imageCheckBox258 ~= nil then self.imageCheckBox258:destroy(); self.imageCheckBox258 = nil; end;
        if self.layout271 ~= nil then self.layout271:destroy(); self.layout271 = nil; end;
        if self.imageCheckBox263 ~= nil then self.imageCheckBox263:destroy(); self.imageCheckBox263 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.layout299 ~= nil then self.layout299:destroy(); self.layout299 = nil; end;
        if self.imageCheckBox267 ~= nil then self.imageCheckBox267:destroy(); self.imageCheckBox267 = nil; end;
        if self.layout253 ~= nil then self.layout253:destroy(); self.layout253 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox229 ~= nil then self.imageCheckBox229:destroy(); self.imageCheckBox229 = nil; end;
        if self.imageCheckBox265 ~= nil then self.imageCheckBox265:destroy(); self.imageCheckBox265 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.layout314 ~= nil then self.layout314:destroy(); self.layout314 = nil; end;
        if self.layout292 ~= nil then self.layout292:destroy(); self.layout292 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.layout215 ~= nil then self.layout215:destroy(); self.layout215 = nil; end;
        if self.layout221 ~= nil then self.layout221:destroy(); self.layout221 = nil; end;
        if self.imageCheckBox256 ~= nil then self.imageCheckBox256:destroy(); self.imageCheckBox256 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox123 ~= nil then self.imageCheckBox123:destroy(); self.imageCheckBox123 = nil; end;
        if self.layout173 ~= nil then self.layout173:destroy(); self.layout173 = nil; end;
        if self.imageCheckBox234 ~= nil then self.imageCheckBox234:destroy(); self.imageCheckBox234 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.layout306 ~= nil then self.layout306:destroy(); self.layout306 = nil; end;
        if self.imageCheckBox238 ~= nil then self.imageCheckBox238:destroy(); self.imageCheckBox238 = nil; end;
        if self.imageCheckBox184 ~= nil then self.imageCheckBox184:destroy(); self.imageCheckBox184 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox169 ~= nil then self.imageCheckBox169:destroy(); self.imageCheckBox169 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.imageCheckBox134 ~= nil then self.imageCheckBox134:destroy(); self.imageCheckBox134 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.layout234 ~= nil then self.layout234:destroy(); self.layout234 = nil; end;
        if self.imageCheckBox217 ~= nil then self.imageCheckBox217:destroy(); self.imageCheckBox217 = nil; end;
        if self.imageCheckBox275 ~= nil then self.imageCheckBox275:destroy(); self.imageCheckBox275 = nil; end;
        if self.imageCheckBox280 ~= nil then self.imageCheckBox280:destroy(); self.imageCheckBox280 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.imageCheckBox146 ~= nil then self.imageCheckBox146:destroy(); self.imageCheckBox146 = nil; end;
        if self.layout313 ~= nil then self.layout313:destroy(); self.layout313 = nil; end;
        if self.layout280 ~= nil then self.layout280:destroy(); self.layout280 = nil; end;
        if self.layout238 ~= nil then self.layout238:destroy(); self.layout238 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.imageCheckBox278 ~= nil then self.imageCheckBox278:destroy(); self.imageCheckBox278 = nil; end;
        if self.imageCheckBox279 ~= nil then self.imageCheckBox279:destroy(); self.imageCheckBox279 = nil; end;
        if self.imageCheckBox135 ~= nil then self.imageCheckBox135:destroy(); self.imageCheckBox135 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.imageCheckBox206 ~= nil then self.imageCheckBox206:destroy(); self.imageCheckBox206 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.layout179 ~= nil then self.layout179:destroy(); self.layout179 = nil; end;
        if self.imageCheckBox162 ~= nil then self.imageCheckBox162:destroy(); self.imageCheckBox162 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.imageCheckBox139 ~= nil then self.imageCheckBox139:destroy(); self.imageCheckBox139 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.imageCheckBox187 ~= nil then self.imageCheckBox187:destroy(); self.imageCheckBox187 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.layout282 ~= nil then self.layout282:destroy(); self.layout282 = nil; end;
        if self.imageCheckBox163 ~= nil then self.imageCheckBox163:destroy(); self.imageCheckBox163 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.imageCheckBox223 ~= nil then self.imageCheckBox223:destroy(); self.imageCheckBox223 = nil; end;
        if self.imageCheckBox266 ~= nil then self.imageCheckBox266:destroy(); self.imageCheckBox266 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout274 ~= nil then self.layout274:destroy(); self.layout274 = nil; end;
        if self.imageCheckBox272 ~= nil then self.imageCheckBox272:destroy(); self.imageCheckBox272 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout213 ~= nil then self.layout213:destroy(); self.layout213 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.imageCheckBox245 ~= nil then self.imageCheckBox245:destroy(); self.imageCheckBox245 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.imageCheckBox259 ~= nil then self.imageCheckBox259:destroy(); self.imageCheckBox259 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.frmCodigo3 ~= nil then self.frmCodigo3:destroy(); self.frmCodigo3 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.layout308 ~= nil then self.layout308:destroy(); self.layout308 = nil; end;
        if self.layout269 ~= nil then self.layout269:destroy(); self.layout269 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.layout233 ~= nil then self.layout233:destroy(); self.layout233 = nil; end;
        if self.imageCheckBox202 ~= nil then self.imageCheckBox202:destroy(); self.imageCheckBox202 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.imageCheckBox226 ~= nil then self.imageCheckBox226:destroy(); self.imageCheckBox226 = nil; end;
        if self.layout291 ~= nil then self.layout291:destroy(); self.layout291 = nil; end;
        if self.layout294 ~= nil then self.layout294:destroy(); self.layout294 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.imageCheckBox276 ~= nil then self.imageCheckBox276:destroy(); self.imageCheckBox276 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout208 ~= nil then self.layout208:destroy(); self.layout208 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout293 ~= nil then self.layout293:destroy(); self.layout293 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout297 ~= nil then self.layout297:destroy(); self.layout297 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.imageCheckBox270 ~= nil then self.imageCheckBox270:destroy(); self.imageCheckBox270 = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout175 ~= nil then self.layout175:destroy(); self.layout175 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.layout264 ~= nil then self.layout264:destroy(); self.layout264 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.imageCheckBox274 ~= nil then self.imageCheckBox274:destroy(); self.imageCheckBox274 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.imageCheckBox281 ~= nil then self.imageCheckBox281:destroy(); self.imageCheckBox281 = nil; end;
        if self.layout231 ~= nil then self.layout231:destroy(); self.layout231 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.imageCheckBox121 ~= nil then self.imageCheckBox121:destroy(); self.imageCheckBox121 = nil; end;
        if self.imageCheckBox152 ~= nil then self.imageCheckBox152:destroy(); self.imageCheckBox152 = nil; end;
        if self.imageCheckBox170 ~= nil then self.imageCheckBox170:destroy(); self.imageCheckBox170 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.imageCheckBox201 ~= nil then self.imageCheckBox201:destroy(); self.imageCheckBox201 = nil; end;
        if self.imageCheckBox203 ~= nil then self.imageCheckBox203:destroy(); self.imageCheckBox203 = nil; end;
        if self.imageCheckBox254 ~= nil then self.imageCheckBox254:destroy(); self.imageCheckBox254 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.imageCheckBox188 ~= nil then self.imageCheckBox188:destroy(); self.imageCheckBox188 = nil; end;
        if self.imageCheckBox209 ~= nil then self.imageCheckBox209:destroy(); self.imageCheckBox209 = nil; end;
        if self.imageCheckBox218 ~= nil then self.imageCheckBox218:destroy(); self.imageCheckBox218 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.imageCheckBox228 ~= nil then self.imageCheckBox228:destroy(); self.imageCheckBox228 = nil; end;
        if self.imageCheckBox261 ~= nil then self.imageCheckBox261:destroy(); self.imageCheckBox261 = nil; end;
        if self.imageCheckBox177 ~= nil then self.imageCheckBox177:destroy(); self.imageCheckBox177 = nil; end;
        if self.imageCheckBox284 ~= nil then self.imageCheckBox284:destroy(); self.imageCheckBox284 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.layout197 ~= nil then self.layout197:destroy(); self.layout197 = nil; end;
        if self.layout281 ~= nil then self.layout281:destroy(); self.layout281 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout214 ~= nil then self.layout214:destroy(); self.layout214 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.imageCheckBox144 ~= nil then self.imageCheckBox144:destroy(); self.imageCheckBox144 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.imageCheckBox236 ~= nil then self.imageCheckBox236:destroy(); self.imageCheckBox236 = nil; end;
        if self.layout184 ~= nil then self.layout184:destroy(); self.layout184 = nil; end;
        if self.layout161 ~= nil then self.layout161:destroy(); self.layout161 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.layout286 ~= nil then self.layout286:destroy(); self.layout286 = nil; end;
        if self.imageCheckBox151 ~= nil then self.imageCheckBox151:destroy(); self.imageCheckBox151 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox243 ~= nil then self.imageCheckBox243:destroy(); self.imageCheckBox243 = nil; end;
        if self.layout265 ~= nil then self.layout265:destroy(); self.layout265 = nil; end;
        if self.imageCheckBox212 ~= nil then self.imageCheckBox212:destroy(); self.imageCheckBox212 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox140 ~= nil then self.imageCheckBox140:destroy(); self.imageCheckBox140 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.imageCheckBox221 ~= nil then self.imageCheckBox221:destroy(); self.imageCheckBox221 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.imageCheckBox282 ~= nil then self.imageCheckBox282:destroy(); self.imageCheckBox282 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.imageCheckBox216 ~= nil then self.imageCheckBox216:destroy(); self.imageCheckBox216 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.layout239 ~= nil then self.layout239:destroy(); self.layout239 = nil; end;
        if self.imageCheckBox273 ~= nil then self.imageCheckBox273:destroy(); self.imageCheckBox273 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.imageCheckBox269 ~= nil then self.imageCheckBox269:destroy(); self.imageCheckBox269 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.layout258 ~= nil then self.layout258:destroy(); self.layout258 = nil; end;
        if self.imageCheckBox277 ~= nil then self.imageCheckBox277:destroy(); self.imageCheckBox277 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.imageCheckBox240 ~= nil then self.imageCheckBox240:destroy(); self.imageCheckBox240 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.layout287 ~= nil then self.layout287:destroy(); self.layout287 = nil; end;
        if self.layout305 ~= nil then self.layout305:destroy(); self.layout305 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.imageCheckBox257 ~= nil then self.imageCheckBox257:destroy(); self.imageCheckBox257 = nil; end;
        if self.layout284 ~= nil then self.layout284:destroy(); self.layout284 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox230 ~= nil then self.imageCheckBox230:destroy(); self.imageCheckBox230 = nil; end;
        if self.imageCheckBox183 ~= nil then self.imageCheckBox183:destroy(); self.imageCheckBox183 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.layout237 ~= nil then self.layout237:destroy(); self.layout237 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.layout255 ~= nil then self.layout255:destroy(); self.layout255 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
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

function newfrmChangelingMorganna6_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmChangelingMorganna6_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmChangelingMorganna6_svg = {
    newEditor = newfrmChangelingMorganna6_svg, 
    new = newfrmChangelingMorganna6_svg, 
    name = "frmChangelingMorganna6_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmChangelingMorganna6_svg = _frmChangelingMorganna6_svg;
Firecast.registrarForm(_frmChangelingMorganna6_svg);

return _frmChangelingMorganna6_svg;
