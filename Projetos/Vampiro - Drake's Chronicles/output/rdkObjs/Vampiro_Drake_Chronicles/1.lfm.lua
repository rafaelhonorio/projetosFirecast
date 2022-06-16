require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmVampiro_Drake_Chronicles1_svg()
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
    obj:setName("frmVampiro_Drake_Chronicles1_svg");
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
    obj.image1:setSRC("/Vampiro_Drake_Chronicles/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(130);
    obj.layout1:setTop(150);
    obj.layout1:setWidth(170);
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
    obj.edit1:setWidth(170);
    obj.edit1:setHeight(30);
    obj.edit1:setField("Nome");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(155);
    obj.layout2:setTop(174);
    obj.layout2:setWidth(145);
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
    obj.edit2:setWidth(145);
    obj.edit2:setHeight(30);
    obj.edit2:setField("Jogador");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(155);
    obj.layout3:setTop(196);
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
    obj.edit3:setField("Crônica");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(405);
    obj.layout4:setTop(150);
    obj.layout4:setWidth(145);
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
    obj.edit4:setWidth(145);
    obj.edit4:setHeight(30);
    obj.edit4:setField("Natureza");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(465);
    obj.layout5:setTop(174);
    obj.layout5:setWidth(85);
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
    obj.edit5:setWidth(85);
    obj.edit5:setHeight(30);
    obj.edit5:setField("Comportamento");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(355);
    obj.layout6:setTop(196);
    obj.layout6:setWidth(195);
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
    obj.edit6:setWidth(195);
    obj.edit6:setHeight(30);
    obj.edit6:setField("Clã");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(645);
    obj.layout7:setTop(150);
    obj.layout7:setWidth(150);
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
    obj.edit7:setWidth(150);
    obj.edit7:setHeight(30);
    obj.edit7:setField("Geração");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(635);
    obj.layout8:setTop(174);
    obj.layout8:setWidth(163);
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
    obj.edit8:setWidth(163);
    obj.edit8:setHeight(30);
    obj.edit8:setField("Senhor");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(647);
    obj.layout9:setTop(196);
    obj.layout9:setWidth(150);
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
    obj.edit9:setWidth(150);
    obj.edit9:setHeight(30);
    obj.edit9:setField("Conceito");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(191);
    obj.layout10:setTop(282);
    obj.layout10:setWidth(18);
    obj.layout10:setHeight(18);
    obj.layout10:setName("layout10");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout10);
    obj.imageCheckBox1:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox1:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox1:setWidth(18);
    obj.imageCheckBox1:setHeight(18);
    obj.imageCheckBox1:setField("Gota1for");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(205);
    obj.layout11:setTop(282);
    obj.layout11:setWidth(18);
    obj.layout11:setHeight(18);
    obj.layout11:setName("layout11");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout11);
    obj.imageCheckBox2:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox2:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox2:setWidth(18);
    obj.imageCheckBox2:setHeight(18);
    obj.imageCheckBox2:setField("Gota2for");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(219);
    obj.layout12:setTop(282);
    obj.layout12:setWidth(18);
    obj.layout12:setHeight(18);
    obj.layout12:setName("layout12");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout12);
    obj.imageCheckBox3:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox3:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox3:setWidth(18);
    obj.imageCheckBox3:setHeight(18);
    obj.imageCheckBox3:setField("Gota3for");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(233);
    obj.layout13:setTop(282);
    obj.layout13:setWidth(18);
    obj.layout13:setHeight(18);
    obj.layout13:setName("layout13");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout13);
    obj.imageCheckBox4:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox4:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox4:setWidth(18);
    obj.imageCheckBox4:setHeight(18);
    obj.imageCheckBox4:setField("Gota4for");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(247);
    obj.layout14:setTop(282);
    obj.layout14:setWidth(18);
    obj.layout14:setHeight(18);
    obj.layout14:setName("layout14");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout14);
    obj.imageCheckBox5:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox5:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox5:setWidth(18);
    obj.imageCheckBox5:setHeight(18);
    obj.imageCheckBox5:setField("Gota5for");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(261);
    obj.layout15:setTop(282);
    obj.layout15:setWidth(18);
    obj.layout15:setHeight(18);
    obj.layout15:setName("layout15");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout15);
    obj.imageCheckBox6:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox6:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox6:setWidth(18);
    obj.imageCheckBox6:setHeight(18);
    obj.imageCheckBox6:setField("Gota6for");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(275);
    obj.layout16:setTop(282);
    obj.layout16:setWidth(18);
    obj.layout16:setHeight(18);
    obj.layout16:setName("layout16");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout16);
    obj.imageCheckBox7:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox7:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox7:setWidth(18);
    obj.imageCheckBox7:setHeight(18);
    obj.imageCheckBox7:setField("Gota7for");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(289);
    obj.layout17:setTop(282);
    obj.layout17:setWidth(18);
    obj.layout17:setHeight(18);
    obj.layout17:setName("layout17");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout17);
    obj.imageCheckBox8:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox8:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox8:setWidth(18);
    obj.imageCheckBox8:setHeight(18);
    obj.imageCheckBox8:setField("Gota8for");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(191);
    obj.layout18:setTop(302);
    obj.layout18:setWidth(18);
    obj.layout18:setHeight(18);
    obj.layout18:setName("layout18");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout18);
    obj.imageCheckBox9:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox9:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox9:setWidth(18);
    obj.imageCheckBox9:setHeight(18);
    obj.imageCheckBox9:setField("Gota1des");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(205);
    obj.layout19:setTop(302);
    obj.layout19:setWidth(18);
    obj.layout19:setHeight(18);
    obj.layout19:setName("layout19");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout19);
    obj.imageCheckBox10:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox10:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox10:setWidth(18);
    obj.imageCheckBox10:setHeight(18);
    obj.imageCheckBox10:setField("Gota2des");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(219);
    obj.layout20:setTop(302);
    obj.layout20:setWidth(18);
    obj.layout20:setHeight(18);
    obj.layout20:setName("layout20");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout20);
    obj.imageCheckBox11:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox11:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox11:setWidth(18);
    obj.imageCheckBox11:setHeight(18);
    obj.imageCheckBox11:setField("Gota3des");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(233);
    obj.layout21:setTop(302);
    obj.layout21:setWidth(18);
    obj.layout21:setHeight(18);
    obj.layout21:setName("layout21");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout21);
    obj.imageCheckBox12:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox12:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox12:setWidth(18);
    obj.imageCheckBox12:setHeight(18);
    obj.imageCheckBox12:setField("Gota4des");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(247);
    obj.layout22:setTop(302);
    obj.layout22:setWidth(18);
    obj.layout22:setHeight(18);
    obj.layout22:setName("layout22");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout22);
    obj.imageCheckBox13:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox13:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox13:setWidth(18);
    obj.imageCheckBox13:setHeight(18);
    obj.imageCheckBox13:setField("Gota5des");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(261);
    obj.layout23:setTop(302);
    obj.layout23:setWidth(18);
    obj.layout23:setHeight(18);
    obj.layout23:setName("layout23");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout23);
    obj.imageCheckBox14:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox14:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox14:setWidth(18);
    obj.imageCheckBox14:setHeight(18);
    obj.imageCheckBox14:setField("Gota6des");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(275);
    obj.layout24:setTop(302);
    obj.layout24:setWidth(18);
    obj.layout24:setHeight(18);
    obj.layout24:setName("layout24");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout24);
    obj.imageCheckBox15:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox15:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox15:setWidth(18);
    obj.imageCheckBox15:setHeight(18);
    obj.imageCheckBox15:setField("Gota7des");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(289);
    obj.layout25:setTop(302);
    obj.layout25:setWidth(18);
    obj.layout25:setHeight(18);
    obj.layout25:setName("layout25");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout25);
    obj.imageCheckBox16:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox16:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox16:setWidth(18);
    obj.imageCheckBox16:setHeight(18);
    obj.imageCheckBox16:setField("Gota8des");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(191);
    obj.layout26:setTop(324);
    obj.layout26:setWidth(18);
    obj.layout26:setHeight(18);
    obj.layout26:setName("layout26");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout26);
    obj.imageCheckBox17:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox17:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox17:setWidth(18);
    obj.imageCheckBox17:setHeight(18);
    obj.imageCheckBox17:setField("Gota1vig");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(205);
    obj.layout27:setTop(324);
    obj.layout27:setWidth(18);
    obj.layout27:setHeight(18);
    obj.layout27:setName("layout27");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout27);
    obj.imageCheckBox18:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox18:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox18:setWidth(18);
    obj.imageCheckBox18:setHeight(18);
    obj.imageCheckBox18:setField("Gota2vig");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(219);
    obj.layout28:setTop(324);
    obj.layout28:setWidth(18);
    obj.layout28:setHeight(18);
    obj.layout28:setName("layout28");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout28);
    obj.imageCheckBox19:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox19:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox19:setWidth(18);
    obj.imageCheckBox19:setHeight(18);
    obj.imageCheckBox19:setField("Gota3vig");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(233);
    obj.layout29:setTop(324);
    obj.layout29:setWidth(18);
    obj.layout29:setHeight(18);
    obj.layout29:setName("layout29");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout29);
    obj.imageCheckBox20:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox20:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox20:setWidth(18);
    obj.imageCheckBox20:setHeight(18);
    obj.imageCheckBox20:setField("Gota4vig");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(247);
    obj.layout30:setTop(324);
    obj.layout30:setWidth(18);
    obj.layout30:setHeight(18);
    obj.layout30:setName("layout30");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout30);
    obj.imageCheckBox21:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox21:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox21:setWidth(18);
    obj.imageCheckBox21:setHeight(18);
    obj.imageCheckBox21:setField("Gota5vig");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(261);
    obj.layout31:setTop(324);
    obj.layout31:setWidth(18);
    obj.layout31:setHeight(18);
    obj.layout31:setName("layout31");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout31);
    obj.imageCheckBox22:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox22:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox22:setWidth(18);
    obj.imageCheckBox22:setHeight(18);
    obj.imageCheckBox22:setField("Gota6vig");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(275);
    obj.layout32:setTop(324);
    obj.layout32:setWidth(18);
    obj.layout32:setHeight(18);
    obj.layout32:setName("layout32");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout32);
    obj.imageCheckBox23:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox23:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox23:setWidth(18);
    obj.imageCheckBox23:setHeight(18);
    obj.imageCheckBox23:setField("Gota7vig");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(289);
    obj.layout33:setTop(324);
    obj.layout33:setWidth(18);
    obj.layout33:setHeight(18);
    obj.layout33:setName("layout33");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout33);
    obj.imageCheckBox24:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox24:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox24:setWidth(18);
    obj.imageCheckBox24:setHeight(18);
    obj.imageCheckBox24:setField("Gota8vig");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(439);
    obj.layout34:setTop(282);
    obj.layout34:setWidth(18);
    obj.layout34:setHeight(18);
    obj.layout34:setName("layout34");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout34);
    obj.imageCheckBox25:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox25:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox25:setWidth(18);
    obj.imageCheckBox25:setHeight(18);
    obj.imageCheckBox25:setField("Gota1cari");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(453);
    obj.layout35:setTop(282);
    obj.layout35:setWidth(18);
    obj.layout35:setHeight(18);
    obj.layout35:setName("layout35");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout35);
    obj.imageCheckBox26:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox26:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox26:setWidth(18);
    obj.imageCheckBox26:setHeight(18);
    obj.imageCheckBox26:setField("Gota2cari");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(467);
    obj.layout36:setTop(282);
    obj.layout36:setWidth(18);
    obj.layout36:setHeight(18);
    obj.layout36:setName("layout36");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout36);
    obj.imageCheckBox27:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox27:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox27:setWidth(18);
    obj.imageCheckBox27:setHeight(18);
    obj.imageCheckBox27:setField("Gota3cari");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(481);
    obj.layout37:setTop(282);
    obj.layout37:setWidth(18);
    obj.layout37:setHeight(18);
    obj.layout37:setName("layout37");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout37);
    obj.imageCheckBox28:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox28:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox28:setWidth(18);
    obj.imageCheckBox28:setHeight(18);
    obj.imageCheckBox28:setField("Gota4cari");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(495);
    obj.layout38:setTop(282);
    obj.layout38:setWidth(18);
    obj.layout38:setHeight(18);
    obj.layout38:setName("layout38");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout38);
    obj.imageCheckBox29:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox29:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox29:setWidth(18);
    obj.imageCheckBox29:setHeight(18);
    obj.imageCheckBox29:setField("Gota5cari");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(509);
    obj.layout39:setTop(282);
    obj.layout39:setWidth(18);
    obj.layout39:setHeight(18);
    obj.layout39:setName("layout39");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout39);
    obj.imageCheckBox30:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox30:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox30:setWidth(18);
    obj.imageCheckBox30:setHeight(18);
    obj.imageCheckBox30:setField("Gota6cari");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(523);
    obj.layout40:setTop(282);
    obj.layout40:setWidth(18);
    obj.layout40:setHeight(18);
    obj.layout40:setName("layout40");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout40);
    obj.imageCheckBox31:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox31:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox31:setWidth(18);
    obj.imageCheckBox31:setHeight(18);
    obj.imageCheckBox31:setField("Gota7cari");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(537);
    obj.layout41:setTop(282);
    obj.layout41:setWidth(18);
    obj.layout41:setHeight(18);
    obj.layout41:setName("layout41");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout41);
    obj.imageCheckBox32:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox32:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox32:setWidth(18);
    obj.imageCheckBox32:setHeight(18);
    obj.imageCheckBox32:setField("Gota8cari");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(439);
    obj.layout42:setTop(302);
    obj.layout42:setWidth(18);
    obj.layout42:setHeight(18);
    obj.layout42:setName("layout42");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout42);
    obj.imageCheckBox33:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox33:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox33:setWidth(18);
    obj.imageCheckBox33:setHeight(18);
    obj.imageCheckBox33:setField("Gota1mani");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(453);
    obj.layout43:setTop(302);
    obj.layout43:setWidth(18);
    obj.layout43:setHeight(18);
    obj.layout43:setName("layout43");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout43);
    obj.imageCheckBox34:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox34:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox34:setWidth(18);
    obj.imageCheckBox34:setHeight(18);
    obj.imageCheckBox34:setField("Gota2mani");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(467);
    obj.layout44:setTop(302);
    obj.layout44:setWidth(18);
    obj.layout44:setHeight(18);
    obj.layout44:setName("layout44");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout44);
    obj.imageCheckBox35:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox35:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox35:setWidth(18);
    obj.imageCheckBox35:setHeight(18);
    obj.imageCheckBox35:setField("Gota3mani");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(481);
    obj.layout45:setTop(302);
    obj.layout45:setWidth(18);
    obj.layout45:setHeight(18);
    obj.layout45:setName("layout45");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout45);
    obj.imageCheckBox36:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox36:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox36:setWidth(18);
    obj.imageCheckBox36:setHeight(18);
    obj.imageCheckBox36:setField("Gota4mani");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(495);
    obj.layout46:setTop(302);
    obj.layout46:setWidth(18);
    obj.layout46:setHeight(18);
    obj.layout46:setName("layout46");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout46);
    obj.imageCheckBox37:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox37:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox37:setWidth(18);
    obj.imageCheckBox37:setHeight(18);
    obj.imageCheckBox37:setField("Gota5mani");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(509);
    obj.layout47:setTop(302);
    obj.layout47:setWidth(18);
    obj.layout47:setHeight(18);
    obj.layout47:setName("layout47");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout47);
    obj.imageCheckBox38:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox38:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox38:setWidth(18);
    obj.imageCheckBox38:setHeight(18);
    obj.imageCheckBox38:setField("Gota6mani");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(523);
    obj.layout48:setTop(302);
    obj.layout48:setWidth(18);
    obj.layout48:setHeight(18);
    obj.layout48:setName("layout48");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout48);
    obj.imageCheckBox39:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox39:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox39:setWidth(18);
    obj.imageCheckBox39:setHeight(18);
    obj.imageCheckBox39:setField("Gota7mani");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(537);
    obj.layout49:setTop(302);
    obj.layout49:setWidth(18);
    obj.layout49:setHeight(18);
    obj.layout49:setName("layout49");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout49);
    obj.imageCheckBox40:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox40:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox40:setWidth(18);
    obj.imageCheckBox40:setHeight(18);
    obj.imageCheckBox40:setField("Gota8mani");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(439);
    obj.layout50:setTop(324);
    obj.layout50:setWidth(18);
    obj.layout50:setHeight(18);
    obj.layout50:setName("layout50");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout50);
    obj.imageCheckBox41:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox41:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox41:setWidth(18);
    obj.imageCheckBox41:setHeight(18);
    obj.imageCheckBox41:setField("Gota1apa");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(453);
    obj.layout51:setTop(324);
    obj.layout51:setWidth(18);
    obj.layout51:setHeight(18);
    obj.layout51:setName("layout51");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout51);
    obj.imageCheckBox42:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox42:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox42:setWidth(18);
    obj.imageCheckBox42:setHeight(18);
    obj.imageCheckBox42:setField("Gota2apa");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(467);
    obj.layout52:setTop(324);
    obj.layout52:setWidth(18);
    obj.layout52:setHeight(18);
    obj.layout52:setName("layout52");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout52);
    obj.imageCheckBox43:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox43:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox43:setWidth(18);
    obj.imageCheckBox43:setHeight(18);
    obj.imageCheckBox43:setField("Gota3apa");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(481);
    obj.layout53:setTop(324);
    obj.layout53:setWidth(18);
    obj.layout53:setHeight(18);
    obj.layout53:setName("layout53");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout53);
    obj.imageCheckBox44:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox44:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox44:setWidth(18);
    obj.imageCheckBox44:setHeight(18);
    obj.imageCheckBox44:setField("Gota4apa");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(495);
    obj.layout54:setTop(324);
    obj.layout54:setWidth(18);
    obj.layout54:setHeight(18);
    obj.layout54:setName("layout54");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout54);
    obj.imageCheckBox45:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox45:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox45:setWidth(18);
    obj.imageCheckBox45:setHeight(18);
    obj.imageCheckBox45:setField("Gota5apa");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(509);
    obj.layout55:setTop(324);
    obj.layout55:setWidth(18);
    obj.layout55:setHeight(18);
    obj.layout55:setName("layout55");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout55);
    obj.imageCheckBox46:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox46:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox46:setWidth(18);
    obj.imageCheckBox46:setHeight(18);
    obj.imageCheckBox46:setField("Gota6apa");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(523);
    obj.layout56:setTop(324);
    obj.layout56:setWidth(18);
    obj.layout56:setHeight(18);
    obj.layout56:setName("layout56");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout56);
    obj.imageCheckBox47:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox47:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox47:setWidth(18);
    obj.imageCheckBox47:setHeight(18);
    obj.imageCheckBox47:setField("Gota7apa");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(537);
    obj.layout57:setTop(324);
    obj.layout57:setWidth(18);
    obj.layout57:setHeight(18);
    obj.layout57:setName("layout57");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout57);
    obj.imageCheckBox48:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox48:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox48:setWidth(18);
    obj.imageCheckBox48:setHeight(18);
    obj.imageCheckBox48:setField("Gota8apa");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(686);
    obj.layout58:setTop(282);
    obj.layout58:setWidth(18);
    obj.layout58:setHeight(18);
    obj.layout58:setName("layout58");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout58);
    obj.imageCheckBox49:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox49:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox49:setWidth(18);
    obj.imageCheckBox49:setHeight(18);
    obj.imageCheckBox49:setField("Gota1perc");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(700);
    obj.layout59:setTop(282);
    obj.layout59:setWidth(18);
    obj.layout59:setHeight(18);
    obj.layout59:setName("layout59");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout59);
    obj.imageCheckBox50:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox50:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox50:setWidth(18);
    obj.imageCheckBox50:setHeight(18);
    obj.imageCheckBox50:setField("Gota2perc");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(714);
    obj.layout60:setTop(282);
    obj.layout60:setWidth(18);
    obj.layout60:setHeight(18);
    obj.layout60:setName("layout60");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout60);
    obj.imageCheckBox51:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox51:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox51:setWidth(18);
    obj.imageCheckBox51:setHeight(18);
    obj.imageCheckBox51:setField("Gota3perc");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(728);
    obj.layout61:setTop(282);
    obj.layout61:setWidth(18);
    obj.layout61:setHeight(18);
    obj.layout61:setName("layout61");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout61);
    obj.imageCheckBox52:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox52:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox52:setWidth(18);
    obj.imageCheckBox52:setHeight(18);
    obj.imageCheckBox52:setField("Gota4perc");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(742);
    obj.layout62:setTop(282);
    obj.layout62:setWidth(18);
    obj.layout62:setHeight(18);
    obj.layout62:setName("layout62");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout62);
    obj.imageCheckBox53:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox53:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox53:setWidth(18);
    obj.imageCheckBox53:setHeight(18);
    obj.imageCheckBox53:setField("Gota5perc");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(756);
    obj.layout63:setTop(282);
    obj.layout63:setWidth(18);
    obj.layout63:setHeight(18);
    obj.layout63:setName("layout63");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout63);
    obj.imageCheckBox54:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox54:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox54:setWidth(18);
    obj.imageCheckBox54:setHeight(18);
    obj.imageCheckBox54:setField("Gota6perc");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(770);
    obj.layout64:setTop(282);
    obj.layout64:setWidth(18);
    obj.layout64:setHeight(18);
    obj.layout64:setName("layout64");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout64);
    obj.imageCheckBox55:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox55:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox55:setWidth(18);
    obj.imageCheckBox55:setHeight(18);
    obj.imageCheckBox55:setField("Gota7perc");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(784);
    obj.layout65:setTop(282);
    obj.layout65:setWidth(18);
    obj.layout65:setHeight(18);
    obj.layout65:setName("layout65");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout65);
    obj.imageCheckBox56:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox56:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox56:setWidth(18);
    obj.imageCheckBox56:setHeight(18);
    obj.imageCheckBox56:setField("Gota8perc");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(686);
    obj.layout66:setTop(302);
    obj.layout66:setWidth(18);
    obj.layout66:setHeight(18);
    obj.layout66:setName("layout66");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout66);
    obj.imageCheckBox57:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox57:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox57:setWidth(18);
    obj.imageCheckBox57:setHeight(18);
    obj.imageCheckBox57:setField("Gota1int");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(700);
    obj.layout67:setTop(302);
    obj.layout67:setWidth(18);
    obj.layout67:setHeight(18);
    obj.layout67:setName("layout67");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout67);
    obj.imageCheckBox58:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox58:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox58:setWidth(18);
    obj.imageCheckBox58:setHeight(18);
    obj.imageCheckBox58:setField("Gota2int");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(714);
    obj.layout68:setTop(302);
    obj.layout68:setWidth(18);
    obj.layout68:setHeight(18);
    obj.layout68:setName("layout68");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout68);
    obj.imageCheckBox59:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox59:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox59:setWidth(18);
    obj.imageCheckBox59:setHeight(18);
    obj.imageCheckBox59:setField("Gota3int");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(728);
    obj.layout69:setTop(302);
    obj.layout69:setWidth(18);
    obj.layout69:setHeight(18);
    obj.layout69:setName("layout69");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout69);
    obj.imageCheckBox60:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox60:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox60:setWidth(18);
    obj.imageCheckBox60:setHeight(18);
    obj.imageCheckBox60:setField("Gota4int");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(742);
    obj.layout70:setTop(302);
    obj.layout70:setWidth(18);
    obj.layout70:setHeight(18);
    obj.layout70:setName("layout70");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout70);
    obj.imageCheckBox61:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox61:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox61:setWidth(18);
    obj.imageCheckBox61:setHeight(18);
    obj.imageCheckBox61:setField("Gota5int");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(756);
    obj.layout71:setTop(302);
    obj.layout71:setWidth(18);
    obj.layout71:setHeight(18);
    obj.layout71:setName("layout71");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout71);
    obj.imageCheckBox62:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox62:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox62:setWidth(18);
    obj.imageCheckBox62:setHeight(18);
    obj.imageCheckBox62:setField("Gota6int");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(770);
    obj.layout72:setTop(302);
    obj.layout72:setWidth(18);
    obj.layout72:setHeight(18);
    obj.layout72:setName("layout72");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout72);
    obj.imageCheckBox63:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox63:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox63:setWidth(18);
    obj.imageCheckBox63:setHeight(18);
    obj.imageCheckBox63:setField("Gota7int");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(784);
    obj.layout73:setTop(302);
    obj.layout73:setWidth(18);
    obj.layout73:setHeight(18);
    obj.layout73:setName("layout73");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout73);
    obj.imageCheckBox64:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox64:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox64:setWidth(18);
    obj.imageCheckBox64:setHeight(18);
    obj.imageCheckBox64:setField("Gota8int");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(686);
    obj.layout74:setTop(324);
    obj.layout74:setWidth(18);
    obj.layout74:setHeight(18);
    obj.layout74:setName("layout74");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout74);
    obj.imageCheckBox65:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox65:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox65:setWidth(18);
    obj.imageCheckBox65:setHeight(18);
    obj.imageCheckBox65:setField("Gota1rac");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(700);
    obj.layout75:setTop(324);
    obj.layout75:setWidth(18);
    obj.layout75:setHeight(18);
    obj.layout75:setName("layout75");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout75);
    obj.imageCheckBox66:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox66:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox66:setWidth(18);
    obj.imageCheckBox66:setHeight(18);
    obj.imageCheckBox66:setField("Gota2rac");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(714);
    obj.layout76:setTop(324);
    obj.layout76:setWidth(18);
    obj.layout76:setHeight(18);
    obj.layout76:setName("layout76");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout76);
    obj.imageCheckBox67:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox67:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox67:setWidth(18);
    obj.imageCheckBox67:setHeight(18);
    obj.imageCheckBox67:setField("Gota3rac");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(728);
    obj.layout77:setTop(324);
    obj.layout77:setWidth(18);
    obj.layout77:setHeight(18);
    obj.layout77:setName("layout77");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout77);
    obj.imageCheckBox68:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox68:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox68:setWidth(18);
    obj.imageCheckBox68:setHeight(18);
    obj.imageCheckBox68:setField("Gota4rac");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(742);
    obj.layout78:setTop(324);
    obj.layout78:setWidth(18);
    obj.layout78:setHeight(18);
    obj.layout78:setName("layout78");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout78);
    obj.imageCheckBox69:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox69:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox69:setWidth(18);
    obj.imageCheckBox69:setHeight(18);
    obj.imageCheckBox69:setField("Gota5rac");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(756);
    obj.layout79:setTop(324);
    obj.layout79:setWidth(18);
    obj.layout79:setHeight(18);
    obj.layout79:setName("layout79");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout79);
    obj.imageCheckBox70:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox70:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox70:setWidth(18);
    obj.imageCheckBox70:setHeight(18);
    obj.imageCheckBox70:setField("Gota6rac");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(770);
    obj.layout80:setTop(324);
    obj.layout80:setWidth(18);
    obj.layout80:setHeight(18);
    obj.layout80:setName("layout80");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout80);
    obj.imageCheckBox71:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox71:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox71:setWidth(18);
    obj.imageCheckBox71:setHeight(18);
    obj.imageCheckBox71:setField("Gota7rac");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(784);
    obj.layout81:setTop(324);
    obj.layout81:setWidth(18);
    obj.layout81:setHeight(18);
    obj.layout81:setName("layout81");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout81);
    obj.imageCheckBox72:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox72:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox72:setWidth(18);
    obj.imageCheckBox72:setHeight(18);
    obj.imageCheckBox72:setField("Gota8rac");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(191);
    obj.layout82:setTop(400);
    obj.layout82:setWidth(18);
    obj.layout82:setHeight(18);
    obj.layout82:setName("layout82");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout82);
    obj.imageCheckBox73:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox73:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox73:setWidth(18);
    obj.imageCheckBox73:setHeight(18);
    obj.imageCheckBox73:setField("Gota1pront");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(205);
    obj.layout83:setTop(400);
    obj.layout83:setWidth(18);
    obj.layout83:setHeight(18);
    obj.layout83:setName("layout83");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout83);
    obj.imageCheckBox74:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox74:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox74:setWidth(18);
    obj.imageCheckBox74:setHeight(18);
    obj.imageCheckBox74:setField("Gota2pront");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(219);
    obj.layout84:setTop(400);
    obj.layout84:setWidth(18);
    obj.layout84:setHeight(18);
    obj.layout84:setName("layout84");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout84);
    obj.imageCheckBox75:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox75:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox75:setWidth(18);
    obj.imageCheckBox75:setHeight(18);
    obj.imageCheckBox75:setField("Gota3pront");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(233);
    obj.layout85:setTop(400);
    obj.layout85:setWidth(18);
    obj.layout85:setHeight(18);
    obj.layout85:setName("layout85");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout85);
    obj.imageCheckBox76:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox76:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox76:setWidth(18);
    obj.imageCheckBox76:setHeight(18);
    obj.imageCheckBox76:setField("Gota4pront");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(247);
    obj.layout86:setTop(400);
    obj.layout86:setWidth(18);
    obj.layout86:setHeight(18);
    obj.layout86:setName("layout86");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout86);
    obj.imageCheckBox77:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox77:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox77:setWidth(18);
    obj.imageCheckBox77:setHeight(18);
    obj.imageCheckBox77:setField("Gota5pront");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(261);
    obj.layout87:setTop(400);
    obj.layout87:setWidth(18);
    obj.layout87:setHeight(18);
    obj.layout87:setName("layout87");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout87);
    obj.imageCheckBox78:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox78:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox78:setWidth(18);
    obj.imageCheckBox78:setHeight(18);
    obj.imageCheckBox78:setField("Gota6pront");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(275);
    obj.layout88:setTop(400);
    obj.layout88:setWidth(18);
    obj.layout88:setHeight(18);
    obj.layout88:setName("layout88");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout88);
    obj.imageCheckBox79:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox79:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox79:setWidth(18);
    obj.imageCheckBox79:setHeight(18);
    obj.imageCheckBox79:setField("Gota7pront");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(289);
    obj.layout89:setTop(400);
    obj.layout89:setWidth(18);
    obj.layout89:setHeight(18);
    obj.layout89:setName("layout89");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout89);
    obj.imageCheckBox80:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox80:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox80:setWidth(18);
    obj.imageCheckBox80:setHeight(18);
    obj.imageCheckBox80:setField("Gota8pront");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(191);
    obj.layout90:setTop(422);
    obj.layout90:setWidth(18);
    obj.layout90:setHeight(18);
    obj.layout90:setName("layout90");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout90);
    obj.imageCheckBox81:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox81:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox81:setWidth(18);
    obj.imageCheckBox81:setHeight(18);
    obj.imageCheckBox81:setField("Gota1espo");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(205);
    obj.layout91:setTop(422);
    obj.layout91:setWidth(18);
    obj.layout91:setHeight(18);
    obj.layout91:setName("layout91");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout91);
    obj.imageCheckBox82:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox82:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox82:setWidth(18);
    obj.imageCheckBox82:setHeight(18);
    obj.imageCheckBox82:setField("Gota2espo");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(219);
    obj.layout92:setTop(422);
    obj.layout92:setWidth(18);
    obj.layout92:setHeight(18);
    obj.layout92:setName("layout92");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout92);
    obj.imageCheckBox83:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox83:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox83:setWidth(18);
    obj.imageCheckBox83:setHeight(18);
    obj.imageCheckBox83:setField("Gota3espo");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(233);
    obj.layout93:setTop(422);
    obj.layout93:setWidth(18);
    obj.layout93:setHeight(18);
    obj.layout93:setName("layout93");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout93);
    obj.imageCheckBox84:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox84:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox84:setWidth(18);
    obj.imageCheckBox84:setHeight(18);
    obj.imageCheckBox84:setField("Gota4espo");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(247);
    obj.layout94:setTop(422);
    obj.layout94:setWidth(18);
    obj.layout94:setHeight(18);
    obj.layout94:setName("layout94");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout94);
    obj.imageCheckBox85:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox85:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox85:setWidth(18);
    obj.imageCheckBox85:setHeight(18);
    obj.imageCheckBox85:setField("Gota5espo");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(261);
    obj.layout95:setTop(422);
    obj.layout95:setWidth(18);
    obj.layout95:setHeight(18);
    obj.layout95:setName("layout95");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout95);
    obj.imageCheckBox86:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox86:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox86:setWidth(18);
    obj.imageCheckBox86:setHeight(18);
    obj.imageCheckBox86:setField("Gota6espo");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(275);
    obj.layout96:setTop(422);
    obj.layout96:setWidth(18);
    obj.layout96:setHeight(18);
    obj.layout96:setName("layout96");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout96);
    obj.imageCheckBox87:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox87:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox87:setWidth(18);
    obj.imageCheckBox87:setHeight(18);
    obj.imageCheckBox87:setField("Gota7espo");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(289);
    obj.layout97:setTop(422);
    obj.layout97:setWidth(18);
    obj.layout97:setHeight(18);
    obj.layout97:setName("layout97");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout97);
    obj.imageCheckBox88:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox88:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox88:setWidth(18);
    obj.imageCheckBox88:setHeight(18);
    obj.imageCheckBox88:setField("Gota8espo");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(191);
    obj.layout98:setTop(443);
    obj.layout98:setWidth(18);
    obj.layout98:setHeight(18);
    obj.layout98:setName("layout98");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout98);
    obj.imageCheckBox89:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox89:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox89:setWidth(18);
    obj.imageCheckBox89:setHeight(18);
    obj.imageCheckBox89:setField("Gota1bri");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(205);
    obj.layout99:setTop(443);
    obj.layout99:setWidth(18);
    obj.layout99:setHeight(18);
    obj.layout99:setName("layout99");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout99);
    obj.imageCheckBox90:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox90:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox90:setWidth(18);
    obj.imageCheckBox90:setHeight(18);
    obj.imageCheckBox90:setField("Gota2bri");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(219);
    obj.layout100:setTop(443);
    obj.layout100:setWidth(18);
    obj.layout100:setHeight(18);
    obj.layout100:setName("layout100");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout100);
    obj.imageCheckBox91:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox91:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox91:setWidth(18);
    obj.imageCheckBox91:setHeight(18);
    obj.imageCheckBox91:setField("Gota3bri");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(233);
    obj.layout101:setTop(443);
    obj.layout101:setWidth(18);
    obj.layout101:setHeight(18);
    obj.layout101:setName("layout101");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout101);
    obj.imageCheckBox92:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox92:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox92:setWidth(18);
    obj.imageCheckBox92:setHeight(18);
    obj.imageCheckBox92:setField("Gota4bri");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(247);
    obj.layout102:setTop(443);
    obj.layout102:setWidth(18);
    obj.layout102:setHeight(18);
    obj.layout102:setName("layout102");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout102);
    obj.imageCheckBox93:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox93:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox93:setWidth(18);
    obj.imageCheckBox93:setHeight(18);
    obj.imageCheckBox93:setField("Gota5bri");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(261);
    obj.layout103:setTop(443);
    obj.layout103:setWidth(18);
    obj.layout103:setHeight(18);
    obj.layout103:setName("layout103");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout103);
    obj.imageCheckBox94:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox94:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox94:setWidth(18);
    obj.imageCheckBox94:setHeight(18);
    obj.imageCheckBox94:setField("Gota6bri");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(275);
    obj.layout104:setTop(443);
    obj.layout104:setWidth(18);
    obj.layout104:setHeight(18);
    obj.layout104:setName("layout104");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout104);
    obj.imageCheckBox95:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox95:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox95:setWidth(18);
    obj.imageCheckBox95:setHeight(18);
    obj.imageCheckBox95:setField("Gota7bri");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(289);
    obj.layout105:setTop(443);
    obj.layout105:setWidth(18);
    obj.layout105:setHeight(18);
    obj.layout105:setName("layout105");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout105);
    obj.imageCheckBox96:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox96:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox96:setWidth(18);
    obj.imageCheckBox96:setHeight(18);
    obj.imageCheckBox96:setField("Gota8bri");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(191);
    obj.layout106:setTop(464);
    obj.layout106:setWidth(18);
    obj.layout106:setHeight(18);
    obj.layout106:setName("layout106");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout106);
    obj.imageCheckBox97:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox97:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox97:setWidth(18);
    obj.imageCheckBox97:setHeight(18);
    obj.imageCheckBox97:setField("Gota1esq");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(205);
    obj.layout107:setTop(464);
    obj.layout107:setWidth(18);
    obj.layout107:setHeight(18);
    obj.layout107:setName("layout107");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout107);
    obj.imageCheckBox98:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox98:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox98:setWidth(18);
    obj.imageCheckBox98:setHeight(18);
    obj.imageCheckBox98:setField("Gota2esq");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(219);
    obj.layout108:setTop(464);
    obj.layout108:setWidth(18);
    obj.layout108:setHeight(18);
    obj.layout108:setName("layout108");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout108);
    obj.imageCheckBox99:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox99:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox99:setWidth(18);
    obj.imageCheckBox99:setHeight(18);
    obj.imageCheckBox99:setField("Gota3esq");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(233);
    obj.layout109:setTop(464);
    obj.layout109:setWidth(18);
    obj.layout109:setHeight(18);
    obj.layout109:setName("layout109");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout109);
    obj.imageCheckBox100:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox100:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox100:setWidth(18);
    obj.imageCheckBox100:setHeight(18);
    obj.imageCheckBox100:setField("Gota4esq");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(247);
    obj.layout110:setTop(464);
    obj.layout110:setWidth(18);
    obj.layout110:setHeight(18);
    obj.layout110:setName("layout110");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout110);
    obj.imageCheckBox101:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox101:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox101:setWidth(18);
    obj.imageCheckBox101:setHeight(18);
    obj.imageCheckBox101:setField("Gota5esq");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(261);
    obj.layout111:setTop(464);
    obj.layout111:setWidth(18);
    obj.layout111:setHeight(18);
    obj.layout111:setName("layout111");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout111);
    obj.imageCheckBox102:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox102:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox102:setWidth(18);
    obj.imageCheckBox102:setHeight(18);
    obj.imageCheckBox102:setField("Gota6esq");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(275);
    obj.layout112:setTop(464);
    obj.layout112:setWidth(18);
    obj.layout112:setHeight(18);
    obj.layout112:setName("layout112");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout112);
    obj.imageCheckBox103:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox103:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox103:setWidth(18);
    obj.imageCheckBox103:setHeight(18);
    obj.imageCheckBox103:setField("Gota7esq");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(289);
    obj.layout113:setTop(464);
    obj.layout113:setWidth(18);
    obj.layout113:setHeight(18);
    obj.layout113:setName("layout113");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout113);
    obj.imageCheckBox104:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox104:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox104:setWidth(18);
    obj.imageCheckBox104:setHeight(18);
    obj.imageCheckBox104:setField("Gota8esq");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(191);
    obj.layout114:setTop(485);
    obj.layout114:setWidth(18);
    obj.layout114:setHeight(18);
    obj.layout114:setName("layout114");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout114);
    obj.imageCheckBox105:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox105:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox105:setWidth(18);
    obj.imageCheckBox105:setHeight(18);
    obj.imageCheckBox105:setField("Gota1emp");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(205);
    obj.layout115:setTop(485);
    obj.layout115:setWidth(18);
    obj.layout115:setHeight(18);
    obj.layout115:setName("layout115");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout115);
    obj.imageCheckBox106:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox106:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox106:setWidth(18);
    obj.imageCheckBox106:setHeight(18);
    obj.imageCheckBox106:setField("Gota2emp");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(219);
    obj.layout116:setTop(485);
    obj.layout116:setWidth(18);
    obj.layout116:setHeight(18);
    obj.layout116:setName("layout116");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout116);
    obj.imageCheckBox107:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox107:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox107:setWidth(18);
    obj.imageCheckBox107:setHeight(18);
    obj.imageCheckBox107:setField("Gota3emp");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(233);
    obj.layout117:setTop(485);
    obj.layout117:setWidth(18);
    obj.layout117:setHeight(18);
    obj.layout117:setName("layout117");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout117);
    obj.imageCheckBox108:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox108:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox108:setWidth(18);
    obj.imageCheckBox108:setHeight(18);
    obj.imageCheckBox108:setField("Gota4emp");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(247);
    obj.layout118:setTop(485);
    obj.layout118:setWidth(18);
    obj.layout118:setHeight(18);
    obj.layout118:setName("layout118");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout118);
    obj.imageCheckBox109:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox109:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox109:setWidth(18);
    obj.imageCheckBox109:setHeight(18);
    obj.imageCheckBox109:setField("Gota5emp");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(261);
    obj.layout119:setTop(485);
    obj.layout119:setWidth(18);
    obj.layout119:setHeight(18);
    obj.layout119:setName("layout119");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout119);
    obj.imageCheckBox110:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox110:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox110:setWidth(18);
    obj.imageCheckBox110:setHeight(18);
    obj.imageCheckBox110:setField("Gota6emp");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(275);
    obj.layout120:setTop(485);
    obj.layout120:setWidth(18);
    obj.layout120:setHeight(18);
    obj.layout120:setName("layout120");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout120);
    obj.imageCheckBox111:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox111:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox111:setWidth(18);
    obj.imageCheckBox111:setHeight(18);
    obj.imageCheckBox111:setField("Gota7emp");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(289);
    obj.layout121:setTop(485);
    obj.layout121:setWidth(18);
    obj.layout121:setHeight(18);
    obj.layout121:setName("layout121");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout121);
    obj.imageCheckBox112:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox112:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox112:setWidth(18);
    obj.imageCheckBox112:setHeight(18);
    obj.imageCheckBox112:setField("Gota8emp");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(191);
    obj.layout122:setTop(506);
    obj.layout122:setWidth(18);
    obj.layout122:setHeight(18);
    obj.layout122:setName("layout122");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout122);
    obj.imageCheckBox113:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox113:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox113:setWidth(18);
    obj.imageCheckBox113:setHeight(18);
    obj.imageCheckBox113:setField("Gota1exp");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(205);
    obj.layout123:setTop(506);
    obj.layout123:setWidth(18);
    obj.layout123:setHeight(18);
    obj.layout123:setName("layout123");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout123);
    obj.imageCheckBox114:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox114:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox114:setWidth(18);
    obj.imageCheckBox114:setHeight(18);
    obj.imageCheckBox114:setField("Gota2exp");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(219);
    obj.layout124:setTop(506);
    obj.layout124:setWidth(18);
    obj.layout124:setHeight(18);
    obj.layout124:setName("layout124");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout124);
    obj.imageCheckBox115:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox115:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox115:setWidth(18);
    obj.imageCheckBox115:setHeight(18);
    obj.imageCheckBox115:setField("Gota3exp");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(233);
    obj.layout125:setTop(506);
    obj.layout125:setWidth(18);
    obj.layout125:setHeight(18);
    obj.layout125:setName("layout125");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout125);
    obj.imageCheckBox116:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox116:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox116:setWidth(18);
    obj.imageCheckBox116:setHeight(18);
    obj.imageCheckBox116:setField("Gota4exp");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(247);
    obj.layout126:setTop(506);
    obj.layout126:setWidth(18);
    obj.layout126:setHeight(18);
    obj.layout126:setName("layout126");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout126);
    obj.imageCheckBox117:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox117:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox117:setWidth(18);
    obj.imageCheckBox117:setHeight(18);
    obj.imageCheckBox117:setField("Gota5exp");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(261);
    obj.layout127:setTop(506);
    obj.layout127:setWidth(18);
    obj.layout127:setHeight(18);
    obj.layout127:setName("layout127");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout127);
    obj.imageCheckBox118:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox118:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox118:setWidth(18);
    obj.imageCheckBox118:setHeight(18);
    obj.imageCheckBox118:setField("Gota6exp");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(275);
    obj.layout128:setTop(506);
    obj.layout128:setWidth(18);
    obj.layout128:setHeight(18);
    obj.layout128:setName("layout128");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout128);
    obj.imageCheckBox119:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox119:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox119:setWidth(18);
    obj.imageCheckBox119:setHeight(18);
    obj.imageCheckBox119:setField("Gota7exp");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(289);
    obj.layout129:setTop(506);
    obj.layout129:setWidth(18);
    obj.layout129:setHeight(18);
    obj.layout129:setName("layout129");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout129);
    obj.imageCheckBox120:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox120:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox120:setWidth(18);
    obj.imageCheckBox120:setHeight(18);
    obj.imageCheckBox120:setField("Gota8exp");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(191);
    obj.layout130:setTop(529);
    obj.layout130:setWidth(18);
    obj.layout130:setHeight(18);
    obj.layout130:setName("layout130");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout130);
    obj.imageCheckBox121:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox121:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox121:setWidth(18);
    obj.imageCheckBox121:setHeight(18);
    obj.imageCheckBox121:setField("Gota1intim");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(205);
    obj.layout131:setTop(529);
    obj.layout131:setWidth(18);
    obj.layout131:setHeight(18);
    obj.layout131:setName("layout131");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout131);
    obj.imageCheckBox122:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox122:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox122:setWidth(18);
    obj.imageCheckBox122:setHeight(18);
    obj.imageCheckBox122:setField("Gota2intim");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(219);
    obj.layout132:setTop(529);
    obj.layout132:setWidth(18);
    obj.layout132:setHeight(18);
    obj.layout132:setName("layout132");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout132);
    obj.imageCheckBox123:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox123:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox123:setWidth(18);
    obj.imageCheckBox123:setHeight(18);
    obj.imageCheckBox123:setField("Gota3intim");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(233);
    obj.layout133:setTop(529);
    obj.layout133:setWidth(18);
    obj.layout133:setHeight(18);
    obj.layout133:setName("layout133");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout133);
    obj.imageCheckBox124:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox124:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox124:setWidth(18);
    obj.imageCheckBox124:setHeight(18);
    obj.imageCheckBox124:setField("Gota4intim");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(247);
    obj.layout134:setTop(529);
    obj.layout134:setWidth(18);
    obj.layout134:setHeight(18);
    obj.layout134:setName("layout134");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout134);
    obj.imageCheckBox125:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox125:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox125:setWidth(18);
    obj.imageCheckBox125:setHeight(18);
    obj.imageCheckBox125:setField("Gota5intim");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(261);
    obj.layout135:setTop(529);
    obj.layout135:setWidth(18);
    obj.layout135:setHeight(18);
    obj.layout135:setName("layout135");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout135);
    obj.imageCheckBox126:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox126:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox126:setWidth(18);
    obj.imageCheckBox126:setHeight(18);
    obj.imageCheckBox126:setField("Gota6intim");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle1);
    obj.layout136:setLeft(275);
    obj.layout136:setTop(529);
    obj.layout136:setWidth(18);
    obj.layout136:setHeight(18);
    obj.layout136:setName("layout136");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout136);
    obj.imageCheckBox127:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox127:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox127:setWidth(18);
    obj.imageCheckBox127:setHeight(18);
    obj.imageCheckBox127:setField("Gota7intim");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle1);
    obj.layout137:setLeft(289);
    obj.layout137:setTop(529);
    obj.layout137:setWidth(18);
    obj.layout137:setHeight(18);
    obj.layout137:setName("layout137");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout137);
    obj.imageCheckBox128:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox128:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox128:setWidth(18);
    obj.imageCheckBox128:setHeight(18);
    obj.imageCheckBox128:setField("Gota8intim");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle1);
    obj.layout138:setLeft(191);
    obj.layout138:setTop(550);
    obj.layout138:setWidth(18);
    obj.layout138:setHeight(18);
    obj.layout138:setName("layout138");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout138);
    obj.imageCheckBox129:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox129:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox129:setWidth(18);
    obj.imageCheckBox129:setHeight(18);
    obj.imageCheckBox129:setField("Gota1lider");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle1);
    obj.layout139:setLeft(205);
    obj.layout139:setTop(550);
    obj.layout139:setWidth(18);
    obj.layout139:setHeight(18);
    obj.layout139:setName("layout139");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout139);
    obj.imageCheckBox130:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox130:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox130:setWidth(18);
    obj.imageCheckBox130:setHeight(18);
    obj.imageCheckBox130:setField("Gota2lider");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle1);
    obj.layout140:setLeft(219);
    obj.layout140:setTop(550);
    obj.layout140:setWidth(18);
    obj.layout140:setHeight(18);
    obj.layout140:setName("layout140");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout140);
    obj.imageCheckBox131:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox131:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox131:setWidth(18);
    obj.imageCheckBox131:setHeight(18);
    obj.imageCheckBox131:setField("Gota3lider");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle1);
    obj.layout141:setLeft(233);
    obj.layout141:setTop(550);
    obj.layout141:setWidth(18);
    obj.layout141:setHeight(18);
    obj.layout141:setName("layout141");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout141);
    obj.imageCheckBox132:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox132:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox132:setWidth(18);
    obj.imageCheckBox132:setHeight(18);
    obj.imageCheckBox132:setField("Gota4lider");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle1);
    obj.layout142:setLeft(247);
    obj.layout142:setTop(550);
    obj.layout142:setWidth(18);
    obj.layout142:setHeight(18);
    obj.layout142:setName("layout142");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout142);
    obj.imageCheckBox133:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox133:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox133:setWidth(18);
    obj.imageCheckBox133:setHeight(18);
    obj.imageCheckBox133:setField("Gota5lider");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle1);
    obj.layout143:setLeft(261);
    obj.layout143:setTop(550);
    obj.layout143:setWidth(18);
    obj.layout143:setHeight(18);
    obj.layout143:setName("layout143");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout143);
    obj.imageCheckBox134:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox134:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox134:setWidth(18);
    obj.imageCheckBox134:setHeight(18);
    obj.imageCheckBox134:setField("Gota6lider");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle1);
    obj.layout144:setLeft(275);
    obj.layout144:setTop(550);
    obj.layout144:setWidth(18);
    obj.layout144:setHeight(18);
    obj.layout144:setName("layout144");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout144);
    obj.imageCheckBox135:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox135:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox135:setWidth(18);
    obj.imageCheckBox135:setHeight(18);
    obj.imageCheckBox135:setField("Gota7lider");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle1);
    obj.layout145:setLeft(289);
    obj.layout145:setTop(550);
    obj.layout145:setWidth(18);
    obj.layout145:setHeight(18);
    obj.layout145:setName("layout145");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout145);
    obj.imageCheckBox136:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox136:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox136:setWidth(18);
    obj.imageCheckBox136:setHeight(18);
    obj.imageCheckBox136:setField("Gota8lider");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle1);
    obj.layout146:setLeft(191);
    obj.layout146:setTop(572);
    obj.layout146:setWidth(18);
    obj.layout146:setHeight(18);
    obj.layout146:setName("layout146");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout146);
    obj.imageCheckBox137:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox137:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox137:setWidth(18);
    obj.imageCheckBox137:setHeight(18);
    obj.imageCheckBox137:setField("Gota1man");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle1);
    obj.layout147:setLeft(205);
    obj.layout147:setTop(572);
    obj.layout147:setWidth(18);
    obj.layout147:setHeight(18);
    obj.layout147:setName("layout147");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout147);
    obj.imageCheckBox138:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox138:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox138:setWidth(18);
    obj.imageCheckBox138:setHeight(18);
    obj.imageCheckBox138:setField("Gota2man");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle1);
    obj.layout148:setLeft(219);
    obj.layout148:setTop(572);
    obj.layout148:setWidth(18);
    obj.layout148:setHeight(18);
    obj.layout148:setName("layout148");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout148);
    obj.imageCheckBox139:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox139:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox139:setWidth(18);
    obj.imageCheckBox139:setHeight(18);
    obj.imageCheckBox139:setField("Gota3man");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle1);
    obj.layout149:setLeft(233);
    obj.layout149:setTop(572);
    obj.layout149:setWidth(18);
    obj.layout149:setHeight(18);
    obj.layout149:setName("layout149");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout149);
    obj.imageCheckBox140:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox140:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox140:setWidth(18);
    obj.imageCheckBox140:setHeight(18);
    obj.imageCheckBox140:setField("Gota4man");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle1);
    obj.layout150:setLeft(247);
    obj.layout150:setTop(572);
    obj.layout150:setWidth(18);
    obj.layout150:setHeight(18);
    obj.layout150:setName("layout150");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout150);
    obj.imageCheckBox141:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox141:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox141:setWidth(18);
    obj.imageCheckBox141:setHeight(18);
    obj.imageCheckBox141:setField("Gota5man");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle1);
    obj.layout151:setLeft(261);
    obj.layout151:setTop(572);
    obj.layout151:setWidth(18);
    obj.layout151:setHeight(18);
    obj.layout151:setName("layout151");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout151);
    obj.imageCheckBox142:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox142:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox142:setWidth(18);
    obj.imageCheckBox142:setHeight(18);
    obj.imageCheckBox142:setField("Gota6man");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle1);
    obj.layout152:setLeft(275);
    obj.layout152:setTop(572);
    obj.layout152:setWidth(18);
    obj.layout152:setHeight(18);
    obj.layout152:setName("layout152");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout152);
    obj.imageCheckBox143:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox143:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox143:setWidth(18);
    obj.imageCheckBox143:setHeight(18);
    obj.imageCheckBox143:setField("Gota7man");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle1);
    obj.layout153:setLeft(289);
    obj.layout153:setTop(572);
    obj.layout153:setWidth(18);
    obj.layout153:setHeight(18);
    obj.layout153:setName("layout153");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout153);
    obj.imageCheckBox144:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox144:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox144:setWidth(18);
    obj.imageCheckBox144:setHeight(18);
    obj.imageCheckBox144:setField("Gota8man");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle1);
    obj.layout154:setLeft(191);
    obj.layout154:setTop(594);
    obj.layout154:setWidth(18);
    obj.layout154:setHeight(18);
    obj.layout154:setName("layout154");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout154);
    obj.imageCheckBox145:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox145:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox145:setWidth(18);
    obj.imageCheckBox145:setHeight(18);
    obj.imageCheckBox145:setField("Gota1lab");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle1);
    obj.layout155:setLeft(205);
    obj.layout155:setTop(594);
    obj.layout155:setWidth(18);
    obj.layout155:setHeight(18);
    obj.layout155:setName("layout155");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout155);
    obj.imageCheckBox146:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox146:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox146:setWidth(18);
    obj.imageCheckBox146:setHeight(18);
    obj.imageCheckBox146:setField("Gota2lab");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle1);
    obj.layout156:setLeft(219);
    obj.layout156:setTop(594);
    obj.layout156:setWidth(18);
    obj.layout156:setHeight(18);
    obj.layout156:setName("layout156");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout156);
    obj.imageCheckBox147:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox147:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox147:setWidth(18);
    obj.imageCheckBox147:setHeight(18);
    obj.imageCheckBox147:setField("Gota3lab");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle1);
    obj.layout157:setLeft(233);
    obj.layout157:setTop(594);
    obj.layout157:setWidth(18);
    obj.layout157:setHeight(18);
    obj.layout157:setName("layout157");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout157);
    obj.imageCheckBox148:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox148:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox148:setWidth(18);
    obj.imageCheckBox148:setHeight(18);
    obj.imageCheckBox148:setField("Gota4lab");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle1);
    obj.layout158:setLeft(247);
    obj.layout158:setTop(594);
    obj.layout158:setWidth(18);
    obj.layout158:setHeight(18);
    obj.layout158:setName("layout158");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout158);
    obj.imageCheckBox149:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox149:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox149:setWidth(18);
    obj.imageCheckBox149:setHeight(18);
    obj.imageCheckBox149:setField("Gota5lab");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle1);
    obj.layout159:setLeft(261);
    obj.layout159:setTop(594);
    obj.layout159:setWidth(18);
    obj.layout159:setHeight(18);
    obj.layout159:setName("layout159");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout159);
    obj.imageCheckBox150:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox150:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox150:setWidth(18);
    obj.imageCheckBox150:setHeight(18);
    obj.imageCheckBox150:setField("Gota6lab");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle1);
    obj.layout160:setLeft(275);
    obj.layout160:setTop(594);
    obj.layout160:setWidth(18);
    obj.layout160:setHeight(18);
    obj.layout160:setName("layout160");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout160);
    obj.imageCheckBox151:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox151:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox151:setWidth(18);
    obj.imageCheckBox151:setHeight(18);
    obj.imageCheckBox151:setField("Gota7lab");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle1);
    obj.layout161:setLeft(289);
    obj.layout161:setTop(594);
    obj.layout161:setWidth(18);
    obj.layout161:setHeight(18);
    obj.layout161:setName("layout161");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout161);
    obj.imageCheckBox152:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox152:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox152:setWidth(18);
    obj.imageCheckBox152:setHeight(18);
    obj.imageCheckBox152:setField("Gota8lab");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle1);
    obj.layout162:setLeft(439);
    obj.layout162:setTop(400);
    obj.layout162:setWidth(18);
    obj.layout162:setHeight(18);
    obj.layout162:setName("layout162");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout162);
    obj.imageCheckBox153:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox153:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox153:setWidth(18);
    obj.imageCheckBox153:setHeight(18);
    obj.imageCheckBox153:setField("Gota1empani");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle1);
    obj.layout163:setLeft(453);
    obj.layout163:setTop(400);
    obj.layout163:setWidth(18);
    obj.layout163:setHeight(18);
    obj.layout163:setName("layout163");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout163);
    obj.imageCheckBox154:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox154:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox154:setWidth(18);
    obj.imageCheckBox154:setHeight(18);
    obj.imageCheckBox154:setField("Gota2empani");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle1);
    obj.layout164:setLeft(467);
    obj.layout164:setTop(400);
    obj.layout164:setWidth(18);
    obj.layout164:setHeight(18);
    obj.layout164:setName("layout164");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout164);
    obj.imageCheckBox155:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox155:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox155:setWidth(18);
    obj.imageCheckBox155:setHeight(18);
    obj.imageCheckBox155:setField("Gota3empani");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle1);
    obj.layout165:setLeft(481);
    obj.layout165:setTop(400);
    obj.layout165:setWidth(18);
    obj.layout165:setHeight(18);
    obj.layout165:setName("layout165");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout165);
    obj.imageCheckBox156:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox156:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox156:setWidth(18);
    obj.imageCheckBox156:setHeight(18);
    obj.imageCheckBox156:setField("Gota4empani");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle1);
    obj.layout166:setLeft(495);
    obj.layout166:setTop(400);
    obj.layout166:setWidth(18);
    obj.layout166:setHeight(18);
    obj.layout166:setName("layout166");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout166);
    obj.imageCheckBox157:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox157:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox157:setWidth(18);
    obj.imageCheckBox157:setHeight(18);
    obj.imageCheckBox157:setField("Gota5empani");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle1);
    obj.layout167:setLeft(509);
    obj.layout167:setTop(400);
    obj.layout167:setWidth(18);
    obj.layout167:setHeight(18);
    obj.layout167:setName("layout167");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout167);
    obj.imageCheckBox158:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox158:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox158:setWidth(18);
    obj.imageCheckBox158:setHeight(18);
    obj.imageCheckBox158:setField("Gota6empani");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle1);
    obj.layout168:setLeft(523);
    obj.layout168:setTop(400);
    obj.layout168:setWidth(18);
    obj.layout168:setHeight(18);
    obj.layout168:setName("layout168");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout168);
    obj.imageCheckBox159:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox159:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox159:setWidth(18);
    obj.imageCheckBox159:setHeight(18);
    obj.imageCheckBox159:setField("Gota7empani");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle1);
    obj.layout169:setLeft(537);
    obj.layout169:setTop(400);
    obj.layout169:setWidth(18);
    obj.layout169:setHeight(18);
    obj.layout169:setName("layout169");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout169);
    obj.imageCheckBox160:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox160:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox160:setWidth(18);
    obj.imageCheckBox160:setHeight(18);
    obj.imageCheckBox160:setField("Gota8empani");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle1);
    obj.layout170:setLeft(439);
    obj.layout170:setTop(422);
    obj.layout170:setWidth(18);
    obj.layout170:setHeight(18);
    obj.layout170:setName("layout170");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout170);
    obj.imageCheckBox161:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox161:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox161:setWidth(18);
    obj.imageCheckBox161:setHeight(18);
    obj.imageCheckBox161:setField("Gota1ofi");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle1);
    obj.layout171:setLeft(453);
    obj.layout171:setTop(422);
    obj.layout171:setWidth(18);
    obj.layout171:setHeight(18);
    obj.layout171:setName("layout171");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout171);
    obj.imageCheckBox162:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox162:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox162:setWidth(18);
    obj.imageCheckBox162:setHeight(18);
    obj.imageCheckBox162:setField("Gota2ofi");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle1);
    obj.layout172:setLeft(467);
    obj.layout172:setTop(422);
    obj.layout172:setWidth(18);
    obj.layout172:setHeight(18);
    obj.layout172:setName("layout172");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout172);
    obj.imageCheckBox163:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox163:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox163:setWidth(18);
    obj.imageCheckBox163:setHeight(18);
    obj.imageCheckBox163:setField("Gota3ofi");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle1);
    obj.layout173:setLeft(481);
    obj.layout173:setTop(422);
    obj.layout173:setWidth(18);
    obj.layout173:setHeight(18);
    obj.layout173:setName("layout173");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout173);
    obj.imageCheckBox164:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox164:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox164:setWidth(18);
    obj.imageCheckBox164:setHeight(18);
    obj.imageCheckBox164:setField("Gota4ofi");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle1);
    obj.layout174:setLeft(495);
    obj.layout174:setTop(422);
    obj.layout174:setWidth(18);
    obj.layout174:setHeight(18);
    obj.layout174:setName("layout174");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout174);
    obj.imageCheckBox165:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox165:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox165:setWidth(18);
    obj.imageCheckBox165:setHeight(18);
    obj.imageCheckBox165:setField("Gota5ofi");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle1);
    obj.layout175:setLeft(509);
    obj.layout175:setTop(422);
    obj.layout175:setWidth(18);
    obj.layout175:setHeight(18);
    obj.layout175:setName("layout175");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout175);
    obj.imageCheckBox166:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox166:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox166:setWidth(18);
    obj.imageCheckBox166:setHeight(18);
    obj.imageCheckBox166:setField("Gota6ofi");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle1);
    obj.layout176:setLeft(523);
    obj.layout176:setTop(422);
    obj.layout176:setWidth(18);
    obj.layout176:setHeight(18);
    obj.layout176:setName("layout176");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout176);
    obj.imageCheckBox167:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox167:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox167:setWidth(18);
    obj.imageCheckBox167:setHeight(18);
    obj.imageCheckBox167:setField("Gota7ofi");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle1);
    obj.layout177:setLeft(537);
    obj.layout177:setTop(422);
    obj.layout177:setWidth(18);
    obj.layout177:setHeight(18);
    obj.layout177:setName("layout177");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout177);
    obj.imageCheckBox168:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox168:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox168:setWidth(18);
    obj.imageCheckBox168:setHeight(18);
    obj.imageCheckBox168:setField("Gota8ofi");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle1);
    obj.layout178:setLeft(439);
    obj.layout178:setTop(443);
    obj.layout178:setWidth(18);
    obj.layout178:setHeight(18);
    obj.layout178:setName("layout178");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout178);
    obj.imageCheckBox169:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox169:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox169:setWidth(18);
    obj.imageCheckBox169:setHeight(18);
    obj.imageCheckBox169:setField("Gota1cond");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle1);
    obj.layout179:setLeft(453);
    obj.layout179:setTop(443);
    obj.layout179:setWidth(18);
    obj.layout179:setHeight(18);
    obj.layout179:setName("layout179");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout179);
    obj.imageCheckBox170:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox170:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox170:setWidth(18);
    obj.imageCheckBox170:setHeight(18);
    obj.imageCheckBox170:setField("Gota2cond");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle1);
    obj.layout180:setLeft(467);
    obj.layout180:setTop(443);
    obj.layout180:setWidth(18);
    obj.layout180:setHeight(18);
    obj.layout180:setName("layout180");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout180);
    obj.imageCheckBox171:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox171:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox171:setWidth(18);
    obj.imageCheckBox171:setHeight(18);
    obj.imageCheckBox171:setField("Gota3cond");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle1);
    obj.layout181:setLeft(481);
    obj.layout181:setTop(443);
    obj.layout181:setWidth(18);
    obj.layout181:setHeight(18);
    obj.layout181:setName("layout181");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout181);
    obj.imageCheckBox172:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox172:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox172:setWidth(18);
    obj.imageCheckBox172:setHeight(18);
    obj.imageCheckBox172:setField("Gota4cond");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle1);
    obj.layout182:setLeft(495);
    obj.layout182:setTop(443);
    obj.layout182:setWidth(18);
    obj.layout182:setHeight(18);
    obj.layout182:setName("layout182");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout182);
    obj.imageCheckBox173:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox173:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox173:setWidth(18);
    obj.imageCheckBox173:setHeight(18);
    obj.imageCheckBox173:setField("Gota5cond");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle1);
    obj.layout183:setLeft(509);
    obj.layout183:setTop(443);
    obj.layout183:setWidth(18);
    obj.layout183:setHeight(18);
    obj.layout183:setName("layout183");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout183);
    obj.imageCheckBox174:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox174:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox174:setWidth(18);
    obj.imageCheckBox174:setHeight(18);
    obj.imageCheckBox174:setField("Gota6cond");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle1);
    obj.layout184:setLeft(523);
    obj.layout184:setTop(443);
    obj.layout184:setWidth(18);
    obj.layout184:setHeight(18);
    obj.layout184:setName("layout184");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout184);
    obj.imageCheckBox175:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox175:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox175:setWidth(18);
    obj.imageCheckBox175:setHeight(18);
    obj.imageCheckBox175:setField("Gota7cond");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle1);
    obj.layout185:setLeft(537);
    obj.layout185:setTop(443);
    obj.layout185:setWidth(18);
    obj.layout185:setHeight(18);
    obj.layout185:setName("layout185");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout185);
    obj.imageCheckBox176:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox176:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox176:setWidth(18);
    obj.imageCheckBox176:setHeight(18);
    obj.imageCheckBox176:setField("Gota8cond");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle1);
    obj.layout186:setLeft(439);
    obj.layout186:setTop(464);
    obj.layout186:setWidth(18);
    obj.layout186:setHeight(18);
    obj.layout186:setName("layout186");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout186);
    obj.imageCheckBox177:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox177:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox177:setWidth(18);
    obj.imageCheckBox177:setHeight(18);
    obj.imageCheckBox177:setField("Gota1etiq");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle1);
    obj.layout187:setLeft(453);
    obj.layout187:setTop(464);
    obj.layout187:setWidth(18);
    obj.layout187:setHeight(18);
    obj.layout187:setName("layout187");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout187);
    obj.imageCheckBox178:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox178:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox178:setWidth(18);
    obj.imageCheckBox178:setHeight(18);
    obj.imageCheckBox178:setField("Gota2etiq");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle1);
    obj.layout188:setLeft(467);
    obj.layout188:setTop(464);
    obj.layout188:setWidth(18);
    obj.layout188:setHeight(18);
    obj.layout188:setName("layout188");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout188);
    obj.imageCheckBox179:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox179:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox179:setWidth(18);
    obj.imageCheckBox179:setHeight(18);
    obj.imageCheckBox179:setField("Gota3etiq");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle1);
    obj.layout189:setLeft(481);
    obj.layout189:setTop(464);
    obj.layout189:setWidth(18);
    obj.layout189:setHeight(18);
    obj.layout189:setName("layout189");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout189);
    obj.imageCheckBox180:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox180:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox180:setWidth(18);
    obj.imageCheckBox180:setHeight(18);
    obj.imageCheckBox180:setField("Gota4etiq");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.layout190 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout190:setParent(obj.rectangle1);
    obj.layout190:setLeft(495);
    obj.layout190:setTop(464);
    obj.layout190:setWidth(18);
    obj.layout190:setHeight(18);
    obj.layout190:setName("layout190");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout190);
    obj.imageCheckBox181:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox181:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox181:setWidth(18);
    obj.imageCheckBox181:setHeight(18);
    obj.imageCheckBox181:setField("Gota5etiq");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.layout191 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout191:setParent(obj.rectangle1);
    obj.layout191:setLeft(509);
    obj.layout191:setTop(464);
    obj.layout191:setWidth(18);
    obj.layout191:setHeight(18);
    obj.layout191:setName("layout191");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout191);
    obj.imageCheckBox182:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox182:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox182:setWidth(18);
    obj.imageCheckBox182:setHeight(18);
    obj.imageCheckBox182:setField("Gota6etiq");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.layout192 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout192:setParent(obj.rectangle1);
    obj.layout192:setLeft(523);
    obj.layout192:setTop(464);
    obj.layout192:setWidth(18);
    obj.layout192:setHeight(18);
    obj.layout192:setName("layout192");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout192);
    obj.imageCheckBox183:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox183:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox183:setWidth(18);
    obj.imageCheckBox183:setHeight(18);
    obj.imageCheckBox183:setField("Gota7etiq");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.layout193 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout193:setParent(obj.rectangle1);
    obj.layout193:setLeft(537);
    obj.layout193:setTop(464);
    obj.layout193:setWidth(18);
    obj.layout193:setHeight(18);
    obj.layout193:setName("layout193");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout193);
    obj.imageCheckBox184:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox184:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox184:setWidth(18);
    obj.imageCheckBox184:setHeight(18);
    obj.imageCheckBox184:setField("Gota8etiq");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.layout194 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout194:setParent(obj.rectangle1);
    obj.layout194:setLeft(439);
    obj.layout194:setTop(485);
    obj.layout194:setWidth(18);
    obj.layout194:setHeight(18);
    obj.layout194:setName("layout194");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout194);
    obj.imageCheckBox185:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox185:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox185:setWidth(18);
    obj.imageCheckBox185:setHeight(18);
    obj.imageCheckBox185:setField("Gota1adf");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.layout195 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout195:setParent(obj.rectangle1);
    obj.layout195:setLeft(453);
    obj.layout195:setTop(485);
    obj.layout195:setWidth(18);
    obj.layout195:setHeight(18);
    obj.layout195:setName("layout195");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout195);
    obj.imageCheckBox186:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox186:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox186:setWidth(18);
    obj.imageCheckBox186:setHeight(18);
    obj.imageCheckBox186:setField("Gota2adf");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.layout196 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout196:setParent(obj.rectangle1);
    obj.layout196:setLeft(467);
    obj.layout196:setTop(485);
    obj.layout196:setWidth(18);
    obj.layout196:setHeight(18);
    obj.layout196:setName("layout196");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout196);
    obj.imageCheckBox187:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox187:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox187:setWidth(18);
    obj.imageCheckBox187:setHeight(18);
    obj.imageCheckBox187:setField("Gota3adf");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.layout197 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout197:setParent(obj.rectangle1);
    obj.layout197:setLeft(481);
    obj.layout197:setTop(485);
    obj.layout197:setWidth(18);
    obj.layout197:setHeight(18);
    obj.layout197:setName("layout197");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout197);
    obj.imageCheckBox188:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox188:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox188:setWidth(18);
    obj.imageCheckBox188:setHeight(18);
    obj.imageCheckBox188:setField("Gota4adf");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.layout198 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout198:setParent(obj.rectangle1);
    obj.layout198:setLeft(495);
    obj.layout198:setTop(485);
    obj.layout198:setWidth(18);
    obj.layout198:setHeight(18);
    obj.layout198:setName("layout198");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout198);
    obj.imageCheckBox189:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox189:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox189:setWidth(18);
    obj.imageCheckBox189:setHeight(18);
    obj.imageCheckBox189:setField("Gota5adf");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.layout199 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout199:setParent(obj.rectangle1);
    obj.layout199:setLeft(509);
    obj.layout199:setTop(485);
    obj.layout199:setWidth(18);
    obj.layout199:setHeight(18);
    obj.layout199:setName("layout199");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout199);
    obj.imageCheckBox190:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox190:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox190:setWidth(18);
    obj.imageCheckBox190:setHeight(18);
    obj.imageCheckBox190:setField("Gota6adf");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.layout200 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout200:setParent(obj.rectangle1);
    obj.layout200:setLeft(523);
    obj.layout200:setTop(485);
    obj.layout200:setWidth(18);
    obj.layout200:setHeight(18);
    obj.layout200:setName("layout200");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout200);
    obj.imageCheckBox191:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox191:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox191:setWidth(18);
    obj.imageCheckBox191:setHeight(18);
    obj.imageCheckBox191:setField("Gota7adf");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.layout201 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout201:setParent(obj.rectangle1);
    obj.layout201:setLeft(537);
    obj.layout201:setTop(485);
    obj.layout201:setWidth(18);
    obj.layout201:setHeight(18);
    obj.layout201:setName("layout201");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout201);
    obj.imageCheckBox192:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox192:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox192:setWidth(18);
    obj.imageCheckBox192:setHeight(18);
    obj.imageCheckBox192:setField("Gota8adf");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.layout202 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout202:setParent(obj.rectangle1);
    obj.layout202:setLeft(439);
    obj.layout202:setTop(506);
    obj.layout202:setWidth(18);
    obj.layout202:setHeight(18);
    obj.layout202:setName("layout202");

    obj.imageCheckBox193 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox193:setParent(obj.layout202);
    obj.imageCheckBox193:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox193:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox193:setWidth(18);
    obj.imageCheckBox193:setHeight(18);
    obj.imageCheckBox193:setField("Gota1ab");
    obj.imageCheckBox193:setName("imageCheckBox193");

    obj.layout203 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout203:setParent(obj.rectangle1);
    obj.layout203:setLeft(453);
    obj.layout203:setTop(506);
    obj.layout203:setWidth(18);
    obj.layout203:setHeight(18);
    obj.layout203:setName("layout203");

    obj.imageCheckBox194 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox194:setParent(obj.layout203);
    obj.imageCheckBox194:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox194:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox194:setWidth(18);
    obj.imageCheckBox194:setHeight(18);
    obj.imageCheckBox194:setField("Gota2ab");
    obj.imageCheckBox194:setName("imageCheckBox194");

    obj.layout204 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout204:setParent(obj.rectangle1);
    obj.layout204:setLeft(467);
    obj.layout204:setTop(506);
    obj.layout204:setWidth(18);
    obj.layout204:setHeight(18);
    obj.layout204:setName("layout204");

    obj.imageCheckBox195 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox195:setParent(obj.layout204);
    obj.imageCheckBox195:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox195:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox195:setWidth(18);
    obj.imageCheckBox195:setHeight(18);
    obj.imageCheckBox195:setField("Gota3ab");
    obj.imageCheckBox195:setName("imageCheckBox195");

    obj.layout205 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout205:setParent(obj.rectangle1);
    obj.layout205:setLeft(481);
    obj.layout205:setTop(506);
    obj.layout205:setWidth(18);
    obj.layout205:setHeight(18);
    obj.layout205:setName("layout205");

    obj.imageCheckBox196 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox196:setParent(obj.layout205);
    obj.imageCheckBox196:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox196:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox196:setWidth(18);
    obj.imageCheckBox196:setHeight(18);
    obj.imageCheckBox196:setField("Gota4ab");
    obj.imageCheckBox196:setName("imageCheckBox196");

    obj.layout206 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout206:setParent(obj.rectangle1);
    obj.layout206:setLeft(495);
    obj.layout206:setTop(506);
    obj.layout206:setWidth(18);
    obj.layout206:setHeight(18);
    obj.layout206:setName("layout206");

    obj.imageCheckBox197 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox197:setParent(obj.layout206);
    obj.imageCheckBox197:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox197:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox197:setWidth(18);
    obj.imageCheckBox197:setHeight(18);
    obj.imageCheckBox197:setField("Gota5ab");
    obj.imageCheckBox197:setName("imageCheckBox197");

    obj.layout207 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout207:setParent(obj.rectangle1);
    obj.layout207:setLeft(509);
    obj.layout207:setTop(506);
    obj.layout207:setWidth(18);
    obj.layout207:setHeight(18);
    obj.layout207:setName("layout207");

    obj.imageCheckBox198 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox198:setParent(obj.layout207);
    obj.imageCheckBox198:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox198:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox198:setWidth(18);
    obj.imageCheckBox198:setHeight(18);
    obj.imageCheckBox198:setField("Gota6ab");
    obj.imageCheckBox198:setName("imageCheckBox198");

    obj.layout208 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout208:setParent(obj.rectangle1);
    obj.layout208:setLeft(523);
    obj.layout208:setTop(506);
    obj.layout208:setWidth(18);
    obj.layout208:setHeight(18);
    obj.layout208:setName("layout208");

    obj.imageCheckBox199 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox199:setParent(obj.layout208);
    obj.imageCheckBox199:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox199:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox199:setWidth(18);
    obj.imageCheckBox199:setHeight(18);
    obj.imageCheckBox199:setField("Gota7ab");
    obj.imageCheckBox199:setName("imageCheckBox199");

    obj.layout209 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout209:setParent(obj.rectangle1);
    obj.layout209:setLeft(537);
    obj.layout209:setTop(506);
    obj.layout209:setWidth(18);
    obj.layout209:setHeight(18);
    obj.layout209:setName("layout209");

    obj.imageCheckBox200 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox200:setParent(obj.layout209);
    obj.imageCheckBox200:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox200:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox200:setWidth(18);
    obj.imageCheckBox200:setHeight(18);
    obj.imageCheckBox200:setField("Gota8ab");
    obj.imageCheckBox200:setName("imageCheckBox200");

    obj.layout210 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout210:setParent(obj.rectangle1);
    obj.layout210:setLeft(439);
    obj.layout210:setTop(529);
    obj.layout210:setWidth(18);
    obj.layout210:setHeight(18);
    obj.layout210:setName("layout210");

    obj.imageCheckBox201 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox201:setParent(obj.layout210);
    obj.imageCheckBox201:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox201:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox201:setWidth(18);
    obj.imageCheckBox201:setHeight(18);
    obj.imageCheckBox201:setField("Gota1perf");
    obj.imageCheckBox201:setName("imageCheckBox201");

    obj.layout211 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout211:setParent(obj.rectangle1);
    obj.layout211:setLeft(453);
    obj.layout211:setTop(529);
    obj.layout211:setWidth(18);
    obj.layout211:setHeight(18);
    obj.layout211:setName("layout211");

    obj.imageCheckBox202 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox202:setParent(obj.layout211);
    obj.imageCheckBox202:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox202:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox202:setWidth(18);
    obj.imageCheckBox202:setHeight(18);
    obj.imageCheckBox202:setField("Gota2perf");
    obj.imageCheckBox202:setName("imageCheckBox202");

    obj.layout212 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout212:setParent(obj.rectangle1);
    obj.layout212:setLeft(467);
    obj.layout212:setTop(529);
    obj.layout212:setWidth(18);
    obj.layout212:setHeight(18);
    obj.layout212:setName("layout212");

    obj.imageCheckBox203 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox203:setParent(obj.layout212);
    obj.imageCheckBox203:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox203:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox203:setWidth(18);
    obj.imageCheckBox203:setHeight(18);
    obj.imageCheckBox203:setField("Gota3perf");
    obj.imageCheckBox203:setName("imageCheckBox203");

    obj.layout213 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout213:setParent(obj.rectangle1);
    obj.layout213:setLeft(481);
    obj.layout213:setTop(529);
    obj.layout213:setWidth(18);
    obj.layout213:setHeight(18);
    obj.layout213:setName("layout213");

    obj.imageCheckBox204 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox204:setParent(obj.layout213);
    obj.imageCheckBox204:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox204:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox204:setWidth(18);
    obj.imageCheckBox204:setHeight(18);
    obj.imageCheckBox204:setField("Gota4perf");
    obj.imageCheckBox204:setName("imageCheckBox204");

    obj.layout214 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout214:setParent(obj.rectangle1);
    obj.layout214:setLeft(495);
    obj.layout214:setTop(529);
    obj.layout214:setWidth(18);
    obj.layout214:setHeight(18);
    obj.layout214:setName("layout214");

    obj.imageCheckBox205 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox205:setParent(obj.layout214);
    obj.imageCheckBox205:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox205:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox205:setWidth(18);
    obj.imageCheckBox205:setHeight(18);
    obj.imageCheckBox205:setField("Gota5perf");
    obj.imageCheckBox205:setName("imageCheckBox205");

    obj.layout215 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout215:setParent(obj.rectangle1);
    obj.layout215:setLeft(509);
    obj.layout215:setTop(529);
    obj.layout215:setWidth(18);
    obj.layout215:setHeight(18);
    obj.layout215:setName("layout215");

    obj.imageCheckBox206 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox206:setParent(obj.layout215);
    obj.imageCheckBox206:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox206:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox206:setWidth(18);
    obj.imageCheckBox206:setHeight(18);
    obj.imageCheckBox206:setField("Gota6perf");
    obj.imageCheckBox206:setName("imageCheckBox206");

    obj.layout216 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout216:setParent(obj.rectangle1);
    obj.layout216:setLeft(523);
    obj.layout216:setTop(529);
    obj.layout216:setWidth(18);
    obj.layout216:setHeight(18);
    obj.layout216:setName("layout216");

    obj.imageCheckBox207 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox207:setParent(obj.layout216);
    obj.imageCheckBox207:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox207:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox207:setWidth(18);
    obj.imageCheckBox207:setHeight(18);
    obj.imageCheckBox207:setField("Gota7perf");
    obj.imageCheckBox207:setName("imageCheckBox207");

    obj.layout217 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout217:setParent(obj.rectangle1);
    obj.layout217:setLeft(537);
    obj.layout217:setTop(529);
    obj.layout217:setWidth(18);
    obj.layout217:setHeight(18);
    obj.layout217:setName("layout217");

    obj.imageCheckBox208 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox208:setParent(obj.layout217);
    obj.imageCheckBox208:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox208:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox208:setWidth(18);
    obj.imageCheckBox208:setHeight(18);
    obj.imageCheckBox208:setField("Gota8perf");
    obj.imageCheckBox208:setName("imageCheckBox208");

    obj.layout218 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout218:setParent(obj.rectangle1);
    obj.layout218:setLeft(439);
    obj.layout218:setTop(550);
    obj.layout218:setWidth(18);
    obj.layout218:setHeight(18);
    obj.layout218:setName("layout218");

    obj.imageCheckBox209 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox209:setParent(obj.layout218);
    obj.imageCheckBox209:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox209:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox209:setWidth(18);
    obj.imageCheckBox209:setHeight(18);
    obj.imageCheckBox209:setField("Gota1seg");
    obj.imageCheckBox209:setName("imageCheckBox209");

    obj.layout219 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout219:setParent(obj.rectangle1);
    obj.layout219:setLeft(453);
    obj.layout219:setTop(550);
    obj.layout219:setWidth(18);
    obj.layout219:setHeight(18);
    obj.layout219:setName("layout219");

    obj.imageCheckBox210 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox210:setParent(obj.layout219);
    obj.imageCheckBox210:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox210:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox210:setWidth(18);
    obj.imageCheckBox210:setHeight(18);
    obj.imageCheckBox210:setField("Gota2seg");
    obj.imageCheckBox210:setName("imageCheckBox210");

    obj.layout220 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout220:setParent(obj.rectangle1);
    obj.layout220:setLeft(467);
    obj.layout220:setTop(550);
    obj.layout220:setWidth(18);
    obj.layout220:setHeight(18);
    obj.layout220:setName("layout220");

    obj.imageCheckBox211 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox211:setParent(obj.layout220);
    obj.imageCheckBox211:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox211:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox211:setWidth(18);
    obj.imageCheckBox211:setHeight(18);
    obj.imageCheckBox211:setField("Gota3seg");
    obj.imageCheckBox211:setName("imageCheckBox211");

    obj.layout221 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout221:setParent(obj.rectangle1);
    obj.layout221:setLeft(481);
    obj.layout221:setTop(550);
    obj.layout221:setWidth(18);
    obj.layout221:setHeight(18);
    obj.layout221:setName("layout221");

    obj.imageCheckBox212 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox212:setParent(obj.layout221);
    obj.imageCheckBox212:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox212:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox212:setWidth(18);
    obj.imageCheckBox212:setHeight(18);
    obj.imageCheckBox212:setField("Gota4seg");
    obj.imageCheckBox212:setName("imageCheckBox212");

    obj.layout222 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout222:setParent(obj.rectangle1);
    obj.layout222:setLeft(495);
    obj.layout222:setTop(550);
    obj.layout222:setWidth(18);
    obj.layout222:setHeight(18);
    obj.layout222:setName("layout222");

    obj.imageCheckBox213 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox213:setParent(obj.layout222);
    obj.imageCheckBox213:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox213:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox213:setWidth(18);
    obj.imageCheckBox213:setHeight(18);
    obj.imageCheckBox213:setField("Gota5seg");
    obj.imageCheckBox213:setName("imageCheckBox213");

    obj.layout223 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout223:setParent(obj.rectangle1);
    obj.layout223:setLeft(509);
    obj.layout223:setTop(550);
    obj.layout223:setWidth(18);
    obj.layout223:setHeight(18);
    obj.layout223:setName("layout223");

    obj.imageCheckBox214 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox214:setParent(obj.layout223);
    obj.imageCheckBox214:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox214:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox214:setWidth(18);
    obj.imageCheckBox214:setHeight(18);
    obj.imageCheckBox214:setField("Gota6seg");
    obj.imageCheckBox214:setName("imageCheckBox214");

    obj.layout224 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout224:setParent(obj.rectangle1);
    obj.layout224:setLeft(523);
    obj.layout224:setTop(550);
    obj.layout224:setWidth(18);
    obj.layout224:setHeight(18);
    obj.layout224:setName("layout224");

    obj.imageCheckBox215 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox215:setParent(obj.layout224);
    obj.imageCheckBox215:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox215:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox215:setWidth(18);
    obj.imageCheckBox215:setHeight(18);
    obj.imageCheckBox215:setField("Gota7seg");
    obj.imageCheckBox215:setName("imageCheckBox215");

    obj.layout225 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout225:setParent(obj.rectangle1);
    obj.layout225:setLeft(537);
    obj.layout225:setTop(550);
    obj.layout225:setWidth(18);
    obj.layout225:setHeight(18);
    obj.layout225:setName("layout225");

    obj.imageCheckBox216 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox216:setParent(obj.layout225);
    obj.imageCheckBox216:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox216:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox216:setWidth(18);
    obj.imageCheckBox216:setHeight(18);
    obj.imageCheckBox216:setField("Gota8seg");
    obj.imageCheckBox216:setName("imageCheckBox216");

    obj.layout226 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout226:setParent(obj.rectangle1);
    obj.layout226:setLeft(439);
    obj.layout226:setTop(572);
    obj.layout226:setWidth(18);
    obj.layout226:setHeight(18);
    obj.layout226:setName("layout226");

    obj.imageCheckBox217 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox217:setParent(obj.layout226);
    obj.imageCheckBox217:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox217:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox217:setWidth(18);
    obj.imageCheckBox217:setHeight(18);
    obj.imageCheckBox217:setField("Gota1furti");
    obj.imageCheckBox217:setName("imageCheckBox217");

    obj.layout227 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout227:setParent(obj.rectangle1);
    obj.layout227:setLeft(453);
    obj.layout227:setTop(572);
    obj.layout227:setWidth(18);
    obj.layout227:setHeight(18);
    obj.layout227:setName("layout227");

    obj.imageCheckBox218 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox218:setParent(obj.layout227);
    obj.imageCheckBox218:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox218:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox218:setWidth(18);
    obj.imageCheckBox218:setHeight(18);
    obj.imageCheckBox218:setField("Gota2furti");
    obj.imageCheckBox218:setName("imageCheckBox218");

    obj.layout228 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout228:setParent(obj.rectangle1);
    obj.layout228:setLeft(467);
    obj.layout228:setTop(572);
    obj.layout228:setWidth(18);
    obj.layout228:setHeight(18);
    obj.layout228:setName("layout228");

    obj.imageCheckBox219 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox219:setParent(obj.layout228);
    obj.imageCheckBox219:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox219:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox219:setWidth(18);
    obj.imageCheckBox219:setHeight(18);
    obj.imageCheckBox219:setField("Gota3furti");
    obj.imageCheckBox219:setName("imageCheckBox219");

    obj.layout229 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout229:setParent(obj.rectangle1);
    obj.layout229:setLeft(481);
    obj.layout229:setTop(572);
    obj.layout229:setWidth(18);
    obj.layout229:setHeight(18);
    obj.layout229:setName("layout229");

    obj.imageCheckBox220 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox220:setParent(obj.layout229);
    obj.imageCheckBox220:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox220:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox220:setWidth(18);
    obj.imageCheckBox220:setHeight(18);
    obj.imageCheckBox220:setField("Gota4furti");
    obj.imageCheckBox220:setName("imageCheckBox220");

    obj.layout230 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout230:setParent(obj.rectangle1);
    obj.layout230:setLeft(495);
    obj.layout230:setTop(572);
    obj.layout230:setWidth(18);
    obj.layout230:setHeight(18);
    obj.layout230:setName("layout230");

    obj.imageCheckBox221 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox221:setParent(obj.layout230);
    obj.imageCheckBox221:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox221:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox221:setWidth(18);
    obj.imageCheckBox221:setHeight(18);
    obj.imageCheckBox221:setField("Gota5furti");
    obj.imageCheckBox221:setName("imageCheckBox221");

    obj.layout231 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout231:setParent(obj.rectangle1);
    obj.layout231:setLeft(509);
    obj.layout231:setTop(572);
    obj.layout231:setWidth(18);
    obj.layout231:setHeight(18);
    obj.layout231:setName("layout231");

    obj.imageCheckBox222 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox222:setParent(obj.layout231);
    obj.imageCheckBox222:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox222:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox222:setWidth(18);
    obj.imageCheckBox222:setHeight(18);
    obj.imageCheckBox222:setField("Gota6furti");
    obj.imageCheckBox222:setName("imageCheckBox222");

    obj.layout232 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout232:setParent(obj.rectangle1);
    obj.layout232:setLeft(523);
    obj.layout232:setTop(572);
    obj.layout232:setWidth(18);
    obj.layout232:setHeight(18);
    obj.layout232:setName("layout232");

    obj.imageCheckBox223 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox223:setParent(obj.layout232);
    obj.imageCheckBox223:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox223:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox223:setWidth(18);
    obj.imageCheckBox223:setHeight(18);
    obj.imageCheckBox223:setField("Gota7furti");
    obj.imageCheckBox223:setName("imageCheckBox223");

    obj.layout233 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout233:setParent(obj.rectangle1);
    obj.layout233:setLeft(537);
    obj.layout233:setTop(572);
    obj.layout233:setWidth(18);
    obj.layout233:setHeight(18);
    obj.layout233:setName("layout233");

    obj.imageCheckBox224 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox224:setParent(obj.layout233);
    obj.imageCheckBox224:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox224:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox224:setWidth(18);
    obj.imageCheckBox224:setHeight(18);
    obj.imageCheckBox224:setField("Gota8furti");
    obj.imageCheckBox224:setName("imageCheckBox224");

    obj.layout234 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout234:setParent(obj.rectangle1);
    obj.layout234:setLeft(439);
    obj.layout234:setTop(594);
    obj.layout234:setWidth(18);
    obj.layout234:setHeight(18);
    obj.layout234:setName("layout234");

    obj.imageCheckBox225 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox225:setParent(obj.layout234);
    obj.imageCheckBox225:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox225:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox225:setWidth(18);
    obj.imageCheckBox225:setHeight(18);
    obj.imageCheckBox225:setField("Gota1sobre");
    obj.imageCheckBox225:setName("imageCheckBox225");

    obj.layout235 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout235:setParent(obj.rectangle1);
    obj.layout235:setLeft(453);
    obj.layout235:setTop(594);
    obj.layout235:setWidth(18);
    obj.layout235:setHeight(18);
    obj.layout235:setName("layout235");

    obj.imageCheckBox226 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox226:setParent(obj.layout235);
    obj.imageCheckBox226:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox226:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox226:setWidth(18);
    obj.imageCheckBox226:setHeight(18);
    obj.imageCheckBox226:setField("Gota2sobre");
    obj.imageCheckBox226:setName("imageCheckBox226");

    obj.layout236 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout236:setParent(obj.rectangle1);
    obj.layout236:setLeft(467);
    obj.layout236:setTop(594);
    obj.layout236:setWidth(18);
    obj.layout236:setHeight(18);
    obj.layout236:setName("layout236");

    obj.imageCheckBox227 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox227:setParent(obj.layout236);
    obj.imageCheckBox227:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox227:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox227:setWidth(18);
    obj.imageCheckBox227:setHeight(18);
    obj.imageCheckBox227:setField("Gota3sobre");
    obj.imageCheckBox227:setName("imageCheckBox227");

    obj.layout237 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout237:setParent(obj.rectangle1);
    obj.layout237:setLeft(481);
    obj.layout237:setTop(594);
    obj.layout237:setWidth(18);
    obj.layout237:setHeight(18);
    obj.layout237:setName("layout237");

    obj.imageCheckBox228 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox228:setParent(obj.layout237);
    obj.imageCheckBox228:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox228:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox228:setWidth(18);
    obj.imageCheckBox228:setHeight(18);
    obj.imageCheckBox228:setField("Gota4sobre");
    obj.imageCheckBox228:setName("imageCheckBox228");

    obj.layout238 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout238:setParent(obj.rectangle1);
    obj.layout238:setLeft(495);
    obj.layout238:setTop(594);
    obj.layout238:setWidth(18);
    obj.layout238:setHeight(18);
    obj.layout238:setName("layout238");

    obj.imageCheckBox229 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox229:setParent(obj.layout238);
    obj.imageCheckBox229:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox229:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox229:setWidth(18);
    obj.imageCheckBox229:setHeight(18);
    obj.imageCheckBox229:setField("Gota5sobre");
    obj.imageCheckBox229:setName("imageCheckBox229");

    obj.layout239 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout239:setParent(obj.rectangle1);
    obj.layout239:setLeft(509);
    obj.layout239:setTop(594);
    obj.layout239:setWidth(18);
    obj.layout239:setHeight(18);
    obj.layout239:setName("layout239");

    obj.imageCheckBox230 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox230:setParent(obj.layout239);
    obj.imageCheckBox230:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox230:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox230:setWidth(18);
    obj.imageCheckBox230:setHeight(18);
    obj.imageCheckBox230:setField("Gota6sobre");
    obj.imageCheckBox230:setName("imageCheckBox230");

    obj.layout240 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout240:setParent(obj.rectangle1);
    obj.layout240:setLeft(523);
    obj.layout240:setTop(594);
    obj.layout240:setWidth(18);
    obj.layout240:setHeight(18);
    obj.layout240:setName("layout240");

    obj.imageCheckBox231 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox231:setParent(obj.layout240);
    obj.imageCheckBox231:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox231:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox231:setWidth(18);
    obj.imageCheckBox231:setHeight(18);
    obj.imageCheckBox231:setField("Gota7sobre");
    obj.imageCheckBox231:setName("imageCheckBox231");

    obj.layout241 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout241:setParent(obj.rectangle1);
    obj.layout241:setLeft(537);
    obj.layout241:setTop(594);
    obj.layout241:setWidth(18);
    obj.layout241:setHeight(18);
    obj.layout241:setName("layout241");

    obj.imageCheckBox232 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox232:setParent(obj.layout241);
    obj.imageCheckBox232:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox232:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox232:setWidth(18);
    obj.imageCheckBox232:setHeight(18);
    obj.imageCheckBox232:setField("Gota8sobre");
    obj.imageCheckBox232:setName("imageCheckBox232");

    obj.layout242 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout242:setParent(obj.rectangle1);
    obj.layout242:setLeft(686);
    obj.layout242:setTop(400);
    obj.layout242:setWidth(18);
    obj.layout242:setHeight(18);
    obj.layout242:setName("layout242");

    obj.imageCheckBox233 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox233:setParent(obj.layout242);
    obj.imageCheckBox233:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox233:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox233:setWidth(18);
    obj.imageCheckBox233:setHeight(18);
    obj.imageCheckBox233:setField("Gota1acad");
    obj.imageCheckBox233:setName("imageCheckBox233");

    obj.layout243 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout243:setParent(obj.rectangle1);
    obj.layout243:setLeft(700);
    obj.layout243:setTop(400);
    obj.layout243:setWidth(18);
    obj.layout243:setHeight(18);
    obj.layout243:setName("layout243");

    obj.imageCheckBox234 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox234:setParent(obj.layout243);
    obj.imageCheckBox234:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox234:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox234:setWidth(18);
    obj.imageCheckBox234:setHeight(18);
    obj.imageCheckBox234:setField("Gota2acad");
    obj.imageCheckBox234:setName("imageCheckBox234");

    obj.layout244 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout244:setParent(obj.rectangle1);
    obj.layout244:setLeft(714);
    obj.layout244:setTop(400);
    obj.layout244:setWidth(18);
    obj.layout244:setHeight(18);
    obj.layout244:setName("layout244");

    obj.imageCheckBox235 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox235:setParent(obj.layout244);
    obj.imageCheckBox235:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox235:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox235:setWidth(18);
    obj.imageCheckBox235:setHeight(18);
    obj.imageCheckBox235:setField("Gota3acad");
    obj.imageCheckBox235:setName("imageCheckBox235");

    obj.layout245 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout245:setParent(obj.rectangle1);
    obj.layout245:setLeft(728);
    obj.layout245:setTop(400);
    obj.layout245:setWidth(18);
    obj.layout245:setHeight(18);
    obj.layout245:setName("layout245");

    obj.imageCheckBox236 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox236:setParent(obj.layout245);
    obj.imageCheckBox236:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox236:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox236:setWidth(18);
    obj.imageCheckBox236:setHeight(18);
    obj.imageCheckBox236:setField("Gota4acad");
    obj.imageCheckBox236:setName("imageCheckBox236");

    obj.layout246 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout246:setParent(obj.rectangle1);
    obj.layout246:setLeft(742);
    obj.layout246:setTop(400);
    obj.layout246:setWidth(18);
    obj.layout246:setHeight(18);
    obj.layout246:setName("layout246");

    obj.imageCheckBox237 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox237:setParent(obj.layout246);
    obj.imageCheckBox237:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox237:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox237:setWidth(18);
    obj.imageCheckBox237:setHeight(18);
    obj.imageCheckBox237:setField("Gota5acad");
    obj.imageCheckBox237:setName("imageCheckBox237");

    obj.layout247 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout247:setParent(obj.rectangle1);
    obj.layout247:setLeft(756);
    obj.layout247:setTop(400);
    obj.layout247:setWidth(18);
    obj.layout247:setHeight(18);
    obj.layout247:setName("layout247");

    obj.imageCheckBox238 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox238:setParent(obj.layout247);
    obj.imageCheckBox238:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox238:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox238:setWidth(18);
    obj.imageCheckBox238:setHeight(18);
    obj.imageCheckBox238:setField("Gota6acad");
    obj.imageCheckBox238:setName("imageCheckBox238");

    obj.layout248 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout248:setParent(obj.rectangle1);
    obj.layout248:setLeft(770);
    obj.layout248:setTop(400);
    obj.layout248:setWidth(18);
    obj.layout248:setHeight(18);
    obj.layout248:setName("layout248");

    obj.imageCheckBox239 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox239:setParent(obj.layout248);
    obj.imageCheckBox239:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox239:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox239:setWidth(18);
    obj.imageCheckBox239:setHeight(18);
    obj.imageCheckBox239:setField("Gota7acad");
    obj.imageCheckBox239:setName("imageCheckBox239");

    obj.layout249 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout249:setParent(obj.rectangle1);
    obj.layout249:setLeft(784);
    obj.layout249:setTop(400);
    obj.layout249:setWidth(18);
    obj.layout249:setHeight(18);
    obj.layout249:setName("layout249");

    obj.imageCheckBox240 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox240:setParent(obj.layout249);
    obj.imageCheckBox240:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox240:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox240:setWidth(18);
    obj.imageCheckBox240:setHeight(18);
    obj.imageCheckBox240:setField("Gota8acad");
    obj.imageCheckBox240:setName("imageCheckBox240");

    obj.layout250 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout250:setParent(obj.rectangle1);
    obj.layout250:setLeft(686);
    obj.layout250:setTop(422);
    obj.layout250:setWidth(18);
    obj.layout250:setHeight(18);
    obj.layout250:setName("layout250");

    obj.imageCheckBox241 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox241:setParent(obj.layout250);
    obj.imageCheckBox241:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox241:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox241:setWidth(18);
    obj.imageCheckBox241:setHeight(18);
    obj.imageCheckBox241:setField("Gota1comp");
    obj.imageCheckBox241:setName("imageCheckBox241");

    obj.layout251 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout251:setParent(obj.rectangle1);
    obj.layout251:setLeft(700);
    obj.layout251:setTop(422);
    obj.layout251:setWidth(18);
    obj.layout251:setHeight(18);
    obj.layout251:setName("layout251");

    obj.imageCheckBox242 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox242:setParent(obj.layout251);
    obj.imageCheckBox242:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox242:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox242:setWidth(18);
    obj.imageCheckBox242:setHeight(18);
    obj.imageCheckBox242:setField("Gota2comp");
    obj.imageCheckBox242:setName("imageCheckBox242");

    obj.layout252 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout252:setParent(obj.rectangle1);
    obj.layout252:setLeft(714);
    obj.layout252:setTop(422);
    obj.layout252:setWidth(18);
    obj.layout252:setHeight(18);
    obj.layout252:setName("layout252");

    obj.imageCheckBox243 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox243:setParent(obj.layout252);
    obj.imageCheckBox243:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox243:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox243:setWidth(18);
    obj.imageCheckBox243:setHeight(18);
    obj.imageCheckBox243:setField("Gota3comp");
    obj.imageCheckBox243:setName("imageCheckBox243");

    obj.layout253 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout253:setParent(obj.rectangle1);
    obj.layout253:setLeft(728);
    obj.layout253:setTop(422);
    obj.layout253:setWidth(18);
    obj.layout253:setHeight(18);
    obj.layout253:setName("layout253");

    obj.imageCheckBox244 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox244:setParent(obj.layout253);
    obj.imageCheckBox244:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox244:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox244:setWidth(18);
    obj.imageCheckBox244:setHeight(18);
    obj.imageCheckBox244:setField("Gota4comp");
    obj.imageCheckBox244:setName("imageCheckBox244");

    obj.layout254 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout254:setParent(obj.rectangle1);
    obj.layout254:setLeft(742);
    obj.layout254:setTop(422);
    obj.layout254:setWidth(18);
    obj.layout254:setHeight(18);
    obj.layout254:setName("layout254");

    obj.imageCheckBox245 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox245:setParent(obj.layout254);
    obj.imageCheckBox245:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox245:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox245:setWidth(18);
    obj.imageCheckBox245:setHeight(18);
    obj.imageCheckBox245:setField("Gota5comp");
    obj.imageCheckBox245:setName("imageCheckBox245");

    obj.layout255 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout255:setParent(obj.rectangle1);
    obj.layout255:setLeft(756);
    obj.layout255:setTop(422);
    obj.layout255:setWidth(18);
    obj.layout255:setHeight(18);
    obj.layout255:setName("layout255");

    obj.imageCheckBox246 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox246:setParent(obj.layout255);
    obj.imageCheckBox246:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox246:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox246:setWidth(18);
    obj.imageCheckBox246:setHeight(18);
    obj.imageCheckBox246:setField("Gota6comp");
    obj.imageCheckBox246:setName("imageCheckBox246");

    obj.layout256 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout256:setParent(obj.rectangle1);
    obj.layout256:setLeft(770);
    obj.layout256:setTop(422);
    obj.layout256:setWidth(18);
    obj.layout256:setHeight(18);
    obj.layout256:setName("layout256");

    obj.imageCheckBox247 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox247:setParent(obj.layout256);
    obj.imageCheckBox247:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox247:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox247:setWidth(18);
    obj.imageCheckBox247:setHeight(18);
    obj.imageCheckBox247:setField("Gota7comp");
    obj.imageCheckBox247:setName("imageCheckBox247");

    obj.layout257 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout257:setParent(obj.rectangle1);
    obj.layout257:setLeft(784);
    obj.layout257:setTop(422);
    obj.layout257:setWidth(18);
    obj.layout257:setHeight(18);
    obj.layout257:setName("layout257");

    obj.imageCheckBox248 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox248:setParent(obj.layout257);
    obj.imageCheckBox248:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox248:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox248:setWidth(18);
    obj.imageCheckBox248:setHeight(18);
    obj.imageCheckBox248:setField("Gota8comp");
    obj.imageCheckBox248:setName("imageCheckBox248");

    obj.layout258 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout258:setParent(obj.rectangle1);
    obj.layout258:setLeft(686);
    obj.layout258:setTop(443);
    obj.layout258:setWidth(18);
    obj.layout258:setHeight(18);
    obj.layout258:setName("layout258");

    obj.imageCheckBox249 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox249:setParent(obj.layout258);
    obj.imageCheckBox249:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox249:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox249:setWidth(18);
    obj.imageCheckBox249:setHeight(18);
    obj.imageCheckBox249:setField("Gota1fina");
    obj.imageCheckBox249:setName("imageCheckBox249");

    obj.layout259 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout259:setParent(obj.rectangle1);
    obj.layout259:setLeft(700);
    obj.layout259:setTop(443);
    obj.layout259:setWidth(18);
    obj.layout259:setHeight(18);
    obj.layout259:setName("layout259");

    obj.imageCheckBox250 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox250:setParent(obj.layout259);
    obj.imageCheckBox250:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox250:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox250:setWidth(18);
    obj.imageCheckBox250:setHeight(18);
    obj.imageCheckBox250:setField("Gota2fina");
    obj.imageCheckBox250:setName("imageCheckBox250");

    obj.layout260 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout260:setParent(obj.rectangle1);
    obj.layout260:setLeft(714);
    obj.layout260:setTop(443);
    obj.layout260:setWidth(18);
    obj.layout260:setHeight(18);
    obj.layout260:setName("layout260");

    obj.imageCheckBox251 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox251:setParent(obj.layout260);
    obj.imageCheckBox251:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox251:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox251:setWidth(18);
    obj.imageCheckBox251:setHeight(18);
    obj.imageCheckBox251:setField("Gota3fina");
    obj.imageCheckBox251:setName("imageCheckBox251");

    obj.layout261 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout261:setParent(obj.rectangle1);
    obj.layout261:setLeft(728);
    obj.layout261:setTop(443);
    obj.layout261:setWidth(18);
    obj.layout261:setHeight(18);
    obj.layout261:setName("layout261");

    obj.imageCheckBox252 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox252:setParent(obj.layout261);
    obj.imageCheckBox252:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox252:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox252:setWidth(18);
    obj.imageCheckBox252:setHeight(18);
    obj.imageCheckBox252:setField("Gota4fina");
    obj.imageCheckBox252:setName("imageCheckBox252");

    obj.layout262 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout262:setParent(obj.rectangle1);
    obj.layout262:setLeft(742);
    obj.layout262:setTop(443);
    obj.layout262:setWidth(18);
    obj.layout262:setHeight(18);
    obj.layout262:setName("layout262");

    obj.imageCheckBox253 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox253:setParent(obj.layout262);
    obj.imageCheckBox253:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox253:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox253:setWidth(18);
    obj.imageCheckBox253:setHeight(18);
    obj.imageCheckBox253:setField("Gota5fina");
    obj.imageCheckBox253:setName("imageCheckBox253");

    obj.layout263 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout263:setParent(obj.rectangle1);
    obj.layout263:setLeft(756);
    obj.layout263:setTop(443);
    obj.layout263:setWidth(18);
    obj.layout263:setHeight(18);
    obj.layout263:setName("layout263");

    obj.imageCheckBox254 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox254:setParent(obj.layout263);
    obj.imageCheckBox254:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox254:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox254:setWidth(18);
    obj.imageCheckBox254:setHeight(18);
    obj.imageCheckBox254:setField("Gota6fina");
    obj.imageCheckBox254:setName("imageCheckBox254");

    obj.layout264 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout264:setParent(obj.rectangle1);
    obj.layout264:setLeft(770);
    obj.layout264:setTop(443);
    obj.layout264:setWidth(18);
    obj.layout264:setHeight(18);
    obj.layout264:setName("layout264");

    obj.imageCheckBox255 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox255:setParent(obj.layout264);
    obj.imageCheckBox255:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox255:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox255:setWidth(18);
    obj.imageCheckBox255:setHeight(18);
    obj.imageCheckBox255:setField("Gota7fina");
    obj.imageCheckBox255:setName("imageCheckBox255");

    obj.layout265 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout265:setParent(obj.rectangle1);
    obj.layout265:setLeft(784);
    obj.layout265:setTop(443);
    obj.layout265:setWidth(18);
    obj.layout265:setHeight(18);
    obj.layout265:setName("layout265");

    obj.imageCheckBox256 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox256:setParent(obj.layout265);
    obj.imageCheckBox256:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox256:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox256:setWidth(18);
    obj.imageCheckBox256:setHeight(18);
    obj.imageCheckBox256:setField("Gota8fina");
    obj.imageCheckBox256:setName("imageCheckBox256");

    obj.layout266 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout266:setParent(obj.rectangle1);
    obj.layout266:setLeft(686);
    obj.layout266:setTop(464);
    obj.layout266:setWidth(18);
    obj.layout266:setHeight(18);
    obj.layout266:setName("layout266");

    obj.imageCheckBox257 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox257:setParent(obj.layout266);
    obj.imageCheckBox257:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox257:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox257:setWidth(18);
    obj.imageCheckBox257:setHeight(18);
    obj.imageCheckBox257:setField("Gota1inves");
    obj.imageCheckBox257:setName("imageCheckBox257");

    obj.layout267 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout267:setParent(obj.rectangle1);
    obj.layout267:setLeft(700);
    obj.layout267:setTop(464);
    obj.layout267:setWidth(18);
    obj.layout267:setHeight(18);
    obj.layout267:setName("layout267");

    obj.imageCheckBox258 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox258:setParent(obj.layout267);
    obj.imageCheckBox258:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox258:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox258:setWidth(18);
    obj.imageCheckBox258:setHeight(18);
    obj.imageCheckBox258:setField("Gota2inves");
    obj.imageCheckBox258:setName("imageCheckBox258");

    obj.layout268 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout268:setParent(obj.rectangle1);
    obj.layout268:setLeft(714);
    obj.layout268:setTop(464);
    obj.layout268:setWidth(18);
    obj.layout268:setHeight(18);
    obj.layout268:setName("layout268");

    obj.imageCheckBox259 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox259:setParent(obj.layout268);
    obj.imageCheckBox259:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox259:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox259:setWidth(18);
    obj.imageCheckBox259:setHeight(18);
    obj.imageCheckBox259:setField("Gota3inves");
    obj.imageCheckBox259:setName("imageCheckBox259");

    obj.layout269 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout269:setParent(obj.rectangle1);
    obj.layout269:setLeft(728);
    obj.layout269:setTop(464);
    obj.layout269:setWidth(18);
    obj.layout269:setHeight(18);
    obj.layout269:setName("layout269");

    obj.imageCheckBox260 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox260:setParent(obj.layout269);
    obj.imageCheckBox260:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox260:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox260:setWidth(18);
    obj.imageCheckBox260:setHeight(18);
    obj.imageCheckBox260:setField("Gota4inves");
    obj.imageCheckBox260:setName("imageCheckBox260");

    obj.layout270 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout270:setParent(obj.rectangle1);
    obj.layout270:setLeft(742);
    obj.layout270:setTop(464);
    obj.layout270:setWidth(18);
    obj.layout270:setHeight(18);
    obj.layout270:setName("layout270");

    obj.imageCheckBox261 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox261:setParent(obj.layout270);
    obj.imageCheckBox261:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox261:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox261:setWidth(18);
    obj.imageCheckBox261:setHeight(18);
    obj.imageCheckBox261:setField("Gota5inves");
    obj.imageCheckBox261:setName("imageCheckBox261");

    obj.layout271 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout271:setParent(obj.rectangle1);
    obj.layout271:setLeft(756);
    obj.layout271:setTop(464);
    obj.layout271:setWidth(18);
    obj.layout271:setHeight(18);
    obj.layout271:setName("layout271");

    obj.imageCheckBox262 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox262:setParent(obj.layout271);
    obj.imageCheckBox262:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox262:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox262:setWidth(18);
    obj.imageCheckBox262:setHeight(18);
    obj.imageCheckBox262:setField("Gota6inves");
    obj.imageCheckBox262:setName("imageCheckBox262");

    obj.layout272 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout272:setParent(obj.rectangle1);
    obj.layout272:setLeft(770);
    obj.layout272:setTop(464);
    obj.layout272:setWidth(18);
    obj.layout272:setHeight(18);
    obj.layout272:setName("layout272");

    obj.imageCheckBox263 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox263:setParent(obj.layout272);
    obj.imageCheckBox263:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox263:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox263:setWidth(18);
    obj.imageCheckBox263:setHeight(18);
    obj.imageCheckBox263:setField("Gota7inves");
    obj.imageCheckBox263:setName("imageCheckBox263");

    obj.layout273 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout273:setParent(obj.rectangle1);
    obj.layout273:setLeft(784);
    obj.layout273:setTop(464);
    obj.layout273:setWidth(18);
    obj.layout273:setHeight(18);
    obj.layout273:setName("layout273");

    obj.imageCheckBox264 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox264:setParent(obj.layout273);
    obj.imageCheckBox264:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox264:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox264:setWidth(18);
    obj.imageCheckBox264:setHeight(18);
    obj.imageCheckBox264:setField("Gota8inves");
    obj.imageCheckBox264:setName("imageCheckBox264");

    obj.layout274 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout274:setParent(obj.rectangle1);
    obj.layout274:setLeft(686);
    obj.layout274:setTop(485);
    obj.layout274:setWidth(18);
    obj.layout274:setHeight(18);
    obj.layout274:setName("layout274");

    obj.imageCheckBox265 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox265:setParent(obj.layout274);
    obj.imageCheckBox265:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox265:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox265:setWidth(18);
    obj.imageCheckBox265:setHeight(18);
    obj.imageCheckBox265:setField("Gota1dir");
    obj.imageCheckBox265:setName("imageCheckBox265");

    obj.layout275 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout275:setParent(obj.rectangle1);
    obj.layout275:setLeft(700);
    obj.layout275:setTop(485);
    obj.layout275:setWidth(18);
    obj.layout275:setHeight(18);
    obj.layout275:setName("layout275");

    obj.imageCheckBox266 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox266:setParent(obj.layout275);
    obj.imageCheckBox266:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox266:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox266:setWidth(18);
    obj.imageCheckBox266:setHeight(18);
    obj.imageCheckBox266:setField("Gota2dir");
    obj.imageCheckBox266:setName("imageCheckBox266");

    obj.layout276 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout276:setParent(obj.rectangle1);
    obj.layout276:setLeft(714);
    obj.layout276:setTop(485);
    obj.layout276:setWidth(18);
    obj.layout276:setHeight(18);
    obj.layout276:setName("layout276");

    obj.imageCheckBox267 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox267:setParent(obj.layout276);
    obj.imageCheckBox267:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox267:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox267:setWidth(18);
    obj.imageCheckBox267:setHeight(18);
    obj.imageCheckBox267:setField("Gota3dir");
    obj.imageCheckBox267:setName("imageCheckBox267");

    obj.layout277 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout277:setParent(obj.rectangle1);
    obj.layout277:setLeft(728);
    obj.layout277:setTop(485);
    obj.layout277:setWidth(18);
    obj.layout277:setHeight(18);
    obj.layout277:setName("layout277");

    obj.imageCheckBox268 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox268:setParent(obj.layout277);
    obj.imageCheckBox268:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox268:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox268:setWidth(18);
    obj.imageCheckBox268:setHeight(18);
    obj.imageCheckBox268:setField("Gota4dir");
    obj.imageCheckBox268:setName("imageCheckBox268");

    obj.layout278 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout278:setParent(obj.rectangle1);
    obj.layout278:setLeft(742);
    obj.layout278:setTop(485);
    obj.layout278:setWidth(18);
    obj.layout278:setHeight(18);
    obj.layout278:setName("layout278");

    obj.imageCheckBox269 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox269:setParent(obj.layout278);
    obj.imageCheckBox269:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox269:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox269:setWidth(18);
    obj.imageCheckBox269:setHeight(18);
    obj.imageCheckBox269:setField("Gota5dir");
    obj.imageCheckBox269:setName("imageCheckBox269");

    obj.layout279 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout279:setParent(obj.rectangle1);
    obj.layout279:setLeft(756);
    obj.layout279:setTop(485);
    obj.layout279:setWidth(18);
    obj.layout279:setHeight(18);
    obj.layout279:setName("layout279");

    obj.imageCheckBox270 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox270:setParent(obj.layout279);
    obj.imageCheckBox270:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox270:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox270:setWidth(18);
    obj.imageCheckBox270:setHeight(18);
    obj.imageCheckBox270:setField("Gota6dir");
    obj.imageCheckBox270:setName("imageCheckBox270");

    obj.layout280 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout280:setParent(obj.rectangle1);
    obj.layout280:setLeft(770);
    obj.layout280:setTop(485);
    obj.layout280:setWidth(18);
    obj.layout280:setHeight(18);
    obj.layout280:setName("layout280");

    obj.imageCheckBox271 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox271:setParent(obj.layout280);
    obj.imageCheckBox271:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox271:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox271:setWidth(18);
    obj.imageCheckBox271:setHeight(18);
    obj.imageCheckBox271:setField("Gota7dir");
    obj.imageCheckBox271:setName("imageCheckBox271");

    obj.layout281 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout281:setParent(obj.rectangle1);
    obj.layout281:setLeft(784);
    obj.layout281:setTop(485);
    obj.layout281:setWidth(18);
    obj.layout281:setHeight(18);
    obj.layout281:setName("layout281");

    obj.imageCheckBox272 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox272:setParent(obj.layout281);
    obj.imageCheckBox272:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox272:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox272:setWidth(18);
    obj.imageCheckBox272:setHeight(18);
    obj.imageCheckBox272:setField("Gota8dir");
    obj.imageCheckBox272:setName("imageCheckBox272");

    obj.layout282 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout282:setParent(obj.rectangle1);
    obj.layout282:setLeft(686);
    obj.layout282:setTop(506);
    obj.layout282:setWidth(18);
    obj.layout282:setHeight(18);
    obj.layout282:setName("layout282");

    obj.imageCheckBox273 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox273:setParent(obj.layout282);
    obj.imageCheckBox273:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox273:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox273:setWidth(18);
    obj.imageCheckBox273:setHeight(18);
    obj.imageCheckBox273:setField("Gota1ling");
    obj.imageCheckBox273:setName("imageCheckBox273");

    obj.layout283 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout283:setParent(obj.rectangle1);
    obj.layout283:setLeft(700);
    obj.layout283:setTop(506);
    obj.layout283:setWidth(18);
    obj.layout283:setHeight(18);
    obj.layout283:setName("layout283");

    obj.imageCheckBox274 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox274:setParent(obj.layout283);
    obj.imageCheckBox274:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox274:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox274:setWidth(18);
    obj.imageCheckBox274:setHeight(18);
    obj.imageCheckBox274:setField("Gota2ling");
    obj.imageCheckBox274:setName("imageCheckBox274");

    obj.layout284 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout284:setParent(obj.rectangle1);
    obj.layout284:setLeft(714);
    obj.layout284:setTop(506);
    obj.layout284:setWidth(18);
    obj.layout284:setHeight(18);
    obj.layout284:setName("layout284");

    obj.imageCheckBox275 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox275:setParent(obj.layout284);
    obj.imageCheckBox275:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox275:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox275:setWidth(18);
    obj.imageCheckBox275:setHeight(18);
    obj.imageCheckBox275:setField("Gota3ling");
    obj.imageCheckBox275:setName("imageCheckBox275");

    obj.layout285 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout285:setParent(obj.rectangle1);
    obj.layout285:setLeft(728);
    obj.layout285:setTop(506);
    obj.layout285:setWidth(18);
    obj.layout285:setHeight(18);
    obj.layout285:setName("layout285");

    obj.imageCheckBox276 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox276:setParent(obj.layout285);
    obj.imageCheckBox276:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox276:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox276:setWidth(18);
    obj.imageCheckBox276:setHeight(18);
    obj.imageCheckBox276:setField("Gota4ling");
    obj.imageCheckBox276:setName("imageCheckBox276");

    obj.layout286 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout286:setParent(obj.rectangle1);
    obj.layout286:setLeft(742);
    obj.layout286:setTop(506);
    obj.layout286:setWidth(18);
    obj.layout286:setHeight(18);
    obj.layout286:setName("layout286");

    obj.imageCheckBox277 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox277:setParent(obj.layout286);
    obj.imageCheckBox277:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox277:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox277:setWidth(18);
    obj.imageCheckBox277:setHeight(18);
    obj.imageCheckBox277:setField("Gota5ling");
    obj.imageCheckBox277:setName("imageCheckBox277");

    obj.layout287 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout287:setParent(obj.rectangle1);
    obj.layout287:setLeft(756);
    obj.layout287:setTop(506);
    obj.layout287:setWidth(18);
    obj.layout287:setHeight(18);
    obj.layout287:setName("layout287");

    obj.imageCheckBox278 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox278:setParent(obj.layout287);
    obj.imageCheckBox278:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox278:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox278:setWidth(18);
    obj.imageCheckBox278:setHeight(18);
    obj.imageCheckBox278:setField("Gota6ling");
    obj.imageCheckBox278:setName("imageCheckBox278");

    obj.layout288 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout288:setParent(obj.rectangle1);
    obj.layout288:setLeft(770);
    obj.layout288:setTop(506);
    obj.layout288:setWidth(18);
    obj.layout288:setHeight(18);
    obj.layout288:setName("layout288");

    obj.imageCheckBox279 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox279:setParent(obj.layout288);
    obj.imageCheckBox279:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox279:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox279:setWidth(18);
    obj.imageCheckBox279:setHeight(18);
    obj.imageCheckBox279:setField("Gota7ling");
    obj.imageCheckBox279:setName("imageCheckBox279");

    obj.layout289 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout289:setParent(obj.rectangle1);
    obj.layout289:setLeft(784);
    obj.layout289:setTop(506);
    obj.layout289:setWidth(18);
    obj.layout289:setHeight(18);
    obj.layout289:setName("layout289");

    obj.imageCheckBox280 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox280:setParent(obj.layout289);
    obj.imageCheckBox280:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox280:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox280:setWidth(18);
    obj.imageCheckBox280:setHeight(18);
    obj.imageCheckBox280:setField("Gota8ling");
    obj.imageCheckBox280:setName("imageCheckBox280");

    obj.layout290 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout290:setParent(obj.rectangle1);
    obj.layout290:setLeft(686);
    obj.layout290:setTop(529);
    obj.layout290:setWidth(18);
    obj.layout290:setHeight(18);
    obj.layout290:setName("layout290");

    obj.imageCheckBox281 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox281:setParent(obj.layout290);
    obj.imageCheckBox281:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox281:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox281:setWidth(18);
    obj.imageCheckBox281:setHeight(18);
    obj.imageCheckBox281:setField("Gota1med");
    obj.imageCheckBox281:setName("imageCheckBox281");

    obj.layout291 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout291:setParent(obj.rectangle1);
    obj.layout291:setLeft(700);
    obj.layout291:setTop(529);
    obj.layout291:setWidth(18);
    obj.layout291:setHeight(18);
    obj.layout291:setName("layout291");

    obj.imageCheckBox282 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox282:setParent(obj.layout291);
    obj.imageCheckBox282:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox282:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox282:setWidth(18);
    obj.imageCheckBox282:setHeight(18);
    obj.imageCheckBox282:setField("Gota2med");
    obj.imageCheckBox282:setName("imageCheckBox282");

    obj.layout292 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout292:setParent(obj.rectangle1);
    obj.layout292:setLeft(714);
    obj.layout292:setTop(529);
    obj.layout292:setWidth(18);
    obj.layout292:setHeight(18);
    obj.layout292:setName("layout292");

    obj.imageCheckBox283 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox283:setParent(obj.layout292);
    obj.imageCheckBox283:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox283:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox283:setWidth(18);
    obj.imageCheckBox283:setHeight(18);
    obj.imageCheckBox283:setField("Gota3med");
    obj.imageCheckBox283:setName("imageCheckBox283");

    obj.layout293 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout293:setParent(obj.rectangle1);
    obj.layout293:setLeft(728);
    obj.layout293:setTop(529);
    obj.layout293:setWidth(18);
    obj.layout293:setHeight(18);
    obj.layout293:setName("layout293");

    obj.imageCheckBox284 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox284:setParent(obj.layout293);
    obj.imageCheckBox284:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox284:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox284:setWidth(18);
    obj.imageCheckBox284:setHeight(18);
    obj.imageCheckBox284:setField("Gota4med");
    obj.imageCheckBox284:setName("imageCheckBox284");

    obj.layout294 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout294:setParent(obj.rectangle1);
    obj.layout294:setLeft(742);
    obj.layout294:setTop(529);
    obj.layout294:setWidth(18);
    obj.layout294:setHeight(18);
    obj.layout294:setName("layout294");

    obj.imageCheckBox285 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox285:setParent(obj.layout294);
    obj.imageCheckBox285:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox285:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox285:setWidth(18);
    obj.imageCheckBox285:setHeight(18);
    obj.imageCheckBox285:setField("Gota5med");
    obj.imageCheckBox285:setName("imageCheckBox285");

    obj.layout295 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout295:setParent(obj.rectangle1);
    obj.layout295:setLeft(756);
    obj.layout295:setTop(529);
    obj.layout295:setWidth(18);
    obj.layout295:setHeight(18);
    obj.layout295:setName("layout295");

    obj.imageCheckBox286 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox286:setParent(obj.layout295);
    obj.imageCheckBox286:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox286:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox286:setWidth(18);
    obj.imageCheckBox286:setHeight(18);
    obj.imageCheckBox286:setField("Gota6med");
    obj.imageCheckBox286:setName("imageCheckBox286");

    obj.layout296 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout296:setParent(obj.rectangle1);
    obj.layout296:setLeft(770);
    obj.layout296:setTop(529);
    obj.layout296:setWidth(18);
    obj.layout296:setHeight(18);
    obj.layout296:setName("layout296");

    obj.imageCheckBox287 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox287:setParent(obj.layout296);
    obj.imageCheckBox287:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox287:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox287:setWidth(18);
    obj.imageCheckBox287:setHeight(18);
    obj.imageCheckBox287:setField("Gota7med");
    obj.imageCheckBox287:setName("imageCheckBox287");

    obj.layout297 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout297:setParent(obj.rectangle1);
    obj.layout297:setLeft(784);
    obj.layout297:setTop(529);
    obj.layout297:setWidth(18);
    obj.layout297:setHeight(18);
    obj.layout297:setName("layout297");

    obj.imageCheckBox288 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox288:setParent(obj.layout297);
    obj.imageCheckBox288:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox288:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox288:setWidth(18);
    obj.imageCheckBox288:setHeight(18);
    obj.imageCheckBox288:setField("Gota8med");
    obj.imageCheckBox288:setName("imageCheckBox288");

    obj.layout298 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout298:setParent(obj.rectangle1);
    obj.layout298:setLeft(686);
    obj.layout298:setTop(550);
    obj.layout298:setWidth(18);
    obj.layout298:setHeight(18);
    obj.layout298:setName("layout298");

    obj.imageCheckBox289 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox289:setParent(obj.layout298);
    obj.imageCheckBox289:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox289:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox289:setWidth(18);
    obj.imageCheckBox289:setHeight(18);
    obj.imageCheckBox289:setField("Gota1ocult");
    obj.imageCheckBox289:setName("imageCheckBox289");

    obj.layout299 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout299:setParent(obj.rectangle1);
    obj.layout299:setLeft(700);
    obj.layout299:setTop(550);
    obj.layout299:setWidth(18);
    obj.layout299:setHeight(18);
    obj.layout299:setName("layout299");

    obj.imageCheckBox290 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox290:setParent(obj.layout299);
    obj.imageCheckBox290:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox290:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox290:setWidth(18);
    obj.imageCheckBox290:setHeight(18);
    obj.imageCheckBox290:setField("Gota2ocult");
    obj.imageCheckBox290:setName("imageCheckBox290");

    obj.layout300 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout300:setParent(obj.rectangle1);
    obj.layout300:setLeft(714);
    obj.layout300:setTop(550);
    obj.layout300:setWidth(18);
    obj.layout300:setHeight(18);
    obj.layout300:setName("layout300");

    obj.imageCheckBox291 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox291:setParent(obj.layout300);
    obj.imageCheckBox291:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox291:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox291:setWidth(18);
    obj.imageCheckBox291:setHeight(18);
    obj.imageCheckBox291:setField("Gota3ocult");
    obj.imageCheckBox291:setName("imageCheckBox291");

    obj.layout301 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout301:setParent(obj.rectangle1);
    obj.layout301:setLeft(728);
    obj.layout301:setTop(550);
    obj.layout301:setWidth(18);
    obj.layout301:setHeight(18);
    obj.layout301:setName("layout301");

    obj.imageCheckBox292 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox292:setParent(obj.layout301);
    obj.imageCheckBox292:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox292:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox292:setWidth(18);
    obj.imageCheckBox292:setHeight(18);
    obj.imageCheckBox292:setField("Gota4ocult");
    obj.imageCheckBox292:setName("imageCheckBox292");

    obj.layout302 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout302:setParent(obj.rectangle1);
    obj.layout302:setLeft(742);
    obj.layout302:setTop(550);
    obj.layout302:setWidth(18);
    obj.layout302:setHeight(18);
    obj.layout302:setName("layout302");

    obj.imageCheckBox293 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox293:setParent(obj.layout302);
    obj.imageCheckBox293:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox293:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox293:setWidth(18);
    obj.imageCheckBox293:setHeight(18);
    obj.imageCheckBox293:setField("Gota5ocult");
    obj.imageCheckBox293:setName("imageCheckBox293");

    obj.layout303 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout303:setParent(obj.rectangle1);
    obj.layout303:setLeft(756);
    obj.layout303:setTop(550);
    obj.layout303:setWidth(18);
    obj.layout303:setHeight(18);
    obj.layout303:setName("layout303");

    obj.imageCheckBox294 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox294:setParent(obj.layout303);
    obj.imageCheckBox294:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox294:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox294:setWidth(18);
    obj.imageCheckBox294:setHeight(18);
    obj.imageCheckBox294:setField("Gota6ocult");
    obj.imageCheckBox294:setName("imageCheckBox294");

    obj.layout304 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout304:setParent(obj.rectangle1);
    obj.layout304:setLeft(770);
    obj.layout304:setTop(550);
    obj.layout304:setWidth(18);
    obj.layout304:setHeight(18);
    obj.layout304:setName("layout304");

    obj.imageCheckBox295 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox295:setParent(obj.layout304);
    obj.imageCheckBox295:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox295:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox295:setWidth(18);
    obj.imageCheckBox295:setHeight(18);
    obj.imageCheckBox295:setField("Gota7ocult");
    obj.imageCheckBox295:setName("imageCheckBox295");

    obj.layout305 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout305:setParent(obj.rectangle1);
    obj.layout305:setLeft(784);
    obj.layout305:setTop(550);
    obj.layout305:setWidth(18);
    obj.layout305:setHeight(18);
    obj.layout305:setName("layout305");

    obj.imageCheckBox296 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox296:setParent(obj.layout305);
    obj.imageCheckBox296:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox296:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox296:setWidth(18);
    obj.imageCheckBox296:setHeight(18);
    obj.imageCheckBox296:setField("Gota8ocult");
    obj.imageCheckBox296:setName("imageCheckBox296");

    obj.layout306 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout306:setParent(obj.rectangle1);
    obj.layout306:setLeft(686);
    obj.layout306:setTop(572);
    obj.layout306:setWidth(18);
    obj.layout306:setHeight(18);
    obj.layout306:setName("layout306");

    obj.imageCheckBox297 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox297:setParent(obj.layout306);
    obj.imageCheckBox297:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox297:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox297:setWidth(18);
    obj.imageCheckBox297:setHeight(18);
    obj.imageCheckBox297:setField("Gota1pol");
    obj.imageCheckBox297:setName("imageCheckBox297");

    obj.layout307 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout307:setParent(obj.rectangle1);
    obj.layout307:setLeft(700);
    obj.layout307:setTop(572);
    obj.layout307:setWidth(18);
    obj.layout307:setHeight(18);
    obj.layout307:setName("layout307");

    obj.imageCheckBox298 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox298:setParent(obj.layout307);
    obj.imageCheckBox298:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox298:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox298:setWidth(18);
    obj.imageCheckBox298:setHeight(18);
    obj.imageCheckBox298:setField("Gota2pol");
    obj.imageCheckBox298:setName("imageCheckBox298");

    obj.layout308 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout308:setParent(obj.rectangle1);
    obj.layout308:setLeft(714);
    obj.layout308:setTop(572);
    obj.layout308:setWidth(18);
    obj.layout308:setHeight(18);
    obj.layout308:setName("layout308");

    obj.imageCheckBox299 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox299:setParent(obj.layout308);
    obj.imageCheckBox299:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox299:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox299:setWidth(18);
    obj.imageCheckBox299:setHeight(18);
    obj.imageCheckBox299:setField("Gota3pol");
    obj.imageCheckBox299:setName("imageCheckBox299");

    obj.layout309 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout309:setParent(obj.rectangle1);
    obj.layout309:setLeft(728);
    obj.layout309:setTop(572);
    obj.layout309:setWidth(18);
    obj.layout309:setHeight(18);
    obj.layout309:setName("layout309");

    obj.imageCheckBox300 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox300:setParent(obj.layout309);
    obj.imageCheckBox300:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox300:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox300:setWidth(18);
    obj.imageCheckBox300:setHeight(18);
    obj.imageCheckBox300:setField("Gota4pol");
    obj.imageCheckBox300:setName("imageCheckBox300");

    obj.layout310 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout310:setParent(obj.rectangle1);
    obj.layout310:setLeft(742);
    obj.layout310:setTop(572);
    obj.layout310:setWidth(18);
    obj.layout310:setHeight(18);
    obj.layout310:setName("layout310");

    obj.imageCheckBox301 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox301:setParent(obj.layout310);
    obj.imageCheckBox301:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox301:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox301:setWidth(18);
    obj.imageCheckBox301:setHeight(18);
    obj.imageCheckBox301:setField("Gota5pol");
    obj.imageCheckBox301:setName("imageCheckBox301");

    obj.layout311 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout311:setParent(obj.rectangle1);
    obj.layout311:setLeft(756);
    obj.layout311:setTop(572);
    obj.layout311:setWidth(18);
    obj.layout311:setHeight(18);
    obj.layout311:setName("layout311");

    obj.imageCheckBox302 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox302:setParent(obj.layout311);
    obj.imageCheckBox302:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox302:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox302:setWidth(18);
    obj.imageCheckBox302:setHeight(18);
    obj.imageCheckBox302:setField("Gota6pol");
    obj.imageCheckBox302:setName("imageCheckBox302");

    obj.layout312 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout312:setParent(obj.rectangle1);
    obj.layout312:setLeft(770);
    obj.layout312:setTop(572);
    obj.layout312:setWidth(18);
    obj.layout312:setHeight(18);
    obj.layout312:setName("layout312");

    obj.imageCheckBox303 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox303:setParent(obj.layout312);
    obj.imageCheckBox303:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox303:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox303:setWidth(18);
    obj.imageCheckBox303:setHeight(18);
    obj.imageCheckBox303:setField("Gota7pol");
    obj.imageCheckBox303:setName("imageCheckBox303");

    obj.layout313 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout313:setParent(obj.rectangle1);
    obj.layout313:setLeft(784);
    obj.layout313:setTop(572);
    obj.layout313:setWidth(18);
    obj.layout313:setHeight(18);
    obj.layout313:setName("layout313");

    obj.imageCheckBox304 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox304:setParent(obj.layout313);
    obj.imageCheckBox304:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox304:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox304:setWidth(18);
    obj.imageCheckBox304:setHeight(18);
    obj.imageCheckBox304:setField("Gota8pol");
    obj.imageCheckBox304:setName("imageCheckBox304");

    obj.layout314 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout314:setParent(obj.rectangle1);
    obj.layout314:setLeft(686);
    obj.layout314:setTop(594);
    obj.layout314:setWidth(18);
    obj.layout314:setHeight(18);
    obj.layout314:setName("layout314");

    obj.imageCheckBox305 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox305:setParent(obj.layout314);
    obj.imageCheckBox305:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox305:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox305:setWidth(18);
    obj.imageCheckBox305:setHeight(18);
    obj.imageCheckBox305:setField("Gota1cie");
    obj.imageCheckBox305:setName("imageCheckBox305");

    obj.layout315 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout315:setParent(obj.rectangle1);
    obj.layout315:setLeft(700);
    obj.layout315:setTop(594);
    obj.layout315:setWidth(18);
    obj.layout315:setHeight(18);
    obj.layout315:setName("layout315");

    obj.imageCheckBox306 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox306:setParent(obj.layout315);
    obj.imageCheckBox306:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox306:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox306:setWidth(18);
    obj.imageCheckBox306:setHeight(18);
    obj.imageCheckBox306:setField("Gota2cie");
    obj.imageCheckBox306:setName("imageCheckBox306");

    obj.layout316 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout316:setParent(obj.rectangle1);
    obj.layout316:setLeft(714);
    obj.layout316:setTop(594);
    obj.layout316:setWidth(18);
    obj.layout316:setHeight(18);
    obj.layout316:setName("layout316");

    obj.imageCheckBox307 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox307:setParent(obj.layout316);
    obj.imageCheckBox307:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox307:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox307:setWidth(18);
    obj.imageCheckBox307:setHeight(18);
    obj.imageCheckBox307:setField("Gota3cie");
    obj.imageCheckBox307:setName("imageCheckBox307");

    obj.layout317 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout317:setParent(obj.rectangle1);
    obj.layout317:setLeft(728);
    obj.layout317:setTop(594);
    obj.layout317:setWidth(18);
    obj.layout317:setHeight(18);
    obj.layout317:setName("layout317");

    obj.imageCheckBox308 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox308:setParent(obj.layout317);
    obj.imageCheckBox308:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox308:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox308:setWidth(18);
    obj.imageCheckBox308:setHeight(18);
    obj.imageCheckBox308:setField("Gota4cie");
    obj.imageCheckBox308:setName("imageCheckBox308");

    obj.layout318 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout318:setParent(obj.rectangle1);
    obj.layout318:setLeft(742);
    obj.layout318:setTop(594);
    obj.layout318:setWidth(18);
    obj.layout318:setHeight(18);
    obj.layout318:setName("layout318");

    obj.imageCheckBox309 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox309:setParent(obj.layout318);
    obj.imageCheckBox309:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox309:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox309:setWidth(18);
    obj.imageCheckBox309:setHeight(18);
    obj.imageCheckBox309:setField("Gota5cie");
    obj.imageCheckBox309:setName("imageCheckBox309");

    obj.layout319 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout319:setParent(obj.rectangle1);
    obj.layout319:setLeft(756);
    obj.layout319:setTop(594);
    obj.layout319:setWidth(18);
    obj.layout319:setHeight(18);
    obj.layout319:setName("layout319");

    obj.imageCheckBox310 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox310:setParent(obj.layout319);
    obj.imageCheckBox310:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox310:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox310:setWidth(18);
    obj.imageCheckBox310:setHeight(18);
    obj.imageCheckBox310:setField("Gota6cie");
    obj.imageCheckBox310:setName("imageCheckBox310");

    obj.layout320 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout320:setParent(obj.rectangle1);
    obj.layout320:setLeft(770);
    obj.layout320:setTop(594);
    obj.layout320:setWidth(18);
    obj.layout320:setHeight(18);
    obj.layout320:setName("layout320");

    obj.imageCheckBox311 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox311:setParent(obj.layout320);
    obj.imageCheckBox311:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox311:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox311:setWidth(18);
    obj.imageCheckBox311:setHeight(18);
    obj.imageCheckBox311:setField("Gota7cie");
    obj.imageCheckBox311:setName("imageCheckBox311");

    obj.layout321 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout321:setParent(obj.rectangle1);
    obj.layout321:setLeft(784);
    obj.layout321:setTop(594);
    obj.layout321:setWidth(18);
    obj.layout321:setHeight(18);
    obj.layout321:setName("layout321");

    obj.imageCheckBox312 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox312:setParent(obj.layout321);
    obj.imageCheckBox312:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox312:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox312:setWidth(18);
    obj.imageCheckBox312:setHeight(18);
    obj.imageCheckBox312:setField("Gota8cie");
    obj.imageCheckBox312:setName("imageCheckBox312");

    obj.layout322 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout322:setParent(obj.rectangle1);
    obj.layout322:setLeft(75);
    obj.layout322:setTop(657);
    obj.layout322:setWidth(130);
    obj.layout322:setHeight(30);
    obj.layout322:setName("layout322");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout322);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(16);
    obj.edit10:setFontColor("#ffffff");
    obj.edit10:setHorzTextAlign("leading");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(130);
    obj.edit10:setHeight(30);
    obj.edit10:setField("AntL1");
    obj.edit10:setName("edit10");

    obj.layout323 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout323:setParent(obj.rectangle1);
    obj.layout323:setLeft(75);
    obj.layout323:setTop(678);
    obj.layout323:setWidth(130);
    obj.layout323:setHeight(30);
    obj.layout323:setName("layout323");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout323);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(16);
    obj.edit11:setFontColor("#ffffff");
    obj.edit11:setHorzTextAlign("leading");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(130);
    obj.edit11:setHeight(30);
    obj.edit11:setField("AntL2");
    obj.edit11:setName("edit11");

    obj.layout324 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout324:setParent(obj.rectangle1);
    obj.layout324:setLeft(75);
    obj.layout324:setTop(701);
    obj.layout324:setWidth(130);
    obj.layout324:setHeight(30);
    obj.layout324:setName("layout324");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout324);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(16);
    obj.edit12:setFontColor("#ffffff");
    obj.edit12:setHorzTextAlign("leading");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(130);
    obj.edit12:setHeight(30);
    obj.edit12:setField("AntL3");
    obj.edit12:setName("edit12");

    obj.layout325 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout325:setParent(obj.rectangle1);
    obj.layout325:setLeft(75);
    obj.layout325:setTop(723);
    obj.layout325:setWidth(130);
    obj.layout325:setHeight(30);
    obj.layout325:setName("layout325");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout325);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(16);
    obj.edit13:setFontColor("#ffffff");
    obj.edit13:setHorzTextAlign("leading");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(130);
    obj.edit13:setHeight(30);
    obj.edit13:setField("AntL4");
    obj.edit13:setName("edit13");

    obj.layout326 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout326:setParent(obj.rectangle1);
    obj.layout326:setLeft(75);
    obj.layout326:setTop(745);
    obj.layout326:setWidth(130);
    obj.layout326:setHeight(30);
    obj.layout326:setName("layout326");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout326);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(16);
    obj.edit14:setFontColor("#ffffff");
    obj.edit14:setHorzTextAlign("leading");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(130);
    obj.edit14:setHeight(30);
    obj.edit14:setField("AntL5");
    obj.edit14:setName("edit14");

    obj.layout327 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout327:setParent(obj.rectangle1);
    obj.layout327:setLeft(75);
    obj.layout327:setTop(767);
    obj.layout327:setWidth(130);
    obj.layout327:setHeight(30);
    obj.layout327:setName("layout327");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout327);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(16);
    obj.edit15:setFontColor("#ffffff");
    obj.edit15:setHorzTextAlign("leading");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(130);
    obj.edit15:setHeight(30);
    obj.edit15:setField("AntL6");
    obj.edit15:setName("edit15");

    obj.layout328 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout328:setParent(obj.rectangle1);
    obj.layout328:setLeft(75);
    obj.layout328:setTop(789);
    obj.layout328:setWidth(130);
    obj.layout328:setHeight(30);
    obj.layout328:setName("layout328");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout328);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(16);
    obj.edit16:setFontColor("#ffffff");
    obj.edit16:setHorzTextAlign("leading");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(130);
    obj.edit16:setHeight(30);
    obj.edit16:setField("AntL7");
    obj.edit16:setName("edit16");

    obj.layout329 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout329:setParent(obj.rectangle1);
    obj.layout329:setLeft(205);
    obj.layout329:setTop(666);
    obj.layout329:setWidth(18);
    obj.layout329:setHeight(18);
    obj.layout329:setName("layout329");

    obj.imageCheckBox313 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox313:setParent(obj.layout329);
    obj.imageCheckBox313:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox313:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox313:setWidth(18);
    obj.imageCheckBox313:setHeight(18);
    obj.imageCheckBox313:setField("Gota1Ant1");
    obj.imageCheckBox313:setName("imageCheckBox313");

    obj.layout330 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout330:setParent(obj.rectangle1);
    obj.layout330:setLeft(219);
    obj.layout330:setTop(666);
    obj.layout330:setWidth(18);
    obj.layout330:setHeight(18);
    obj.layout330:setName("layout330");

    obj.imageCheckBox314 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox314:setParent(obj.layout330);
    obj.imageCheckBox314:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox314:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox314:setWidth(18);
    obj.imageCheckBox314:setHeight(18);
    obj.imageCheckBox314:setField("Gota2Ant1");
    obj.imageCheckBox314:setName("imageCheckBox314");

    obj.layout331 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout331:setParent(obj.rectangle1);
    obj.layout331:setLeft(233);
    obj.layout331:setTop(666);
    obj.layout331:setWidth(18);
    obj.layout331:setHeight(18);
    obj.layout331:setName("layout331");

    obj.imageCheckBox315 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox315:setParent(obj.layout331);
    obj.imageCheckBox315:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox315:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox315:setWidth(18);
    obj.imageCheckBox315:setHeight(18);
    obj.imageCheckBox315:setField("Gota3Ant1");
    obj.imageCheckBox315:setName("imageCheckBox315");

    obj.layout332 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout332:setParent(obj.rectangle1);
    obj.layout332:setLeft(247);
    obj.layout332:setTop(666);
    obj.layout332:setWidth(18);
    obj.layout332:setHeight(18);
    obj.layout332:setName("layout332");

    obj.imageCheckBox316 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox316:setParent(obj.layout332);
    obj.imageCheckBox316:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox316:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox316:setWidth(18);
    obj.imageCheckBox316:setHeight(18);
    obj.imageCheckBox316:setField("Gota4Ant1");
    obj.imageCheckBox316:setName("imageCheckBox316");

    obj.layout333 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout333:setParent(obj.rectangle1);
    obj.layout333:setLeft(261);
    obj.layout333:setTop(666);
    obj.layout333:setWidth(18);
    obj.layout333:setHeight(18);
    obj.layout333:setName("layout333");

    obj.imageCheckBox317 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox317:setParent(obj.layout333);
    obj.imageCheckBox317:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox317:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox317:setWidth(18);
    obj.imageCheckBox317:setHeight(18);
    obj.imageCheckBox317:setField("Gota5Ant1");
    obj.imageCheckBox317:setName("imageCheckBox317");

    obj.layout334 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout334:setParent(obj.rectangle1);
    obj.layout334:setLeft(275);
    obj.layout334:setTop(666);
    obj.layout334:setWidth(18);
    obj.layout334:setHeight(18);
    obj.layout334:setName("layout334");

    obj.imageCheckBox318 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox318:setParent(obj.layout334);
    obj.imageCheckBox318:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox318:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox318:setWidth(18);
    obj.imageCheckBox318:setHeight(18);
    obj.imageCheckBox318:setField("Gota6Ant1");
    obj.imageCheckBox318:setName("imageCheckBox318");

    obj.layout335 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout335:setParent(obj.rectangle1);
    obj.layout335:setLeft(289);
    obj.layout335:setTop(666);
    obj.layout335:setWidth(18);
    obj.layout335:setHeight(18);
    obj.layout335:setName("layout335");

    obj.imageCheckBox319 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox319:setParent(obj.layout335);
    obj.imageCheckBox319:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox319:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox319:setWidth(18);
    obj.imageCheckBox319:setHeight(18);
    obj.imageCheckBox319:setField("Gota7Ant1");
    obj.imageCheckBox319:setName("imageCheckBox319");

    obj.layout336 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout336:setParent(obj.rectangle1);
    obj.layout336:setLeft(303);
    obj.layout336:setTop(666);
    obj.layout336:setWidth(18);
    obj.layout336:setHeight(18);
    obj.layout336:setName("layout336");

    obj.imageCheckBox320 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox320:setParent(obj.layout336);
    obj.imageCheckBox320:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox320:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox320:setWidth(18);
    obj.imageCheckBox320:setHeight(18);
    obj.imageCheckBox320:setField("Gota8Ant1");
    obj.imageCheckBox320:setName("imageCheckBox320");

    obj.layout337 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout337:setParent(obj.rectangle1);
    obj.layout337:setLeft(205);
    obj.layout337:setTop(688);
    obj.layout337:setWidth(18);
    obj.layout337:setHeight(18);
    obj.layout337:setName("layout337");

    obj.imageCheckBox321 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox321:setParent(obj.layout337);
    obj.imageCheckBox321:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox321:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox321:setWidth(18);
    obj.imageCheckBox321:setHeight(18);
    obj.imageCheckBox321:setField("Gota1Ant2");
    obj.imageCheckBox321:setName("imageCheckBox321");

    obj.layout338 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout338:setParent(obj.rectangle1);
    obj.layout338:setLeft(219);
    obj.layout338:setTop(688);
    obj.layout338:setWidth(18);
    obj.layout338:setHeight(18);
    obj.layout338:setName("layout338");

    obj.imageCheckBox322 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox322:setParent(obj.layout338);
    obj.imageCheckBox322:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox322:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox322:setWidth(18);
    obj.imageCheckBox322:setHeight(18);
    obj.imageCheckBox322:setField("Gota2Ant2");
    obj.imageCheckBox322:setName("imageCheckBox322");

    obj.layout339 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout339:setParent(obj.rectangle1);
    obj.layout339:setLeft(233);
    obj.layout339:setTop(688);
    obj.layout339:setWidth(18);
    obj.layout339:setHeight(18);
    obj.layout339:setName("layout339");

    obj.imageCheckBox323 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox323:setParent(obj.layout339);
    obj.imageCheckBox323:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox323:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox323:setWidth(18);
    obj.imageCheckBox323:setHeight(18);
    obj.imageCheckBox323:setField("Gota3Ant2");
    obj.imageCheckBox323:setName("imageCheckBox323");

    obj.layout340 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout340:setParent(obj.rectangle1);
    obj.layout340:setLeft(247);
    obj.layout340:setTop(688);
    obj.layout340:setWidth(18);
    obj.layout340:setHeight(18);
    obj.layout340:setName("layout340");

    obj.imageCheckBox324 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox324:setParent(obj.layout340);
    obj.imageCheckBox324:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox324:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox324:setWidth(18);
    obj.imageCheckBox324:setHeight(18);
    obj.imageCheckBox324:setField("Gota4Ant2");
    obj.imageCheckBox324:setName("imageCheckBox324");

    obj.layout341 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout341:setParent(obj.rectangle1);
    obj.layout341:setLeft(261);
    obj.layout341:setTop(688);
    obj.layout341:setWidth(18);
    obj.layout341:setHeight(18);
    obj.layout341:setName("layout341");

    obj.imageCheckBox325 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox325:setParent(obj.layout341);
    obj.imageCheckBox325:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox325:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox325:setWidth(18);
    obj.imageCheckBox325:setHeight(18);
    obj.imageCheckBox325:setField("Gota5Ant2");
    obj.imageCheckBox325:setName("imageCheckBox325");

    obj.layout342 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout342:setParent(obj.rectangle1);
    obj.layout342:setLeft(275);
    obj.layout342:setTop(688);
    obj.layout342:setWidth(18);
    obj.layout342:setHeight(18);
    obj.layout342:setName("layout342");

    obj.imageCheckBox326 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox326:setParent(obj.layout342);
    obj.imageCheckBox326:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox326:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox326:setWidth(18);
    obj.imageCheckBox326:setHeight(18);
    obj.imageCheckBox326:setField("Gota6Ant2");
    obj.imageCheckBox326:setName("imageCheckBox326");

    obj.layout343 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout343:setParent(obj.rectangle1);
    obj.layout343:setLeft(289);
    obj.layout343:setTop(688);
    obj.layout343:setWidth(18);
    obj.layout343:setHeight(18);
    obj.layout343:setName("layout343");

    obj.imageCheckBox327 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox327:setParent(obj.layout343);
    obj.imageCheckBox327:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox327:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox327:setWidth(18);
    obj.imageCheckBox327:setHeight(18);
    obj.imageCheckBox327:setField("Gota7Ant2");
    obj.imageCheckBox327:setName("imageCheckBox327");

    obj.layout344 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout344:setParent(obj.rectangle1);
    obj.layout344:setLeft(303);
    obj.layout344:setTop(688);
    obj.layout344:setWidth(18);
    obj.layout344:setHeight(18);
    obj.layout344:setName("layout344");

    obj.imageCheckBox328 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox328:setParent(obj.layout344);
    obj.imageCheckBox328:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox328:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox328:setWidth(18);
    obj.imageCheckBox328:setHeight(18);
    obj.imageCheckBox328:setField("Gota8Ant2");
    obj.imageCheckBox328:setName("imageCheckBox328");

    obj.layout345 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout345:setParent(obj.rectangle1);
    obj.layout345:setLeft(205);
    obj.layout345:setTop(710);
    obj.layout345:setWidth(18);
    obj.layout345:setHeight(18);
    obj.layout345:setName("layout345");

    obj.imageCheckBox329 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox329:setParent(obj.layout345);
    obj.imageCheckBox329:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox329:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox329:setWidth(18);
    obj.imageCheckBox329:setHeight(18);
    obj.imageCheckBox329:setField("Gota1Ant3");
    obj.imageCheckBox329:setName("imageCheckBox329");

    obj.layout346 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout346:setParent(obj.rectangle1);
    obj.layout346:setLeft(219);
    obj.layout346:setTop(710);
    obj.layout346:setWidth(18);
    obj.layout346:setHeight(18);
    obj.layout346:setName("layout346");

    obj.imageCheckBox330 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox330:setParent(obj.layout346);
    obj.imageCheckBox330:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox330:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox330:setWidth(18);
    obj.imageCheckBox330:setHeight(18);
    obj.imageCheckBox330:setField("Gota2Ant3");
    obj.imageCheckBox330:setName("imageCheckBox330");

    obj.layout347 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout347:setParent(obj.rectangle1);
    obj.layout347:setLeft(233);
    obj.layout347:setTop(710);
    obj.layout347:setWidth(18);
    obj.layout347:setHeight(18);
    obj.layout347:setName("layout347");

    obj.imageCheckBox331 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox331:setParent(obj.layout347);
    obj.imageCheckBox331:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox331:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox331:setWidth(18);
    obj.imageCheckBox331:setHeight(18);
    obj.imageCheckBox331:setField("Gota3Ant3");
    obj.imageCheckBox331:setName("imageCheckBox331");

    obj.layout348 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout348:setParent(obj.rectangle1);
    obj.layout348:setLeft(247);
    obj.layout348:setTop(710);
    obj.layout348:setWidth(18);
    obj.layout348:setHeight(18);
    obj.layout348:setName("layout348");

    obj.imageCheckBox332 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox332:setParent(obj.layout348);
    obj.imageCheckBox332:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox332:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox332:setWidth(18);
    obj.imageCheckBox332:setHeight(18);
    obj.imageCheckBox332:setField("Gota4Ant3");
    obj.imageCheckBox332:setName("imageCheckBox332");

    obj.layout349 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout349:setParent(obj.rectangle1);
    obj.layout349:setLeft(261);
    obj.layout349:setTop(710);
    obj.layout349:setWidth(18);
    obj.layout349:setHeight(18);
    obj.layout349:setName("layout349");

    obj.imageCheckBox333 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox333:setParent(obj.layout349);
    obj.imageCheckBox333:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox333:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox333:setWidth(18);
    obj.imageCheckBox333:setHeight(18);
    obj.imageCheckBox333:setField("Gota5Ant3");
    obj.imageCheckBox333:setName("imageCheckBox333");

    obj.layout350 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout350:setParent(obj.rectangle1);
    obj.layout350:setLeft(275);
    obj.layout350:setTop(710);
    obj.layout350:setWidth(18);
    obj.layout350:setHeight(18);
    obj.layout350:setName("layout350");

    obj.imageCheckBox334 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox334:setParent(obj.layout350);
    obj.imageCheckBox334:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox334:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox334:setWidth(18);
    obj.imageCheckBox334:setHeight(18);
    obj.imageCheckBox334:setField("Gota6Ant3");
    obj.imageCheckBox334:setName("imageCheckBox334");

    obj.layout351 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout351:setParent(obj.rectangle1);
    obj.layout351:setLeft(289);
    obj.layout351:setTop(710);
    obj.layout351:setWidth(18);
    obj.layout351:setHeight(18);
    obj.layout351:setName("layout351");

    obj.imageCheckBox335 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox335:setParent(obj.layout351);
    obj.imageCheckBox335:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox335:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox335:setWidth(18);
    obj.imageCheckBox335:setHeight(18);
    obj.imageCheckBox335:setField("Gota7Ant3");
    obj.imageCheckBox335:setName("imageCheckBox335");

    obj.layout352 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout352:setParent(obj.rectangle1);
    obj.layout352:setLeft(303);
    obj.layout352:setTop(710);
    obj.layout352:setWidth(18);
    obj.layout352:setHeight(18);
    obj.layout352:setName("layout352");

    obj.imageCheckBox336 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox336:setParent(obj.layout352);
    obj.imageCheckBox336:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox336:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox336:setWidth(18);
    obj.imageCheckBox336:setHeight(18);
    obj.imageCheckBox336:setField("Gota8Ant3");
    obj.imageCheckBox336:setName("imageCheckBox336");

    obj.layout353 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout353:setParent(obj.rectangle1);
    obj.layout353:setLeft(205);
    obj.layout353:setTop(732);
    obj.layout353:setWidth(18);
    obj.layout353:setHeight(18);
    obj.layout353:setName("layout353");

    obj.imageCheckBox337 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox337:setParent(obj.layout353);
    obj.imageCheckBox337:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox337:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox337:setWidth(18);
    obj.imageCheckBox337:setHeight(18);
    obj.imageCheckBox337:setField("Gota1Ant4");
    obj.imageCheckBox337:setName("imageCheckBox337");

    obj.layout354 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout354:setParent(obj.rectangle1);
    obj.layout354:setLeft(219);
    obj.layout354:setTop(732);
    obj.layout354:setWidth(18);
    obj.layout354:setHeight(18);
    obj.layout354:setName("layout354");

    obj.imageCheckBox338 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox338:setParent(obj.layout354);
    obj.imageCheckBox338:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox338:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox338:setWidth(18);
    obj.imageCheckBox338:setHeight(18);
    obj.imageCheckBox338:setField("Gota2Ant4");
    obj.imageCheckBox338:setName("imageCheckBox338");

    obj.layout355 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout355:setParent(obj.rectangle1);
    obj.layout355:setLeft(233);
    obj.layout355:setTop(732);
    obj.layout355:setWidth(18);
    obj.layout355:setHeight(18);
    obj.layout355:setName("layout355");

    obj.imageCheckBox339 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox339:setParent(obj.layout355);
    obj.imageCheckBox339:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox339:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox339:setWidth(18);
    obj.imageCheckBox339:setHeight(18);
    obj.imageCheckBox339:setField("Gota3Ant4");
    obj.imageCheckBox339:setName("imageCheckBox339");

    obj.layout356 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout356:setParent(obj.rectangle1);
    obj.layout356:setLeft(247);
    obj.layout356:setTop(732);
    obj.layout356:setWidth(18);
    obj.layout356:setHeight(18);
    obj.layout356:setName("layout356");

    obj.imageCheckBox340 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox340:setParent(obj.layout356);
    obj.imageCheckBox340:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox340:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox340:setWidth(18);
    obj.imageCheckBox340:setHeight(18);
    obj.imageCheckBox340:setField("Gota4Ant4");
    obj.imageCheckBox340:setName("imageCheckBox340");

    obj.layout357 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout357:setParent(obj.rectangle1);
    obj.layout357:setLeft(261);
    obj.layout357:setTop(732);
    obj.layout357:setWidth(18);
    obj.layout357:setHeight(18);
    obj.layout357:setName("layout357");

    obj.imageCheckBox341 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox341:setParent(obj.layout357);
    obj.imageCheckBox341:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox341:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox341:setWidth(18);
    obj.imageCheckBox341:setHeight(18);
    obj.imageCheckBox341:setField("Gota5Ant4");
    obj.imageCheckBox341:setName("imageCheckBox341");

    obj.layout358 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout358:setParent(obj.rectangle1);
    obj.layout358:setLeft(275);
    obj.layout358:setTop(732);
    obj.layout358:setWidth(18);
    obj.layout358:setHeight(18);
    obj.layout358:setName("layout358");

    obj.imageCheckBox342 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox342:setParent(obj.layout358);
    obj.imageCheckBox342:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox342:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox342:setWidth(18);
    obj.imageCheckBox342:setHeight(18);
    obj.imageCheckBox342:setField("Gota6Ant4");
    obj.imageCheckBox342:setName("imageCheckBox342");

    obj.layout359 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout359:setParent(obj.rectangle1);
    obj.layout359:setLeft(289);
    obj.layout359:setTop(732);
    obj.layout359:setWidth(18);
    obj.layout359:setHeight(18);
    obj.layout359:setName("layout359");

    obj.imageCheckBox343 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox343:setParent(obj.layout359);
    obj.imageCheckBox343:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox343:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox343:setWidth(18);
    obj.imageCheckBox343:setHeight(18);
    obj.imageCheckBox343:setField("Gota7Ant4");
    obj.imageCheckBox343:setName("imageCheckBox343");

    obj.layout360 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout360:setParent(obj.rectangle1);
    obj.layout360:setLeft(303);
    obj.layout360:setTop(732);
    obj.layout360:setWidth(18);
    obj.layout360:setHeight(18);
    obj.layout360:setName("layout360");

    obj.imageCheckBox344 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox344:setParent(obj.layout360);
    obj.imageCheckBox344:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox344:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox344:setWidth(18);
    obj.imageCheckBox344:setHeight(18);
    obj.imageCheckBox344:setField("Gota8Ant4");
    obj.imageCheckBox344:setName("imageCheckBox344");

    obj.layout361 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout361:setParent(obj.rectangle1);
    obj.layout361:setLeft(205);
    obj.layout361:setTop(754);
    obj.layout361:setWidth(18);
    obj.layout361:setHeight(18);
    obj.layout361:setName("layout361");

    obj.imageCheckBox345 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox345:setParent(obj.layout361);
    obj.imageCheckBox345:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox345:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox345:setWidth(18);
    obj.imageCheckBox345:setHeight(18);
    obj.imageCheckBox345:setField("Gota1Ant5");
    obj.imageCheckBox345:setName("imageCheckBox345");

    obj.layout362 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout362:setParent(obj.rectangle1);
    obj.layout362:setLeft(219);
    obj.layout362:setTop(754);
    obj.layout362:setWidth(18);
    obj.layout362:setHeight(18);
    obj.layout362:setName("layout362");

    obj.imageCheckBox346 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox346:setParent(obj.layout362);
    obj.imageCheckBox346:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox346:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox346:setWidth(18);
    obj.imageCheckBox346:setHeight(18);
    obj.imageCheckBox346:setField("Gota2Ant5");
    obj.imageCheckBox346:setName("imageCheckBox346");

    obj.layout363 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout363:setParent(obj.rectangle1);
    obj.layout363:setLeft(233);
    obj.layout363:setTop(754);
    obj.layout363:setWidth(18);
    obj.layout363:setHeight(18);
    obj.layout363:setName("layout363");

    obj.imageCheckBox347 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox347:setParent(obj.layout363);
    obj.imageCheckBox347:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox347:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox347:setWidth(18);
    obj.imageCheckBox347:setHeight(18);
    obj.imageCheckBox347:setField("Gota3Ant5");
    obj.imageCheckBox347:setName("imageCheckBox347");

    obj.layout364 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout364:setParent(obj.rectangle1);
    obj.layout364:setLeft(247);
    obj.layout364:setTop(754);
    obj.layout364:setWidth(18);
    obj.layout364:setHeight(18);
    obj.layout364:setName("layout364");

    obj.imageCheckBox348 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox348:setParent(obj.layout364);
    obj.imageCheckBox348:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox348:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox348:setWidth(18);
    obj.imageCheckBox348:setHeight(18);
    obj.imageCheckBox348:setField("Gota4Ant5");
    obj.imageCheckBox348:setName("imageCheckBox348");

    obj.layout365 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout365:setParent(obj.rectangle1);
    obj.layout365:setLeft(261);
    obj.layout365:setTop(754);
    obj.layout365:setWidth(18);
    obj.layout365:setHeight(18);
    obj.layout365:setName("layout365");

    obj.imageCheckBox349 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox349:setParent(obj.layout365);
    obj.imageCheckBox349:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox349:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox349:setWidth(18);
    obj.imageCheckBox349:setHeight(18);
    obj.imageCheckBox349:setField("Gota5Ant5");
    obj.imageCheckBox349:setName("imageCheckBox349");

    obj.layout366 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout366:setParent(obj.rectangle1);
    obj.layout366:setLeft(275);
    obj.layout366:setTop(754);
    obj.layout366:setWidth(18);
    obj.layout366:setHeight(18);
    obj.layout366:setName("layout366");

    obj.imageCheckBox350 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox350:setParent(obj.layout366);
    obj.imageCheckBox350:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox350:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox350:setWidth(18);
    obj.imageCheckBox350:setHeight(18);
    obj.imageCheckBox350:setField("Gota6Ant5");
    obj.imageCheckBox350:setName("imageCheckBox350");

    obj.layout367 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout367:setParent(obj.rectangle1);
    obj.layout367:setLeft(289);
    obj.layout367:setTop(754);
    obj.layout367:setWidth(18);
    obj.layout367:setHeight(18);
    obj.layout367:setName("layout367");

    obj.imageCheckBox351 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox351:setParent(obj.layout367);
    obj.imageCheckBox351:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox351:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox351:setWidth(18);
    obj.imageCheckBox351:setHeight(18);
    obj.imageCheckBox351:setField("Gota7Ant5");
    obj.imageCheckBox351:setName("imageCheckBox351");

    obj.layout368 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout368:setParent(obj.rectangle1);
    obj.layout368:setLeft(303);
    obj.layout368:setTop(754);
    obj.layout368:setWidth(18);
    obj.layout368:setHeight(18);
    obj.layout368:setName("layout368");

    obj.imageCheckBox352 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox352:setParent(obj.layout368);
    obj.imageCheckBox352:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox352:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox352:setWidth(18);
    obj.imageCheckBox352:setHeight(18);
    obj.imageCheckBox352:setField("Gota8Ant5");
    obj.imageCheckBox352:setName("imageCheckBox352");

    obj.layout369 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout369:setParent(obj.rectangle1);
    obj.layout369:setLeft(205);
    obj.layout369:setTop(776);
    obj.layout369:setWidth(18);
    obj.layout369:setHeight(18);
    obj.layout369:setName("layout369");

    obj.imageCheckBox353 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox353:setParent(obj.layout369);
    obj.imageCheckBox353:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox353:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox353:setWidth(18);
    obj.imageCheckBox353:setHeight(18);
    obj.imageCheckBox353:setField("Gota1Ant6");
    obj.imageCheckBox353:setName("imageCheckBox353");

    obj.layout370 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout370:setParent(obj.rectangle1);
    obj.layout370:setLeft(219);
    obj.layout370:setTop(776);
    obj.layout370:setWidth(18);
    obj.layout370:setHeight(18);
    obj.layout370:setName("layout370");

    obj.imageCheckBox354 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox354:setParent(obj.layout370);
    obj.imageCheckBox354:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox354:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox354:setWidth(18);
    obj.imageCheckBox354:setHeight(18);
    obj.imageCheckBox354:setField("Gota2Ant6");
    obj.imageCheckBox354:setName("imageCheckBox354");

    obj.layout371 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout371:setParent(obj.rectangle1);
    obj.layout371:setLeft(233);
    obj.layout371:setTop(776);
    obj.layout371:setWidth(18);
    obj.layout371:setHeight(18);
    obj.layout371:setName("layout371");

    obj.imageCheckBox355 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox355:setParent(obj.layout371);
    obj.imageCheckBox355:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox355:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox355:setWidth(18);
    obj.imageCheckBox355:setHeight(18);
    obj.imageCheckBox355:setField("Gota3Ant6");
    obj.imageCheckBox355:setName("imageCheckBox355");

    obj.layout372 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout372:setParent(obj.rectangle1);
    obj.layout372:setLeft(247);
    obj.layout372:setTop(776);
    obj.layout372:setWidth(18);
    obj.layout372:setHeight(18);
    obj.layout372:setName("layout372");

    obj.imageCheckBox356 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox356:setParent(obj.layout372);
    obj.imageCheckBox356:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox356:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox356:setWidth(18);
    obj.imageCheckBox356:setHeight(18);
    obj.imageCheckBox356:setField("Gota4Ant6");
    obj.imageCheckBox356:setName("imageCheckBox356");

    obj.layout373 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout373:setParent(obj.rectangle1);
    obj.layout373:setLeft(261);
    obj.layout373:setTop(776);
    obj.layout373:setWidth(18);
    obj.layout373:setHeight(18);
    obj.layout373:setName("layout373");

    obj.imageCheckBox357 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox357:setParent(obj.layout373);
    obj.imageCheckBox357:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox357:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox357:setWidth(18);
    obj.imageCheckBox357:setHeight(18);
    obj.imageCheckBox357:setField("Gota5Ant6");
    obj.imageCheckBox357:setName("imageCheckBox357");

    obj.layout374 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout374:setParent(obj.rectangle1);
    obj.layout374:setLeft(275);
    obj.layout374:setTop(776);
    obj.layout374:setWidth(18);
    obj.layout374:setHeight(18);
    obj.layout374:setName("layout374");

    obj.imageCheckBox358 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox358:setParent(obj.layout374);
    obj.imageCheckBox358:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox358:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox358:setWidth(18);
    obj.imageCheckBox358:setHeight(18);
    obj.imageCheckBox358:setField("Gota6Ant6");
    obj.imageCheckBox358:setName("imageCheckBox358");

    obj.layout375 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout375:setParent(obj.rectangle1);
    obj.layout375:setLeft(289);
    obj.layout375:setTop(776);
    obj.layout375:setWidth(18);
    obj.layout375:setHeight(18);
    obj.layout375:setName("layout375");

    obj.imageCheckBox359 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox359:setParent(obj.layout375);
    obj.imageCheckBox359:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox359:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox359:setWidth(18);
    obj.imageCheckBox359:setHeight(18);
    obj.imageCheckBox359:setField("Gota7Ant6");
    obj.imageCheckBox359:setName("imageCheckBox359");

    obj.layout376 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout376:setParent(obj.rectangle1);
    obj.layout376:setLeft(303);
    obj.layout376:setTop(776);
    obj.layout376:setWidth(18);
    obj.layout376:setHeight(18);
    obj.layout376:setName("layout376");

    obj.imageCheckBox360 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox360:setParent(obj.layout376);
    obj.imageCheckBox360:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox360:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox360:setWidth(18);
    obj.imageCheckBox360:setHeight(18);
    obj.imageCheckBox360:setField("Gota8Ant6");
    obj.imageCheckBox360:setName("imageCheckBox360");

    obj.layout377 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout377:setParent(obj.rectangle1);
    obj.layout377:setLeft(205);
    obj.layout377:setTop(798);
    obj.layout377:setWidth(18);
    obj.layout377:setHeight(18);
    obj.layout377:setName("layout377");

    obj.imageCheckBox361 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox361:setParent(obj.layout377);
    obj.imageCheckBox361:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox361:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox361:setWidth(18);
    obj.imageCheckBox361:setHeight(18);
    obj.imageCheckBox361:setField("Gota1Ant7");
    obj.imageCheckBox361:setName("imageCheckBox361");

    obj.layout378 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout378:setParent(obj.rectangle1);
    obj.layout378:setLeft(219);
    obj.layout378:setTop(798);
    obj.layout378:setWidth(18);
    obj.layout378:setHeight(18);
    obj.layout378:setName("layout378");

    obj.imageCheckBox362 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox362:setParent(obj.layout378);
    obj.imageCheckBox362:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox362:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox362:setWidth(18);
    obj.imageCheckBox362:setHeight(18);
    obj.imageCheckBox362:setField("Gota2Ant7");
    obj.imageCheckBox362:setName("imageCheckBox362");

    obj.layout379 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout379:setParent(obj.rectangle1);
    obj.layout379:setLeft(233);
    obj.layout379:setTop(798);
    obj.layout379:setWidth(18);
    obj.layout379:setHeight(18);
    obj.layout379:setName("layout379");

    obj.imageCheckBox363 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox363:setParent(obj.layout379);
    obj.imageCheckBox363:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox363:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox363:setWidth(18);
    obj.imageCheckBox363:setHeight(18);
    obj.imageCheckBox363:setField("Gota3Ant7");
    obj.imageCheckBox363:setName("imageCheckBox363");

    obj.layout380 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout380:setParent(obj.rectangle1);
    obj.layout380:setLeft(247);
    obj.layout380:setTop(798);
    obj.layout380:setWidth(18);
    obj.layout380:setHeight(18);
    obj.layout380:setName("layout380");

    obj.imageCheckBox364 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox364:setParent(obj.layout380);
    obj.imageCheckBox364:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox364:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox364:setWidth(18);
    obj.imageCheckBox364:setHeight(18);
    obj.imageCheckBox364:setField("Gota4Ant7");
    obj.imageCheckBox364:setName("imageCheckBox364");

    obj.layout381 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout381:setParent(obj.rectangle1);
    obj.layout381:setLeft(261);
    obj.layout381:setTop(798);
    obj.layout381:setWidth(18);
    obj.layout381:setHeight(18);
    obj.layout381:setName("layout381");

    obj.imageCheckBox365 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox365:setParent(obj.layout381);
    obj.imageCheckBox365:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox365:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox365:setWidth(18);
    obj.imageCheckBox365:setHeight(18);
    obj.imageCheckBox365:setField("Gota5Ant7");
    obj.imageCheckBox365:setName("imageCheckBox365");

    obj.layout382 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout382:setParent(obj.rectangle1);
    obj.layout382:setLeft(275);
    obj.layout382:setTop(798);
    obj.layout382:setWidth(18);
    obj.layout382:setHeight(18);
    obj.layout382:setName("layout382");

    obj.imageCheckBox366 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox366:setParent(obj.layout382);
    obj.imageCheckBox366:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox366:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox366:setWidth(18);
    obj.imageCheckBox366:setHeight(18);
    obj.imageCheckBox366:setField("Gota6Ant7");
    obj.imageCheckBox366:setName("imageCheckBox366");

    obj.layout383 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout383:setParent(obj.rectangle1);
    obj.layout383:setLeft(289);
    obj.layout383:setTop(798);
    obj.layout383:setWidth(18);
    obj.layout383:setHeight(18);
    obj.layout383:setName("layout383");

    obj.imageCheckBox367 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox367:setParent(obj.layout383);
    obj.imageCheckBox367:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox367:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox367:setWidth(18);
    obj.imageCheckBox367:setHeight(18);
    obj.imageCheckBox367:setField("Gota7Ant7");
    obj.imageCheckBox367:setName("imageCheckBox367");

    obj.layout384 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout384:setParent(obj.rectangle1);
    obj.layout384:setLeft(303);
    obj.layout384:setTop(798);
    obj.layout384:setWidth(18);
    obj.layout384:setHeight(18);
    obj.layout384:setName("layout384");

    obj.imageCheckBox368 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox368:setParent(obj.layout384);
    obj.imageCheckBox368:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox368:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox368:setWidth(18);
    obj.imageCheckBox368:setHeight(18);
    obj.imageCheckBox368:setField("Gota8Ant7");
    obj.imageCheckBox368:setName("imageCheckBox368");

    obj.layout385 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout385:setParent(obj.rectangle1);
    obj.layout385:setLeft(325);
    obj.layout385:setTop(657);
    obj.layout385:setWidth(130);
    obj.layout385:setHeight(30);
    obj.layout385:setName("layout385");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout385);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(16);
    obj.edit17:setFontColor("#ffffff");
    obj.edit17:setHorzTextAlign("leading");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(130);
    obj.edit17:setHeight(30);
    obj.edit17:setField("DisL1");
    obj.edit17:setName("edit17");

    obj.layout386 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout386:setParent(obj.rectangle1);
    obj.layout386:setLeft(325);
    obj.layout386:setTop(678);
    obj.layout386:setWidth(130);
    obj.layout386:setHeight(30);
    obj.layout386:setName("layout386");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout386);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(16);
    obj.edit18:setFontColor("#ffffff");
    obj.edit18:setHorzTextAlign("leading");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(130);
    obj.edit18:setHeight(30);
    obj.edit18:setField("DisL2");
    obj.edit18:setName("edit18");

    obj.layout387 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout387:setParent(obj.rectangle1);
    obj.layout387:setLeft(325);
    obj.layout387:setTop(701);
    obj.layout387:setWidth(130);
    obj.layout387:setHeight(30);
    obj.layout387:setName("layout387");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout387);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(16);
    obj.edit19:setFontColor("#ffffff");
    obj.edit19:setHorzTextAlign("leading");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(130);
    obj.edit19:setHeight(30);
    obj.edit19:setField("DisL3");
    obj.edit19:setName("edit19");

    obj.layout388 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout388:setParent(obj.rectangle1);
    obj.layout388:setLeft(325);
    obj.layout388:setTop(723);
    obj.layout388:setWidth(130);
    obj.layout388:setHeight(30);
    obj.layout388:setName("layout388");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout388);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(16);
    obj.edit20:setFontColor("#ffffff");
    obj.edit20:setHorzTextAlign("leading");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(130);
    obj.edit20:setHeight(30);
    obj.edit20:setField("DisL4");
    obj.edit20:setName("edit20");

    obj.layout389 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout389:setParent(obj.rectangle1);
    obj.layout389:setLeft(325);
    obj.layout389:setTop(745);
    obj.layout389:setWidth(130);
    obj.layout389:setHeight(30);
    obj.layout389:setName("layout389");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout389);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(16);
    obj.edit21:setFontColor("#ffffff");
    obj.edit21:setHorzTextAlign("leading");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(130);
    obj.edit21:setHeight(30);
    obj.edit21:setField("DisL5");
    obj.edit21:setName("edit21");

    obj.layout390 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout390:setParent(obj.rectangle1);
    obj.layout390:setLeft(325);
    obj.layout390:setTop(767);
    obj.layout390:setWidth(130);
    obj.layout390:setHeight(30);
    obj.layout390:setName("layout390");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout390);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(16);
    obj.edit22:setFontColor("#ffffff");
    obj.edit22:setHorzTextAlign("leading");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(130);
    obj.edit22:setHeight(30);
    obj.edit22:setField("DisL6");
    obj.edit22:setName("edit22");

    obj.layout391 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout391:setParent(obj.rectangle1);
    obj.layout391:setLeft(325);
    obj.layout391:setTop(789);
    obj.layout391:setWidth(130);
    obj.layout391:setHeight(30);
    obj.layout391:setName("layout391");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout391);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(16);
    obj.edit23:setFontColor("#ffffff");
    obj.edit23:setHorzTextAlign("leading");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(130);
    obj.edit23:setHeight(30);
    obj.edit23:setField("DisL7");
    obj.edit23:setName("edit23");

    obj.layout392 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout392:setParent(obj.rectangle1);
    obj.layout392:setLeft(453);
    obj.layout392:setTop(666);
    obj.layout392:setWidth(18);
    obj.layout392:setHeight(18);
    obj.layout392:setName("layout392");

    obj.imageCheckBox369 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox369:setParent(obj.layout392);
    obj.imageCheckBox369:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox369:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox369:setWidth(18);
    obj.imageCheckBox369:setHeight(18);
    obj.imageCheckBox369:setField("Gota1Dis1");
    obj.imageCheckBox369:setName("imageCheckBox369");

    obj.layout393 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout393:setParent(obj.rectangle1);
    obj.layout393:setLeft(467);
    obj.layout393:setTop(666);
    obj.layout393:setWidth(18);
    obj.layout393:setHeight(18);
    obj.layout393:setName("layout393");

    obj.imageCheckBox370 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox370:setParent(obj.layout393);
    obj.imageCheckBox370:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox370:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox370:setWidth(18);
    obj.imageCheckBox370:setHeight(18);
    obj.imageCheckBox370:setField("Gota2Dis1");
    obj.imageCheckBox370:setName("imageCheckBox370");

    obj.layout394 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout394:setParent(obj.rectangle1);
    obj.layout394:setLeft(481);
    obj.layout394:setTop(666);
    obj.layout394:setWidth(18);
    obj.layout394:setHeight(18);
    obj.layout394:setName("layout394");

    obj.imageCheckBox371 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox371:setParent(obj.layout394);
    obj.imageCheckBox371:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox371:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox371:setWidth(18);
    obj.imageCheckBox371:setHeight(18);
    obj.imageCheckBox371:setField("Gota3Dis1");
    obj.imageCheckBox371:setName("imageCheckBox371");

    obj.layout395 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout395:setParent(obj.rectangle1);
    obj.layout395:setLeft(495);
    obj.layout395:setTop(666);
    obj.layout395:setWidth(18);
    obj.layout395:setHeight(18);
    obj.layout395:setName("layout395");

    obj.imageCheckBox372 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox372:setParent(obj.layout395);
    obj.imageCheckBox372:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox372:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox372:setWidth(18);
    obj.imageCheckBox372:setHeight(18);
    obj.imageCheckBox372:setField("Gota4Dis1");
    obj.imageCheckBox372:setName("imageCheckBox372");

    obj.layout396 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout396:setParent(obj.rectangle1);
    obj.layout396:setLeft(509);
    obj.layout396:setTop(666);
    obj.layout396:setWidth(18);
    obj.layout396:setHeight(18);
    obj.layout396:setName("layout396");

    obj.imageCheckBox373 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox373:setParent(obj.layout396);
    obj.imageCheckBox373:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox373:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox373:setWidth(18);
    obj.imageCheckBox373:setHeight(18);
    obj.imageCheckBox373:setField("Gota5Dis1");
    obj.imageCheckBox373:setName("imageCheckBox373");

    obj.layout397 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout397:setParent(obj.rectangle1);
    obj.layout397:setLeft(523);
    obj.layout397:setTop(666);
    obj.layout397:setWidth(18);
    obj.layout397:setHeight(18);
    obj.layout397:setName("layout397");

    obj.imageCheckBox374 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox374:setParent(obj.layout397);
    obj.imageCheckBox374:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox374:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox374:setWidth(18);
    obj.imageCheckBox374:setHeight(18);
    obj.imageCheckBox374:setField("Gota6Dis1");
    obj.imageCheckBox374:setName("imageCheckBox374");

    obj.layout398 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout398:setParent(obj.rectangle1);
    obj.layout398:setLeft(537);
    obj.layout398:setTop(666);
    obj.layout398:setWidth(18);
    obj.layout398:setHeight(18);
    obj.layout398:setName("layout398");

    obj.imageCheckBox375 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox375:setParent(obj.layout398);
    obj.imageCheckBox375:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox375:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox375:setWidth(18);
    obj.imageCheckBox375:setHeight(18);
    obj.imageCheckBox375:setField("Gota7Dis1");
    obj.imageCheckBox375:setName("imageCheckBox375");

    obj.layout399 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout399:setParent(obj.rectangle1);
    obj.layout399:setLeft(551);
    obj.layout399:setTop(666);
    obj.layout399:setWidth(18);
    obj.layout399:setHeight(18);
    obj.layout399:setName("layout399");

    obj.imageCheckBox376 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox376:setParent(obj.layout399);
    obj.imageCheckBox376:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox376:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox376:setWidth(18);
    obj.imageCheckBox376:setHeight(18);
    obj.imageCheckBox376:setField("Gota8Dis1");
    obj.imageCheckBox376:setName("imageCheckBox376");

    obj.layout400 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout400:setParent(obj.rectangle1);
    obj.layout400:setLeft(453);
    obj.layout400:setTop(688);
    obj.layout400:setWidth(18);
    obj.layout400:setHeight(18);
    obj.layout400:setName("layout400");

    obj.imageCheckBox377 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox377:setParent(obj.layout400);
    obj.imageCheckBox377:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox377:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox377:setWidth(18);
    obj.imageCheckBox377:setHeight(18);
    obj.imageCheckBox377:setField("Gota1Dis2");
    obj.imageCheckBox377:setName("imageCheckBox377");

    obj.layout401 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout401:setParent(obj.rectangle1);
    obj.layout401:setLeft(467);
    obj.layout401:setTop(688);
    obj.layout401:setWidth(18);
    obj.layout401:setHeight(18);
    obj.layout401:setName("layout401");

    obj.imageCheckBox378 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox378:setParent(obj.layout401);
    obj.imageCheckBox378:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox378:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox378:setWidth(18);
    obj.imageCheckBox378:setHeight(18);
    obj.imageCheckBox378:setField("Gota2Dis2");
    obj.imageCheckBox378:setName("imageCheckBox378");

    obj.layout402 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout402:setParent(obj.rectangle1);
    obj.layout402:setLeft(481);
    obj.layout402:setTop(688);
    obj.layout402:setWidth(18);
    obj.layout402:setHeight(18);
    obj.layout402:setName("layout402");

    obj.imageCheckBox379 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox379:setParent(obj.layout402);
    obj.imageCheckBox379:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox379:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox379:setWidth(18);
    obj.imageCheckBox379:setHeight(18);
    obj.imageCheckBox379:setField("Gota3Dis2");
    obj.imageCheckBox379:setName("imageCheckBox379");

    obj.layout403 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout403:setParent(obj.rectangle1);
    obj.layout403:setLeft(495);
    obj.layout403:setTop(688);
    obj.layout403:setWidth(18);
    obj.layout403:setHeight(18);
    obj.layout403:setName("layout403");

    obj.imageCheckBox380 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox380:setParent(obj.layout403);
    obj.imageCheckBox380:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox380:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox380:setWidth(18);
    obj.imageCheckBox380:setHeight(18);
    obj.imageCheckBox380:setField("Gota4Dis2");
    obj.imageCheckBox380:setName("imageCheckBox380");

    obj.layout404 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout404:setParent(obj.rectangle1);
    obj.layout404:setLeft(509);
    obj.layout404:setTop(688);
    obj.layout404:setWidth(18);
    obj.layout404:setHeight(18);
    obj.layout404:setName("layout404");

    obj.imageCheckBox381 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox381:setParent(obj.layout404);
    obj.imageCheckBox381:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox381:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox381:setWidth(18);
    obj.imageCheckBox381:setHeight(18);
    obj.imageCheckBox381:setField("Gota5Dis2");
    obj.imageCheckBox381:setName("imageCheckBox381");

    obj.layout405 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout405:setParent(obj.rectangle1);
    obj.layout405:setLeft(523);
    obj.layout405:setTop(688);
    obj.layout405:setWidth(18);
    obj.layout405:setHeight(18);
    obj.layout405:setName("layout405");

    obj.imageCheckBox382 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox382:setParent(obj.layout405);
    obj.imageCheckBox382:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox382:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox382:setWidth(18);
    obj.imageCheckBox382:setHeight(18);
    obj.imageCheckBox382:setField("Gota6Dis2");
    obj.imageCheckBox382:setName("imageCheckBox382");

    obj.layout406 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout406:setParent(obj.rectangle1);
    obj.layout406:setLeft(537);
    obj.layout406:setTop(688);
    obj.layout406:setWidth(18);
    obj.layout406:setHeight(18);
    obj.layout406:setName("layout406");

    obj.imageCheckBox383 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox383:setParent(obj.layout406);
    obj.imageCheckBox383:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox383:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox383:setWidth(18);
    obj.imageCheckBox383:setHeight(18);
    obj.imageCheckBox383:setField("Gota7Dis2");
    obj.imageCheckBox383:setName("imageCheckBox383");

    obj.layout407 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout407:setParent(obj.rectangle1);
    obj.layout407:setLeft(551);
    obj.layout407:setTop(688);
    obj.layout407:setWidth(18);
    obj.layout407:setHeight(18);
    obj.layout407:setName("layout407");

    obj.imageCheckBox384 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox384:setParent(obj.layout407);
    obj.imageCheckBox384:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox384:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox384:setWidth(18);
    obj.imageCheckBox384:setHeight(18);
    obj.imageCheckBox384:setField("Gota8Dis2");
    obj.imageCheckBox384:setName("imageCheckBox384");

    obj.layout408 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout408:setParent(obj.rectangle1);
    obj.layout408:setLeft(453);
    obj.layout408:setTop(710);
    obj.layout408:setWidth(18);
    obj.layout408:setHeight(18);
    obj.layout408:setName("layout408");

    obj.imageCheckBox385 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox385:setParent(obj.layout408);
    obj.imageCheckBox385:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox385:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox385:setWidth(18);
    obj.imageCheckBox385:setHeight(18);
    obj.imageCheckBox385:setField("Gota1Dis3");
    obj.imageCheckBox385:setName("imageCheckBox385");

    obj.layout409 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout409:setParent(obj.rectangle1);
    obj.layout409:setLeft(467);
    obj.layout409:setTop(710);
    obj.layout409:setWidth(18);
    obj.layout409:setHeight(18);
    obj.layout409:setName("layout409");

    obj.imageCheckBox386 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox386:setParent(obj.layout409);
    obj.imageCheckBox386:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox386:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox386:setWidth(18);
    obj.imageCheckBox386:setHeight(18);
    obj.imageCheckBox386:setField("Gota2Dis3");
    obj.imageCheckBox386:setName("imageCheckBox386");

    obj.layout410 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout410:setParent(obj.rectangle1);
    obj.layout410:setLeft(481);
    obj.layout410:setTop(710);
    obj.layout410:setWidth(18);
    obj.layout410:setHeight(18);
    obj.layout410:setName("layout410");

    obj.imageCheckBox387 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox387:setParent(obj.layout410);
    obj.imageCheckBox387:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox387:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox387:setWidth(18);
    obj.imageCheckBox387:setHeight(18);
    obj.imageCheckBox387:setField("Gota3Dis3");
    obj.imageCheckBox387:setName("imageCheckBox387");

    obj.layout411 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout411:setParent(obj.rectangle1);
    obj.layout411:setLeft(495);
    obj.layout411:setTop(710);
    obj.layout411:setWidth(18);
    obj.layout411:setHeight(18);
    obj.layout411:setName("layout411");

    obj.imageCheckBox388 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox388:setParent(obj.layout411);
    obj.imageCheckBox388:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox388:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox388:setWidth(18);
    obj.imageCheckBox388:setHeight(18);
    obj.imageCheckBox388:setField("Gota4Dis3");
    obj.imageCheckBox388:setName("imageCheckBox388");

    obj.layout412 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout412:setParent(obj.rectangle1);
    obj.layout412:setLeft(509);
    obj.layout412:setTop(710);
    obj.layout412:setWidth(18);
    obj.layout412:setHeight(18);
    obj.layout412:setName("layout412");

    obj.imageCheckBox389 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox389:setParent(obj.layout412);
    obj.imageCheckBox389:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox389:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox389:setWidth(18);
    obj.imageCheckBox389:setHeight(18);
    obj.imageCheckBox389:setField("Gota5Dis3");
    obj.imageCheckBox389:setName("imageCheckBox389");

    obj.layout413 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout413:setParent(obj.rectangle1);
    obj.layout413:setLeft(523);
    obj.layout413:setTop(710);
    obj.layout413:setWidth(18);
    obj.layout413:setHeight(18);
    obj.layout413:setName("layout413");

    obj.imageCheckBox390 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox390:setParent(obj.layout413);
    obj.imageCheckBox390:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox390:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox390:setWidth(18);
    obj.imageCheckBox390:setHeight(18);
    obj.imageCheckBox390:setField("Gota6Dis3");
    obj.imageCheckBox390:setName("imageCheckBox390");

    obj.layout414 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout414:setParent(obj.rectangle1);
    obj.layout414:setLeft(537);
    obj.layout414:setTop(710);
    obj.layout414:setWidth(18);
    obj.layout414:setHeight(18);
    obj.layout414:setName("layout414");

    obj.imageCheckBox391 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox391:setParent(obj.layout414);
    obj.imageCheckBox391:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox391:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox391:setWidth(18);
    obj.imageCheckBox391:setHeight(18);
    obj.imageCheckBox391:setField("Gota7Dis3");
    obj.imageCheckBox391:setName("imageCheckBox391");

    obj.layout415 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout415:setParent(obj.rectangle1);
    obj.layout415:setLeft(551);
    obj.layout415:setTop(710);
    obj.layout415:setWidth(18);
    obj.layout415:setHeight(18);
    obj.layout415:setName("layout415");

    obj.imageCheckBox392 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox392:setParent(obj.layout415);
    obj.imageCheckBox392:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox392:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox392:setWidth(18);
    obj.imageCheckBox392:setHeight(18);
    obj.imageCheckBox392:setField("Gota8Dis3");
    obj.imageCheckBox392:setName("imageCheckBox392");

    obj.layout416 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout416:setParent(obj.rectangle1);
    obj.layout416:setLeft(453);
    obj.layout416:setTop(732);
    obj.layout416:setWidth(18);
    obj.layout416:setHeight(18);
    obj.layout416:setName("layout416");

    obj.imageCheckBox393 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox393:setParent(obj.layout416);
    obj.imageCheckBox393:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox393:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox393:setWidth(18);
    obj.imageCheckBox393:setHeight(18);
    obj.imageCheckBox393:setField("Gota1Dis4");
    obj.imageCheckBox393:setName("imageCheckBox393");

    obj.layout417 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout417:setParent(obj.rectangle1);
    obj.layout417:setLeft(467);
    obj.layout417:setTop(732);
    obj.layout417:setWidth(18);
    obj.layout417:setHeight(18);
    obj.layout417:setName("layout417");

    obj.imageCheckBox394 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox394:setParent(obj.layout417);
    obj.imageCheckBox394:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox394:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox394:setWidth(18);
    obj.imageCheckBox394:setHeight(18);
    obj.imageCheckBox394:setField("Gota2Dis4");
    obj.imageCheckBox394:setName("imageCheckBox394");

    obj.layout418 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout418:setParent(obj.rectangle1);
    obj.layout418:setLeft(481);
    obj.layout418:setTop(732);
    obj.layout418:setWidth(18);
    obj.layout418:setHeight(18);
    obj.layout418:setName("layout418");

    obj.imageCheckBox395 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox395:setParent(obj.layout418);
    obj.imageCheckBox395:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox395:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox395:setWidth(18);
    obj.imageCheckBox395:setHeight(18);
    obj.imageCheckBox395:setField("Gota3Dis4");
    obj.imageCheckBox395:setName("imageCheckBox395");

    obj.layout419 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout419:setParent(obj.rectangle1);
    obj.layout419:setLeft(495);
    obj.layout419:setTop(732);
    obj.layout419:setWidth(18);
    obj.layout419:setHeight(18);
    obj.layout419:setName("layout419");

    obj.imageCheckBox396 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox396:setParent(obj.layout419);
    obj.imageCheckBox396:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox396:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox396:setWidth(18);
    obj.imageCheckBox396:setHeight(18);
    obj.imageCheckBox396:setField("Gota4Dis4");
    obj.imageCheckBox396:setName("imageCheckBox396");

    obj.layout420 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout420:setParent(obj.rectangle1);
    obj.layout420:setLeft(509);
    obj.layout420:setTop(732);
    obj.layout420:setWidth(18);
    obj.layout420:setHeight(18);
    obj.layout420:setName("layout420");

    obj.imageCheckBox397 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox397:setParent(obj.layout420);
    obj.imageCheckBox397:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox397:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox397:setWidth(18);
    obj.imageCheckBox397:setHeight(18);
    obj.imageCheckBox397:setField("Gota5Dis4");
    obj.imageCheckBox397:setName("imageCheckBox397");

    obj.layout421 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout421:setParent(obj.rectangle1);
    obj.layout421:setLeft(523);
    obj.layout421:setTop(732);
    obj.layout421:setWidth(18);
    obj.layout421:setHeight(18);
    obj.layout421:setName("layout421");

    obj.imageCheckBox398 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox398:setParent(obj.layout421);
    obj.imageCheckBox398:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox398:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox398:setWidth(18);
    obj.imageCheckBox398:setHeight(18);
    obj.imageCheckBox398:setField("Gota6Dis4");
    obj.imageCheckBox398:setName("imageCheckBox398");

    obj.layout422 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout422:setParent(obj.rectangle1);
    obj.layout422:setLeft(537);
    obj.layout422:setTop(732);
    obj.layout422:setWidth(18);
    obj.layout422:setHeight(18);
    obj.layout422:setName("layout422");

    obj.imageCheckBox399 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox399:setParent(obj.layout422);
    obj.imageCheckBox399:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox399:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox399:setWidth(18);
    obj.imageCheckBox399:setHeight(18);
    obj.imageCheckBox399:setField("Gota7Dis4");
    obj.imageCheckBox399:setName("imageCheckBox399");

    obj.layout423 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout423:setParent(obj.rectangle1);
    obj.layout423:setLeft(551);
    obj.layout423:setTop(732);
    obj.layout423:setWidth(18);
    obj.layout423:setHeight(18);
    obj.layout423:setName("layout423");

    obj.imageCheckBox400 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox400:setParent(obj.layout423);
    obj.imageCheckBox400:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox400:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox400:setWidth(18);
    obj.imageCheckBox400:setHeight(18);
    obj.imageCheckBox400:setField("Gota8Dis4");
    obj.imageCheckBox400:setName("imageCheckBox400");

    obj.layout424 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout424:setParent(obj.rectangle1);
    obj.layout424:setLeft(453);
    obj.layout424:setTop(754);
    obj.layout424:setWidth(18);
    obj.layout424:setHeight(18);
    obj.layout424:setName("layout424");

    obj.imageCheckBox401 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox401:setParent(obj.layout424);
    obj.imageCheckBox401:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox401:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox401:setWidth(18);
    obj.imageCheckBox401:setHeight(18);
    obj.imageCheckBox401:setField("Gota1Dis5");
    obj.imageCheckBox401:setName("imageCheckBox401");

    obj.layout425 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout425:setParent(obj.rectangle1);
    obj.layout425:setLeft(467);
    obj.layout425:setTop(754);
    obj.layout425:setWidth(18);
    obj.layout425:setHeight(18);
    obj.layout425:setName("layout425");

    obj.imageCheckBox402 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox402:setParent(obj.layout425);
    obj.imageCheckBox402:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox402:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox402:setWidth(18);
    obj.imageCheckBox402:setHeight(18);
    obj.imageCheckBox402:setField("Gota2Dis5");
    obj.imageCheckBox402:setName("imageCheckBox402");

    obj.layout426 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout426:setParent(obj.rectangle1);
    obj.layout426:setLeft(481);
    obj.layout426:setTop(754);
    obj.layout426:setWidth(18);
    obj.layout426:setHeight(18);
    obj.layout426:setName("layout426");

    obj.imageCheckBox403 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox403:setParent(obj.layout426);
    obj.imageCheckBox403:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox403:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox403:setWidth(18);
    obj.imageCheckBox403:setHeight(18);
    obj.imageCheckBox403:setField("Gota3Dis5");
    obj.imageCheckBox403:setName("imageCheckBox403");

    obj.layout427 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout427:setParent(obj.rectangle1);
    obj.layout427:setLeft(495);
    obj.layout427:setTop(754);
    obj.layout427:setWidth(18);
    obj.layout427:setHeight(18);
    obj.layout427:setName("layout427");

    obj.imageCheckBox404 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox404:setParent(obj.layout427);
    obj.imageCheckBox404:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox404:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox404:setWidth(18);
    obj.imageCheckBox404:setHeight(18);
    obj.imageCheckBox404:setField("Gota4Dis5");
    obj.imageCheckBox404:setName("imageCheckBox404");

    obj.layout428 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout428:setParent(obj.rectangle1);
    obj.layout428:setLeft(509);
    obj.layout428:setTop(754);
    obj.layout428:setWidth(18);
    obj.layout428:setHeight(18);
    obj.layout428:setName("layout428");

    obj.imageCheckBox405 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox405:setParent(obj.layout428);
    obj.imageCheckBox405:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox405:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox405:setWidth(18);
    obj.imageCheckBox405:setHeight(18);
    obj.imageCheckBox405:setField("Gota5Dis5");
    obj.imageCheckBox405:setName("imageCheckBox405");

    obj.layout429 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout429:setParent(obj.rectangle1);
    obj.layout429:setLeft(523);
    obj.layout429:setTop(754);
    obj.layout429:setWidth(18);
    obj.layout429:setHeight(18);
    obj.layout429:setName("layout429");

    obj.imageCheckBox406 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox406:setParent(obj.layout429);
    obj.imageCheckBox406:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox406:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox406:setWidth(18);
    obj.imageCheckBox406:setHeight(18);
    obj.imageCheckBox406:setField("Gota6Dis5");
    obj.imageCheckBox406:setName("imageCheckBox406");

    obj.layout430 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout430:setParent(obj.rectangle1);
    obj.layout430:setLeft(537);
    obj.layout430:setTop(754);
    obj.layout430:setWidth(18);
    obj.layout430:setHeight(18);
    obj.layout430:setName("layout430");

    obj.imageCheckBox407 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox407:setParent(obj.layout430);
    obj.imageCheckBox407:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox407:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox407:setWidth(18);
    obj.imageCheckBox407:setHeight(18);
    obj.imageCheckBox407:setField("Gota7Dis5");
    obj.imageCheckBox407:setName("imageCheckBox407");

    obj.layout431 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout431:setParent(obj.rectangle1);
    obj.layout431:setLeft(551);
    obj.layout431:setTop(754);
    obj.layout431:setWidth(18);
    obj.layout431:setHeight(18);
    obj.layout431:setName("layout431");

    obj.imageCheckBox408 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox408:setParent(obj.layout431);
    obj.imageCheckBox408:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox408:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox408:setWidth(18);
    obj.imageCheckBox408:setHeight(18);
    obj.imageCheckBox408:setField("Gota8Dis5");
    obj.imageCheckBox408:setName("imageCheckBox408");

    obj.layout432 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout432:setParent(obj.rectangle1);
    obj.layout432:setLeft(453);
    obj.layout432:setTop(776);
    obj.layout432:setWidth(18);
    obj.layout432:setHeight(18);
    obj.layout432:setName("layout432");

    obj.imageCheckBox409 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox409:setParent(obj.layout432);
    obj.imageCheckBox409:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox409:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox409:setWidth(18);
    obj.imageCheckBox409:setHeight(18);
    obj.imageCheckBox409:setField("Gota1Dis6");
    obj.imageCheckBox409:setName("imageCheckBox409");

    obj.layout433 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout433:setParent(obj.rectangle1);
    obj.layout433:setLeft(467);
    obj.layout433:setTop(776);
    obj.layout433:setWidth(18);
    obj.layout433:setHeight(18);
    obj.layout433:setName("layout433");

    obj.imageCheckBox410 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox410:setParent(obj.layout433);
    obj.imageCheckBox410:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox410:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox410:setWidth(18);
    obj.imageCheckBox410:setHeight(18);
    obj.imageCheckBox410:setField("Gota2Dis6");
    obj.imageCheckBox410:setName("imageCheckBox410");

    obj.layout434 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout434:setParent(obj.rectangle1);
    obj.layout434:setLeft(481);
    obj.layout434:setTop(776);
    obj.layout434:setWidth(18);
    obj.layout434:setHeight(18);
    obj.layout434:setName("layout434");

    obj.imageCheckBox411 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox411:setParent(obj.layout434);
    obj.imageCheckBox411:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox411:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox411:setWidth(18);
    obj.imageCheckBox411:setHeight(18);
    obj.imageCheckBox411:setField("Gota3Dis6");
    obj.imageCheckBox411:setName("imageCheckBox411");

    obj.layout435 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout435:setParent(obj.rectangle1);
    obj.layout435:setLeft(495);
    obj.layout435:setTop(776);
    obj.layout435:setWidth(18);
    obj.layout435:setHeight(18);
    obj.layout435:setName("layout435");

    obj.imageCheckBox412 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox412:setParent(obj.layout435);
    obj.imageCheckBox412:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox412:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox412:setWidth(18);
    obj.imageCheckBox412:setHeight(18);
    obj.imageCheckBox412:setField("Gota4Dis6");
    obj.imageCheckBox412:setName("imageCheckBox412");

    obj.layout436 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout436:setParent(obj.rectangle1);
    obj.layout436:setLeft(509);
    obj.layout436:setTop(776);
    obj.layout436:setWidth(18);
    obj.layout436:setHeight(18);
    obj.layout436:setName("layout436");

    obj.imageCheckBox413 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox413:setParent(obj.layout436);
    obj.imageCheckBox413:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox413:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox413:setWidth(18);
    obj.imageCheckBox413:setHeight(18);
    obj.imageCheckBox413:setField("Gota5Dis6");
    obj.imageCheckBox413:setName("imageCheckBox413");

    obj.layout437 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout437:setParent(obj.rectangle1);
    obj.layout437:setLeft(523);
    obj.layout437:setTop(776);
    obj.layout437:setWidth(18);
    obj.layout437:setHeight(18);
    obj.layout437:setName("layout437");

    obj.imageCheckBox414 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox414:setParent(obj.layout437);
    obj.imageCheckBox414:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox414:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox414:setWidth(18);
    obj.imageCheckBox414:setHeight(18);
    obj.imageCheckBox414:setField("Gota6Dis6");
    obj.imageCheckBox414:setName("imageCheckBox414");

    obj.layout438 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout438:setParent(obj.rectangle1);
    obj.layout438:setLeft(537);
    obj.layout438:setTop(776);
    obj.layout438:setWidth(18);
    obj.layout438:setHeight(18);
    obj.layout438:setName("layout438");

    obj.imageCheckBox415 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox415:setParent(obj.layout438);
    obj.imageCheckBox415:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox415:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox415:setWidth(18);
    obj.imageCheckBox415:setHeight(18);
    obj.imageCheckBox415:setField("Gota7Dis6");
    obj.imageCheckBox415:setName("imageCheckBox415");

    obj.layout439 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout439:setParent(obj.rectangle1);
    obj.layout439:setLeft(551);
    obj.layout439:setTop(776);
    obj.layout439:setWidth(18);
    obj.layout439:setHeight(18);
    obj.layout439:setName("layout439");

    obj.imageCheckBox416 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox416:setParent(obj.layout439);
    obj.imageCheckBox416:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox416:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox416:setWidth(18);
    obj.imageCheckBox416:setHeight(18);
    obj.imageCheckBox416:setField("Gota8Dis6");
    obj.imageCheckBox416:setName("imageCheckBox416");

    obj.layout440 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout440:setParent(obj.rectangle1);
    obj.layout440:setLeft(453);
    obj.layout440:setTop(798);
    obj.layout440:setWidth(18);
    obj.layout440:setHeight(18);
    obj.layout440:setName("layout440");

    obj.imageCheckBox417 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox417:setParent(obj.layout440);
    obj.imageCheckBox417:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox417:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox417:setWidth(18);
    obj.imageCheckBox417:setHeight(18);
    obj.imageCheckBox417:setField("Gota1Dis7");
    obj.imageCheckBox417:setName("imageCheckBox417");

    obj.layout441 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout441:setParent(obj.rectangle1);
    obj.layout441:setLeft(467);
    obj.layout441:setTop(798);
    obj.layout441:setWidth(18);
    obj.layout441:setHeight(18);
    obj.layout441:setName("layout441");

    obj.imageCheckBox418 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox418:setParent(obj.layout441);
    obj.imageCheckBox418:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox418:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox418:setWidth(18);
    obj.imageCheckBox418:setHeight(18);
    obj.imageCheckBox418:setField("Gota2Dis7");
    obj.imageCheckBox418:setName("imageCheckBox418");

    obj.layout442 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout442:setParent(obj.rectangle1);
    obj.layout442:setLeft(481);
    obj.layout442:setTop(798);
    obj.layout442:setWidth(18);
    obj.layout442:setHeight(18);
    obj.layout442:setName("layout442");

    obj.imageCheckBox419 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox419:setParent(obj.layout442);
    obj.imageCheckBox419:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox419:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox419:setWidth(18);
    obj.imageCheckBox419:setHeight(18);
    obj.imageCheckBox419:setField("Gota3Dis7");
    obj.imageCheckBox419:setName("imageCheckBox419");

    obj.layout443 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout443:setParent(obj.rectangle1);
    obj.layout443:setLeft(495);
    obj.layout443:setTop(798);
    obj.layout443:setWidth(18);
    obj.layout443:setHeight(18);
    obj.layout443:setName("layout443");

    obj.imageCheckBox420 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox420:setParent(obj.layout443);
    obj.imageCheckBox420:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox420:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox420:setWidth(18);
    obj.imageCheckBox420:setHeight(18);
    obj.imageCheckBox420:setField("Gota4Dis7");
    obj.imageCheckBox420:setName("imageCheckBox420");

    obj.layout444 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout444:setParent(obj.rectangle1);
    obj.layout444:setLeft(509);
    obj.layout444:setTop(798);
    obj.layout444:setWidth(18);
    obj.layout444:setHeight(18);
    obj.layout444:setName("layout444");

    obj.imageCheckBox421 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox421:setParent(obj.layout444);
    obj.imageCheckBox421:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox421:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox421:setWidth(18);
    obj.imageCheckBox421:setHeight(18);
    obj.imageCheckBox421:setField("Gota5Dis7");
    obj.imageCheckBox421:setName("imageCheckBox421");

    obj.layout445 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout445:setParent(obj.rectangle1);
    obj.layout445:setLeft(523);
    obj.layout445:setTop(798);
    obj.layout445:setWidth(18);
    obj.layout445:setHeight(18);
    obj.layout445:setName("layout445");

    obj.imageCheckBox422 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox422:setParent(obj.layout445);
    obj.imageCheckBox422:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox422:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox422:setWidth(18);
    obj.imageCheckBox422:setHeight(18);
    obj.imageCheckBox422:setField("Gota6Dis7");
    obj.imageCheckBox422:setName("imageCheckBox422");

    obj.layout446 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout446:setParent(obj.rectangle1);
    obj.layout446:setLeft(537);
    obj.layout446:setTop(798);
    obj.layout446:setWidth(18);
    obj.layout446:setHeight(18);
    obj.layout446:setName("layout446");

    obj.imageCheckBox423 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox423:setParent(obj.layout446);
    obj.imageCheckBox423:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox423:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox423:setWidth(18);
    obj.imageCheckBox423:setHeight(18);
    obj.imageCheckBox423:setField("Gota7Dis7");
    obj.imageCheckBox423:setName("imageCheckBox423");

    obj.layout447 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout447:setParent(obj.rectangle1);
    obj.layout447:setLeft(551);
    obj.layout447:setTop(798);
    obj.layout447:setWidth(18);
    obj.layout447:setHeight(18);
    obj.layout447:setName("layout447");

    obj.imageCheckBox424 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox424:setParent(obj.layout447);
    obj.imageCheckBox424:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox424:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox424:setWidth(18);
    obj.imageCheckBox424:setHeight(18);
    obj.imageCheckBox424:setField("Gota8Dis7");
    obj.imageCheckBox424:setName("imageCheckBox424");

    obj.layout448 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout448:setParent(obj.rectangle1);
    obj.layout448:setLeft(728);
    obj.layout448:setTop(666);
    obj.layout448:setWidth(18);
    obj.layout448:setHeight(18);
    obj.layout448:setName("layout448");

    obj.imageCheckBox425 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox425:setParent(obj.layout448);
    obj.imageCheckBox425:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox425:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox425:setWidth(18);
    obj.imageCheckBox425:setHeight(18);
    obj.imageCheckBox425:setField("Gota1CC");
    obj.imageCheckBox425:setName("imageCheckBox425");

    obj.layout449 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout449:setParent(obj.rectangle1);
    obj.layout449:setLeft(742);
    obj.layout449:setTop(666);
    obj.layout449:setWidth(18);
    obj.layout449:setHeight(18);
    obj.layout449:setName("layout449");

    obj.imageCheckBox426 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox426:setParent(obj.layout449);
    obj.imageCheckBox426:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox426:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox426:setWidth(18);
    obj.imageCheckBox426:setHeight(18);
    obj.imageCheckBox426:setField("Gota2CC");
    obj.imageCheckBox426:setName("imageCheckBox426");

    obj.layout450 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout450:setParent(obj.rectangle1);
    obj.layout450:setLeft(756);
    obj.layout450:setTop(666);
    obj.layout450:setWidth(18);
    obj.layout450:setHeight(18);
    obj.layout450:setName("layout450");

    obj.imageCheckBox427 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox427:setParent(obj.layout450);
    obj.imageCheckBox427:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox427:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox427:setWidth(18);
    obj.imageCheckBox427:setHeight(18);
    obj.imageCheckBox427:setField("Gota3CC");
    obj.imageCheckBox427:setName("imageCheckBox427");

    obj.layout451 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout451:setParent(obj.rectangle1);
    obj.layout451:setLeft(770);
    obj.layout451:setTop(666);
    obj.layout451:setWidth(18);
    obj.layout451:setHeight(18);
    obj.layout451:setName("layout451");

    obj.imageCheckBox428 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox428:setParent(obj.layout451);
    obj.imageCheckBox428:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox428:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox428:setWidth(18);
    obj.imageCheckBox428:setHeight(18);
    obj.imageCheckBox428:setField("Gota4CC");
    obj.imageCheckBox428:setName("imageCheckBox428");

    obj.layout452 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout452:setParent(obj.rectangle1);
    obj.layout452:setLeft(784);
    obj.layout452:setTop(666);
    obj.layout452:setWidth(18);
    obj.layout452:setHeight(18);
    obj.layout452:setName("layout452");

    obj.imageCheckBox429 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox429:setParent(obj.layout452);
    obj.imageCheckBox429:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox429:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox429:setWidth(18);
    obj.imageCheckBox429:setHeight(18);
    obj.imageCheckBox429:setField("Gota5CC");
    obj.imageCheckBox429:setName("imageCheckBox429");

    obj.layout453 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout453:setParent(obj.rectangle1);
    obj.layout453:setLeft(728);
    obj.layout453:setTop(729);
    obj.layout453:setWidth(18);
    obj.layout453:setHeight(18);
    obj.layout453:setName("layout453");

    obj.imageCheckBox430 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox430:setParent(obj.layout453);
    obj.imageCheckBox430:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox430:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox430:setWidth(18);
    obj.imageCheckBox430:setHeight(18);
    obj.imageCheckBox430:setField("Gota1AI");
    obj.imageCheckBox430:setName("imageCheckBox430");

    obj.layout454 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout454:setParent(obj.rectangle1);
    obj.layout454:setLeft(742);
    obj.layout454:setTop(729);
    obj.layout454:setWidth(18);
    obj.layout454:setHeight(18);
    obj.layout454:setName("layout454");

    obj.imageCheckBox431 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox431:setParent(obj.layout454);
    obj.imageCheckBox431:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox431:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox431:setWidth(18);
    obj.imageCheckBox431:setHeight(18);
    obj.imageCheckBox431:setField("Gota2AI");
    obj.imageCheckBox431:setName("imageCheckBox431");

    obj.layout455 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout455:setParent(obj.rectangle1);
    obj.layout455:setLeft(756);
    obj.layout455:setTop(729);
    obj.layout455:setWidth(18);
    obj.layout455:setHeight(18);
    obj.layout455:setName("layout455");

    obj.imageCheckBox432 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox432:setParent(obj.layout455);
    obj.imageCheckBox432:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox432:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox432:setWidth(18);
    obj.imageCheckBox432:setHeight(18);
    obj.imageCheckBox432:setField("Gota3AI");
    obj.imageCheckBox432:setName("imageCheckBox432");

    obj.layout456 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout456:setParent(obj.rectangle1);
    obj.layout456:setLeft(770);
    obj.layout456:setTop(729);
    obj.layout456:setWidth(18);
    obj.layout456:setHeight(18);
    obj.layout456:setName("layout456");

    obj.imageCheckBox433 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox433:setParent(obj.layout456);
    obj.imageCheckBox433:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox433:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox433:setWidth(18);
    obj.imageCheckBox433:setHeight(18);
    obj.imageCheckBox433:setField("Gota4AI");
    obj.imageCheckBox433:setName("imageCheckBox433");

    obj.layout457 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout457:setParent(obj.rectangle1);
    obj.layout457:setLeft(784);
    obj.layout457:setTop(729);
    obj.layout457:setWidth(18);
    obj.layout457:setHeight(18);
    obj.layout457:setName("layout457");

    obj.imageCheckBox434 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox434:setParent(obj.layout457);
    obj.imageCheckBox434:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox434:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox434:setWidth(18);
    obj.imageCheckBox434:setHeight(18);
    obj.imageCheckBox434:setField("Gota5AI");
    obj.imageCheckBox434:setName("imageCheckBox434");

    obj.layout458 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout458:setParent(obj.rectangle1);
    obj.layout458:setLeft(728);
    obj.layout458:setTop(794);
    obj.layout458:setWidth(18);
    obj.layout458:setHeight(18);
    obj.layout458:setName("layout458");

    obj.imageCheckBox435 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox435:setParent(obj.layout458);
    obj.imageCheckBox435:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox435:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox435:setWidth(18);
    obj.imageCheckBox435:setHeight(18);
    obj.imageCheckBox435:setField("Gota1Cor");
    obj.imageCheckBox435:setName("imageCheckBox435");

    obj.layout459 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout459:setParent(obj.rectangle1);
    obj.layout459:setLeft(742);
    obj.layout459:setTop(794);
    obj.layout459:setWidth(18);
    obj.layout459:setHeight(18);
    obj.layout459:setName("layout459");

    obj.imageCheckBox436 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox436:setParent(obj.layout459);
    obj.imageCheckBox436:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox436:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox436:setWidth(18);
    obj.imageCheckBox436:setHeight(18);
    obj.imageCheckBox436:setField("Gota2Cor");
    obj.imageCheckBox436:setName("imageCheckBox436");

    obj.layout460 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout460:setParent(obj.rectangle1);
    obj.layout460:setLeft(756);
    obj.layout460:setTop(794);
    obj.layout460:setWidth(18);
    obj.layout460:setHeight(18);
    obj.layout460:setName("layout460");

    obj.imageCheckBox437 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox437:setParent(obj.layout460);
    obj.imageCheckBox437:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox437:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox437:setWidth(18);
    obj.imageCheckBox437:setHeight(18);
    obj.imageCheckBox437:setField("Gota3Cor");
    obj.imageCheckBox437:setName("imageCheckBox437");

    obj.layout461 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout461:setParent(obj.rectangle1);
    obj.layout461:setLeft(770);
    obj.layout461:setTop(794);
    obj.layout461:setWidth(18);
    obj.layout461:setHeight(18);
    obj.layout461:setName("layout461");

    obj.imageCheckBox438 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox438:setParent(obj.layout461);
    obj.imageCheckBox438:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox438:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox438:setWidth(18);
    obj.imageCheckBox438:setHeight(18);
    obj.imageCheckBox438:setField("Gota4Cor");
    obj.imageCheckBox438:setName("imageCheckBox438");

    obj.layout462 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout462:setParent(obj.rectangle1);
    obj.layout462:setLeft(784);
    obj.layout462:setTop(794);
    obj.layout462:setWidth(18);
    obj.layout462:setHeight(18);
    obj.layout462:setName("layout462");

    obj.imageCheckBox439 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox439:setParent(obj.layout462);
    obj.imageCheckBox439:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox439:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox439:setWidth(18);
    obj.imageCheckBox439:setHeight(18);
    obj.imageCheckBox439:setField("Gota5Cor");
    obj.imageCheckBox439:setName("imageCheckBox439");

    obj.layout463 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout463:setParent(obj.rectangle1);
    obj.layout463:setLeft(82);
    obj.layout463:setTop(866);
    obj.layout463:setWidth(225);
    obj.layout463:setHeight(260);
    obj.layout463:setName("layout463");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout463);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(225);
    obj.textEditor1:setHeight(260);
    obj.textEditor1:setField("QD");
    obj.textEditor1:setName("textEditor1");

    obj.layout464 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout464:setParent(obj.rectangle1);
    obj.layout464:setLeft(323);
    obj.layout464:setTop(861);
    obj.layout464:setWidth(225);
    obj.layout464:setHeight(30);
    obj.layout464:setName("layout464");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout464);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(16);
    obj.edit24:setFontColor("#ffffff");
    obj.edit24:setHorzTextAlign("leading");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(225);
    obj.edit24:setHeight(30);
    obj.edit24:setField("HTL1");
    obj.edit24:setName("edit24");

    obj.layout465 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout465:setParent(obj.rectangle1);
    obj.layout465:setLeft(321);
    obj.layout465:setTop(894);
    obj.layout465:setWidth(18);
    obj.layout465:setHeight(18);
    obj.layout465:setName("layout465");

    obj.imageCheckBox440 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox440:setParent(obj.layout465);
    obj.imageCheckBox440:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox440:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox440:setWidth(18);
    obj.imageCheckBox440:setHeight(18);
    obj.imageCheckBox440:setField("Gota1HT");
    obj.imageCheckBox440:setName("imageCheckBox440");

    obj.layout466 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout466:setParent(obj.rectangle1);
    obj.layout466:setLeft(344);
    obj.layout466:setTop(894);
    obj.layout466:setWidth(18);
    obj.layout466:setHeight(18);
    obj.layout466:setName("layout466");

    obj.imageCheckBox441 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox441:setParent(obj.layout466);
    obj.imageCheckBox441:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox441:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox441:setWidth(18);
    obj.imageCheckBox441:setHeight(18);
    obj.imageCheckBox441:setField("Gota2HT");
    obj.imageCheckBox441:setName("imageCheckBox441");

    obj.layout467 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout467:setParent(obj.rectangle1);
    obj.layout467:setLeft(368);
    obj.layout467:setTop(894);
    obj.layout467:setWidth(18);
    obj.layout467:setHeight(18);
    obj.layout467:setName("layout467");

    obj.imageCheckBox442 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox442:setParent(obj.layout467);
    obj.imageCheckBox442:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox442:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox442:setWidth(18);
    obj.imageCheckBox442:setHeight(18);
    obj.imageCheckBox442:setField("Gota3HT");
    obj.imageCheckBox442:setName("imageCheckBox442");

    obj.layout468 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout468:setParent(obj.rectangle1);
    obj.layout468:setLeft(392);
    obj.layout468:setTop(894);
    obj.layout468:setWidth(18);
    obj.layout468:setHeight(18);
    obj.layout468:setName("layout468");

    obj.imageCheckBox443 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox443:setParent(obj.layout468);
    obj.imageCheckBox443:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox443:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox443:setWidth(18);
    obj.imageCheckBox443:setHeight(18);
    obj.imageCheckBox443:setField("Gota4HT");
    obj.imageCheckBox443:setName("imageCheckBox443");

    obj.layout469 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout469:setParent(obj.rectangle1);
    obj.layout469:setLeft(415);
    obj.layout469:setTop(894);
    obj.layout469:setWidth(18);
    obj.layout469:setHeight(18);
    obj.layout469:setName("layout469");

    obj.imageCheckBox444 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox444:setParent(obj.layout469);
    obj.imageCheckBox444:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox444:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox444:setWidth(18);
    obj.imageCheckBox444:setHeight(18);
    obj.imageCheckBox444:setField("Gota5HT");
    obj.imageCheckBox444:setName("imageCheckBox444");

    obj.layout470 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout470:setParent(obj.rectangle1);
    obj.layout470:setLeft(438);
    obj.layout470:setTop(894);
    obj.layout470:setWidth(18);
    obj.layout470:setHeight(18);
    obj.layout470:setName("layout470");

    obj.imageCheckBox445 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox445:setParent(obj.layout470);
    obj.imageCheckBox445:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox445:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox445:setWidth(18);
    obj.imageCheckBox445:setHeight(18);
    obj.imageCheckBox445:setField("Gota6HT");
    obj.imageCheckBox445:setName("imageCheckBox445");

    obj.layout471 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout471:setParent(obj.rectangle1);
    obj.layout471:setLeft(463);
    obj.layout471:setTop(894);
    obj.layout471:setWidth(18);
    obj.layout471:setHeight(18);
    obj.layout471:setName("layout471");

    obj.imageCheckBox446 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox446:setParent(obj.layout471);
    obj.imageCheckBox446:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox446:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox446:setWidth(18);
    obj.imageCheckBox446:setHeight(18);
    obj.imageCheckBox446:setField("Gota7HT");
    obj.imageCheckBox446:setName("imageCheckBox446");

    obj.layout472 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout472:setParent(obj.rectangle1);
    obj.layout472:setLeft(486);
    obj.layout472:setTop(894);
    obj.layout472:setWidth(18);
    obj.layout472:setHeight(18);
    obj.layout472:setName("layout472");

    obj.imageCheckBox447 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox447:setParent(obj.layout472);
    obj.imageCheckBox447:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox447:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox447:setWidth(18);
    obj.imageCheckBox447:setHeight(18);
    obj.imageCheckBox447:setField("Gota8HT");
    obj.imageCheckBox447:setName("imageCheckBox447");

    obj.layout473 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout473:setParent(obj.rectangle1);
    obj.layout473:setLeft(511);
    obj.layout473:setTop(894);
    obj.layout473:setWidth(18);
    obj.layout473:setHeight(18);
    obj.layout473:setName("layout473");

    obj.imageCheckBox448 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox448:setParent(obj.layout473);
    obj.imageCheckBox448:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox448:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox448:setWidth(18);
    obj.imageCheckBox448:setHeight(18);
    obj.imageCheckBox448:setField("Gota9HT");
    obj.imageCheckBox448:setName("imageCheckBox448");

    obj.layout474 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout474:setParent(obj.rectangle1);
    obj.layout474:setLeft(535);
    obj.layout474:setTop(894);
    obj.layout474:setWidth(18);
    obj.layout474:setHeight(18);
    obj.layout474:setName("layout474");

    obj.imageCheckBox449 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox449:setParent(obj.layout474);
    obj.imageCheckBox449:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox449:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox449:setWidth(18);
    obj.imageCheckBox449:setHeight(18);
    obj.imageCheckBox449:setField("Gota10HT");
    obj.imageCheckBox449:setName("imageCheckBox449");

    obj.layout475 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout475:setParent(obj.rectangle1);
    obj.layout475:setLeft(321);
    obj.layout475:setTop(954);
    obj.layout475:setWidth(18);
    obj.layout475:setHeight(18);
    obj.layout475:setName("layout475");

    obj.imageCheckBox450 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox450:setParent(obj.layout475);
    obj.imageCheckBox450:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox450:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox450:setWidth(18);
    obj.imageCheckBox450:setHeight(18);
    obj.imageCheckBox450:setField("Gota1FDV");
    obj.imageCheckBox450:setName("imageCheckBox450");

    obj.layout476 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout476:setParent(obj.rectangle1);
    obj.layout476:setLeft(344);
    obj.layout476:setTop(954);
    obj.layout476:setWidth(18);
    obj.layout476:setHeight(18);
    obj.layout476:setName("layout476");

    obj.imageCheckBox451 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox451:setParent(obj.layout476);
    obj.imageCheckBox451:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox451:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox451:setWidth(18);
    obj.imageCheckBox451:setHeight(18);
    obj.imageCheckBox451:setField("Gota2FDV");
    obj.imageCheckBox451:setName("imageCheckBox451");

    obj.layout477 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout477:setParent(obj.rectangle1);
    obj.layout477:setLeft(368);
    obj.layout477:setTop(954);
    obj.layout477:setWidth(18);
    obj.layout477:setHeight(18);
    obj.layout477:setName("layout477");

    obj.imageCheckBox452 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox452:setParent(obj.layout477);
    obj.imageCheckBox452:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox452:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox452:setWidth(18);
    obj.imageCheckBox452:setHeight(18);
    obj.imageCheckBox452:setField("Gota3FDV");
    obj.imageCheckBox452:setName("imageCheckBox452");

    obj.layout478 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout478:setParent(obj.rectangle1);
    obj.layout478:setLeft(392);
    obj.layout478:setTop(954);
    obj.layout478:setWidth(18);
    obj.layout478:setHeight(18);
    obj.layout478:setName("layout478");

    obj.imageCheckBox453 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox453:setParent(obj.layout478);
    obj.imageCheckBox453:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox453:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox453:setWidth(18);
    obj.imageCheckBox453:setHeight(18);
    obj.imageCheckBox453:setField("Gota4FDV");
    obj.imageCheckBox453:setName("imageCheckBox453");

    obj.layout479 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout479:setParent(obj.rectangle1);
    obj.layout479:setLeft(416);
    obj.layout479:setTop(954);
    obj.layout479:setWidth(18);
    obj.layout479:setHeight(18);
    obj.layout479:setName("layout479");

    obj.imageCheckBox454 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox454:setParent(obj.layout479);
    obj.imageCheckBox454:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox454:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox454:setWidth(18);
    obj.imageCheckBox454:setHeight(18);
    obj.imageCheckBox454:setField("Gota5FDV");
    obj.imageCheckBox454:setName("imageCheckBox454");

    obj.layout480 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout480:setParent(obj.rectangle1);
    obj.layout480:setLeft(438);
    obj.layout480:setTop(954);
    obj.layout480:setWidth(18);
    obj.layout480:setHeight(18);
    obj.layout480:setName("layout480");

    obj.imageCheckBox455 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox455:setParent(obj.layout480);
    obj.imageCheckBox455:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox455:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox455:setWidth(18);
    obj.imageCheckBox455:setHeight(18);
    obj.imageCheckBox455:setField("Gota6FDV");
    obj.imageCheckBox455:setName("imageCheckBox455");

    obj.layout481 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout481:setParent(obj.rectangle1);
    obj.layout481:setLeft(463);
    obj.layout481:setTop(954);
    obj.layout481:setWidth(18);
    obj.layout481:setHeight(18);
    obj.layout481:setName("layout481");

    obj.imageCheckBox456 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox456:setParent(obj.layout481);
    obj.imageCheckBox456:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox456:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox456:setWidth(18);
    obj.imageCheckBox456:setHeight(18);
    obj.imageCheckBox456:setField("Gota7FDV");
    obj.imageCheckBox456:setName("imageCheckBox456");

    obj.layout482 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout482:setParent(obj.rectangle1);
    obj.layout482:setLeft(486);
    obj.layout482:setTop(954);
    obj.layout482:setWidth(18);
    obj.layout482:setHeight(18);
    obj.layout482:setName("layout482");

    obj.imageCheckBox457 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox457:setParent(obj.layout482);
    obj.imageCheckBox457:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox457:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox457:setWidth(18);
    obj.imageCheckBox457:setHeight(18);
    obj.imageCheckBox457:setField("Gota8FDV");
    obj.imageCheckBox457:setName("imageCheckBox457");

    obj.layout483 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout483:setParent(obj.rectangle1);
    obj.layout483:setLeft(511);
    obj.layout483:setTop(954);
    obj.layout483:setWidth(18);
    obj.layout483:setHeight(18);
    obj.layout483:setName("layout483");

    obj.imageCheckBox458 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox458:setParent(obj.layout483);
    obj.imageCheckBox458:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox458:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox458:setWidth(18);
    obj.imageCheckBox458:setHeight(18);
    obj.imageCheckBox458:setField("Gota9FDV");
    obj.imageCheckBox458:setName("imageCheckBox458");

    obj.layout484 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout484:setParent(obj.rectangle1);
    obj.layout484:setLeft(535);
    obj.layout484:setTop(954);
    obj.layout484:setWidth(18);
    obj.layout484:setHeight(18);
    obj.layout484:setName("layout484");

    obj.imageCheckBox459 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox459:setParent(obj.layout484);
    obj.imageCheckBox459:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox459:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox459:setWidth(18);
    obj.imageCheckBox459:setHeight(18);
    obj.imageCheckBox459:setField("Gota10FDV");
    obj.imageCheckBox459:setName("imageCheckBox459");

    obj.layout485 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout485:setParent(obj.rectangle1);
    obj.layout485:setLeft(319);
    obj.layout485:setTop(974);
    obj.layout485:setWidth(18);
    obj.layout485:setHeight(18);
    obj.layout485:setName("layout485");

    obj.imageCheckBox460 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox460:setParent(obj.layout485);
    obj.imageCheckBox460:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox460:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox460:setWidth(18);
    obj.imageCheckBox460:setHeight(18);
    obj.imageCheckBox460:setField("SQ1FDV");
    obj.imageCheckBox460:setName("imageCheckBox460");

    obj.layout486 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout486:setParent(obj.rectangle1);
    obj.layout486:setLeft(344);
    obj.layout486:setTop(974);
    obj.layout486:setWidth(18);
    obj.layout486:setHeight(18);
    obj.layout486:setName("layout486");

    obj.imageCheckBox461 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox461:setParent(obj.layout486);
    obj.imageCheckBox461:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox461:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox461:setWidth(18);
    obj.imageCheckBox461:setHeight(18);
    obj.imageCheckBox461:setField("SQ2FDV");
    obj.imageCheckBox461:setName("imageCheckBox461");

    obj.layout487 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout487:setParent(obj.rectangle1);
    obj.layout487:setLeft(368);
    obj.layout487:setTop(974);
    obj.layout487:setWidth(18);
    obj.layout487:setHeight(18);
    obj.layout487:setName("layout487");

    obj.imageCheckBox462 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox462:setParent(obj.layout487);
    obj.imageCheckBox462:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox462:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox462:setWidth(18);
    obj.imageCheckBox462:setHeight(18);
    obj.imageCheckBox462:setField("SQ3FDV");
    obj.imageCheckBox462:setName("imageCheckBox462");

    obj.layout488 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout488:setParent(obj.rectangle1);
    obj.layout488:setLeft(393);
    obj.layout488:setTop(974);
    obj.layout488:setWidth(18);
    obj.layout488:setHeight(18);
    obj.layout488:setName("layout488");

    obj.imageCheckBox463 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox463:setParent(obj.layout488);
    obj.imageCheckBox463:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox463:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox463:setWidth(18);
    obj.imageCheckBox463:setHeight(18);
    obj.imageCheckBox463:setField("SQ4FDV");
    obj.imageCheckBox463:setName("imageCheckBox463");

    obj.layout489 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout489:setParent(obj.rectangle1);
    obj.layout489:setLeft(417);
    obj.layout489:setTop(974);
    obj.layout489:setWidth(18);
    obj.layout489:setHeight(18);
    obj.layout489:setName("layout489");

    obj.imageCheckBox464 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox464:setParent(obj.layout489);
    obj.imageCheckBox464:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox464:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox464:setWidth(18);
    obj.imageCheckBox464:setHeight(18);
    obj.imageCheckBox464:setField("SQ5FDV");
    obj.imageCheckBox464:setName("imageCheckBox464");

    obj.layout490 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout490:setParent(obj.rectangle1);
    obj.layout490:setLeft(440);
    obj.layout490:setTop(974);
    obj.layout490:setWidth(18);
    obj.layout490:setHeight(18);
    obj.layout490:setName("layout490");

    obj.imageCheckBox465 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox465:setParent(obj.layout490);
    obj.imageCheckBox465:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox465:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox465:setWidth(18);
    obj.imageCheckBox465:setHeight(18);
    obj.imageCheckBox465:setField("SQ6FDV");
    obj.imageCheckBox465:setName("imageCheckBox465");

    obj.layout491 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout491:setParent(obj.rectangle1);
    obj.layout491:setLeft(465);
    obj.layout491:setTop(974);
    obj.layout491:setWidth(18);
    obj.layout491:setHeight(18);
    obj.layout491:setName("layout491");

    obj.imageCheckBox466 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox466:setParent(obj.layout491);
    obj.imageCheckBox466:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox466:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox466:setWidth(18);
    obj.imageCheckBox466:setHeight(18);
    obj.imageCheckBox466:setField("SQ7FDV");
    obj.imageCheckBox466:setName("imageCheckBox466");

    obj.layout492 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout492:setParent(obj.rectangle1);
    obj.layout492:setLeft(490);
    obj.layout492:setTop(974);
    obj.layout492:setWidth(18);
    obj.layout492:setHeight(18);
    obj.layout492:setName("layout492");

    obj.imageCheckBox467 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox467:setParent(obj.layout492);
    obj.imageCheckBox467:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox467:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox467:setWidth(18);
    obj.imageCheckBox467:setHeight(18);
    obj.imageCheckBox467:setField("SQ8FDV");
    obj.imageCheckBox467:setName("imageCheckBox467");

    obj.layout493 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout493:setParent(obj.rectangle1);
    obj.layout493:setLeft(513);
    obj.layout493:setTop(974);
    obj.layout493:setWidth(18);
    obj.layout493:setHeight(18);
    obj.layout493:setName("layout493");

    obj.imageCheckBox468 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox468:setParent(obj.layout493);
    obj.imageCheckBox468:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox468:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox468:setWidth(18);
    obj.imageCheckBox468:setHeight(18);
    obj.imageCheckBox468:setField("SQ9FDV");
    obj.imageCheckBox468:setName("imageCheckBox468");

    obj.layout494 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout494:setParent(obj.rectangle1);
    obj.layout494:setLeft(537);
    obj.layout494:setTop(974);
    obj.layout494:setWidth(18);
    obj.layout494:setHeight(18);
    obj.layout494:setName("layout494");

    obj.imageCheckBox469 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox469:setParent(obj.layout494);
    obj.imageCheckBox469:setImageChecked("Vampiro_Drake_Chronicles/images/square_on.png");
    obj.imageCheckBox469:setImageUnchecked("Vampiro_Drake_Chronicles/images/square_off.png");
    obj.imageCheckBox469:setWidth(18);
    obj.imageCheckBox469:setHeight(18);
    obj.imageCheckBox469:setField("SQ10FDV");
    obj.imageCheckBox469:setName("imageCheckBox469");

    obj.layout495 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout495:setParent(obj.rectangle1);
    obj.layout495:setLeft(321);
    obj.layout495:setTop(1037);
    obj.layout495:setWidth(18);
    obj.layout495:setHeight(18);
    obj.layout495:setName("layout495");

    obj.imageCheckBox470 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox470:setParent(obj.layout495);
    obj.imageCheckBox470:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox470:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox470:setWidth(18);
    obj.imageCheckBox470:setHeight(18);
    obj.imageCheckBox470:setField("Gota1PS");
    obj.imageCheckBox470:setName("imageCheckBox470");

    obj.layout496 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout496:setParent(obj.rectangle1);
    obj.layout496:setLeft(344);
    obj.layout496:setTop(1037);
    obj.layout496:setWidth(18);
    obj.layout496:setHeight(18);
    obj.layout496:setName("layout496");

    obj.imageCheckBox471 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox471:setParent(obj.layout496);
    obj.imageCheckBox471:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox471:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox471:setWidth(18);
    obj.imageCheckBox471:setHeight(18);
    obj.imageCheckBox471:setField("Gota2PS");
    obj.imageCheckBox471:setName("imageCheckBox471");

    obj.layout497 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout497:setParent(obj.rectangle1);
    obj.layout497:setLeft(368);
    obj.layout497:setTop(1037);
    obj.layout497:setWidth(18);
    obj.layout497:setHeight(18);
    obj.layout497:setName("layout497");

    obj.imageCheckBox472 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox472:setParent(obj.layout497);
    obj.imageCheckBox472:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox472:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox472:setWidth(18);
    obj.imageCheckBox472:setHeight(18);
    obj.imageCheckBox472:setField("Gota3PS");
    obj.imageCheckBox472:setName("imageCheckBox472");

    obj.layout498 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout498:setParent(obj.rectangle1);
    obj.layout498:setLeft(392);
    obj.layout498:setTop(1037);
    obj.layout498:setWidth(18);
    obj.layout498:setHeight(18);
    obj.layout498:setName("layout498");

    obj.imageCheckBox473 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox473:setParent(obj.layout498);
    obj.imageCheckBox473:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox473:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox473:setWidth(18);
    obj.imageCheckBox473:setHeight(18);
    obj.imageCheckBox473:setField("Gota4PS");
    obj.imageCheckBox473:setName("imageCheckBox473");

    obj.layout499 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout499:setParent(obj.rectangle1);
    obj.layout499:setLeft(416);
    obj.layout499:setTop(1037);
    obj.layout499:setWidth(18);
    obj.layout499:setHeight(18);
    obj.layout499:setName("layout499");

    obj.imageCheckBox474 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox474:setParent(obj.layout499);
    obj.imageCheckBox474:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox474:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox474:setWidth(18);
    obj.imageCheckBox474:setHeight(18);
    obj.imageCheckBox474:setField("Gota5PS");
    obj.imageCheckBox474:setName("imageCheckBox474");

    obj.layout500 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout500:setParent(obj.rectangle1);
    obj.layout500:setLeft(438);
    obj.layout500:setTop(1037);
    obj.layout500:setWidth(18);
    obj.layout500:setHeight(18);
    obj.layout500:setName("layout500");

    obj.imageCheckBox475 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox475:setParent(obj.layout500);
    obj.imageCheckBox475:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox475:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox475:setWidth(18);
    obj.imageCheckBox475:setHeight(18);
    obj.imageCheckBox475:setField("Gota6PS");
    obj.imageCheckBox475:setName("imageCheckBox475");

    obj.layout501 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout501:setParent(obj.rectangle1);
    obj.layout501:setLeft(463);
    obj.layout501:setTop(1037);
    obj.layout501:setWidth(18);
    obj.layout501:setHeight(18);
    obj.layout501:setName("layout501");

    obj.imageCheckBox476 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox476:setParent(obj.layout501);
    obj.imageCheckBox476:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox476:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox476:setWidth(18);
    obj.imageCheckBox476:setHeight(18);
    obj.imageCheckBox476:setField("Gota7PS");
    obj.imageCheckBox476:setName("imageCheckBox476");

    obj.layout502 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout502:setParent(obj.rectangle1);
    obj.layout502:setLeft(486);
    obj.layout502:setTop(1037);
    obj.layout502:setWidth(18);
    obj.layout502:setHeight(18);
    obj.layout502:setName("layout502");

    obj.imageCheckBox477 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox477:setParent(obj.layout502);
    obj.imageCheckBox477:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox477:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox477:setWidth(18);
    obj.imageCheckBox477:setHeight(18);
    obj.imageCheckBox477:setField("Gota8PS");
    obj.imageCheckBox477:setName("imageCheckBox477");

    obj.layout503 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout503:setParent(obj.rectangle1);
    obj.layout503:setLeft(511);
    obj.layout503:setTop(1037);
    obj.layout503:setWidth(18);
    obj.layout503:setHeight(18);
    obj.layout503:setName("layout503");

    obj.imageCheckBox478 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox478:setParent(obj.layout503);
    obj.imageCheckBox478:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox478:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox478:setWidth(18);
    obj.imageCheckBox478:setHeight(18);
    obj.imageCheckBox478:setField("Gota9PS");
    obj.imageCheckBox478:setName("imageCheckBox478");

    obj.layout504 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout504:setParent(obj.rectangle1);
    obj.layout504:setLeft(535);
    obj.layout504:setTop(1037);
    obj.layout504:setWidth(18);
    obj.layout504:setHeight(18);
    obj.layout504:setName("layout504");

    obj.imageCheckBox479 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox479:setParent(obj.layout504);
    obj.imageCheckBox479:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox479:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox479:setWidth(18);
    obj.imageCheckBox479:setHeight(18);
    obj.imageCheckBox479:setField("Gota10PS");
    obj.imageCheckBox479:setName("imageCheckBox479");

    obj.layout505 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout505:setParent(obj.rectangle1);
    obj.layout505:setLeft(321);
    obj.layout505:setTop(1057);
    obj.layout505:setWidth(18);
    obj.layout505:setHeight(18);
    obj.layout505:setName("layout505");

    obj.imageCheckBox480 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox480:setParent(obj.layout505);
    obj.imageCheckBox480:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox480:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox480:setWidth(18);
    obj.imageCheckBox480:setHeight(18);
    obj.imageCheckBox480:setField("Gota11PS");
    obj.imageCheckBox480:setName("imageCheckBox480");

    obj.layout506 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout506:setParent(obj.rectangle1);
    obj.layout506:setLeft(344);
    obj.layout506:setTop(1057);
    obj.layout506:setWidth(18);
    obj.layout506:setHeight(18);
    obj.layout506:setName("layout506");

    obj.imageCheckBox481 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox481:setParent(obj.layout506);
    obj.imageCheckBox481:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox481:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox481:setWidth(18);
    obj.imageCheckBox481:setHeight(18);
    obj.imageCheckBox481:setField("Gota12PS");
    obj.imageCheckBox481:setName("imageCheckBox481");

    obj.layout507 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout507:setParent(obj.rectangle1);
    obj.layout507:setLeft(368);
    obj.layout507:setTop(1057);
    obj.layout507:setWidth(18);
    obj.layout507:setHeight(18);
    obj.layout507:setName("layout507");

    obj.imageCheckBox482 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox482:setParent(obj.layout507);
    obj.imageCheckBox482:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox482:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox482:setWidth(18);
    obj.imageCheckBox482:setHeight(18);
    obj.imageCheckBox482:setField("Gota13PS");
    obj.imageCheckBox482:setName("imageCheckBox482");

    obj.layout508 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout508:setParent(obj.rectangle1);
    obj.layout508:setLeft(392);
    obj.layout508:setTop(1057);
    obj.layout508:setWidth(18);
    obj.layout508:setHeight(18);
    obj.layout508:setName("layout508");

    obj.imageCheckBox483 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox483:setParent(obj.layout508);
    obj.imageCheckBox483:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox483:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox483:setWidth(18);
    obj.imageCheckBox483:setHeight(18);
    obj.imageCheckBox483:setField("Gota14PS");
    obj.imageCheckBox483:setName("imageCheckBox483");

    obj.layout509 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout509:setParent(obj.rectangle1);
    obj.layout509:setLeft(416);
    obj.layout509:setTop(1057);
    obj.layout509:setWidth(18);
    obj.layout509:setHeight(18);
    obj.layout509:setName("layout509");

    obj.imageCheckBox484 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox484:setParent(obj.layout509);
    obj.imageCheckBox484:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox484:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox484:setWidth(18);
    obj.imageCheckBox484:setHeight(18);
    obj.imageCheckBox484:setField("Gota15PS");
    obj.imageCheckBox484:setName("imageCheckBox484");

    obj.layout510 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout510:setParent(obj.rectangle1);
    obj.layout510:setLeft(438);
    obj.layout510:setTop(1057);
    obj.layout510:setWidth(18);
    obj.layout510:setHeight(18);
    obj.layout510:setName("layout510");

    obj.imageCheckBox485 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox485:setParent(obj.layout510);
    obj.imageCheckBox485:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox485:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox485:setWidth(18);
    obj.imageCheckBox485:setHeight(18);
    obj.imageCheckBox485:setField("Gota16PS");
    obj.imageCheckBox485:setName("imageCheckBox485");

    obj.layout511 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout511:setParent(obj.rectangle1);
    obj.layout511:setLeft(463);
    obj.layout511:setTop(1057);
    obj.layout511:setWidth(18);
    obj.layout511:setHeight(18);
    obj.layout511:setName("layout511");

    obj.imageCheckBox486 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox486:setParent(obj.layout511);
    obj.imageCheckBox486:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox486:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox486:setWidth(18);
    obj.imageCheckBox486:setHeight(18);
    obj.imageCheckBox486:setField("Gota17PS");
    obj.imageCheckBox486:setName("imageCheckBox486");

    obj.layout512 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout512:setParent(obj.rectangle1);
    obj.layout512:setLeft(486);
    obj.layout512:setTop(1057);
    obj.layout512:setWidth(18);
    obj.layout512:setHeight(18);
    obj.layout512:setName("layout512");

    obj.imageCheckBox487 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox487:setParent(obj.layout512);
    obj.imageCheckBox487:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox487:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox487:setWidth(18);
    obj.imageCheckBox487:setHeight(18);
    obj.imageCheckBox487:setField("Gota18PS");
    obj.imageCheckBox487:setName("imageCheckBox487");

    obj.layout513 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout513:setParent(obj.rectangle1);
    obj.layout513:setLeft(511);
    obj.layout513:setTop(1057);
    obj.layout513:setWidth(18);
    obj.layout513:setHeight(18);
    obj.layout513:setName("layout513");

    obj.imageCheckBox488 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox488:setParent(obj.layout513);
    obj.imageCheckBox488:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox488:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox488:setWidth(18);
    obj.imageCheckBox488:setHeight(18);
    obj.imageCheckBox488:setField("Gota19PS");
    obj.imageCheckBox488:setName("imageCheckBox488");

    obj.layout514 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout514:setParent(obj.rectangle1);
    obj.layout514:setLeft(535);
    obj.layout514:setTop(1057);
    obj.layout514:setWidth(18);
    obj.layout514:setHeight(18);
    obj.layout514:setName("layout514");

    obj.imageCheckBox489 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox489:setParent(obj.layout514);
    obj.imageCheckBox489:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox489:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox489:setWidth(18);
    obj.imageCheckBox489:setHeight(18);
    obj.imageCheckBox489:setField("Gota20PS");
    obj.imageCheckBox489:setName("imageCheckBox489");

    obj.layout515 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout515:setParent(obj.rectangle1);
    obj.layout515:setLeft(321);
    obj.layout515:setTop(1078);
    obj.layout515:setWidth(18);
    obj.layout515:setHeight(18);
    obj.layout515:setName("layout515");

    obj.imageCheckBox490 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox490:setParent(obj.layout515);
    obj.imageCheckBox490:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox490:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox490:setWidth(18);
    obj.imageCheckBox490:setHeight(18);
    obj.imageCheckBox490:setField("Gota21PS");
    obj.imageCheckBox490:setName("imageCheckBox490");

    obj.layout516 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout516:setParent(obj.rectangle1);
    obj.layout516:setLeft(344);
    obj.layout516:setTop(1078);
    obj.layout516:setWidth(18);
    obj.layout516:setHeight(18);
    obj.layout516:setName("layout516");

    obj.imageCheckBox491 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox491:setParent(obj.layout516);
    obj.imageCheckBox491:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox491:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox491:setWidth(18);
    obj.imageCheckBox491:setHeight(18);
    obj.imageCheckBox491:setField("Gota22PS");
    obj.imageCheckBox491:setName("imageCheckBox491");

    obj.layout517 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout517:setParent(obj.rectangle1);
    obj.layout517:setLeft(368);
    obj.layout517:setTop(1078);
    obj.layout517:setWidth(18);
    obj.layout517:setHeight(18);
    obj.layout517:setName("layout517");

    obj.imageCheckBox492 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox492:setParent(obj.layout517);
    obj.imageCheckBox492:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox492:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox492:setWidth(18);
    obj.imageCheckBox492:setHeight(18);
    obj.imageCheckBox492:setField("Gota23PS");
    obj.imageCheckBox492:setName("imageCheckBox492");

    obj.layout518 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout518:setParent(obj.rectangle1);
    obj.layout518:setLeft(392);
    obj.layout518:setTop(1078);
    obj.layout518:setWidth(18);
    obj.layout518:setHeight(18);
    obj.layout518:setName("layout518");

    obj.imageCheckBox493 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox493:setParent(obj.layout518);
    obj.imageCheckBox493:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox493:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox493:setWidth(18);
    obj.imageCheckBox493:setHeight(18);
    obj.imageCheckBox493:setField("Gota24PS");
    obj.imageCheckBox493:setName("imageCheckBox493");

    obj.layout519 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout519:setParent(obj.rectangle1);
    obj.layout519:setLeft(416);
    obj.layout519:setTop(1078);
    obj.layout519:setWidth(18);
    obj.layout519:setHeight(18);
    obj.layout519:setName("layout519");

    obj.imageCheckBox494 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox494:setParent(obj.layout519);
    obj.imageCheckBox494:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox494:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox494:setWidth(18);
    obj.imageCheckBox494:setHeight(18);
    obj.imageCheckBox494:setField("Gota25PS");
    obj.imageCheckBox494:setName("imageCheckBox494");

    obj.layout520 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout520:setParent(obj.rectangle1);
    obj.layout520:setLeft(438);
    obj.layout520:setTop(1078);
    obj.layout520:setWidth(18);
    obj.layout520:setHeight(18);
    obj.layout520:setName("layout520");

    obj.imageCheckBox495 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox495:setParent(obj.layout520);
    obj.imageCheckBox495:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox495:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox495:setWidth(18);
    obj.imageCheckBox495:setHeight(18);
    obj.imageCheckBox495:setField("Gota26PS");
    obj.imageCheckBox495:setName("imageCheckBox495");

    obj.layout521 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout521:setParent(obj.rectangle1);
    obj.layout521:setLeft(463);
    obj.layout521:setTop(1078);
    obj.layout521:setWidth(18);
    obj.layout521:setHeight(18);
    obj.layout521:setName("layout521");

    obj.imageCheckBox496 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox496:setParent(obj.layout521);
    obj.imageCheckBox496:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox496:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox496:setWidth(18);
    obj.imageCheckBox496:setHeight(18);
    obj.imageCheckBox496:setField("Gota27PS");
    obj.imageCheckBox496:setName("imageCheckBox496");

    obj.layout522 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout522:setParent(obj.rectangle1);
    obj.layout522:setLeft(486);
    obj.layout522:setTop(1078);
    obj.layout522:setWidth(18);
    obj.layout522:setHeight(18);
    obj.layout522:setName("layout522");

    obj.imageCheckBox497 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox497:setParent(obj.layout522);
    obj.imageCheckBox497:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox497:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox497:setWidth(18);
    obj.imageCheckBox497:setHeight(18);
    obj.imageCheckBox497:setField("Gota28PS");
    obj.imageCheckBox497:setName("imageCheckBox497");

    obj.layout523 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout523:setParent(obj.rectangle1);
    obj.layout523:setLeft(511);
    obj.layout523:setTop(1078);
    obj.layout523:setWidth(18);
    obj.layout523:setHeight(18);
    obj.layout523:setName("layout523");

    obj.imageCheckBox498 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox498:setParent(obj.layout523);
    obj.imageCheckBox498:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox498:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox498:setWidth(18);
    obj.imageCheckBox498:setHeight(18);
    obj.imageCheckBox498:setField("Gota29PS");
    obj.imageCheckBox498:setName("imageCheckBox498");

    obj.layout524 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout524:setParent(obj.rectangle1);
    obj.layout524:setLeft(535);
    obj.layout524:setTop(1078);
    obj.layout524:setWidth(18);
    obj.layout524:setHeight(18);
    obj.layout524:setName("layout524");

    obj.imageCheckBox499 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox499:setParent(obj.layout524);
    obj.imageCheckBox499:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox499:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox499:setWidth(18);
    obj.imageCheckBox499:setHeight(18);
    obj.imageCheckBox499:setField("Gota30PS");
    obj.imageCheckBox499:setName("imageCheckBox499");

    obj.layout525 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout525:setParent(obj.rectangle1);
    obj.layout525:setLeft(321);
    obj.layout525:setTop(1099);
    obj.layout525:setWidth(18);
    obj.layout525:setHeight(18);
    obj.layout525:setName("layout525");

    obj.imageCheckBox500 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox500:setParent(obj.layout525);
    obj.imageCheckBox500:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox500:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox500:setWidth(18);
    obj.imageCheckBox500:setHeight(18);
    obj.imageCheckBox500:setField("Gota31PS");
    obj.imageCheckBox500:setName("imageCheckBox500");

    obj.layout526 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout526:setParent(obj.rectangle1);
    obj.layout526:setLeft(344);
    obj.layout526:setTop(1099);
    obj.layout526:setWidth(18);
    obj.layout526:setHeight(18);
    obj.layout526:setName("layout526");

    obj.imageCheckBox501 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox501:setParent(obj.layout526);
    obj.imageCheckBox501:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox501:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox501:setWidth(18);
    obj.imageCheckBox501:setHeight(18);
    obj.imageCheckBox501:setField("Gota32PS");
    obj.imageCheckBox501:setName("imageCheckBox501");

    obj.layout527 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout527:setParent(obj.rectangle1);
    obj.layout527:setLeft(368);
    obj.layout527:setTop(1099);
    obj.layout527:setWidth(18);
    obj.layout527:setHeight(18);
    obj.layout527:setName("layout527");

    obj.imageCheckBox502 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox502:setParent(obj.layout527);
    obj.imageCheckBox502:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox502:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox502:setWidth(18);
    obj.imageCheckBox502:setHeight(18);
    obj.imageCheckBox502:setField("Gota33PS");
    obj.imageCheckBox502:setName("imageCheckBox502");

    obj.layout528 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout528:setParent(obj.rectangle1);
    obj.layout528:setLeft(392);
    obj.layout528:setTop(1099);
    obj.layout528:setWidth(18);
    obj.layout528:setHeight(18);
    obj.layout528:setName("layout528");

    obj.imageCheckBox503 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox503:setParent(obj.layout528);
    obj.imageCheckBox503:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox503:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox503:setWidth(18);
    obj.imageCheckBox503:setHeight(18);
    obj.imageCheckBox503:setField("Gota34PS");
    obj.imageCheckBox503:setName("imageCheckBox503");

    obj.layout529 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout529:setParent(obj.rectangle1);
    obj.layout529:setLeft(416);
    obj.layout529:setTop(1099);
    obj.layout529:setWidth(18);
    obj.layout529:setHeight(18);
    obj.layout529:setName("layout529");

    obj.imageCheckBox504 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox504:setParent(obj.layout529);
    obj.imageCheckBox504:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox504:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox504:setWidth(18);
    obj.imageCheckBox504:setHeight(18);
    obj.imageCheckBox504:setField("Gota35PS");
    obj.imageCheckBox504:setName("imageCheckBox504");

    obj.layout530 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout530:setParent(obj.rectangle1);
    obj.layout530:setLeft(438);
    obj.layout530:setTop(1099);
    obj.layout530:setWidth(18);
    obj.layout530:setHeight(18);
    obj.layout530:setName("layout530");

    obj.imageCheckBox505 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox505:setParent(obj.layout530);
    obj.imageCheckBox505:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox505:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox505:setWidth(18);
    obj.imageCheckBox505:setHeight(18);
    obj.imageCheckBox505:setField("Gota36PS");
    obj.imageCheckBox505:setName("imageCheckBox505");

    obj.layout531 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout531:setParent(obj.rectangle1);
    obj.layout531:setLeft(463);
    obj.layout531:setTop(1099);
    obj.layout531:setWidth(18);
    obj.layout531:setHeight(18);
    obj.layout531:setName("layout531");

    obj.imageCheckBox506 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox506:setParent(obj.layout531);
    obj.imageCheckBox506:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox506:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox506:setWidth(18);
    obj.imageCheckBox506:setHeight(18);
    obj.imageCheckBox506:setField("Gota37PS");
    obj.imageCheckBox506:setName("imageCheckBox506");

    obj.layout532 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout532:setParent(obj.rectangle1);
    obj.layout532:setLeft(486);
    obj.layout532:setTop(1099);
    obj.layout532:setWidth(18);
    obj.layout532:setHeight(18);
    obj.layout532:setName("layout532");

    obj.imageCheckBox507 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox507:setParent(obj.layout532);
    obj.imageCheckBox507:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox507:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox507:setWidth(18);
    obj.imageCheckBox507:setHeight(18);
    obj.imageCheckBox507:setField("Gota38PS");
    obj.imageCheckBox507:setName("imageCheckBox507");

    obj.layout533 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout533:setParent(obj.rectangle1);
    obj.layout533:setLeft(511);
    obj.layout533:setTop(1099);
    obj.layout533:setWidth(18);
    obj.layout533:setHeight(18);
    obj.layout533:setName("layout533");

    obj.imageCheckBox508 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox508:setParent(obj.layout533);
    obj.imageCheckBox508:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox508:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox508:setWidth(18);
    obj.imageCheckBox508:setHeight(18);
    obj.imageCheckBox508:setField("Gota39PS");
    obj.imageCheckBox508:setName("imageCheckBox508");

    obj.layout534 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout534:setParent(obj.rectangle1);
    obj.layout534:setLeft(535);
    obj.layout534:setTop(1099);
    obj.layout534:setWidth(18);
    obj.layout534:setHeight(18);
    obj.layout534:setName("layout534");

    obj.imageCheckBox509 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox509:setParent(obj.layout534);
    obj.imageCheckBox509:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox509:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox509:setWidth(18);
    obj.imageCheckBox509:setHeight(18);
    obj.imageCheckBox509:setField("Gota40PS");
    obj.imageCheckBox509:setName("imageCheckBox509");

    obj.layout535 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout535:setParent(obj.rectangle1);
    obj.layout535:setLeft(490);
    obj.layout535:setTop(1115);
    obj.layout535:setWidth(60);
    obj.layout535:setHeight(30);
    obj.layout535:setName("layout535");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout535);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(16);
    obj.edit25:setFontColor("#ffffff");
    obj.edit25:setHorzTextAlign("leading");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(90);
    obj.edit25:setHeight(30);
    obj.edit25:setField("PTL1");
    obj.edit25:setName("edit25");

    obj.layout536 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout536:setParent(obj.rectangle1);
    obj.layout536:setLeft(753);
    obj.layout536:setTop(878);
    obj.layout536:setWidth(18);
    obj.layout536:setHeight(18);
    obj.layout536:setName("layout536");

    obj.imageCheckBox510 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox510:setParent(obj.layout536);
    obj.imageCheckBox510:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox510:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox510:setWidth(18);
    obj.imageCheckBox510:setHeight(18);
    obj.imageCheckBox510:setField("Gota1Letal");
    obj.imageCheckBox510:setName("imageCheckBox510");

    obj.layout537 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout537:setParent(obj.rectangle1);
    obj.layout537:setLeft(753);
    obj.layout537:setTop(899);
    obj.layout537:setWidth(18);
    obj.layout537:setHeight(18);
    obj.layout537:setName("layout537");

    obj.imageCheckBox511 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox511:setParent(obj.layout537);
    obj.imageCheckBox511:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox511:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox511:setWidth(18);
    obj.imageCheckBox511:setHeight(18);
    obj.imageCheckBox511:setField("Gota2Letal");
    obj.imageCheckBox511:setName("imageCheckBox511");

    obj.layout538 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout538:setParent(obj.rectangle1);
    obj.layout538:setLeft(753);
    obj.layout538:setTop(920);
    obj.layout538:setWidth(18);
    obj.layout538:setHeight(18);
    obj.layout538:setName("layout538");

    obj.imageCheckBox512 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox512:setParent(obj.layout538);
    obj.imageCheckBox512:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox512:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox512:setWidth(18);
    obj.imageCheckBox512:setHeight(18);
    obj.imageCheckBox512:setField("Gota3Letal");
    obj.imageCheckBox512:setName("imageCheckBox512");

    obj.layout539 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout539:setParent(obj.rectangle1);
    obj.layout539:setLeft(753);
    obj.layout539:setTop(941);
    obj.layout539:setWidth(18);
    obj.layout539:setHeight(18);
    obj.layout539:setName("layout539");

    obj.imageCheckBox513 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox513:setParent(obj.layout539);
    obj.imageCheckBox513:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox513:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox513:setWidth(18);
    obj.imageCheckBox513:setHeight(18);
    obj.imageCheckBox513:setField("Gota4Letal");
    obj.imageCheckBox513:setName("imageCheckBox513");

    obj.layout540 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout540:setParent(obj.rectangle1);
    obj.layout540:setLeft(753);
    obj.layout540:setTop(961);
    obj.layout540:setWidth(18);
    obj.layout540:setHeight(18);
    obj.layout540:setName("layout540");

    obj.imageCheckBox514 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox514:setParent(obj.layout540);
    obj.imageCheckBox514:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox514:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox514:setWidth(18);
    obj.imageCheckBox514:setHeight(18);
    obj.imageCheckBox514:setField("Gota5Letal");
    obj.imageCheckBox514:setName("imageCheckBox514");

    obj.layout541 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout541:setParent(obj.rectangle1);
    obj.layout541:setLeft(753);
    obj.layout541:setTop(983);
    obj.layout541:setWidth(18);
    obj.layout541:setHeight(18);
    obj.layout541:setName("layout541");

    obj.imageCheckBox515 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox515:setParent(obj.layout541);
    obj.imageCheckBox515:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox515:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox515:setWidth(18);
    obj.imageCheckBox515:setHeight(18);
    obj.imageCheckBox515:setField("Gota6Letal");
    obj.imageCheckBox515:setName("imageCheckBox515");

    obj.layout542 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout542:setParent(obj.rectangle1);
    obj.layout542:setLeft(753);
    obj.layout542:setTop(1005);
    obj.layout542:setWidth(18);
    obj.layout542:setHeight(18);
    obj.layout542:setName("layout542");

    obj.imageCheckBox516 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox516:setParent(obj.layout542);
    obj.imageCheckBox516:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox516:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox516:setWidth(18);
    obj.imageCheckBox516:setHeight(18);
    obj.imageCheckBox516:setField("Gota7Letal");
    obj.imageCheckBox516:setName("imageCheckBox516");

    obj.layout543 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout543:setParent(obj.rectangle1);
    obj.layout543:setLeft(774);
    obj.layout543:setTop(878);
    obj.layout543:setWidth(18);
    obj.layout543:setHeight(18);
    obj.layout543:setName("layout543");

    obj.imageCheckBox517 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox517:setParent(obj.layout543);
    obj.imageCheckBox517:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox517:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox517:setWidth(18);
    obj.imageCheckBox517:setHeight(18);
    obj.imageCheckBox517:setField("Gota1Agravado");
    obj.imageCheckBox517:setName("imageCheckBox517");

    obj.layout544 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout544:setParent(obj.rectangle1);
    obj.layout544:setLeft(774);
    obj.layout544:setTop(899);
    obj.layout544:setWidth(18);
    obj.layout544:setHeight(18);
    obj.layout544:setName("layout544");

    obj.imageCheckBox518 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox518:setParent(obj.layout544);
    obj.imageCheckBox518:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox518:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox518:setWidth(18);
    obj.imageCheckBox518:setHeight(18);
    obj.imageCheckBox518:setField("Gota2Agravado");
    obj.imageCheckBox518:setName("imageCheckBox518");

    obj.layout545 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout545:setParent(obj.rectangle1);
    obj.layout545:setLeft(774);
    obj.layout545:setTop(920);
    obj.layout545:setWidth(18);
    obj.layout545:setHeight(18);
    obj.layout545:setName("layout545");

    obj.imageCheckBox519 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox519:setParent(obj.layout545);
    obj.imageCheckBox519:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox519:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox519:setWidth(18);
    obj.imageCheckBox519:setHeight(18);
    obj.imageCheckBox519:setField("Gota3Agravado");
    obj.imageCheckBox519:setName("imageCheckBox519");

    obj.layout546 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout546:setParent(obj.rectangle1);
    obj.layout546:setLeft(774);
    obj.layout546:setTop(941);
    obj.layout546:setWidth(18);
    obj.layout546:setHeight(18);
    obj.layout546:setName("layout546");

    obj.imageCheckBox520 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox520:setParent(obj.layout546);
    obj.imageCheckBox520:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox520:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox520:setWidth(18);
    obj.imageCheckBox520:setHeight(18);
    obj.imageCheckBox520:setField("Gota4Agravado");
    obj.imageCheckBox520:setName("imageCheckBox520");

    obj.layout547 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout547:setParent(obj.rectangle1);
    obj.layout547:setLeft(774);
    obj.layout547:setTop(961);
    obj.layout547:setWidth(18);
    obj.layout547:setHeight(18);
    obj.layout547:setName("layout547");

    obj.imageCheckBox521 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox521:setParent(obj.layout547);
    obj.imageCheckBox521:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox521:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox521:setWidth(18);
    obj.imageCheckBox521:setHeight(18);
    obj.imageCheckBox521:setField("Gota5Agravado");
    obj.imageCheckBox521:setName("imageCheckBox521");

    obj.layout548 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout548:setParent(obj.rectangle1);
    obj.layout548:setLeft(774);
    obj.layout548:setTop(983);
    obj.layout548:setWidth(18);
    obj.layout548:setHeight(18);
    obj.layout548:setName("layout548");

    obj.imageCheckBox522 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox522:setParent(obj.layout548);
    obj.imageCheckBox522:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox522:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox522:setWidth(18);
    obj.imageCheckBox522:setHeight(18);
    obj.imageCheckBox522:setField("Gota6Agravado");
    obj.imageCheckBox522:setName("imageCheckBox522");

    obj.layout549 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout549:setParent(obj.rectangle1);
    obj.layout549:setLeft(774);
    obj.layout549:setTop(1005);
    obj.layout549:setWidth(18);
    obj.layout549:setHeight(18);
    obj.layout549:setName("layout549");

    obj.imageCheckBox523 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox523:setParent(obj.layout549);
    obj.imageCheckBox523:setImageChecked("Vampiro_Drake_Chronicles/images/blood_on.png");
    obj.imageCheckBox523:setImageUnchecked("Vampiro_Drake_Chronicles/images/blood_off.png");
    obj.imageCheckBox523:setWidth(18);
    obj.imageCheckBox523:setHeight(18);
    obj.imageCheckBox523:setField("Gota7Agravado");
    obj.imageCheckBox523:setName("imageCheckBox523");

    obj.layout550 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout550:setParent(obj.rectangle1);
    obj.layout550:setLeft(573);
    obj.layout550:setTop(1065);
    obj.layout550:setWidth(232);
    obj.layout550:setHeight(75);
    obj.layout550:setName("layout550");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout550);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setFontColor("#ffffff");
    obj.textEditor2:setWidth(232);
    obj.textEditor2:setHeight(75);
    obj.textEditor2:setField("Fraqueza");
    obj.textEditor2:setName("textEditor2");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle1);
    obj.comboBox1:setLeft(583);
    obj.comboBox1:setTop(662);
    obj.comboBox1:setWidth(130);
    obj.comboBox1:setFontSize(16);
    obj.comboBox1:setFontColor("#ffffff");
    obj.comboBox1:setItems({'Consciência', 'Convicção'});
    obj.comboBox1:setTransparent(true);
    obj.comboBox1:setField("ConCon");
    obj.comboBox1:setName("comboBox1");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle1);
    obj.comboBox2:setLeft(583);
    obj.comboBox2:setTop(727);
    obj.comboBox2:setWidth(130);
    obj.comboBox2:setFontSize(16);
    obj.comboBox2:setFontColor("#ffffff");
    obj.comboBox2:setItems({'Auto-Controle', 'Instinto'});
    obj.comboBox2:setTransparent(true);
    obj.comboBox2:setField("ACIns");
    obj.comboBox2:setName("comboBox2");

    obj.frmCodigo1 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo1:setParent(obj);
    obj.frmCodigo1:setName("frmCodigo1");
    obj.frmCodigo1:setHeight(0);
    obj.frmCodigo1:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo1);
    obj.dataLink1:setFields({'Gota1for', 'Gota1des', 'Gota1vig', 'Gota1cari', 'Gota1mani', 'Gota1apa', 'Gota1perc', 'Gota1int', 'Gota1rac', 'Gota1CC', 'Gota1AI', 'Gota1Cor'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo1);
    obj.dataLink2:setFields({'Gota8for', 'Gota7for', 'Gota6for', 'Gota5for', 'Gota4for', 'Gota3for', 'Gota2for', 'Gota1for'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo1);
    obj.dataLink3:setFields({'Gota8des', 'Gota7des', 'Gota6des', 'Gota5des', 'Gota4des', 'Gota3des', 'Gota2des', 'Gota1des'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo1);
    obj.dataLink4:setFields({'Gota8vig', 'Gota7vig', 'Gota6vig', 'Gota5vig', 'Gota4vig', 'Gota3vig', 'Gota2vig', 'Gota1vig'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo1);
    obj.dataLink5:setFields({'Gota8cari', 'Gota7cari', 'Gota6cari', 'Gota5cari', 'Gota4cari', 'Gota3cari', 'Gota2cari', 'Gota1cari'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo1);
    obj.dataLink6:setFields({'Gota8mani', 'Gota7mani', 'Gota6mani', 'Gota5mani', 'Gota4mani', 'Gota3mani', 'Gota2mani', 'Gota1mani'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo1);
    obj.dataLink7:setFields({'Gota8apa', 'Gota7apa', 'Gota6apa', 'Gota5apa', 'Gota4apa', 'Gota3apa', 'Gota2apa', 'Gota1apa'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo1);
    obj.dataLink8:setFields({'Gota8perc', 'Gota7perc', 'Gota6perc', 'Gota5perc', 'Gota4perc', 'Gota3perc', 'Gota2perc', 'Gota1perc'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo1);
    obj.dataLink9:setFields({'Gota8int', 'Gota7int', 'Gota6int', 'Gota5int', 'Gota4int', 'Gota3int', 'Gota2int', 'Gota1int'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo1);
    obj.dataLink10:setFields({'Gota8rac', 'Gota7rac', 'Gota6rac', 'Gota5rac', 'Gota4rac', 'Gota3rac', 'Gota2rac', 'Gota1rac'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo1);
    obj.dataLink11:setFields({'Gota8pront', 'Gota7pront', 'Gota6pront', 'Gota5pront', 'Gota4pront', 'Gota3pront', 'Gota2pront', 'Gota1pront'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo1);
    obj.dataLink12:setFields({'Gota8espo', 'Gota7espo', 'Gota6espo', 'Gota5espo', 'Gota4espo', 'Gota3espo', 'Gota2espo', 'Gota1espo'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo1);
    obj.dataLink13:setFields({'Gota8bri', 'Gota7bri', 'Gota6bri', 'Gota5bri', 'Gota4bri', 'Gota3bri', 'Gota2bri', 'Gota1bri'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo1);
    obj.dataLink14:setFields({'Gota8esq', 'Gota7esq', 'Gota6esq', 'Gota5esq', 'Gota4esq', 'Gota3esq', 'Gota2esq', 'Gota1esq'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo1);
    obj.dataLink15:setFields({'Gota8emp', 'Gota7emp', 'Gota6emp', 'Gota5emp', 'Gota4emp', 'Gota3emp', 'Gota2emp', 'Gota1emp'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo1);
    obj.dataLink16:setFields({'Gota8exp', 'Gota7exp', 'Gota6exp', 'Gota5exp', 'Gota4exp', 'Gota3exp', 'Gota2exp', 'Gota1exp'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo1);
    obj.dataLink17:setFields({'Gota8intim', 'Gota7intim', 'Gota6intim', 'Gota5intim', 'Gota4intim', 'Gota3intim', 'Gota2intim', 'Gota1intim'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo1);
    obj.dataLink18:setFields({'Gota8lider', 'Gota7lider', 'Gota6lider', 'Gota5lider', 'Gota4lider', 'Gota3lider', 'Gota2lider', 'Gota1lider'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo1);
    obj.dataLink19:setFields({'Gota8man', 'Gota7man', 'Gota6man', 'Gota5man', 'Gota4man', 'Gota3man', 'Gota2man', 'Gota1man'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmCodigo1);
    obj.dataLink20:setFields({'Gota8lab', 'Gota7lab', 'Gota6lab', 'Gota5lab', 'Gota4lab', 'Gota3lab', 'Gota2lab', 'Gota1lab'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmCodigo1);
    obj.dataLink21:setFields({'Gota8empani', 'Gota7empani', 'Gota6empani', 'Gota5empani', 'Gota4empani', 'Gota3empani', 'Gota2empani', 'Gota1empani'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.frmCodigo1);
    obj.dataLink22:setFields({'Gota8ofi', 'Gota7ofi', 'Gota6ofi', 'Gota5ofi', 'Gota4ofi', 'Gota3ofi', 'Gota2ofi', 'Gota1ofi'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.frmCodigo1);
    obj.dataLink23:setFields({'Gota8cond', 'Gota7cond', 'Gota6cond', 'Gota5cond', 'Gota4cond', 'Gota3cond', 'Gota2cond', 'Gota1cond'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.frmCodigo1);
    obj.dataLink24:setFields({'Gota8etiq', 'Gota7etiq', 'Gota6etiq', 'Gota5etiq', 'Gota4etiq', 'Gota3etiq', 'Gota2etiq', 'Gota1etiq'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.frmCodigo1);
    obj.dataLink25:setFields({'Gota8adf', 'Gota7adf', 'Gota6adf', 'Gota5adf', 'Gota4adf', 'Gota3adf', 'Gota2adf', 'Gota1adf'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.frmCodigo1);
    obj.dataLink26:setFields({'Gota8ab', 'Gota7ab', 'Gota6ab', 'Gota5ab', 'Gota4ab', 'Gota3ab', 'Gota2ab', 'Gota1ab'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.frmCodigo1);
    obj.dataLink27:setFields({'Gota8perf', 'Gota7perf', 'Gota6perf', 'Gota5perf', 'Gota4perf', 'Gota3perf', 'Gota2perf', 'Gota1perf'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.frmCodigo1);
    obj.dataLink28:setFields({'Gota8seg', 'Gota7seg', 'Gota6seg', 'Gota5seg', 'Gota4seg', 'Gota3seg', 'Gota2seg', 'Gota1seg'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.frmCodigo1);
    obj.dataLink29:setFields({'Gota8furti', 'Gota7furti', 'Gota6furti', 'Gota5furti', 'Gota4furti', 'Gota3furti', 'Gota2furti', 'Gota1furti'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.frmCodigo1);
    obj.dataLink30:setFields({'Gota8sobre', 'Gota7sobre', 'Gota6sobre', 'Gota5sobre', 'Gota4sobre', 'Gota3sobre', 'Gota2sobre', 'Gota1sobre'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.frmCodigo1);
    obj.dataLink31:setFields({'Gota8acad', 'Gota7acad', 'Gota6acad', 'Gota5acad', 'Gota4acad', 'Gota3acad', 'Gota2acad', 'Gota1acad'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.frmCodigo1);
    obj.dataLink32:setFields({'Gota8comp', 'Gota7comp', 'Gota6comp', 'Gota5comp', 'Gota4comp', 'Gota3comp', 'Gota2comp', 'Gota1comp'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.frmCodigo1);
    obj.dataLink33:setFields({'Gota8fina', 'Gota7fina', 'Gota6fina', 'Gota5fina', 'Gota4fina', 'Gota3fina', 'Gota2fina', 'Gota1fina'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.frmCodigo1);
    obj.dataLink34:setFields({'Gota8inves', 'Gota7inves', 'Gota6inves', 'Gota5inves', 'Gota4inves', 'Gota3inves', 'Gota2inves', 'Gota1inves'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmCodigo1);
    obj.dataLink35:setFields({'Gota8dir', 'Gota7dir', 'Gota6dir', 'Gota5dir', 'Gota4dir', 'Gota3dir', 'Gota2dir', 'Gota1dir'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.frmCodigo1);
    obj.dataLink36:setFields({'Gota8ling', 'Gota7ling', 'Gota6ling', 'Gota5ling', 'Gota4ling', 'Gota3ling', 'Gota2ling', 'Gota1ling'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.frmCodigo1);
    obj.dataLink37:setFields({'Gota8med', 'Gota7med', 'Gota6med', 'Gota5med', 'Gota4med', 'Gota3med', 'Gota2med', 'Gota1med'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.frmCodigo1);
    obj.dataLink38:setFields({'Gota8ocult', 'Gota7ocult', 'Gota6ocult', 'Gota5ocult', 'Gota4ocult', 'Gota3ocult', 'Gota2ocult', 'Gota1ocult'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.frmCodigo1);
    obj.dataLink39:setFields({'Gota8pol', 'Gota7pol', 'Gota6pol', 'Gota5pol', 'Gota4pol', 'Gota3pol', 'Gota2pol', 'Gota1pol'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.frmCodigo1);
    obj.dataLink40:setFields({'Gota8cie', 'Gota7cie', 'Gota6cie', 'Gota5cie', 'Gota4cie', 'Gota3cie', 'Gota2cie', 'Gota1cie'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.frmCodigo1);
    obj.dataLink41:setFields({'Gota8Ant1', 'Gota7Ant1', 'Gota6Ant1', 'Gota5Ant1', 'Gota4Ant1', 'Gota3Ant1', 'Gota2Ant1', 'Gota1Ant1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.frmCodigo1);
    obj.dataLink42:setFields({'Gota8Ant2', 'Gota7Ant2', 'Gota6Ant2', 'Gota5Ant2', 'Gota4Ant2', 'Gota3Ant2', 'Gota2Ant2', 'Gota1Ant2'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.frmCodigo1);
    obj.dataLink43:setFields({'Gota8Ant3', 'Gota7Ant3', 'Gota6Ant3', 'Gota5Ant3', 'Gota4Ant3', 'Gota3Ant3', 'Gota2Ant3', 'Gota1Ant3'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.frmCodigo1);
    obj.dataLink44:setFields({'Gota8Ant4', 'Gota7Ant4', 'Gota6Ant4', 'Gota5Ant4', 'Gota4Ant4', 'Gota3Ant4', 'Gota2Ant4', 'Gota1Ant4'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.frmCodigo1);
    obj.dataLink45:setFields({'Gota8Ant5', 'Gota7Ant5', 'Gota6Ant5', 'Gota5Ant5', 'Gota4Ant5', 'Gota3Ant5', 'Gota2Ant5', 'Gota1Ant5'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.frmCodigo1);
    obj.dataLink46:setFields({'Gota8Ant6', 'Gota7Ant6', 'Gota6Ant6', 'Gota5Ant6', 'Gota4Ant6', 'Gota3Ant6', 'Gota2Ant6', 'Gota1Ant6'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.frmCodigo1);
    obj.dataLink47:setFields({'Gota8Ant7', 'Gota7Ant7', 'Gota6Ant7', 'Gota5Ant7', 'Gota4Ant7', 'Gota3Ant7', 'Gota2Ant7', 'Gota1Ant7'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.frmCodigo1);
    obj.dataLink48:setFields({'Gota8Dis1', 'Gota7Dis1', 'Gota6Dis1', 'Gota5Dis1', 'Gota4Dis1', 'Gota3Dis1', 'Gota2Dis1', 'Gota1Dis1'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.frmCodigo1);
    obj.dataLink49:setFields({'Gota8Dis2', 'Gota7Dis2', 'Gota6Dis2', 'Gota5Dis2', 'Gota4Dis2', 'Gota3Dis2', 'Gota2Dis2', 'Gota1Dis2'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.frmCodigo1);
    obj.dataLink50:setFields({'Gota8Dis3', 'Gota7Dis3', 'Gota6Dis3', 'Gota5Dis3', 'Gota4Dis3', 'Gota3Dis3', 'Gota2Dis3', 'Gota1Dis3'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.frmCodigo1);
    obj.dataLink51:setFields({'Gota8Dis4', 'Gota7Dis4', 'Gota6Dis4', 'Gota5Dis4', 'Gota4Dis4', 'Gota3Dis4', 'Gota2Dis4', 'Gota1Dis4'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.frmCodigo1);
    obj.dataLink52:setFields({'Gota8Dis5', 'Gota7Dis5', 'Gota6Dis5', 'Gota5Dis5', 'Gota4Dis5', 'Gota3Dis5', 'Gota2Dis5', 'Gota1Dis5'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.frmCodigo1);
    obj.dataLink53:setFields({'Gota8Dis6', 'Gota7Dis6', 'Gota6Dis6', 'Gota5Dis6', 'Gota4Dis6', 'Gota3Dis6', 'Gota2Dis6', 'Gota1Dis6'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.frmCodigo1);
    obj.dataLink54:setFields({'Gota8Dis7', 'Gota7Dis7', 'Gota6Dis7', 'Gota5Dis7', 'Gota4Dis7', 'Gota3Dis7', 'Gota2Dis7', 'Gota1Dis7'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.frmCodigo1);
    obj.dataLink55:setFields({'Gota5CC', 'Gota4CC', 'Gota3CC', 'Gota2CC', 'Gota1CC'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.frmCodigo1);
    obj.dataLink56:setFields({'Gota5AI', 'Gota4AI', 'Gota3AI', 'Gota2AI', 'Gota1AI'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.frmCodigo1);
    obj.dataLink57:setFields({'Gota5Cor', 'Gota4Cor', 'Gota3Cor', 'Gota2Cor', 'Gota1Cor'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.frmCodigo1);
    obj.dataLink58:setFields({'Gota10HT', 'Gota9HT', 'Gota8HT', 'Gota7HT', 'Gota6HT', 'Gota5HT', 'Gota4HT', 'Gota3HT', 'Gota2HT', 'Gota1HT'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.frmCodigo1);
    obj.dataLink59:setFields({'Gota10FDV', 'Gota9FDV', 'Gota8FDV', 'Gota7FDV', 'Gota6FDV', 'Gota5FDV', 'Gota4FDV', 'Gota3FDV', 'Gota2FDV', 'Gota1FDV'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.frmCodigo1);
    obj.dataLink60:setFields({'SQ10FDV', 'SQ9FDV', 'SQ8FDV', 'SQ7FDV', 'SQ6FDV', 'SQ5FDV', 'SQ4FDV', 'SQ3FDV', 'SQ2FDV', 'SQ1FDV'});
    obj.dataLink60:setName("dataLink60");

    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj.frmCodigo1);
    obj.dataLink61:setFields({'Gota40PS', 'Gota39PS', 'Gota38PS', 'Gota37PS', 'Gota36PS', 'Gota35PS', 'Gota34PS', 'Gota33PS', 'Gota32PS', 'Gota31PS',
 'Gota30PS', 'Gota29PS', 'Gota28PS', 'Gota27PS', 'Gota26PS', 'Gota25PS', 'Gota24PS', 'Gota23PS', 'Gota22PS', 'Gota21PS', 'Gota20PS',
 'Gota19PS', 'Gota18PS', 'Gota17PS', 'Gota16PS', 'Gota15PS', 'Gota14PS', 'Gota13PS', 'Gota12PS', 'Gota11PS', 'Gota10PS',
 'Gota9PS', 'Gota8PS', 'Gota7PS', 'Gota6PS', 'Gota5PS', 'Gota4PS', 'Gota3PS', 'Gota2PS', 'Gota1PS'});
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj.frmCodigo1);
    obj.dataLink62:setFields({'Gota7Letal', 'Gota6Letal', 'Gota5Letal', 'Gota4Letal', 'Gota3Letal', 'Gota2Letal', 'Gota1Letal'});
    obj.dataLink62:setName("dataLink62");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj.frmCodigo1);
    obj.dataLink63:setFields({'Gota7Agravado', 'Gota6Agravado', 'Gota5Agravado', 'Gota4Agravado', 'Gota3Agravado', 'Gota2Agravado', 'Gota1Agravado'});
    obj.dataLink63:setName("dataLink63");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8for == true then
            		sheet.Gota7for = true;
            		sheet.Gota6for = true;
            		sheet.Gota5for = true;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota7for == true then
            		sheet.Gota8for = false;
            		sheet.Gota6for = true;
            		sheet.Gota5for = true;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota6for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota5for = true;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota5for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota4for = true;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota4for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota3for = true;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota3for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota2for = true;
            		sheet.Gota1for = true;
            	elseif sheet.Gota2for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota3for = false;
            		sheet.Gota1for = true;	
            	elseif sheet.Gota1for == true then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota3for = false;
            		sheet.Gota2for = false;
            	elseif sheet.Gota1for == false then
            		sheet.Gota8for = false;
            		sheet.Gota7for = false;
            		sheet.Gota6for = false;
            		sheet.Gota5for = false;
            		sheet.Gota4for = false;
            		sheet.Gota3for = false;
            		sheet.Gota2for = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8des == true then
            		sheet.Gota7des = true;
            		sheet.Gota6des = true;
            		sheet.Gota5des = true;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota7des == true then
            		sheet.Gota8des = false;
            		sheet.Gota6des = true;
            		sheet.Gota5des = true;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota6des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota5des = true;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota5des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota4des = true;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota4des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota3des = true;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota3des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota2des = true;
            		sheet.Gota1des = true;
            	elseif sheet.Gota2des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota3des = false;
            		sheet.Gota1des = true;	
            	elseif sheet.Gota1des == true then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota3des = false;
            		sheet.Gota2des = false;
            	elseif sheet.Gota1des == false then
            		sheet.Gota8des = false;
            		sheet.Gota7des = false;
            		sheet.Gota6des = false;
            		sheet.Gota5des = false;
            		sheet.Gota4des = false;
            		sheet.Gota3des = false;
            		sheet.Gota2des = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8vig == true then
            		sheet.Gota7vig = true;
            		sheet.Gota6vig = true;
            		sheet.Gota5vig = true;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota7vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota6vig = true;
            		sheet.Gota5vig = true;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota6vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota5vig = true;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota5vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota4vig = true;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota4vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota3vig = true;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota3vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota2vig = true;
            		sheet.Gota1vig = true;
            	elseif sheet.Gota2vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota3vig = false;
            		sheet.Gota1vig = true;	
            	elseif sheet.Gota1vig == true then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota3vig = false;
            		sheet.Gota2vig = false;
            	elseif sheet.Gota1vig == false then
            		sheet.Gota8vig = false;
            		sheet.Gota7vig = false;
            		sheet.Gota6vig = false;
            		sheet.Gota5vig = false;
            		sheet.Gota4vig = false;
            		sheet.Gota3vig = false;
            		sheet.Gota2vig = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8cari == true then
            		sheet.Gota7cari = true;
            		sheet.Gota6cari = true;
            		sheet.Gota5cari = true;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota7cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota6cari = true;
            		sheet.Gota5cari = true;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota6cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota5cari = true;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota5cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota4cari = true;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota4cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota3cari = true;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota3cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota2cari = true;
            		sheet.Gota1cari = true;
            	elseif sheet.Gota2cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota3cari = false;
            		sheet.Gota1cari = true;	
            	elseif sheet.Gota1cari == true then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota3cari = false;
            		sheet.Gota2cari = false;
            	elseif sheet.Gota1cari == false then
            		sheet.Gota8cari = false;
            		sheet.Gota7cari = false;
            		sheet.Gota6cari = false;
            		sheet.Gota5cari = false;
            		sheet.Gota4cari = false;
            		sheet.Gota3cari = false;
            		sheet.Gota2cari = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8mani == true then
            		sheet.Gota7mani = true;
            		sheet.Gota6mani = true;
            		sheet.Gota5mani = true;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota7mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota6mani = true;
            		sheet.Gota5mani = true;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota6mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota5mani = true;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota5mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota4mani = true;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota4mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota3mani = true;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota3mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota2mani = true;
            		sheet.Gota1mani = true;
            	elseif sheet.Gota2mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota3mani = false;
            		sheet.Gota1mani = true;	
            	elseif sheet.Gota1mani == true then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota3mani = false;
            		sheet.Gota2mani = false;
            	elseif sheet.Gota1mani == false then
            		sheet.Gota8mani = false;
            		sheet.Gota7mani = false;
            		sheet.Gota6mani = false;
            		sheet.Gota5mani = false;
            		sheet.Gota4mani = false;
            		sheet.Gota3mani = false;
            		sheet.Gota2mani = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8apa == true then
            		sheet.Gota7apa = true;
            		sheet.Gota6apa = true;
            		sheet.Gota5apa = true;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota7apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota6apa = true;
            		sheet.Gota5apa = true;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota6apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota5apa = true;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota5apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota4apa = true;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota4apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota3apa = true;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota3apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota2apa = true;
            		sheet.Gota1apa = true;
            	elseif sheet.Gota2apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota3apa = false;
            		sheet.Gota1apa = true;	
            	elseif sheet.Gota1apa == true then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota3apa = false;
            		sheet.Gota2apa = false;
            	elseif sheet.Gota1apa == false then
            		sheet.Gota8apa = false;
            		sheet.Gota7apa = false;
            		sheet.Gota6apa = false;
            		sheet.Gota5apa = false;
            		sheet.Gota4apa = false;
            		sheet.Gota3apa = false;
            		sheet.Gota2apa = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8perc == true then
            		sheet.Gota7perc = true;
            		sheet.Gota6perc = true;
            		sheet.Gota5perc = true;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota7perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota6perc = true;
            		sheet.Gota5perc = true;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota6perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota5perc = true;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota5perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota4perc = true;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota4perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota3perc = true;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota3perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota2perc = true;
            		sheet.Gota1perc = true;
            	elseif sheet.Gota2perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota3perc = false;
            		sheet.Gota1perc = true;	
            	elseif sheet.Gota1perc == true then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota3perc = false;
            		sheet.Gota2perc = false;
            	elseif sheet.Gota1perc == false then
            		sheet.Gota8perc = false;
            		sheet.Gota7perc = false;
            		sheet.Gota6perc = false;
            		sheet.Gota5perc = false;
            		sheet.Gota4perc = false;
            		sheet.Gota3perc = false;
            		sheet.Gota2perc = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8int == true then
            		sheet.Gota7int = true;
            		sheet.Gota6int = true;
            		sheet.Gota5int = true;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota7int == true then
            		sheet.Gota8int = false;
            		sheet.Gota6int = true;
            		sheet.Gota5int = true;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota6int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota5int = true;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota5int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota4int = true;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota4int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota3int = true;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota3int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota2int = true;
            		sheet.Gota1int = true;
            	elseif sheet.Gota2int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota3int = false;
            		sheet.Gota1int = true;	
            	elseif sheet.Gota1int == true then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota3int = false;
            		sheet.Gota2int = false;
            	elseif sheet.Gota1int == false then
            		sheet.Gota8int = false;
            		sheet.Gota7int = false;
            		sheet.Gota6int = false;
            		sheet.Gota5int = false;
            		sheet.Gota4int = false;
            		sheet.Gota3int = false;
            		sheet.Gota2int = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8rac == true then
            		sheet.Gota7rac = true;
            		sheet.Gota6rac = true;
            		sheet.Gota5rac = true;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota7rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota6rac = true;
            		sheet.Gota5rac = true;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota6rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota5rac = true;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota5rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota4rac = true;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota4rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota3rac = true;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota3rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota2rac = true;
            		sheet.Gota1rac = true;
            	elseif sheet.Gota2rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota3rac = false;
            		sheet.Gota1rac = true;	
            	elseif sheet.Gota1rac == true then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota3rac = false;
            		sheet.Gota2rac = false;
            	elseif sheet.Gota1rac == false then
            		sheet.Gota8rac = false;
            		sheet.Gota7rac = false;
            		sheet.Gota6rac = false;
            		sheet.Gota5rac = false;
            		sheet.Gota4rac = false;
            		sheet.Gota3rac = false;
            		sheet.Gota2rac = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8pront == true then
            		sheet.Gota7pront = true;
            		sheet.Gota6pront = true;
            		sheet.Gota5pront = true;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota7pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota6pront = true;
            		sheet.Gota5pront = true;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota6pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota5pront = true;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota5pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota4pront = true;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota4pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota3pront = true;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota3pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota2pront = true;
            		sheet.Gota1pront = true;
            	elseif sheet.Gota2pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota3pront = false;
            		sheet.Gota1pront = true;	
            	elseif sheet.Gota1pront == true then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota3pront = false;
            		sheet.Gota2pront = false;
            	elseif sheet.Gota1pront == false then
            		sheet.Gota8pront = false;
            		sheet.Gota7pront = false;
            		sheet.Gota6pront = false;
            		sheet.Gota5pront = false;
            		sheet.Gota4pront = false;
            		sheet.Gota3pront = false;
            		sheet.Gota2pront = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8espo == true then
            		sheet.Gota7espo = true;
            		sheet.Gota6espo = true;
            		sheet.Gota5espo = true;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota7espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota6espo = true;
            		sheet.Gota5espo = true;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota6espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota5espo = true;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota5espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota4espo = true;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota4espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota3espo = true;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota3espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota2espo = true;
            		sheet.Gota1espo = true;
            	elseif sheet.Gota2espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota3espo = false;
            		sheet.Gota1espo = true;	
            	elseif sheet.Gota1espo == true then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota3espo = false;
            		sheet.Gota2espo = false;
            	elseif sheet.Gota1espo == false then
            		sheet.Gota8espo = false;
            		sheet.Gota7espo = false;
            		sheet.Gota6espo = false;
            		sheet.Gota5espo = false;
            		sheet.Gota4espo = false;
            		sheet.Gota3espo = false;
            		sheet.Gota2espo = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8bri == true then
            		sheet.Gota7bri = true;
            		sheet.Gota6bri = true;
            		sheet.Gota5bri = true;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota7bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota6bri = true;
            		sheet.Gota5bri = true;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota6bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota5bri = true;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota5bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota4bri = true;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota4bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota3bri = true;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota3bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota2bri = true;
            		sheet.Gota1bri = true;
            	elseif sheet.Gota2bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota3bri = false;
            		sheet.Gota1bri = true;	
            	elseif sheet.Gota1bri == true then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota3bri = false;
            		sheet.Gota2bri = false;
            	elseif sheet.Gota1bri == false then
            		sheet.Gota8bri = false;
            		sheet.Gota7bri = false;
            		sheet.Gota6bri = false;
            		sheet.Gota5bri = false;
            		sheet.Gota4bri = false;
            		sheet.Gota3bri = false;
            		sheet.Gota2bri = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8esq == true then
            		sheet.Gota7esq = true;
            		sheet.Gota6esq = true;
            		sheet.Gota5esq = true;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota7esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota6esq = true;
            		sheet.Gota5esq = true;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota6esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota5esq = true;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota5esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota4esq = true;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota4esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota3esq = true;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota3esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota2esq = true;
            		sheet.Gota1esq = true;
            	elseif sheet.Gota2esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota3esq = false;
            		sheet.Gota1esq = true;	
            	elseif sheet.Gota1esq == true then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota3esq = false;
            		sheet.Gota2esq = false;
            	elseif sheet.Gota1esq == false then
            		sheet.Gota8esq = false;
            		sheet.Gota7esq = false;
            		sheet.Gota6esq = false;
            		sheet.Gota5esq = false;
            		sheet.Gota4esq = false;
            		sheet.Gota3esq = false;
            		sheet.Gota2esq = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8emp == true then
            		sheet.Gota7emp = true;
            		sheet.Gota6emp = true;
            		sheet.Gota5emp = true;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota7emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota6emp = true;
            		sheet.Gota5emp = true;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota6emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota5emp = true;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota5emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota4emp = true;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota4emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota3emp = true;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota3emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota2emp = true;
            		sheet.Gota1emp = true;
            	elseif sheet.Gota2emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota3emp = false;
            		sheet.Gota1emp = true;	
            	elseif sheet.Gota1emp == true then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota3emp = false;
            		sheet.Gota2emp = false;
            	elseif sheet.Gota1emp == false then
            		sheet.Gota8emp = false;
            		sheet.Gota7emp = false;
            		sheet.Gota6emp = false;
            		sheet.Gota5emp = false;
            		sheet.Gota4emp = false;
            		sheet.Gota3emp = false;
            		sheet.Gota2emp = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8exp == true then
            		sheet.Gota7exp = true;
            		sheet.Gota6exp = true;
            		sheet.Gota5exp = true;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota7exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota6exp = true;
            		sheet.Gota5exp = true;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota6exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota5exp = true;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota5exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota4exp = true;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota4exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota3exp = true;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota3exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota2exp = true;
            		sheet.Gota1exp = true;
            	elseif sheet.Gota2exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota3exp = false;
            		sheet.Gota1exp = true;	
            	elseif sheet.Gota1exp == true then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota3exp = false;
            		sheet.Gota2exp = false;
            	elseif sheet.Gota1exp == false then
            		sheet.Gota8exp = false;
            		sheet.Gota7exp = false;
            		sheet.Gota6exp = false;
            		sheet.Gota5exp = false;
            		sheet.Gota4exp = false;
            		sheet.Gota3exp = false;
            		sheet.Gota2exp = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8intim == true then
            		sheet.Gota7intim = true;
            		sheet.Gota6intim = true;
            		sheet.Gota5intim = true;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota7intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota6intim = true;
            		sheet.Gota5intim = true;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota6intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota5intim = true;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota5intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota4intim = true;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota4intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota3intim = true;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota3intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota2intim = true;
            		sheet.Gota1intim = true;
            	elseif sheet.Gota2intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota3intim = false;
            		sheet.Gota1intim = true;	
            	elseif sheet.Gota1intim == true then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota3intim = false;
            		sheet.Gota2intim = false;
            	elseif sheet.Gota1intim == false then
            		sheet.Gota8intim = false;
            		sheet.Gota7intim = false;
            		sheet.Gota6intim = false;
            		sheet.Gota5intim = false;
            		sheet.Gota4intim = false;
            		sheet.Gota3intim = false;
            		sheet.Gota2intim = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8lider == true then
            		sheet.Gota7lider = true;
            		sheet.Gota6lider = true;
            		sheet.Gota5lider = true;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota7lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota6lider = true;
            		sheet.Gota5lider = true;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota6lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota5lider = true;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota5lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota4lider = true;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota4lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota3lider = true;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota3lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota2lider = true;
            		sheet.Gota1lider = true;
            	elseif sheet.Gota2lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota3lider = false;
            		sheet.Gota1lider = true;	
            	elseif sheet.Gota1lider == true then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota3lider = false;
            		sheet.Gota2lider = false;
            	elseif sheet.Gota1lider == false then
            		sheet.Gota8lider = false;
            		sheet.Gota7lider = false;
            		sheet.Gota6lider = false;
            		sheet.Gota5lider = false;
            		sheet.Gota4lider = false;
            		sheet.Gota3lider = false;
            		sheet.Gota2lider = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8man == true then
            		sheet.Gota7man = true;
            		sheet.Gota6man = true;
            		sheet.Gota5man = true;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota7man == true then
            		sheet.Gota8man = false;
            		sheet.Gota6man = true;
            		sheet.Gota5man = true;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota6man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota5man = true;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota5man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota4man = true;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota4man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota3man = true;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota3man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota2man = true;
            		sheet.Gota1man = true;
            	elseif sheet.Gota2man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota3man = false;
            		sheet.Gota1man = true;	
            	elseif sheet.Gota1man == true then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota3man = false;
            		sheet.Gota2man = false;
            	elseif sheet.Gota1man == false then
            		sheet.Gota8man = false;
            		sheet.Gota7man = false;
            		sheet.Gota6man = false;
            		sheet.Gota5man = false;
            		sheet.Gota4man = false;
            		sheet.Gota3man = false;
            		sheet.Gota2man = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8lab == true then
            		sheet.Gota7lab = true;
            		sheet.Gota6lab = true;
            		sheet.Gota5lab = true;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota7lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota6lab = true;
            		sheet.Gota5lab = true;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota6lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota5lab = true;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota5lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota4lab = true;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota4lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota3lab = true;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota3lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota2lab = true;
            		sheet.Gota1lab = true;
            	elseif sheet.Gota2lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota3lab = false;
            		sheet.Gota1lab = true;	
            	elseif sheet.Gota1lab == true then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota3lab = false;
            		sheet.Gota2lab = false;
            	elseif sheet.Gota1lab == false then
            		sheet.Gota8lab = false;
            		sheet.Gota7lab = false;
            		sheet.Gota6lab = false;
            		sheet.Gota5lab = false;
            		sheet.Gota4lab = false;
            		sheet.Gota3lab = false;
            		sheet.Gota2lab = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8empani == true then
            		sheet.Gota7empani = true;
            		sheet.Gota6empani = true;
            		sheet.Gota5empani = true;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota7empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota6empani = true;
            		sheet.Gota5empani = true;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota6empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota5empani = true;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota5empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota4empani = true;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota4empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota3empani = true;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota3empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota2empani = true;
            		sheet.Gota1empani = true;
            	elseif sheet.Gota2empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota3empani = false;
            		sheet.Gota1empani = true;	
            	elseif sheet.Gota1empani == true then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota3empani = false;
            		sheet.Gota2empani = false;
            	elseif sheet.Gota1empani == false then
            		sheet.Gota8empani = false;
            		sheet.Gota7empani = false;
            		sheet.Gota6empani = false;
            		sheet.Gota5empani = false;
            		sheet.Gota4empani = false;
            		sheet.Gota3empani = false;
            		sheet.Gota2empani = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ofi == true then
            		sheet.Gota7ofi = true;
            		sheet.Gota6ofi = true;
            		sheet.Gota5ofi = true;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota7ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota6ofi = true;
            		sheet.Gota5ofi = true;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota6ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota5ofi = true;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota5ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota4ofi = true;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota4ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota3ofi = true;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota3ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota2ofi = true;
            		sheet.Gota1ofi = true;
            	elseif sheet.Gota2ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota3ofi = false;
            		sheet.Gota1ofi = true;	
            	elseif sheet.Gota1ofi == true then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota3ofi = false;
            		sheet.Gota2ofi = false;
            	elseif sheet.Gota1ofi == false then
            		sheet.Gota8ofi = false;
            		sheet.Gota7ofi = false;
            		sheet.Gota6ofi = false;
            		sheet.Gota5ofi = false;
            		sheet.Gota4ofi = false;
            		sheet.Gota3ofi = false;
            		sheet.Gota2ofi = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8cond == true then
            		sheet.Gota7cond = true;
            		sheet.Gota6cond = true;
            		sheet.Gota5cond = true;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota7cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota6cond = true;
            		sheet.Gota5cond = true;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota6cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota5cond = true;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota5cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota4cond = true;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota4cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota3cond = true;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota3cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota2cond = true;
            		sheet.Gota1cond = true;
            	elseif sheet.Gota2cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota3cond = false;
            		sheet.Gota1cond = true;	
            	elseif sheet.Gota1cond == true then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota3cond = false;
            		sheet.Gota2cond = false;
            	elseif sheet.Gota1cond == false then
            		sheet.Gota8cond = false;
            		sheet.Gota7cond = false;
            		sheet.Gota6cond = false;
            		sheet.Gota5cond = false;
            		sheet.Gota4cond = false;
            		sheet.Gota3cond = false;
            		sheet.Gota2cond = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8etiq == true then
            		sheet.Gota7etiq = true;
            		sheet.Gota6etiq = true;
            		sheet.Gota5etiq = true;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota7etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota6etiq = true;
            		sheet.Gota5etiq = true;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota6etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota5etiq = true;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota5etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota4etiq = true;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota4etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota3etiq = true;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota3etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota2etiq = true;
            		sheet.Gota1etiq = true;
            	elseif sheet.Gota2etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota3etiq = false;
            		sheet.Gota1etiq = true;	
            	elseif sheet.Gota1etiq == true then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota3etiq = false;
            		sheet.Gota2etiq = false;
            	elseif sheet.Gota1etiq == false then
            		sheet.Gota8etiq = false;
            		sheet.Gota7etiq = false;
            		sheet.Gota6etiq = false;
            		sheet.Gota5etiq = false;
            		sheet.Gota4etiq = false;
            		sheet.Gota3etiq = false;
            		sheet.Gota2etiq = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8adf == true then
            		sheet.Gota7adf = true;
            		sheet.Gota6adf = true;
            		sheet.Gota5adf = true;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota7adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota6adf = true;
            		sheet.Gota5adf = true;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota6adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota5adf = true;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota5adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota4adf = true;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota4adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota3adf = true;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota3adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota2adf = true;
            		sheet.Gota1adf = true;
            	elseif sheet.Gota2adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota3adf = false;
            		sheet.Gota1adf = true;	
            	elseif sheet.Gota1adf == true then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota3adf = false;
            		sheet.Gota2adf = false;
            	elseif sheet.Gota1adf == false then
            		sheet.Gota8adf = false;
            		sheet.Gota7adf = false;
            		sheet.Gota6adf = false;
            		sheet.Gota5adf = false;
            		sheet.Gota4adf = false;
            		sheet.Gota3adf = false;
            		sheet.Gota2adf = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ab == true then
            		sheet.Gota7ab = true;
            		sheet.Gota6ab = true;
            		sheet.Gota5ab = true;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota7ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota6ab = true;
            		sheet.Gota5ab = true;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota6ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota5ab = true;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota5ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota4ab = true;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota4ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota3ab = true;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota3ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota2ab = true;
            		sheet.Gota1ab = true;
            	elseif sheet.Gota2ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota3ab = false;
            		sheet.Gota1ab = true;	
            	elseif sheet.Gota1ab == true then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota3ab = false;
            		sheet.Gota2ab = false;
            	elseif sheet.Gota1ab == false then
            		sheet.Gota8ab = false;
            		sheet.Gota7ab = false;
            		sheet.Gota6ab = false;
            		sheet.Gota5ab = false;
            		sheet.Gota4ab = false;
            		sheet.Gota3ab = false;
            		sheet.Gota2ab = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8perf == true then
            		sheet.Gota7perf = true;
            		sheet.Gota6perf = true;
            		sheet.Gota5perf = true;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota7perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota6perf = true;
            		sheet.Gota5perf = true;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota6perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota5perf = true;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota5perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota4perf = true;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota4perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota3perf = true;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota3perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota2perf = true;
            		sheet.Gota1perf = true;
            	elseif sheet.Gota2perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota3perf = false;
            		sheet.Gota1perf = true;	
            	elseif sheet.Gota1perf == true then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota3perf = false;
            		sheet.Gota2perf = false;
            	elseif sheet.Gota1perf == false then
            		sheet.Gota8perf = false;
            		sheet.Gota7perf = false;
            		sheet.Gota6perf = false;
            		sheet.Gota5perf = false;
            		sheet.Gota4perf = false;
            		sheet.Gota3perf = false;
            		sheet.Gota2perf = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8seg == true then
            		sheet.Gota7seg = true;
            		sheet.Gota6seg = true;
            		sheet.Gota5seg = true;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota7seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota6seg = true;
            		sheet.Gota5seg = true;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota6seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota5seg = true;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota5seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota4seg = true;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota4seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota3seg = true;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota3seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota2seg = true;
            		sheet.Gota1seg = true;
            	elseif sheet.Gota2seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota3seg = false;
            		sheet.Gota1seg = true;	
            	elseif sheet.Gota1seg == true then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota3seg = false;
            		sheet.Gota2seg = false;
            	elseif sheet.Gota1seg == false then
            		sheet.Gota8seg = false;
            		sheet.Gota7seg = false;
            		sheet.Gota6seg = false;
            		sheet.Gota5seg = false;
            		sheet.Gota4seg = false;
            		sheet.Gota3seg = false;
            		sheet.Gota2seg = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8furti == true then
            		sheet.Gota7furti = true;
            		sheet.Gota6furti = true;
            		sheet.Gota5furti = true;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota7furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota6furti = true;
            		sheet.Gota5furti = true;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota6furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota5furti = true;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota5furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota4furti = true;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota4furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota3furti = true;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota3furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota2furti = true;
            		sheet.Gota1furti = true;
            	elseif sheet.Gota2furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota3furti = false;
            		sheet.Gota1furti = true;	
            	elseif sheet.Gota1furti == true then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota3furti = false;
            		sheet.Gota2furti = false;
            	elseif sheet.Gota1furti == false then
            		sheet.Gota8furti = false;
            		sheet.Gota7furti = false;
            		sheet.Gota6furti = false;
            		sheet.Gota5furti = false;
            		sheet.Gota4furti = false;
            		sheet.Gota3furti = false;
            		sheet.Gota2furti = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8sobre == true then
            		sheet.Gota7sobre = true;
            		sheet.Gota6sobre = true;
            		sheet.Gota5sobre = true;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota7sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota6sobre = true;
            		sheet.Gota5sobre = true;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota6sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota5sobre = true;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota5sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota4sobre = true;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota4sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota3sobre = true;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota3sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota2sobre = true;
            		sheet.Gota1sobre = true;
            	elseif sheet.Gota2sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota3sobre = false;
            		sheet.Gota1sobre = true;	
            	elseif sheet.Gota1sobre == true then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota3sobre = false;
            		sheet.Gota2sobre = false;
            	elseif sheet.Gota1sobre == false then
            		sheet.Gota8sobre = false;
            		sheet.Gota7sobre = false;
            		sheet.Gota6sobre = false;
            		sheet.Gota5sobre = false;
            		sheet.Gota4sobre = false;
            		sheet.Gota3sobre = false;
            		sheet.Gota2sobre = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8acad == true then
            		sheet.Gota7acad = true;
            		sheet.Gota6acad = true;
            		sheet.Gota5acad = true;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota7acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota6acad = true;
            		sheet.Gota5acad = true;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota6acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota5acad = true;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota5acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota4acad = true;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota4acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota3acad = true;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota3acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota2acad = true;
            		sheet.Gota1acad = true;
            	elseif sheet.Gota2acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota3acad = false;
            		sheet.Gota1acad = true;	
            	elseif sheet.Gota1acad == true then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota3acad = false;
            		sheet.Gota2acad = false;
            	elseif sheet.Gota1acad == false then
            		sheet.Gota8acad = false;
            		sheet.Gota7acad = false;
            		sheet.Gota6acad = false;
            		sheet.Gota5acad = false;
            		sheet.Gota4acad = false;
            		sheet.Gota3acad = false;
            		sheet.Gota2acad = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8comp == true then
            		sheet.Gota7comp = true;
            		sheet.Gota6comp = true;
            		sheet.Gota5comp = true;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota7comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota6comp = true;
            		sheet.Gota5comp = true;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota6comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota5comp = true;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota5comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota4comp = true;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota4comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota3comp = true;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota3comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota2comp = true;
            		sheet.Gota1comp = true;
            	elseif sheet.Gota2comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota3comp = false;
            		sheet.Gota1comp = true;	
            	elseif sheet.Gota1comp == true then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota3comp = false;
            		sheet.Gota2comp = false;
            	elseif sheet.Gota1comp == false then
            		sheet.Gota8comp = false;
            		sheet.Gota7comp = false;
            		sheet.Gota6comp = false;
            		sheet.Gota5comp = false;
            		sheet.Gota4comp = false;
            		sheet.Gota3comp = false;
            		sheet.Gota2comp = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8fina == true then
            		sheet.Gota7fina = true;
            		sheet.Gota6fina = true;
            		sheet.Gota5fina = true;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota7fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota6fina = true;
            		sheet.Gota5fina = true;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota6fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota5fina = true;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota5fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota4fina = true;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota4fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota3fina = true;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota3fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota2fina = true;
            		sheet.Gota1fina = true;
            	elseif sheet.Gota2fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota3fina = false;
            		sheet.Gota1fina = true;	
            	elseif sheet.Gota1fina == true then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota3fina = false;
            		sheet.Gota2fina = false;
            	elseif sheet.Gota1fina == false then
            		sheet.Gota8fina = false;
            		sheet.Gota7fina = false;
            		sheet.Gota6fina = false;
            		sheet.Gota5fina = false;
            		sheet.Gota4fina = false;
            		sheet.Gota3fina = false;
            		sheet.Gota2fina = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8inves == true then
            		sheet.Gota7inves = true;
            		sheet.Gota6inves = true;
            		sheet.Gota5inves = true;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota7inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota6inves = true;
            		sheet.Gota5inves = true;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota6inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota5inves = true;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota5inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota4inves = true;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota4inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota3inves = true;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota3inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota2inves = true;
            		sheet.Gota1inves = true;
            	elseif sheet.Gota2inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota3inves = false;
            		sheet.Gota1inves = true;	
            	elseif sheet.Gota1inves == true then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota3inves = false;
            		sheet.Gota2inves = false;
            	elseif sheet.Gota1inves == false then
            		sheet.Gota8inves = false;
            		sheet.Gota7inves = false;
            		sheet.Gota6inves = false;
            		sheet.Gota5inves = false;
            		sheet.Gota4inves = false;
            		sheet.Gota3inves = false;
            		sheet.Gota2inves = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8dir == true then
            		sheet.Gota7dir = true;
            		sheet.Gota6dir = true;
            		sheet.Gota5dir = true;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota7dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota6dir = true;
            		sheet.Gota5dir = true;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota6dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota5dir = true;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota5dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota4dir = true;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota4dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota3dir = true;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota3dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota2dir = true;
            		sheet.Gota1dir = true;
            	elseif sheet.Gota2dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota3dir = false;
            		sheet.Gota1dir = true;	
            	elseif sheet.Gota1dir == true then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota3dir = false;
            		sheet.Gota2dir = false;
            	elseif sheet.Gota1dir == false then
            		sheet.Gota8dir = false;
            		sheet.Gota7dir = false;
            		sheet.Gota6dir = false;
            		sheet.Gota5dir = false;
            		sheet.Gota4dir = false;
            		sheet.Gota3dir = false;
            		sheet.Gota2dir = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ling == true then
            		sheet.Gota7ling = true;
            		sheet.Gota6ling = true;
            		sheet.Gota5ling = true;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota7ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota6ling = true;
            		sheet.Gota5ling = true;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota6ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota5ling = true;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota5ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota4ling = true;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota4ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota3ling = true;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota3ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota2ling = true;
            		sheet.Gota1ling = true;
            	elseif sheet.Gota2ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota3ling = false;
            		sheet.Gota1ling = true;	
            	elseif sheet.Gota1ling == true then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota3ling = false;
            		sheet.Gota2ling = false;
            	elseif sheet.Gota1ling == false then
            		sheet.Gota8ling = false;
            		sheet.Gota7ling = false;
            		sheet.Gota6ling = false;
            		sheet.Gota5ling = false;
            		sheet.Gota4ling = false;
            		sheet.Gota3ling = false;
            		sheet.Gota2ling = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8med == true then
            		sheet.Gota7med = true;
            		sheet.Gota6med = true;
            		sheet.Gota5med = true;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota7med == true then
            		sheet.Gota8med = false;
            		sheet.Gota6med = true;
            		sheet.Gota5med = true;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota6med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota5med = true;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota5med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota4med = true;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota4med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota3med = true;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota3med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota2med = true;
            		sheet.Gota1med = true;
            	elseif sheet.Gota2med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota3med = false;
            		sheet.Gota1med = true;	
            	elseif sheet.Gota1med == true then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota3med = false;
            		sheet.Gota2med = false;
            	elseif sheet.Gota1med == false then
            		sheet.Gota8med = false;
            		sheet.Gota7med = false;
            		sheet.Gota6med = false;
            		sheet.Gota5med = false;
            		sheet.Gota4med = false;
            		sheet.Gota3med = false;
            		sheet.Gota2med = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8ocult == true then
            		sheet.Gota7ocult = true;
            		sheet.Gota6ocult = true;
            		sheet.Gota5ocult = true;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota7ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota6ocult = true;
            		sheet.Gota5ocult = true;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota6ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota5ocult = true;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota5ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota4ocult = true;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota4ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota3ocult = true;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota3ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota2ocult = true;
            		sheet.Gota1ocult = true;
            	elseif sheet.Gota2ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota3ocult = false;
            		sheet.Gota1ocult = true;	
            	elseif sheet.Gota1ocult == true then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota3ocult = false;
            		sheet.Gota2ocult = false;
            	elseif sheet.Gota1ocult == false then
            		sheet.Gota8ocult = false;
            		sheet.Gota7ocult = false;
            		sheet.Gota6ocult = false;
            		sheet.Gota5ocult = false;
            		sheet.Gota4ocult = false;
            		sheet.Gota3ocult = false;
            		sheet.Gota2ocult = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8pol == true then
            		sheet.Gota7pol = true;
            		sheet.Gota6pol = true;
            		sheet.Gota5pol = true;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota7pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota6pol = true;
            		sheet.Gota5pol = true;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota6pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota5pol = true;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota5pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota4pol = true;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota4pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota3pol = true;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota3pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota2pol = true;
            		sheet.Gota1pol = true;
            	elseif sheet.Gota2pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota3pol = false;
            		sheet.Gota1pol = true;	
            	elseif sheet.Gota1pol == true then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota3pol = false;
            		sheet.Gota2pol = false;
            	elseif sheet.Gota1pol == false then
            		sheet.Gota8pol = false;
            		sheet.Gota7pol = false;
            		sheet.Gota6pol = false;
            		sheet.Gota5pol = false;
            		sheet.Gota4pol = false;
            		sheet.Gota3pol = false;
            		sheet.Gota2pol = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8cie == true then
            		sheet.Gota7cie = true;
            		sheet.Gota6cie = true;
            		sheet.Gota5cie = true;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota7cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota6cie = true;
            		sheet.Gota5cie = true;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota6cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota5cie = true;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota5cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota4cie = true;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota4cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota3cie = true;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota3cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota2cie = true;
            		sheet.Gota1cie = true;
            	elseif sheet.Gota2cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota3cie = false;
            		sheet.Gota1cie = true;	
            	elseif sheet.Gota1cie == true then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota3cie = false;
            		sheet.Gota2cie = false;
            	elseif sheet.Gota1cie == false then
            		sheet.Gota8cie = false;
            		sheet.Gota7cie = false;
            		sheet.Gota6cie = false;
            		sheet.Gota5cie = false;
            		sheet.Gota4cie = false;
            		sheet.Gota3cie = false;
            		sheet.Gota2cie = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant1 == true then
            		sheet.Gota7Ant1 = true;
            		sheet.Gota6Ant1 = true;
            		sheet.Gota5Ant1 = true;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota7Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota6Ant1 = true;
            		sheet.Gota5Ant1 = true;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota6Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota5Ant1 = true;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota5Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota4Ant1 = true;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota4Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota3Ant1 = true;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota3Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota2Ant1 = true;
            		sheet.Gota1Ant1 = true;
            	elseif sheet.Gota2Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota3Ant1 = false;
            		sheet.Gota1Ant1 = true;	
            	elseif sheet.Gota1Ant1 == true then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota3Ant1 = false;
            		sheet.Gota2Ant1 = false;
            	elseif sheet.Gota1Ant1 == false then
            		sheet.Gota8Ant1 = false;
            		sheet.Gota7Ant1 = false;
            		sheet.Gota6Ant1 = false;
            		sheet.Gota5Ant1 = false;
            		sheet.Gota4Ant1 = false;
            		sheet.Gota3Ant1 = false;
            		sheet.Gota2Ant1 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant2 == true then
            		sheet.Gota7Ant2 = true;
            		sheet.Gota6Ant2 = true;
            		sheet.Gota5Ant2 = true;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota7Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota6Ant2 = true;
            		sheet.Gota5Ant2 = true;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota6Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota5Ant2 = true;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota5Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota4Ant2 = true;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota4Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota3Ant2 = true;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota3Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota2Ant2 = true;
            		sheet.Gota1Ant2 = true;
            	elseif sheet.Gota2Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota3Ant2 = false;
            		sheet.Gota1Ant2 = true;	
            	elseif sheet.Gota1Ant2 == true then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota3Ant2 = false;
            		sheet.Gota2Ant2 = false;
            	elseif sheet.Gota1Ant2 == false then
            		sheet.Gota8Ant2 = false;
            		sheet.Gota7Ant2 = false;
            		sheet.Gota6Ant2 = false;
            		sheet.Gota5Ant2 = false;
            		sheet.Gota4Ant2 = false;
            		sheet.Gota3Ant2 = false;
            		sheet.Gota2Ant2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant3 == true then
            		sheet.Gota7Ant3 = true;
            		sheet.Gota6Ant3 = true;
            		sheet.Gota5Ant3 = true;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota7Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota6Ant3 = true;
            		sheet.Gota5Ant3 = true;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota6Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota5Ant3 = true;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota5Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota4Ant3 = true;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota4Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota3Ant3 = true;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota3Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota2Ant3 = true;
            		sheet.Gota1Ant3 = true;
            	elseif sheet.Gota2Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota3Ant3 = false;
            		sheet.Gota1Ant3 = true;	
            	elseif sheet.Gota1Ant3 == true then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota3Ant3 = false;
            		sheet.Gota2Ant3 = false;
            	elseif sheet.Gota1Ant3 == false then
            		sheet.Gota8Ant3 = false;
            		sheet.Gota7Ant3 = false;
            		sheet.Gota6Ant3 = false;
            		sheet.Gota5Ant3 = false;
            		sheet.Gota4Ant3 = false;
            		sheet.Gota3Ant3 = false;
            		sheet.Gota2Ant3 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant4 == true then
            		sheet.Gota7Ant4 = true;
            		sheet.Gota6Ant4 = true;
            		sheet.Gota5Ant4 = true;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota7Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota6Ant4 = true;
            		sheet.Gota5Ant4 = true;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota6Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota5Ant4 = true;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota5Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota4Ant4 = true;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota4Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota3Ant4 = true;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota3Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota2Ant4 = true;
            		sheet.Gota1Ant4 = true;
            	elseif sheet.Gota2Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota3Ant4 = false;
            		sheet.Gota1Ant4 = true;	
            	elseif sheet.Gota1Ant4 == true then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota3Ant4 = false;
            		sheet.Gota2Ant4 = false;
            	elseif sheet.Gota1Ant4 == false then
            		sheet.Gota8Ant4 = false;
            		sheet.Gota7Ant4 = false;
            		sheet.Gota6Ant4 = false;
            		sheet.Gota5Ant4 = false;
            		sheet.Gota4Ant4 = false;
            		sheet.Gota3Ant4 = false;
            		sheet.Gota2Ant4 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant5 == true then
            		sheet.Gota7Ant5 = true;
            		sheet.Gota6Ant5 = true;
            		sheet.Gota5Ant5 = true;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota7Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota6Ant5 = true;
            		sheet.Gota5Ant5 = true;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota6Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota5Ant5 = true;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota5Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota4Ant5 = true;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota4Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota3Ant5 = true;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota3Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota2Ant5 = true;
            		sheet.Gota1Ant5 = true;
            	elseif sheet.Gota2Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota3Ant5 = false;
            		sheet.Gota1Ant5 = true;	
            	elseif sheet.Gota1Ant5 == true then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota3Ant5 = false;
            		sheet.Gota2Ant5 = false;
            	elseif sheet.Gota1Ant5 == false then
            		sheet.Gota8Ant5 = false;
            		sheet.Gota7Ant5 = false;
            		sheet.Gota6Ant5 = false;
            		sheet.Gota5Ant5 = false;
            		sheet.Gota4Ant5 = false;
            		sheet.Gota3Ant5 = false;
            		sheet.Gota2Ant5 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant6 == true then
            		sheet.Gota7Ant6 = true;
            		sheet.Gota6Ant6 = true;
            		sheet.Gota5Ant6 = true;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota7Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota6Ant6 = true;
            		sheet.Gota5Ant6 = true;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota6Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota5Ant6 = true;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota5Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota4Ant6 = true;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota4Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota3Ant6 = true;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota3Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota2Ant6 = true;
            		sheet.Gota1Ant6 = true;
            	elseif sheet.Gota2Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota3Ant6 = false;
            		sheet.Gota1Ant6 = true;	
            	elseif sheet.Gota1Ant6 == true then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota3Ant6 = false;
            		sheet.Gota2Ant6 = false;
            	elseif sheet.Gota1Ant6 == false then
            		sheet.Gota8Ant6 = false;
            		sheet.Gota7Ant6 = false;
            		sheet.Gota6Ant6 = false;
            		sheet.Gota5Ant6 = false;
            		sheet.Gota4Ant6 = false;
            		sheet.Gota3Ant6 = false;
            		sheet.Gota2Ant6 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Ant7 == true then
            		sheet.Gota7Ant7 = true;
            		sheet.Gota6Ant7 = true;
            		sheet.Gota5Ant7 = true;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota7Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota6Ant7 = true;
            		sheet.Gota5Ant7 = true;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota6Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota5Ant7 = true;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota5Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota4Ant7 = true;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota4Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota3Ant7 = true;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota3Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota2Ant7 = true;
            		sheet.Gota1Ant7 = true;
            	elseif sheet.Gota2Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota3Ant7 = false;
            		sheet.Gota1Ant7 = true;	
            	elseif sheet.Gota1Ant7 == true then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota3Ant7 = false;
            		sheet.Gota2Ant7 = false;
            	elseif sheet.Gota1Ant7 == false then
            		sheet.Gota8Ant7 = false;
            		sheet.Gota7Ant7 = false;
            		sheet.Gota6Ant7 = false;
            		sheet.Gota5Ant7 = false;
            		sheet.Gota4Ant7 = false;
            		sheet.Gota3Ant7 = false;
            		sheet.Gota2Ant7 = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis1 == true then
            		sheet.Gota7Dis1 = true;
            		sheet.Gota6Dis1 = true;
            		sheet.Gota5Dis1 = true;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota7Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota6Dis1 = true;
            		sheet.Gota5Dis1 = true;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota6Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota5Dis1 = true;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota5Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota4Dis1 = true;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota4Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota3Dis1 = true;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota3Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota2Dis1 = true;
            		sheet.Gota1Dis1 = true;
            	elseif sheet.Gota2Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota3Dis1 = false;
            		sheet.Gota1Dis1 = true;	
            	elseif sheet.Gota1Dis1 == true then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota3Dis1 = false;
            		sheet.Gota2Dis1 = false;
            	elseif sheet.Gota1Dis1 == false then
            		sheet.Gota8Dis1 = false;
            		sheet.Gota7Dis1 = false;
            		sheet.Gota6Dis1 = false;
            		sheet.Gota5Dis1 = false;
            		sheet.Gota4Dis1 = false;
            		sheet.Gota3Dis1 = false;
            		sheet.Gota2Dis1 = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis2 == true then
            		sheet.Gota7Dis2 = true;
            		sheet.Gota6Dis2 = true;
            		sheet.Gota5Dis2 = true;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota7Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota6Dis2 = true;
            		sheet.Gota5Dis2 = true;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota6Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota5Dis2 = true;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota5Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota4Dis2 = true;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota4Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota3Dis2 = true;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota3Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota2Dis2 = true;
            		sheet.Gota1Dis2 = true;
            	elseif sheet.Gota2Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota3Dis2 = false;
            		sheet.Gota1Dis2 = true;	
            	elseif sheet.Gota1Dis2 == true then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota3Dis2 = false;
            		sheet.Gota2Dis2 = false;
            	elseif sheet.Gota1Dis2 == false then
            		sheet.Gota8Dis2 = false;
            		sheet.Gota7Dis2 = false;
            		sheet.Gota6Dis2 = false;
            		sheet.Gota5Dis2 = false;
            		sheet.Gota4Dis2 = false;
            		sheet.Gota3Dis2 = false;
            		sheet.Gota2Dis2 = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis3 == true then
            		sheet.Gota7Dis3 = true;
            		sheet.Gota6Dis3 = true;
            		sheet.Gota5Dis3 = true;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota7Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota6Dis3 = true;
            		sheet.Gota5Dis3 = true;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota6Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota5Dis3 = true;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota5Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota4Dis3 = true;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota4Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota3Dis3 = true;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota3Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota2Dis3 = true;
            		sheet.Gota1Dis3 = true;
            	elseif sheet.Gota2Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota3Dis3 = false;
            		sheet.Gota1Dis3 = true;	
            	elseif sheet.Gota1Dis3 == true then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota3Dis3 = false;
            		sheet.Gota2Dis3 = false;
            	elseif sheet.Gota1Dis3 == false then
            		sheet.Gota8Dis3 = false;
            		sheet.Gota7Dis3 = false;
            		sheet.Gota6Dis3 = false;
            		sheet.Gota5Dis3 = false;
            		sheet.Gota4Dis3 = false;
            		sheet.Gota3Dis3 = false;
            		sheet.Gota2Dis3 = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis4 == true then
            		sheet.Gota7Dis4 = true;
            		sheet.Gota6Dis4 = true;
            		sheet.Gota5Dis4 = true;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota7Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota6Dis4 = true;
            		sheet.Gota5Dis4 = true;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota6Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota5Dis4 = true;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota5Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota4Dis4 = true;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota4Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota3Dis4 = true;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota3Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota2Dis4 = true;
            		sheet.Gota1Dis4 = true;
            	elseif sheet.Gota2Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota3Dis4 = false;
            		sheet.Gota1Dis4 = true;	
            	elseif sheet.Gota1Dis4 == true then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota3Dis4 = false;
            		sheet.Gota2Dis4 = false;
            	elseif sheet.Gota1Dis4 == false then
            		sheet.Gota8Dis4 = false;
            		sheet.Gota7Dis4 = false;
            		sheet.Gota6Dis4 = false;
            		sheet.Gota5Dis4 = false;
            		sheet.Gota4Dis4 = false;
            		sheet.Gota3Dis4 = false;
            		sheet.Gota2Dis4 = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis5 == true then
            		sheet.Gota7Dis5 = true;
            		sheet.Gota6Dis5 = true;
            		sheet.Gota5Dis5 = true;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota7Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota6Dis5 = true;
            		sheet.Gota5Dis5 = true;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota6Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota5Dis5 = true;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota5Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota4Dis5 = true;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota4Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota3Dis5 = true;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota3Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota2Dis5 = true;
            		sheet.Gota1Dis5 = true;
            	elseif sheet.Gota2Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota3Dis5 = false;
            		sheet.Gota1Dis5 = true;	
            	elseif sheet.Gota1Dis5 == true then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota3Dis5 = false;
            		sheet.Gota2Dis5 = false;
            	elseif sheet.Gota1Dis5 == false then
            		sheet.Gota8Dis5 = false;
            		sheet.Gota7Dis5 = false;
            		sheet.Gota6Dis5 = false;
            		sheet.Gota5Dis5 = false;
            		sheet.Gota4Dis5 = false;
            		sheet.Gota3Dis5 = false;
            		sheet.Gota2Dis5 = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis6 == true then
            		sheet.Gota7Dis6 = true;
            		sheet.Gota6Dis6 = true;
            		sheet.Gota5Dis6 = true;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota7Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota6Dis6 = true;
            		sheet.Gota5Dis6 = true;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota6Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota5Dis6 = true;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota5Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota4Dis6 = true;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota4Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota3Dis6 = true;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota3Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota2Dis6 = true;
            		sheet.Gota1Dis6 = true;
            	elseif sheet.Gota2Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota3Dis6 = false;
            		sheet.Gota1Dis6 = true;	
            	elseif sheet.Gota1Dis6 == true then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota3Dis6 = false;
            		sheet.Gota2Dis6 = false;
            	elseif sheet.Gota1Dis6 == false then
            		sheet.Gota8Dis6 = false;
            		sheet.Gota7Dis6 = false;
            		sheet.Gota6Dis6 = false;
            		sheet.Gota5Dis6 = false;
            		sheet.Gota4Dis6 = false;
            		sheet.Gota3Dis6 = false;
            		sheet.Gota2Dis6 = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota8Dis7 == true then
            		sheet.Gota7Dis7 = true;
            		sheet.Gota6Dis7 = true;
            		sheet.Gota5Dis7 = true;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota7Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota6Dis7 = true;
            		sheet.Gota5Dis7 = true;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota6Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota5Dis7 = true;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota5Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota4Dis7 = true;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota4Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota3Dis7 = true;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota3Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota2Dis7 = true;
            		sheet.Gota1Dis7 = true;
            	elseif sheet.Gota2Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota3Dis7 = false;
            		sheet.Gota1Dis7 = true;	
            	elseif sheet.Gota1Dis7 == true then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota3Dis7 = false;
            		sheet.Gota2Dis7 = false;
            	elseif sheet.Gota1Dis7 == false then
            		sheet.Gota8Dis7 = false;
            		sheet.Gota7Dis7 = false;
            		sheet.Gota6Dis7 = false;
            		sheet.Gota5Dis7 = false;
            		sheet.Gota4Dis7 = false;
            		sheet.Gota3Dis7 = false;
            		sheet.Gota2Dis7 = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota5CC == true then
            		sheet.Gota4CC = true;
            		sheet.Gota3CC = true;
            		sheet.Gota2CC = true;
            		sheet.Gota1CC = true;
            	elseif sheet.Gota4CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota3CC = true;
            		sheet.Gota2CC = true;
            		sheet.Gota1CC = true;
            	elseif sheet.Gota3CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota2CC = true;
            		sheet.Gota1CC = true;
            	elseif sheet.Gota2CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota3CC = false;
            		sheet.Gota1CC = true;	
            	elseif sheet.Gota1CC == true then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota3CC = false;
            		sheet.Gota2CC = false;
            	elseif sheet.Gota1CC == false then
            		sheet.Gota5CC = false;
            		sheet.Gota4CC = false;
            		sheet.Gota3CC = false;
            		sheet.Gota2CC = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota5AI == true then
            		sheet.Gota4AI = true;
            		sheet.Gota3AI = true;
            		sheet.Gota2AI = true;
            		sheet.Gota1AI = true;
            	elseif sheet.Gota4AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota3AI = true;
            		sheet.Gota2AI = true;
            		sheet.Gota1AI = true;
            	elseif sheet.Gota3AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota2AI = true;
            		sheet.Gota1AI = true;
            	elseif sheet.Gota2AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota3AI = false;
            		sheet.Gota1AI = true;	
            	elseif sheet.Gota1AI == true then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota3AI = false;
            		sheet.Gota2AI = false;
            	elseif sheet.Gota1AI == false then
            		sheet.Gota5AI = false;
            		sheet.Gota4AI = false;
            		sheet.Gota3AI = false;
            		sheet.Gota2AI = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota5Cor == true then
            		sheet.Gota4Cor = true;
            		sheet.Gota3Cor = true;
            		sheet.Gota2Cor = true;
            		sheet.Gota1Cor = true;
            	elseif sheet.Gota4Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota3Cor = true;
            		sheet.Gota2Cor = true;
            		sheet.Gota1Cor = true;
            	elseif sheet.Gota3Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota2Cor = true;
            		sheet.Gota1Cor = true;
            	elseif sheet.Gota2Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota3Cor = false;
            		sheet.Gota1Cor = true;	
            	elseif sheet.Gota1Cor == true then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota3Cor = false;
            		sheet.Gota2Cor = false;
            	elseif sheet.Gota1Cor == false then
            		sheet.Gota5Cor = false;
            		sheet.Gota4Cor = false;
            		sheet.Gota3Cor = false;
            		sheet.Gota2Cor = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota10HT == true then
            		sheet.Gota9HT = true;
            		sheet.Gota8HT = true;
            		sheet.Gota7HT = true;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota9HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota8HT = true;
            		sheet.Gota7HT = true;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota8HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota7HT = true;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota7HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota6HT = true;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota6HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota5HT = true;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota5HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota4HT = true;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota4HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota3HT = true;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota3HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota2HT = true;
            		sheet.Gota1HT = true;
            	elseif sheet.Gota2HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota3HT = false;
            		sheet.Gota1HT = true;	
            	elseif sheet.Gota1HT == true then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota3HT = false;
            		sheet.Gota2HT = false;
            	elseif sheet.Gota1HT == false then
            		sheet.Gota10HT = false;
            		sheet.Gota9HT = false;
            		sheet.Gota8HT = false;
            		sheet.Gota7HT = false;
            		sheet.Gota6HT = false;
            		sheet.Gota5HT = false;
            		sheet.Gota4HT = false;
            		sheet.Gota3HT = false;
            		sheet.Gota2HT = false;
            	end;
        end, obj);

    obj._e_event57 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota10FDV == true then
            		sheet.Gota9FDV = true;
            		sheet.Gota8FDV = true;
            		sheet.Gota7FDV = true;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota9FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota8FDV = true;
            		sheet.Gota7FDV = true;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota8FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota7FDV = true;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota7FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota6FDV = true;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota6FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota5FDV = true;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota5FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota4FDV = true;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota4FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota3FDV = true;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota3FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota2FDV = true;
            		sheet.Gota1FDV = true;
            	elseif sheet.Gota2FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota3FDV = false;
            		sheet.Gota1FDV = true;	
            	elseif sheet.Gota1FDV == true then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota3FDV = false;
            		sheet.Gota2FDV = false;
            	elseif sheet.Gota1FDV == false then
            		sheet.Gota10FDV = false;
            		sheet.Gota9FDV = false;
            		sheet.Gota8FDV = false;
            		sheet.Gota7FDV = false;
            		sheet.Gota6FDV = false;
            		sheet.Gota5FDV = false;
            		sheet.Gota4FDV = false;
            		sheet.Gota3FDV = false;
            		sheet.Gota2FDV = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.SQ10FDV == true then
            		sheet.SQ9FDV = true;
            		sheet.SQ8FDV = true;
            		sheet.SQ7FDV = true;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ9FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ8FDV = true;
            		sheet.SQ7FDV = true;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ8FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ7FDV = true;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ7FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ6FDV = true;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ6FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ5FDV = true;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ5FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ4FDV = true;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ4FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ3FDV = true;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ3FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ2FDV = true;
            		sheet.SQ1FDV = true;
            	elseif sheet.SQ2FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ3FDV = false;
            		sheet.SQ1FDV = true;	
            	elseif sheet.SQ1FDV == true then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ3FDV = false;
            		sheet.SQ2FDV = false;
            	elseif sheet.SQ1FDV == false then
            		sheet.SQ10FDV = false;
            		sheet.SQ9FDV = false;
            		sheet.SQ8FDV = false;
            		sheet.SQ7FDV = false;
            		sheet.SQ6FDV = false;
            		sheet.SQ5FDV = false;
            		sheet.SQ4FDV = false;
            		sheet.SQ3FDV = false;
            		sheet.SQ2FDV = false;
            	end;
        end, obj);

    obj._e_event59 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota40PS == true then
            		sheet.Gota39PS = true;
            		sheet.Gota38PS = true;
            		sheet.Gota37PS = true;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota39PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota38PS = true;
            		sheet.Gota37PS = true;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota38PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota37PS = true;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota37PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota36PS = true;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota36PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota35PS = true;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota35PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota34PS = true;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota34PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota33PS = true;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota33PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota32PS = true;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota32PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota31PS = true;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota31PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota30PS = true;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota30PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota29PS = true;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota29PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota28PS = true;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota28PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota27PS = true;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota27PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota26PS = true;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota26PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota25PS = true;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota25PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota24PS = true;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota24PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota23PS = true;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota23PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota22PS = true;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota22PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota21PS = true;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota21PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota20PS = true;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota20PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota19PS = true;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota19PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota18PS = true;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota18PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota17PS = true;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota17PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota16PS = true;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota16PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota15PS = true;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota15PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota14PS = true;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota14PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota13PS = true;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota13PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota12PS = true;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota12PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota11PS = true;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota11PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota10PS = true;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota10PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota9PS = true;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota9PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota8PS = true;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota8PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota7PS = true;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota7PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota6PS = true;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota6PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota5PS = true;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota5PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota4PS = true;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota4PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota3PS = true;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota3PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota2PS = true;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota2PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota3PS = false;
            		sheet.Gota1PS = true;
            	elseif sheet.Gota1PS == true then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota3PS = false;
            		sheet.Gota2PS = false;
            	elseif sheet.Gota1PS == false then
            		sheet.Gota40PS = false;
            		sheet.Gota39PS = false;
            		sheet.Gota38PS = false;
            		sheet.Gota37PS = false;
            		sheet.Gota36PS = false;
            		sheet.Gota35PS = false;
            		sheet.Gota34PS = false;
            		sheet.Gota33PS = false;
            		sheet.Gota32PS = false;
            		sheet.Gota31PS = false;
            		sheet.Gota30PS = false;
            		sheet.Gota29PS = false;
            		sheet.Gota28PS = false;
            		sheet.Gota27PS = false;
            		sheet.Gota26PS = false;
            		sheet.Gota25PS = false;
            		sheet.Gota24PS = false;
            		sheet.Gota23PS = false;
            		sheet.Gota22PS = false;
            		sheet.Gota21PS = false;
            		sheet.Gota20PS = false;
            		sheet.Gota19PS = false;
            		sheet.Gota18PS = false;
            		sheet.Gota17PS = false;
            		sheet.Gota16PS = false;
            		sheet.Gota15PS = false;
            		sheet.Gota14PS = false;
            		sheet.Gota13PS = false;
            		sheet.Gota12PS = false;
            		sheet.Gota11PS = false;
            		sheet.Gota10PS = false;
            		sheet.Gota9PS = false;
            		sheet.Gota8PS = false;
            		sheet.Gota7PS = false;
            		sheet.Gota6PS = false;
            		sheet.Gota5PS = false;
            		sheet.Gota4PS = false;
            		sheet.Gota3PS = false;
            		sheet.Gota2PS = false;
            	end;
        end, obj);

    obj._e_event60 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota7Letal == true then
            		sheet.Gota6Letal = true;
            		sheet.Gota5Letal = true;
            		sheet.Gota4Letal = true;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota6Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota5Letal = true;
            		sheet.Gota4Letal = true;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota5Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota4Letal = true;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota4Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota3Letal = true;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota3Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota2Letal = true;
            		sheet.Gota1Letal = true;
            	elseif sheet.Gota2Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota3Letal = false;
            		sheet.Gota1Letal = true;	
            	elseif sheet.Gota1Letal == true then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota3Letal = false;
            		sheet.Gota2Letal = false;
            	elseif sheet.Gota1Letal == false then
            		sheet.Gota7Letal = false;
            		sheet.Gota6Letal = false;
            		sheet.Gota5Letal = false;
            		sheet.Gota4Letal = false;
            		sheet.Gota3Letal = false;
            		sheet.Gota2Letal = false;
            	end;
        end, obj);

    obj._e_event61 = obj.dataLink63:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.Gota7Agravado == true then
            		sheet.Gota6Agravado = true;
            		sheet.Gota5Agravado = true;
            		sheet.Gota4Agravado = true;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota6Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota5Agravado = true;
            		sheet.Gota4Agravado = true;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota5Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota4Agravado = true;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota4Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota3Agravado = true;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota3Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota2Agravado = true;
            		sheet.Gota1Agravado = true;
            	elseif sheet.Gota2Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota3Agravado = false;
            		sheet.Gota1Agravado = true;	
            	elseif sheet.Gota1Agravado == true then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota3Agravado = false;
            		sheet.Gota2Agravado = false;
            	elseif sheet.Gota1Agravado == false then
            		sheet.Gota7Agravado = false;
            		sheet.Gota6Agravado = false;
            		sheet.Gota5Agravado = false;
            		sheet.Gota4Agravado = false;
            		sheet.Gota3Agravado = false;
            		sheet.Gota2Agravado = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
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
        if self.imageCheckBox512 ~= nil then self.imageCheckBox512:destroy(); self.imageCheckBox512 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout266 ~= nil then self.layout266:destroy(); self.layout266 = nil; end;
        if self.layout452 ~= nil then self.layout452:destroy(); self.layout452 = nil; end;
        if self.layout275 ~= nil then self.layout275:destroy(); self.layout275 = nil; end;
        if self.layout533 ~= nil then self.layout533:destroy(); self.layout533 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.imageCheckBox357 ~= nil then self.imageCheckBox357:destroy(); self.imageCheckBox357 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.layout391 ~= nil then self.layout391:destroy(); self.layout391 = nil; end;
        if self.imageCheckBox360 ~= nil then self.imageCheckBox360:destroy(); self.imageCheckBox360 = nil; end;
        if self.layout457 ~= nil then self.layout457:destroy(); self.layout457 = nil; end;
        if self.imageCheckBox504 ~= nil then self.imageCheckBox504:destroy(); self.imageCheckBox504 = nil; end;
        if self.layout257 ~= nil then self.layout257:destroy(); self.layout257 = nil; end;
        if self.layout438 ~= nil then self.layout438:destroy(); self.layout438 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.imageCheckBox414 ~= nil then self.imageCheckBox414:destroy(); self.imageCheckBox414 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.imageCheckBox465 ~= nil then self.imageCheckBox465:destroy(); self.imageCheckBox465 = nil; end;
        if self.layout290 ~= nil then self.layout290:destroy(); self.layout290 = nil; end;
        if self.layout445 ~= nil then self.layout445:destroy(); self.layout445 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.layout326 ~= nil then self.layout326:destroy(); self.layout326 = nil; end;
        if self.layout285 ~= nil then self.layout285:destroy(); self.layout285 = nil; end;
        if self.layout247 ~= nil then self.layout247:destroy(); self.layout247 = nil; end;
        if self.imageCheckBox450 ~= nil then self.imageCheckBox450:destroy(); self.imageCheckBox450 = nil; end;
        if self.layout494 ~= nil then self.layout494:destroy(); self.layout494 = nil; end;
        if self.imageCheckBox210 ~= nil then self.imageCheckBox210:destroy(); self.imageCheckBox210 = nil; end;
        if self.imageCheckBox441 ~= nil then self.imageCheckBox441:destroy(); self.imageCheckBox441 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.imageCheckBox421 ~= nil then self.imageCheckBox421:destroy(); self.imageCheckBox421 = nil; end;
        if self.layout249 ~= nil then self.layout249:destroy(); self.layout249 = nil; end;
        if self.imageCheckBox289 ~= nil then self.imageCheckBox289:destroy(); self.imageCheckBox289 = nil; end;
        if self.frmCodigo1 ~= nil then self.frmCodigo1:destroy(); self.frmCodigo1 = nil; end;
        if self.layout536 ~= nil then self.layout536:destroy(); self.layout536 = nil; end;
        if self.imageCheckBox304 ~= nil then self.imageCheckBox304:destroy(); self.imageCheckBox304 = nil; end;
        if self.layout417 ~= nil then self.layout417:destroy(); self.layout417 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.imageCheckBox271 ~= nil then self.imageCheckBox271:destroy(); self.imageCheckBox271 = nil; end;
        if self.imageCheckBox429 ~= nil then self.imageCheckBox429:destroy(); self.imageCheckBox429 = nil; end;
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
        if self.layout433 ~= nil then self.layout433:destroy(); self.layout433 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.layout407 ~= nil then self.layout407:destroy(); self.layout407 = nil; end;
        if self.imageCheckBox432 ~= nil then self.imageCheckBox432:destroy(); self.imageCheckBox432 = nil; end;
        if self.layout449 ~= nil then self.layout449:destroy(); self.layout449 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.imageCheckBox191 ~= nil then self.imageCheckBox191:destroy(); self.imageCheckBox191 = nil; end;
        if self.imageCheckBox145 ~= nil then self.imageCheckBox145:destroy(); self.imageCheckBox145 = nil; end;
        if self.layout411 ~= nil then self.layout411:destroy(); self.layout411 = nil; end;
        if self.layout434 ~= nil then self.layout434:destroy(); self.layout434 = nil; end;
        if self.layout174 ~= nil then self.layout174:destroy(); self.layout174 = nil; end;
        if self.layout502 ~= nil then self.layout502:destroy(); self.layout502 = nil; end;
        if self.layout316 ~= nil then self.layout316:destroy(); self.layout316 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.layout312 ~= nil then self.layout312:destroy(); self.layout312 = nil; end;
        if self.layout401 ~= nil then self.layout401:destroy(); self.layout401 = nil; end;
        if self.imageCheckBox150 ~= nil then self.imageCheckBox150:destroy(); self.imageCheckBox150 = nil; end;
        if self.imageCheckBox136 ~= nil then self.imageCheckBox136:destroy(); self.imageCheckBox136 = nil; end;
        if self.layout210 ~= nil then self.layout210:destroy(); self.layout210 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.imageCheckBox336 ~= nil then self.imageCheckBox336:destroy(); self.imageCheckBox336 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.imageCheckBox458 ~= nil then self.imageCheckBox458:destroy(); self.imageCheckBox458 = nil; end;
        if self.layout205 ~= nil then self.layout205:destroy(); self.layout205 = nil; end;
        if self.imageCheckBox214 ~= nil then self.imageCheckBox214:destroy(); self.imageCheckBox214 = nil; end;
        if self.imageCheckBox241 ~= nil then self.imageCheckBox241:destroy(); self.imageCheckBox241 = nil; end;
        if self.imageCheckBox443 ~= nil then self.imageCheckBox443:destroy(); self.imageCheckBox443 = nil; end;
        if self.imageCheckBox461 ~= nil then self.imageCheckBox461:destroy(); self.imageCheckBox461 = nil; end;
        if self.layout534 ~= nil then self.layout534:destroy(); self.layout534 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout203 ~= nil then self.layout203:destroy(); self.layout203 = nil; end;
        if self.layout509 ~= nil then self.layout509:destroy(); self.layout509 = nil; end;
        if self.imageCheckBox346 ~= nil then self.imageCheckBox346:destroy(); self.imageCheckBox346 = nil; end;
        if self.layout478 ~= nil then self.layout478:destroy(); self.layout478 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox131 ~= nil then self.imageCheckBox131:destroy(); self.imageCheckBox131 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.imageCheckBox475 ~= nil then self.imageCheckBox475:destroy(); self.imageCheckBox475 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.layout413 ~= nil then self.layout413:destroy(); self.layout413 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.layout248 ~= nil then self.layout248:destroy(); self.layout248 = nil; end;
        if self.layout341 ~= nil then self.layout341:destroy(); self.layout341 = nil; end;
        if self.layout259 ~= nil then self.layout259:destroy(); self.layout259 = nil; end;
        if self.layout392 ~= nil then self.layout392:destroy(); self.layout392 = nil; end;
        if self.imageCheckBox452 ~= nil then self.imageCheckBox452:destroy(); self.imageCheckBox452 = nil; end;
        if self.imageCheckBox326 ~= nil then self.imageCheckBox326:destroy(); self.imageCheckBox326 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.layout362 ~= nil then self.layout362:destroy(); self.layout362 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.layout325 ~= nil then self.layout325:destroy(); self.layout325 = nil; end;
        if self.imageCheckBox358 ~= nil then self.imageCheckBox358:destroy(); self.imageCheckBox358 = nil; end;
        if self.layout513 ~= nil then self.layout513:destroy(); self.layout513 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout246 ~= nil then self.layout246:destroy(); self.layout246 = nil; end;
        if self.imageCheckBox285 ~= nil then self.imageCheckBox285:destroy(); self.imageCheckBox285 = nil; end;
        if self.layout549 ~= nil then self.layout549:destroy(); self.layout549 = nil; end;
        if self.layout191 ~= nil then self.layout191:destroy(); self.layout191 = nil; end;
        if self.imageCheckBox350 ~= nil then self.imageCheckBox350:destroy(); self.imageCheckBox350 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.layout183 ~= nil then self.layout183:destroy(); self.layout183 = nil; end;
        if self.layout186 ~= nil then self.layout186:destroy(); self.layout186 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.layout229 ~= nil then self.layout229:destroy(); self.layout229 = nil; end;
        if self.imageCheckBox390 ~= nil then self.imageCheckBox390:destroy(); self.imageCheckBox390 = nil; end;
        if self.layout461 ~= nil then self.layout461:destroy(); self.layout461 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.layout361 ~= nil then self.layout361:destroy(); self.layout361 = nil; end;
        if self.imageCheckBox352 ~= nil then self.imageCheckBox352:destroy(); self.imageCheckBox352 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.imageCheckBox194 ~= nil then self.imageCheckBox194:destroy(); self.imageCheckBox194 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout523 ~= nil then self.layout523:destroy(); self.layout523 = nil; end;
        if self.imageCheckBox343 ~= nil then self.imageCheckBox343:destroy(); self.imageCheckBox343 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.imageCheckBox492 ~= nil then self.imageCheckBox492:destroy(); self.imageCheckBox492 = nil; end;
        if self.imageCheckBox495 ~= nil then self.imageCheckBox495:destroy(); self.imageCheckBox495 = nil; end;
        if self.imageCheckBox155 ~= nil then self.imageCheckBox155:destroy(); self.imageCheckBox155 = nil; end;
        if self.layout225 ~= nil then self.layout225:destroy(); self.layout225 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.layout162 ~= nil then self.layout162:destroy(); self.layout162 = nil; end;
        if self.layout524 ~= nil then self.layout524:destroy(); self.layout524 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout260 ~= nil then self.layout260:destroy(); self.layout260 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.layout270 ~= nil then self.layout270:destroy(); self.layout270 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.imageCheckBox508 ~= nil then self.imageCheckBox508:destroy(); self.imageCheckBox508 = nil; end;
        if self.imageCheckBox438 ~= nil then self.imageCheckBox438:destroy(); self.imageCheckBox438 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.layout241 ~= nil then self.layout241:destroy(); self.layout241 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout254 ~= nil then self.layout254:destroy(); self.layout254 = nil; end;
        if self.imageCheckBox182 ~= nil then self.imageCheckBox182:destroy(); self.imageCheckBox182 = nil; end;
        if self.imageCheckBox318 ~= nil then self.imageCheckBox318:destroy(); self.imageCheckBox318 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.layout493 ~= nil then self.layout493:destroy(); self.layout493 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.imageCheckBox382 ~= nil then self.imageCheckBox382:destroy(); self.imageCheckBox382 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.imageCheckBox506 ~= nil then self.imageCheckBox506:destroy(); self.imageCheckBox506 = nil; end;
        if self.layout244 ~= nil then self.layout244:destroy(); self.layout244 = nil; end;
        if self.imageCheckBox219 ~= nil then self.imageCheckBox219:destroy(); self.imageCheckBox219 = nil; end;
        if self.layout491 ~= nil then self.layout491:destroy(); self.layout491 = nil; end;
        if self.layout495 ~= nil then self.layout495:destroy(); self.layout495 = nil; end;
        if self.layout501 ~= nil then self.layout501:destroy(); self.layout501 = nil; end;
        if self.layout279 ~= nil then self.layout279:destroy(); self.layout279 = nil; end;
        if self.layout363 ~= nil then self.layout363:destroy(); self.layout363 = nil; end;
        if self.imageCheckBox246 ~= nil then self.imageCheckBox246:destroy(); self.imageCheckBox246 = nil; end;
        if self.imageCheckBox340 ~= nil then self.imageCheckBox340:destroy(); self.imageCheckBox340 = nil; end;
        if self.imageCheckBox391 ~= nil then self.imageCheckBox391:destroy(); self.imageCheckBox391 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout315 ~= nil then self.layout315:destroy(); self.layout315 = nil; end;
        if self.layout466 ~= nil then self.layout466:destroy(); self.layout466 = nil; end;
        if self.layout420 ~= nil then self.layout420:destroy(); self.layout420 = nil; end;
        if self.imageCheckBox260 ~= nil then self.imageCheckBox260:destroy(); self.imageCheckBox260 = nil; end;
        if self.layout382 ~= nil then self.layout382:destroy(); self.layout382 = nil; end;
        if self.imageCheckBox381 ~= nil then self.imageCheckBox381:destroy(); self.imageCheckBox381 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.imageCheckBox173 ~= nil then self.imageCheckBox173:destroy(); self.imageCheckBox173 = nil; end;
        if self.imageCheckBox309 ~= nil then self.imageCheckBox309:destroy(); self.imageCheckBox309 = nil; end;
        if self.imageCheckBox399 ~= nil then self.imageCheckBox399:destroy(); self.imageCheckBox399 = nil; end;
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
        if self.imageCheckBox491 ~= nil then self.imageCheckBox491:destroy(); self.imageCheckBox491 = nil; end;
        if self.layout200 ~= nil then self.layout200:destroy(); self.layout200 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox298 ~= nil then self.imageCheckBox298:destroy(); self.imageCheckBox298 = nil; end;
        if self.imageCheckBox451 ~= nil then self.imageCheckBox451:destroy(); self.imageCheckBox451 = nil; end;
        if self.layout370 ~= nil then self.layout370:destroy(); self.layout370 = nil; end;
        if self.layout470 ~= nil then self.layout470:destroy(); self.layout470 = nil; end;
        if self.layout335 ~= nil then self.layout335:destroy(); self.layout335 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox400 ~= nil then self.imageCheckBox400:destroy(); self.imageCheckBox400 = nil; end;
        if self.imageCheckBox325 ~= nil then self.imageCheckBox325:destroy(); self.imageCheckBox325 = nil; end;
        if self.imageCheckBox516 ~= nil then self.imageCheckBox516:destroy(); self.imageCheckBox516 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout447 ~= nil then self.layout447:destroy(); self.layout447 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.layout267 ~= nil then self.layout267:destroy(); self.layout267 = nil; end;
        if self.imageCheckBox392 ~= nil then self.imageCheckBox392:destroy(); self.imageCheckBox392 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.imageCheckBox403 ~= nil then self.imageCheckBox403:destroy(); self.imageCheckBox403 = nil; end;
        if self.layout492 ~= nil then self.layout492:destroy(); self.layout492 = nil; end;
        if self.imageCheckBox313 ~= nil then self.imageCheckBox313:destroy(); self.imageCheckBox313 = nil; end;
        if self.imageCheckBox339 ~= nil then self.imageCheckBox339:destroy(); self.imageCheckBox339 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout329 ~= nil then self.layout329:destroy(); self.layout329 = nil; end;
        if self.imageCheckBox422 ~= nil then self.imageCheckBox422:destroy(); self.imageCheckBox422 = nil; end;
        if self.layout464 ~= nil then self.layout464:destroy(); self.layout464 = nil; end;
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
        if self.layout525 ~= nil then self.layout525:destroy(); self.layout525 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout506 ~= nil then self.layout506:destroy(); self.layout506 = nil; end;
        if self.layout303 ~= nil then self.layout303:destroy(); self.layout303 = nil; end;
        if self.layout222 ~= nil then self.layout222:destroy(); self.layout222 = nil; end;
        if self.layout302 ~= nil then self.layout302:destroy(); self.layout302 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout376 ~= nil then self.layout376:destroy(); self.layout376 = nil; end;
        if self.imageCheckBox370 ~= nil then self.imageCheckBox370:destroy(); self.imageCheckBox370 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout448 ~= nil then self.layout448:destroy(); self.layout448 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout202 ~= nil then self.layout202:destroy(); self.layout202 = nil; end;
        if self.layout220 ~= nil then self.layout220:destroy(); self.layout220 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.imageCheckBox448 ~= nil then self.imageCheckBox448:destroy(); self.imageCheckBox448 = nil; end;
        if self.layout373 ~= nil then self.layout373:destroy(); self.layout373 = nil; end;
        if self.imageCheckBox322 ~= nil then self.imageCheckBox322:destroy(); self.imageCheckBox322 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.imageCheckBox262 ~= nil then self.imageCheckBox262:destroy(); self.imageCheckBox262 = nil; end;
        if self.imageCheckBox355 ~= nil then self.imageCheckBox355:destroy(); self.imageCheckBox355 = nil; end;
        if self.layout548 ~= nil then self.layout548:destroy(); self.layout548 = nil; end;
        if self.layout170 ~= nil then self.layout170:destroy(); self.layout170 = nil; end;
        if self.imageCheckBox172 ~= nil then self.imageCheckBox172:destroy(); self.imageCheckBox172 = nil; end;
        if self.imageCheckBox478 ~= nil then self.imageCheckBox478:destroy(); self.imageCheckBox478 = nil; end;
        if self.layout481 ~= nil then self.layout481:destroy(); self.layout481 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.imageCheckBox127 ~= nil then self.imageCheckBox127:destroy(); self.imageCheckBox127 = nil; end;
        if self.layout519 ~= nil then self.layout519:destroy(); self.layout519 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.imageCheckBox405 ~= nil then self.imageCheckBox405:destroy(); self.imageCheckBox405 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.imageCheckBox294 ~= nil then self.imageCheckBox294:destroy(); self.imageCheckBox294 = nil; end;
        if self.imageCheckBox415 ~= nil then self.imageCheckBox415:destroy(); self.imageCheckBox415 = nil; end;
        if self.imageCheckBox496 ~= nil then self.imageCheckBox496:destroy(); self.imageCheckBox496 = nil; end;
        if self.imageCheckBox179 ~= nil then self.imageCheckBox179:destroy(); self.imageCheckBox179 = nil; end;
        if self.imageCheckBox235 ~= nil then self.imageCheckBox235:destroy(); self.imageCheckBox235 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.imageCheckBox250 ~= nil then self.imageCheckBox250:destroy(); self.imageCheckBox250 = nil; end;
        if self.layout408 ~= nil then self.layout408:destroy(); self.layout408 = nil; end;
        if self.layout263 ~= nil then self.layout263:destroy(); self.layout263 = nil; end;
        if self.layout471 ~= nil then self.layout471:destroy(); self.layout471 = nil; end;
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
        if self.layout426 ~= nil then self.layout426:destroy(); self.layout426 = nil; end;
        if self.imageCheckBox237 ~= nil then self.imageCheckBox237:destroy(); self.imageCheckBox237 = nil; end;
        if self.imageCheckBox347 ~= nil then self.imageCheckBox347:destroy(); self.imageCheckBox347 = nil; end;
        if self.imageCheckBox375 ~= nil then self.imageCheckBox375:destroy(); self.imageCheckBox375 = nil; end;
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
        if self.imageCheckBox500 ~= nil then self.imageCheckBox500:destroy(); self.imageCheckBox500 = nil; end;
        if self.imageCheckBox328 ~= nil then self.imageCheckBox328:destroy(); self.imageCheckBox328 = nil; end;
        if self.layout330 ~= nil then self.layout330:destroy(); self.layout330 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.imageCheckBox295 ~= nil then self.imageCheckBox295:destroy(); self.imageCheckBox295 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.layout507 ~= nil then self.layout507:destroy(); self.layout507 = nil; end;
        if self.imageCheckBox469 ~= nil then self.imageCheckBox469:destroy(); self.imageCheckBox469 = nil; end;
        if self.layout459 ~= nil then self.layout459:destroy(); self.layout459 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.layout467 ~= nil then self.layout467:destroy(); self.layout467 = nil; end;
        if self.layout171 ~= nil then self.layout171:destroy(); self.layout171 = nil; end;
        if self.layout177 ~= nil then self.layout177:destroy(); self.layout177 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.imageCheckBox332 ~= nil then self.imageCheckBox332:destroy(); self.imageCheckBox332 = nil; end;
        if self.layout489 ~= nil then self.layout489:destroy(); self.layout489 = nil; end;
        if self.imageCheckBox153 ~= nil then self.imageCheckBox153:destroy(); self.imageCheckBox153 = nil; end;
        if self.layout217 ~= nil then self.layout217:destroy(); self.layout217 = nil; end;
        if self.layout479 ~= nil then self.layout479:destroy(); self.layout479 = nil; end;
        if self.layout199 ~= nil then self.layout199:destroy(); self.layout199 = nil; end;
        if self.imageCheckBox513 ~= nil then self.imageCheckBox513:destroy(); self.imageCheckBox513 = nil; end;
        if self.imageCheckBox244 ~= nil then self.imageCheckBox244:destroy(); self.imageCheckBox244 = nil; end;
        if self.imageCheckBox447 ~= nil then self.imageCheckBox447:destroy(); self.imageCheckBox447 = nil; end;
        if self.layout243 ~= nil then self.layout243:destroy(); self.layout243 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.imageCheckBox198 ~= nil then self.imageCheckBox198:destroy(); self.imageCheckBox198 = nil; end;
        if self.imageCheckBox454 ~= nil then self.imageCheckBox454:destroy(); self.imageCheckBox454 = nil; end;
        if self.imageCheckBox199 ~= nil then self.imageCheckBox199:destroy(); self.imageCheckBox199 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.layout178 ~= nil then self.layout178:destroy(); self.layout178 = nil; end;
        if self.imageCheckBox510 ~= nil then self.imageCheckBox510:destroy(); self.imageCheckBox510 = nil; end;
        if self.imageCheckBox258 ~= nil then self.imageCheckBox258:destroy(); self.imageCheckBox258 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout339 ~= nil then self.layout339:destroy(); self.layout339 = nil; end;
        if self.layout366 ~= nil then self.layout366:destroy(); self.layout366 = nil; end;
        if self.layout271 ~= nil then self.layout271:destroy(); self.layout271 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.imageCheckBox501 ~= nil then self.imageCheckBox501:destroy(); self.imageCheckBox501 = nil; end;
        if self.imageCheckBox412 ~= nil then self.imageCheckBox412:destroy(); self.imageCheckBox412 = nil; end;
        if self.layout253 ~= nil then self.layout253:destroy(); self.layout253 = nil; end;
        if self.imageCheckBox472 ~= nil then self.imageCheckBox472:destroy(); self.imageCheckBox472 = nil; end;
        if self.imageCheckBox517 ~= nil then self.imageCheckBox517:destroy(); self.imageCheckBox517 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout410 ~= nil then self.layout410:destroy(); self.layout410 = nil; end;
        if self.imageCheckBox229 ~= nil then self.imageCheckBox229:destroy(); self.imageCheckBox229 = nil; end;
        if self.imageCheckBox473 ~= nil then self.imageCheckBox473:destroy(); self.imageCheckBox473 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.layout474 ~= nil then self.layout474:destroy(); self.layout474 = nil; end;
        if self.layout292 ~= nil then self.layout292:destroy(); self.layout292 = nil; end;
        if self.imageCheckBox293 ~= nil then self.imageCheckBox293:destroy(); self.imageCheckBox293 = nil; end;
        if self.layout487 ~= nil then self.layout487:destroy(); self.layout487 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.imageCheckBox393 ~= nil then self.imageCheckBox393:destroy(); self.imageCheckBox393 = nil; end;
        if self.layout535 ~= nil then self.layout535:destroy(); self.layout535 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.layout497 ~= nil then self.layout497:destroy(); self.layout497 = nil; end;
        if self.imageCheckBox335 ~= nil then self.imageCheckBox335:destroy(); self.imageCheckBox335 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout173 ~= nil then self.layout173:destroy(); self.layout173 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox123 ~= nil then self.imageCheckBox123:destroy(); self.imageCheckBox123 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.layout306 ~= nil then self.layout306:destroy(); self.layout306 = nil; end;
        if self.imageCheckBox184 ~= nil then self.imageCheckBox184:destroy(); self.imageCheckBox184 = nil; end;
        if self.layout541 ~= nil then self.layout541:destroy(); self.layout541 = nil; end;
        if self.layout429 ~= nil then self.layout429:destroy(); self.layout429 = nil; end;
        if self.layout451 ~= nil then self.layout451:destroy(); self.layout451 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.imageCheckBox134 ~= nil then self.imageCheckBox134:destroy(); self.imageCheckBox134 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.layout234 ~= nil then self.layout234:destroy(); self.layout234 = nil; end;
        if self.imageCheckBox490 ~= nil then self.imageCheckBox490:destroy(); self.imageCheckBox490 = nil; end;
        if self.imageCheckBox499 ~= nil then self.imageCheckBox499:destroy(); self.imageCheckBox499 = nil; end;
        if self.imageCheckBox280 ~= nil then self.imageCheckBox280:destroy(); self.imageCheckBox280 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.layout412 ~= nil then self.layout412:destroy(); self.layout412 = nil; end;
        if self.layout468 ~= nil then self.layout468:destroy(); self.layout468 = nil; end;
        if self.layout238 ~= nil then self.layout238:destroy(); self.layout238 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.imageCheckBox279 ~= nil then self.imageCheckBox279:destroy(); self.imageCheckBox279 = nil; end;
        if self.imageCheckBox297 ~= nil then self.imageCheckBox297:destroy(); self.imageCheckBox297 = nil; end;
        if self.imageCheckBox135 ~= nil then self.imageCheckBox135:destroy(); self.imageCheckBox135 = nil; end;
        if self.imageCheckBox380 ~= nil then self.imageCheckBox380:destroy(); self.imageCheckBox380 = nil; end;
        if self.imageCheckBox206 ~= nil then self.imageCheckBox206:destroy(); self.imageCheckBox206 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.imageCheckBox162 ~= nil then self.imageCheckBox162:destroy(); self.imageCheckBox162 = nil; end;
        if self.imageCheckBox286 ~= nil then self.imageCheckBox286:destroy(); self.imageCheckBox286 = nil; end;
        if self.layout328 ~= nil then self.layout328:destroy(); self.layout328 = nil; end;
        if self.layout348 ~= nil then self.layout348:destroy(); self.layout348 = nil; end;
        if self.imageCheckBox338 ~= nil then self.imageCheckBox338:destroy(); self.imageCheckBox338 = nil; end;
        if self.layout403 ~= nil then self.layout403:destroy(); self.layout403 = nil; end;
        if self.layout538 ~= nil then self.layout538:destroy(); self.layout538 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.layout400 ~= nil then self.layout400:destroy(); self.layout400 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.layout337 ~= nil then self.layout337:destroy(); self.layout337 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout282 ~= nil then self.layout282:destroy(); self.layout282 = nil; end;
        if self.imageCheckBox163 ~= nil then self.imageCheckBox163:destroy(); self.imageCheckBox163 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.imageCheckBox272 ~= nil then self.imageCheckBox272:destroy(); self.imageCheckBox272 = nil; end;
        if self.imageCheckBox323 ~= nil then self.imageCheckBox323:destroy(); self.imageCheckBox323 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.imageCheckBox437 ~= nil then self.imageCheckBox437:destroy(); self.imageCheckBox437 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout274 ~= nil then self.layout274:destroy(); self.layout274 = nil; end;
        if self.layout375 ~= nil then self.layout375:destroy(); self.layout375 = nil; end;
        if self.imageCheckBox379 ~= nil then self.imageCheckBox379:destroy(); self.imageCheckBox379 = nil; end;
        if self.layout213 ~= nil then self.layout213:destroy(); self.layout213 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.imageCheckBox303 ~= nil then self.imageCheckBox303:destroy(); self.imageCheckBox303 = nil; end;
        if self.layout435 ~= nil then self.layout435:destroy(); self.layout435 = nil; end;
        if self.imageCheckBox430 ~= nil then self.imageCheckBox430:destroy(); self.imageCheckBox430 = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.imageCheckBox369 ~= nil then self.imageCheckBox369:destroy(); self.imageCheckBox369 = nil; end;
        if self.imageCheckBox485 ~= nil then self.imageCheckBox485:destroy(); self.imageCheckBox485 = nil; end;
        if self.layout404 ~= nil then self.layout404:destroy(); self.layout404 = nil; end;
        if self.layout473 ~= nil then self.layout473:destroy(); self.layout473 = nil; end;
        if self.layout308 ~= nil then self.layout308:destroy(); self.layout308 = nil; end;
        if self.layout269 ~= nil then self.layout269:destroy(); self.layout269 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.layout515 ~= nil then self.layout515:destroy(); self.layout515 = nil; end;
        if self.imageCheckBox327 ~= nil then self.imageCheckBox327:destroy(); self.imageCheckBox327 = nil; end;
        if self.imageCheckBox329 ~= nil then self.imageCheckBox329:destroy(); self.imageCheckBox329 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.imageCheckBox342 ~= nil then self.imageCheckBox342:destroy(); self.imageCheckBox342 = nil; end;
        if self.layout499 ~= nil then self.layout499:destroy(); self.layout499 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.imageCheckBox202 ~= nil then self.imageCheckBox202:destroy(); self.imageCheckBox202 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.imageCheckBox226 ~= nil then self.imageCheckBox226:destroy(); self.imageCheckBox226 = nil; end;
        if self.imageCheckBox459 ~= nil then self.imageCheckBox459:destroy(); self.imageCheckBox459 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.imageCheckBox348 ~= nil then self.imageCheckBox348:destroy(); self.imageCheckBox348 = nil; end;
        if self.imageCheckBox276 ~= nil then self.imageCheckBox276:destroy(); self.imageCheckBox276 = nil; end;
        if self.layout321 ~= nil then self.layout321:destroy(); self.layout321 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout208 ~= nil then self.layout208:destroy(); self.layout208 = nil; end;
        if self.layout293 ~= nil then self.layout293:destroy(); self.layout293 = nil; end;
        if self.layout498 ~= nil then self.layout498:destroy(); self.layout498 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout510 ~= nil then self.layout510:destroy(); self.layout510 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout356 ~= nil then self.layout356:destroy(); self.layout356 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.imageCheckBox396 ~= nil then self.imageCheckBox396:destroy(); self.imageCheckBox396 = nil; end;
        if self.imageCheckBox270 ~= nil then self.imageCheckBox270:destroy(); self.imageCheckBox270 = nil; end;
        if self.layout297 ~= nil then self.layout297:destroy(); self.layout297 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout484 ~= nil then self.layout484:destroy(); self.layout484 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.layout431 ~= nil then self.layout431:destroy(); self.layout431 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.layout450 ~= nil then self.layout450:destroy(); self.layout450 = nil; end;
        if self.imageCheckBox281 ~= nil then self.imageCheckBox281:destroy(); self.imageCheckBox281 = nil; end;
        if self.layout441 ~= nil then self.layout441:destroy(); self.layout441 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.layout527 ~= nil then self.layout527:destroy(); self.layout527 = nil; end;
        if self.imageCheckBox201 ~= nil then self.imageCheckBox201:destroy(); self.imageCheckBox201 = nil; end;
        if self.imageCheckBox254 ~= nil then self.imageCheckBox254:destroy(); self.imageCheckBox254 = nil; end;
        if self.imageCheckBox398 ~= nil then self.imageCheckBox398:destroy(); self.imageCheckBox398 = nil; end;
        if self.imageCheckBox372 ~= nil then self.imageCheckBox372:destroy(); self.imageCheckBox372 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout324 ~= nil then self.layout324:destroy(); self.layout324 = nil; end;
        if self.imageCheckBox363 ~= nil then self.imageCheckBox363:destroy(); self.imageCheckBox363 = nil; end;
        if self.imageCheckBox317 ~= nil then self.imageCheckBox317:destroy(); self.imageCheckBox317 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.layout372 ~= nil then self.layout372:destroy(); self.layout372 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.imageCheckBox209 ~= nil then self.imageCheckBox209:destroy(); self.imageCheckBox209 = nil; end;
        if self.imageCheckBox218 ~= nil then self.imageCheckBox218:destroy(); self.imageCheckBox218 = nil; end;
        if self.layout319 ~= nil then self.layout319:destroy(); self.layout319 = nil; end;
        if self.imageCheckBox378 ~= nil then self.imageCheckBox378:destroy(); self.imageCheckBox378 = nil; end;
        if self.imageCheckBox228 ~= nil then self.imageCheckBox228:destroy(); self.imageCheckBox228 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox261 ~= nil then self.imageCheckBox261:destroy(); self.imageCheckBox261 = nil; end;
        if self.imageCheckBox407 ~= nil then self.imageCheckBox407:destroy(); self.imageCheckBox407 = nil; end;
        if self.imageCheckBox321 ~= nil then self.imageCheckBox321:destroy(); self.imageCheckBox321 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.layout532 ~= nil then self.layout532:destroy(); self.layout532 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.layout197 ~= nil then self.layout197:destroy(); self.layout197 = nil; end;
        if self.imageCheckBox426 ~= nil then self.imageCheckBox426:destroy(); self.imageCheckBox426 = nil; end;
        if self.layout496 ~= nil then self.layout496:destroy(); self.layout496 = nil; end;
        if self.imageCheckBox518 ~= nil then self.imageCheckBox518:destroy(); self.imageCheckBox518 = nil; end;
        if self.imageCheckBox434 ~= nil then self.imageCheckBox434:destroy(); self.imageCheckBox434 = nil; end;
        if self.layout355 ~= nil then self.layout355:destroy(); self.layout355 = nil; end;
        if self.layout214 ~= nil then self.layout214:destroy(); self.layout214 = nil; end;
        if self.imageCheckBox467 ~= nil then self.imageCheckBox467:destroy(); self.imageCheckBox467 = nil; end;
        if self.layout517 ~= nil then self.layout517:destroy(); self.layout517 = nil; end;
        if self.imageCheckBox299 ~= nil then self.imageCheckBox299:destroy(); self.imageCheckBox299 = nil; end;
        if self.imageCheckBox236 ~= nil then self.imageCheckBox236:destroy(); self.imageCheckBox236 = nil; end;
        if self.imageCheckBox466 ~= nil then self.imageCheckBox466:destroy(); self.imageCheckBox466 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout358 ~= nil then self.layout358:destroy(); self.layout358 = nil; end;
        if self.imageCheckBox395 ~= nil then self.imageCheckBox395:destroy(); self.imageCheckBox395 = nil; end;
        if self.imageCheckBox151 ~= nil then self.imageCheckBox151:destroy(); self.imageCheckBox151 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox243 ~= nil then self.imageCheckBox243:destroy(); self.imageCheckBox243 = nil; end;
        if self.imageCheckBox388 ~= nil then self.imageCheckBox388:destroy(); self.imageCheckBox388 = nil; end;
        if self.imageCheckBox397 ~= nil then self.imageCheckBox397:destroy(); self.imageCheckBox397 = nil; end;
        if self.layout488 ~= nil then self.layout488:destroy(); self.layout488 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox140 ~= nil then self.imageCheckBox140:destroy(); self.imageCheckBox140 = nil; end;
        if self.imageCheckBox221 ~= nil then self.imageCheckBox221:destroy(); self.imageCheckBox221 = nil; end;
        if self.imageCheckBox460 ~= nil then self.imageCheckBox460:destroy(); self.imageCheckBox460 = nil; end;
        if self.imageCheckBox507 ~= nil then self.imageCheckBox507:destroy(); self.imageCheckBox507 = nil; end;
        if self.imageCheckBox216 ~= nil then self.imageCheckBox216:destroy(); self.imageCheckBox216 = nil; end;
        if self.imageCheckBox365 ~= nil then self.imageCheckBox365:destroy(); self.imageCheckBox365 = nil; end;
        if self.layout239 ~= nil then self.layout239:destroy(); self.layout239 = nil; end;
        if self.imageCheckBox387 ~= nil then self.imageCheckBox387:destroy(); self.imageCheckBox387 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.layout354 ~= nil then self.layout354:destroy(); self.layout354 = nil; end;
        if self.layout397 ~= nil then self.layout397:destroy(); self.layout397 = nil; end;
        if self.layout258 ~= nil then self.layout258:destroy(); self.layout258 = nil; end;
        if self.layout485 ~= nil then self.layout485:destroy(); self.layout485 = nil; end;
        if self.layout453 ~= nil then self.layout453:destroy(); self.layout453 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.imageCheckBox311 ~= nil then self.imageCheckBox311:destroy(); self.imageCheckBox311 = nil; end;
        if self.imageCheckBox312 ~= nil then self.imageCheckBox312:destroy(); self.imageCheckBox312 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.layout332 ~= nil then self.layout332:destroy(); self.layout332 = nil; end;
        if self.layout381 ~= nil then self.layout381:destroy(); self.layout381 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout353 ~= nil then self.layout353:destroy(); self.layout353 = nil; end;
        if self.imageCheckBox384 ~= nil then self.imageCheckBox384:destroy(); self.imageCheckBox384 = nil; end;
        if self.layout540 ~= nil then self.layout540:destroy(); self.layout540 = nil; end;
        if self.layout305 ~= nil then self.layout305:destroy(); self.layout305 = nil; end;
        if self.layout416 ~= nil then self.layout416:destroy(); self.layout416 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.layout379 ~= nil then self.layout379:destroy(); self.layout379 = nil; end;
        if self.layout432 ~= nil then self.layout432:destroy(); self.layout432 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.layout394 ~= nil then self.layout394:destroy(); self.layout394 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.imageCheckBox509 ~= nil then self.imageCheckBox509:destroy(); self.imageCheckBox509 = nil; end;
        if self.imageCheckBox394 ~= nil then self.imageCheckBox394:destroy(); self.imageCheckBox394 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.imageCheckBox230 ~= nil then self.imageCheckBox230:destroy(); self.imageCheckBox230 = nil; end;
        if self.imageCheckBox183 ~= nil then self.imageCheckBox183:destroy(); self.imageCheckBox183 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.layout255 ~= nil then self.layout255:destroy(); self.layout255 = nil; end;
        if self.imageCheckBox310 ~= nil then self.imageCheckBox310:destroy(); self.imageCheckBox310 = nil; end;
        if self.imageCheckBox408 ~= nil then self.imageCheckBox408:destroy(); self.imageCheckBox408 = nil; end;
        if self.layout437 ~= nil then self.layout437:destroy(); self.layout437 = nil; end;
        if self.imageCheckBox463 ~= nil then self.imageCheckBox463:destroy(); self.imageCheckBox463 = nil; end;
        if self.imageCheckBox425 ~= nil then self.imageCheckBox425:destroy(); self.imageCheckBox425 = nil; end;
        if self.imageCheckBox362 ~= nil then self.imageCheckBox362:destroy(); self.imageCheckBox362 = nil; end;
        if self.imageCheckBox377 ~= nil then self.imageCheckBox377:destroy(); self.imageCheckBox377 = nil; end;
        if self.imageCheckBox364 ~= nil then self.imageCheckBox364:destroy(); self.imageCheckBox364 = nil; end;
        if self.imageCheckBox444 ~= nil then self.imageCheckBox444:destroy(); self.imageCheckBox444 = nil; end;
        if self.layout322 ~= nil then self.layout322:destroy(); self.layout322 = nil; end;
        if self.imageCheckBox227 ~= nil then self.imageCheckBox227:destroy(); self.imageCheckBox227 = nil; end;
        if self.imageCheckBox514 ~= nil then self.imageCheckBox514:destroy(); self.imageCheckBox514 = nil; end;
        if self.imageCheckBox287 ~= nil then self.imageCheckBox287:destroy(); self.imageCheckBox287 = nil; end;
        if self.imageCheckBox200 ~= nil then self.imageCheckBox200:destroy(); self.imageCheckBox200 = nil; end;
        if self.imageCheckBox498 ~= nil then self.imageCheckBox498:destroy(); self.imageCheckBox498 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.imageCheckBox376 ~= nil then self.imageCheckBox376:destroy(); self.imageCheckBox376 = nil; end;
        if self.imageCheckBox471 ~= nil then self.imageCheckBox471:destroy(); self.imageCheckBox471 = nil; end;
        if self.imageCheckBox175 ~= nil then self.imageCheckBox175:destroy(); self.imageCheckBox175 = nil; end;
        if self.imageCheckBox225 ~= nil then self.imageCheckBox225:destroy(); self.imageCheckBox225 = nil; end;
        if self.layout189 ~= nil then self.layout189:destroy(); self.layout189 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.layout195 ~= nil then self.layout195:destroy(); self.layout195 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.layout396 ~= nil then self.layout396:destroy(); self.layout396 = nil; end;
        if self.imageCheckBox417 ~= nil then self.imageCheckBox417:destroy(); self.imageCheckBox417 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.imageCheckBox420 ~= nil then self.imageCheckBox420:destroy(); self.imageCheckBox420 = nil; end;
        if self.layout503 ~= nil then self.layout503:destroy(); self.layout503 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.imageCheckBox474 ~= nil then self.imageCheckBox474:destroy(); self.imageCheckBox474 = nil; end;
        if self.layout512 ~= nil then self.layout512:destroy(); self.layout512 = nil; end;
        if self.layout187 ~= nil then self.layout187:destroy(); self.layout187 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.imageCheckBox288 ~= nil then self.imageCheckBox288:destroy(); self.imageCheckBox288 = nil; end;
        if self.layout196 ~= nil then self.layout196:destroy(); self.layout196 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.imageCheckBox251 ~= nil then self.imageCheckBox251:destroy(); self.imageCheckBox251 = nil; end;
        if self.layout476 ~= nil then self.layout476:destroy(); self.layout476 = nil; end;
        if self.layout542 ~= nil then self.layout542:destroy(); self.layout542 = nil; end;
        if self.layout289 ~= nil then self.layout289:destroy(); self.layout289 = nil; end;
        if self.imageCheckBox126 ~= nil then self.imageCheckBox126:destroy(); self.imageCheckBox126 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.layout455 ~= nil then self.layout455:destroy(); self.layout455 = nil; end;
        if self.imageCheckBox345 ~= nil then self.imageCheckBox345:destroy(); self.imageCheckBox345 = nil; end;
        if self.imageCheckBox440 ~= nil then self.imageCheckBox440:destroy(); self.imageCheckBox440 = nil; end;
        if self.imageCheckBox483 ~= nil then self.imageCheckBox483:destroy(); self.imageCheckBox483 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
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
        if self.layout424 ~= nil then self.layout424:destroy(); self.layout424 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout212 ~= nil then self.layout212:destroy(); self.layout212 = nil; end;
        if self.imageCheckBox493 ~= nil then self.imageCheckBox493:destroy(); self.imageCheckBox493 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.layout477 ~= nil then self.layout477:destroy(); self.layout477 = nil; end;
        if self.layout158 ~= nil then self.layout158:destroy(); self.layout158 = nil; end;
        if self.imageCheckBox488 ~= nil then self.imageCheckBox488:destroy(); self.imageCheckBox488 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.dataLink63 ~= nil then self.dataLink63:destroy(); self.dataLink63 = nil; end;
        if self.layout311 ~= nil then self.layout311:destroy(); self.layout311 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout546 ~= nil then self.layout546:destroy(); self.layout546 = nil; end;
        if self.imageCheckBox479 ~= nil then self.imageCheckBox479:destroy(); self.imageCheckBox479 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.layout345 ~= nil then self.layout345:destroy(); self.layout345 = nil; end;
        if self.layout232 ~= nil then self.layout232:destroy(); self.layout232 = nil; end;
        if self.layout526 ~= nil then self.layout526:destroy(); self.layout526 = nil; end;
        if self.imageCheckBox511 ~= nil then self.imageCheckBox511:destroy(); self.imageCheckBox511 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.imageCheckBox522 ~= nil then self.imageCheckBox522:destroy(); self.imageCheckBox522 = nil; end;
        if self.imageCheckBox349 ~= nil then self.imageCheckBox349:destroy(); self.imageCheckBox349 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.imageCheckBox401 ~= nil then self.imageCheckBox401:destroy(); self.imageCheckBox401 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.layout176 ~= nil then self.layout176:destroy(); self.layout176 = nil; end;
        if self.layout252 ~= nil then self.layout252:destroy(); self.layout252 = nil; end;
        if self.layout475 ~= nil then self.layout475:destroy(); self.layout475 = nil; end;
        if self.imageCheckBox464 ~= nil then self.imageCheckBox464:destroy(); self.imageCheckBox464 = nil; end;
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
        if self.layout537 ~= nil then self.layout537:destroy(); self.layout537 = nil; end;
        if self.imageCheckBox331 ~= nil then self.imageCheckBox331:destroy(); self.imageCheckBox331 = nil; end;
        if self.layout406 ~= nil then self.layout406:destroy(); self.layout406 = nil; end;
        if self.layout317 ~= nil then self.layout317:destroy(); self.layout317 = nil; end;
        if self.layout462 ~= nil then self.layout462:destroy(); self.layout462 = nil; end;
        if self.layout288 ~= nil then self.layout288:destroy(); self.layout288 = nil; end;
        if self.layout516 ~= nil then self.layout516:destroy(); self.layout516 = nil; end;
        if self.imageCheckBox224 ~= nil then self.imageCheckBox224:destroy(); self.imageCheckBox224 = nil; end;
        if self.imageCheckBox373 ~= nil then self.imageCheckBox373:destroy(); self.imageCheckBox373 = nil; end;
        if self.layout256 ~= nil then self.layout256:destroy(); self.layout256 = nil; end;
        if self.imageCheckBox427 ~= nil then self.imageCheckBox427:destroy(); self.imageCheckBox427 = nil; end;
        if self.imageCheckBox233 ~= nil then self.imageCheckBox233:destroy(); self.imageCheckBox233 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout480 ~= nil then self.layout480:destroy(); self.layout480 = nil; end;
        if self.layout273 ~= nil then self.layout273:destroy(); self.layout273 = nil; end;
        if self.imageCheckBox354 ~= nil then self.imageCheckBox354:destroy(); self.imageCheckBox354 = nil; end;
        if self.layout327 ~= nil then self.layout327:destroy(); self.layout327 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.imageCheckBox371 ~= nil then self.imageCheckBox371:destroy(); self.imageCheckBox371 = nil; end;
        if self.imageCheckBox239 ~= nil then self.imageCheckBox239:destroy(); self.imageCheckBox239 = nil; end;
        if self.imageCheckBox208 ~= nil then self.imageCheckBox208:destroy(); self.imageCheckBox208 = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.layout310 ~= nil then self.layout310:destroy(); self.layout310 = nil; end;
        if self.layout277 ~= nil then self.layout277:destroy(); self.layout277 = nil; end;
        if self.imageCheckBox476 ~= nil then self.imageCheckBox476:destroy(); self.imageCheckBox476 = nil; end;
        if self.imageCheckBox207 ~= nil then self.imageCheckBox207:destroy(); self.imageCheckBox207 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.imageCheckBox302 ~= nil then self.imageCheckBox302:destroy(); self.imageCheckBox302 = nil; end;
        if self.imageCheckBox482 ~= nil then self.imageCheckBox482:destroy(); self.imageCheckBox482 = nil; end;
        if self.imageCheckBox497 ~= nil then self.imageCheckBox497:destroy(); self.imageCheckBox497 = nil; end;
        if self.layout442 ~= nil then self.layout442:destroy(); self.layout442 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.layout331 ~= nil then self.layout331:destroy(); self.layout331 = nil; end;
        if self.layout444 ~= nil then self.layout444:destroy(); self.layout444 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.imageCheckBox489 ~= nil then self.imageCheckBox489:destroy(); self.imageCheckBox489 = nil; end;
        if self.layout278 ~= nil then self.layout278:destroy(); self.layout278 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.imageCheckBox505 ~= nil then self.imageCheckBox505:destroy(); self.imageCheckBox505 = nil; end;
        if self.layout261 ~= nil then self.layout261:destroy(); self.layout261 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.imageCheckBox406 ~= nil then self.imageCheckBox406:destroy(); self.imageCheckBox406 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox502 ~= nil then self.imageCheckBox502:destroy(); self.imageCheckBox502 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout206 ~= nil then self.layout206:destroy(); self.layout206 = nil; end;
        if self.layout207 ~= nil then self.layout207:destroy(); self.layout207 = nil; end;
        if self.imageCheckBox314 ~= nil then self.imageCheckBox314:destroy(); self.imageCheckBox314 = nil; end;
        if self.imageCheckBox341 ~= nil then self.imageCheckBox341:destroy(); self.imageCheckBox341 = nil; end;
        if self.layout543 ~= nil then self.layout543:destroy(); self.layout543 = nil; end;
        if self.imageCheckBox521 ~= nil then self.imageCheckBox521:destroy(); self.imageCheckBox521 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.layout539 ~= nil then self.layout539:destroy(); self.layout539 = nil; end;
        if self.layout440 ~= nil then self.layout440:destroy(); self.layout440 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.layout262 ~= nil then self.layout262:destroy(); self.layout262 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.layout544 ~= nil then self.layout544:destroy(); self.layout544 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.layout367 ~= nil then self.layout367:destroy(); self.layout367 = nil; end;
        if self.imageCheckBox455 ~= nil then self.imageCheckBox455:destroy(); self.imageCheckBox455 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout242 ~= nil then self.layout242:destroy(); self.layout242 = nil; end;
        if self.imageCheckBox106 ~= nil then self.imageCheckBox106:destroy(); self.imageCheckBox106 = nil; end;
        if self.imageCheckBox255 ~= nil then self.imageCheckBox255:destroy(); self.imageCheckBox255 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.layout193 ~= nil then self.layout193:destroy(); self.layout193 = nil; end;
        if self.imageCheckBox193 ~= nil then self.imageCheckBox193:destroy(); self.imageCheckBox193 = nil; end;
        if self.layout443 ~= nil then self.layout443:destroy(); self.layout443 = nil; end;
        if self.imageCheckBox431 ~= nil then self.imageCheckBox431:destroy(); self.imageCheckBox431 = nil; end;
        if self.imageCheckBox446 ~= nil then self.imageCheckBox446:destroy(); self.imageCheckBox446 = nil; end;
        if self.imageCheckBox480 ~= nil then self.imageCheckBox480:destroy(); self.imageCheckBox480 = nil; end;
        if self.imageCheckBox213 ~= nil then self.imageCheckBox213:destroy(); self.imageCheckBox213 = nil; end;
        if self.imageCheckBox519 ~= nil then self.imageCheckBox519:destroy(); self.imageCheckBox519 = nil; end;
        if self.layout458 ~= nil then self.layout458:destroy(); self.layout458 = nil; end;
        if self.layout228 ~= nil then self.layout228:destroy(); self.layout228 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.layout318 ~= nil then self.layout318:destroy(); self.layout318 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout504 ~= nil then self.layout504:destroy(); self.layout504 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.imageCheckBox249 ~= nil then self.imageCheckBox249:destroy(); self.imageCheckBox249 = nil; end;
        if self.layout439 ~= nil then self.layout439:destroy(); self.layout439 = nil; end;
        if self.layout360 ~= nil then self.layout360:destroy(); self.layout360 = nil; end;
        if self.layout508 ~= nil then self.layout508:destroy(); self.layout508 = nil; end;
        if self.layout387 ~= nil then self.layout387:destroy(); self.layout387 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.imageCheckBox361 ~= nil then self.imageCheckBox361:destroy(); self.imageCheckBox361 = nil; end;
        if self.layout446 ~= nil then self.layout446:destroy(); self.layout446 = nil; end;
        if self.imageCheckBox503 ~= nil then self.imageCheckBox503:destroy(); self.imageCheckBox503 = nil; end;
        if self.layout268 ~= nil then self.layout268:destroy(); self.layout268 = nil; end;
        if self.layout351 ~= nil then self.layout351:destroy(); self.layout351 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.layout415 ~= nil then self.layout415:destroy(); self.layout415 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.imageCheckBox351 ~= nil then self.imageCheckBox351:destroy(); self.imageCheckBox351 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.layout364 ~= nil then self.layout364:destroy(); self.layout364 = nil; end;
        if self.layout389 ~= nil then self.layout389:destroy(); self.layout389 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.layout230 ~= nil then self.layout230:destroy(); self.layout230 = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.layout165 ~= nil then self.layout165:destroy(); self.layout165 = nil; end;
        if self.layout198 ~= nil then self.layout198:destroy(); self.layout198 = nil; end;
        if self.layout216 ~= nil then self.layout216:destroy(); self.layout216 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout226 ~= nil then self.layout226:destroy(); self.layout226 = nil; end;
        if self.imageCheckBox449 ~= nil then self.imageCheckBox449:destroy(); self.imageCheckBox449 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox484 ~= nil then self.imageCheckBox484:destroy(); self.imageCheckBox484 = nil; end;
        if self.imageCheckBox520 ~= nil then self.imageCheckBox520:destroy(); self.imageCheckBox520 = nil; end;
        if self.layout224 ~= nil then self.layout224:destroy(); self.layout224 = nil; end;
        if self.imageCheckBox142 ~= nil then self.imageCheckBox142:destroy(); self.imageCheckBox142 = nil; end;
        if self.layout164 ~= nil then self.layout164:destroy(); self.layout164 = nil; end;
        if self.imageCheckBox264 ~= nil then self.imageCheckBox264:destroy(); self.imageCheckBox264 = nil; end;
        if self.imageCheckBox453 ~= nil then self.imageCheckBox453:destroy(); self.imageCheckBox453 = nil; end;
        if self.layout272 ~= nil then self.layout272:destroy(); self.layout272 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.imageCheckBox180 ~= nil then self.imageCheckBox180:destroy(); self.imageCheckBox180 = nil; end;
        if self.imageCheckBox253 ~= nil then self.imageCheckBox253:destroy(); self.imageCheckBox253 = nil; end;
        if self.layout414 ~= nil then self.layout414:destroy(); self.layout414 = nil; end;
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
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.layout201 ~= nil then self.layout201:destroy(); self.layout201 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout323 ~= nil then self.layout323:destroy(); self.layout323 = nil; end;
        if self.layout190 ~= nil then self.layout190:destroy(); self.layout190 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.imageCheckBox292 ~= nil then self.imageCheckBox292:destroy(); self.imageCheckBox292 = nil; end;
        if self.layout469 ~= nil then self.layout469:destroy(); self.layout469 = nil; end;
        if self.imageCheckBox308 ~= nil then self.imageCheckBox308:destroy(); self.imageCheckBox308 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.imageCheckBox462 ~= nil then self.imageCheckBox462:destroy(); self.imageCheckBox462 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.layout346 ~= nil then self.layout346:destroy(); self.layout346 = nil; end;
        if self.imageCheckBox195 ~= nil then self.imageCheckBox195:destroy(); self.imageCheckBox195 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.layout486 ~= nil then self.layout486:destroy(); self.layout486 = nil; end;
        if self.imageCheckBox428 ~= nil then self.imageCheckBox428:destroy(); self.imageCheckBox428 = nil; end;
        if self.layout472 ~= nil then self.layout472:destroy(); self.layout472 = nil; end;
        if self.layout336 ~= nil then self.layout336:destroy(); self.layout336 = nil; end;
        if self.imageCheckBox344 ~= nil then self.imageCheckBox344:destroy(); self.imageCheckBox344 = nil; end;
        if self.layout428 ~= nil then self.layout428:destroy(); self.layout428 = nil; end;
        if self.imageCheckBox283 ~= nil then self.imageCheckBox283:destroy(); self.imageCheckBox283 = nil; end;
        if self.layout250 ~= nil then self.layout250:destroy(); self.layout250 = nil; end;
        if self.imageCheckBox306 ~= nil then self.imageCheckBox306:destroy(); self.imageCheckBox306 = nil; end;
        if self.imageCheckBox215 ~= nil then self.imageCheckBox215:destroy(); self.imageCheckBox215 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout393 ~= nil then self.layout393:destroy(); self.layout393 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout169 ~= nil then self.layout169:destroy(); self.layout169 = nil; end;
        if self.imageCheckBox192 ~= nil then self.imageCheckBox192:destroy(); self.imageCheckBox192 = nil; end;
        if self.imageCheckBox320 ~= nil then self.imageCheckBox320:destroy(); self.imageCheckBox320 = nil; end;
        if self.layout298 ~= nil then self.layout298:destroy(); self.layout298 = nil; end;
        if self.imageCheckBox301 ~= nil then self.imageCheckBox301:destroy(); self.imageCheckBox301 = nil; end;
        if self.layout454 ~= nil then self.layout454:destroy(); self.layout454 = nil; end;
        if self.layout505 ~= nil then self.layout505:destroy(); self.layout505 = nil; end;
        if self.layout192 ~= nil then self.layout192:destroy(); self.layout192 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.imageCheckBox138 ~= nil then self.imageCheckBox138:destroy(); self.imageCheckBox138 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.imageCheckBox267 ~= nil then self.imageCheckBox267:destroy(); self.imageCheckBox267 = nil; end;
        if self.imageCheckBox423 ~= nil then self.imageCheckBox423:destroy(); self.imageCheckBox423 = nil; end;
        if self.layout180 ~= nil then self.layout180:destroy(); self.layout180 = nil; end;
        if self.layout204 ~= nil then self.layout204:destroy(); self.layout204 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout299 ~= nil then self.layout299:destroy(); self.layout299 = nil; end;
        if self.imageCheckBox330 ~= nil then self.imageCheckBox330:destroy(); self.imageCheckBox330 = nil; end;
        if self.layout172 ~= nil then self.layout172:destroy(); self.layout172 = nil; end;
        if self.layout343 ~= nil then self.layout343:destroy(); self.layout343 = nil; end;
        if self.imageCheckBox263 ~= nil then self.imageCheckBox263:destroy(); self.imageCheckBox263 = nil; end;
        if self.imageCheckBox367 ~= nil then self.imageCheckBox367:destroy(); self.imageCheckBox367 = nil; end;
        if self.layout357 ~= nil then self.layout357:destroy(); self.layout357 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox265 ~= nil then self.imageCheckBox265:destroy(); self.imageCheckBox265 = nil; end;
        if self.layout314 ~= nil then self.layout314:destroy(); self.layout314 = nil; end;
        if self.imageCheckBox385 ~= nil then self.imageCheckBox385:destroy(); self.imageCheckBox385 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.layout456 ~= nil then self.layout456:destroy(); self.layout456 = nil; end;
        if self.imageCheckBox442 ~= nil then self.imageCheckBox442:destroy(); self.imageCheckBox442 = nil; end;
        if self.layout215 ~= nil then self.layout215:destroy(); self.layout215 = nil; end;
        if self.layout221 ~= nil then self.layout221:destroy(); self.layout221 = nil; end;
        if self.imageCheckBox256 ~= nil then self.imageCheckBox256:destroy(); self.imageCheckBox256 = nil; end;
        if self.layout334 ~= nil then self.layout334:destroy(); self.layout334 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.imageCheckBox366 ~= nil then self.imageCheckBox366:destroy(); self.imageCheckBox366 = nil; end;
        if self.layout418 ~= nil then self.layout418:destroy(); self.layout418 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout352 ~= nil then self.layout352:destroy(); self.layout352 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.layout419 ~= nil then self.layout419:destroy(); self.layout419 = nil; end;
        if self.imageCheckBox470 ~= nil then self.imageCheckBox470:destroy(); self.imageCheckBox470 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.imageCheckBox234 ~= nil then self.imageCheckBox234:destroy(); self.imageCheckBox234 = nil; end;
        if self.layout359 ~= nil then self.layout359:destroy(); self.layout359 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.imageCheckBox238 ~= nil then self.imageCheckBox238:destroy(); self.imageCheckBox238 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox169 ~= nil then self.imageCheckBox169:destroy(); self.imageCheckBox169 = nil; end;
        if self.layout465 ~= nil then self.layout465:destroy(); self.layout465 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.imageCheckBox275 ~= nil then self.imageCheckBox275:destroy(); self.imageCheckBox275 = nil; end;
        if self.imageCheckBox217 ~= nil then self.imageCheckBox217:destroy(); self.imageCheckBox217 = nil; end;
        if self.imageCheckBox418 ~= nil then self.imageCheckBox418:destroy(); self.imageCheckBox418 = nil; end;
        if self.layout514 ~= nil then self.layout514:destroy(); self.layout514 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.layout423 ~= nil then self.layout423:destroy(); self.layout423 = nil; end;
        if self.layout405 ~= nil then self.layout405:destroy(); self.layout405 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.imageCheckBox146 ~= nil then self.imageCheckBox146:destroy(); self.imageCheckBox146 = nil; end;
        if self.layout313 ~= nil then self.layout313:destroy(); self.layout313 = nil; end;
        if self.layout530 ~= nil then self.layout530:destroy(); self.layout530 = nil; end;
        if self.layout280 ~= nil then self.layout280:destroy(); self.layout280 = nil; end;
        if self.imageCheckBox300 ~= nil then self.imageCheckBox300:destroy(); self.imageCheckBox300 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.layout398 ~= nil then self.layout398:destroy(); self.layout398 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout547 ~= nil then self.layout547:destroy(); self.layout547 = nil; end;
        if self.imageCheckBox278 ~= nil then self.imageCheckBox278:destroy(); self.imageCheckBox278 = nil; end;
        if self.imageCheckBox404 ~= nil then self.imageCheckBox404:destroy(); self.imageCheckBox404 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.imageCheckBox386 ~= nil then self.imageCheckBox386:destroy(); self.imageCheckBox386 = nil; end;
        if self.layout409 ~= nil then self.layout409:destroy(); self.layout409 = nil; end;
        if self.imageCheckBox410 ~= nil then self.imageCheckBox410:destroy(); self.imageCheckBox410 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.layout179 ~= nil then self.layout179:destroy(); self.layout179 = nil; end;
        if self.imageCheckBox486 ~= nil then self.imageCheckBox486:destroy(); self.imageCheckBox486 = nil; end;
        if self.imageCheckBox515 ~= nil then self.imageCheckBox515:destroy(); self.imageCheckBox515 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox139 ~= nil then self.imageCheckBox139:destroy(); self.imageCheckBox139 = nil; end;
        if self.layout427 ~= nil then self.layout427:destroy(); self.layout427 = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.layout430 ~= nil then self.layout430:destroy(); self.layout430 = nil; end;
        if self.imageCheckBox187 ~= nil then self.imageCheckBox187:destroy(); self.imageCheckBox187 = nil; end;
        if self.layout344 ~= nil then self.layout344:destroy(); self.layout344 = nil; end;
        if self.layout490 ~= nil then self.layout490:destroy(); self.layout490 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.imageCheckBox487 ~= nil then self.imageCheckBox487:destroy(); self.imageCheckBox487 = nil; end;
        if self.imageCheckBox223 ~= nil then self.imageCheckBox223:destroy(); self.imageCheckBox223 = nil; end;
        if self.layout368 ~= nil then self.layout368:destroy(); self.layout368 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.imageCheckBox266 ~= nil then self.imageCheckBox266:destroy(); self.imageCheckBox266 = nil; end;
        if self.layout425 ~= nil then self.layout425:destroy(); self.layout425 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.imageCheckBox409 ~= nil then self.imageCheckBox409:destroy(); self.imageCheckBox409 = nil; end;
        if self.imageCheckBox245 ~= nil then self.imageCheckBox245:destroy(); self.imageCheckBox245 = nil; end;
        if self.layout528 ~= nil then self.layout528:destroy(); self.layout528 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.imageCheckBox259 ~= nil then self.imageCheckBox259:destroy(); self.imageCheckBox259 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.layout460 ~= nil then self.layout460:destroy(); self.layout460 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.imageCheckBox424 ~= nil then self.imageCheckBox424:destroy(); self.imageCheckBox424 = nil; end;
        if self.layout380 ~= nil then self.layout380:destroy(); self.layout380 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.layout377 ~= nil then self.layout377:destroy(); self.layout377 = nil; end;
        if self.imageCheckBox456 ~= nil then self.imageCheckBox456:destroy(); self.imageCheckBox456 = nil; end;
        if self.imageCheckBox374 ~= nil then self.imageCheckBox374:destroy(); self.imageCheckBox374 = nil; end;
        if self.layout291 ~= nil then self.layout291:destroy(); self.layout291 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout294 ~= nil then self.layout294:destroy(); self.layout294 = nil; end;
        if self.layout233 ~= nil then self.layout233:destroy(); self.layout233 = nil; end;
        if self.layout383 ~= nil then self.layout383:destroy(); self.layout383 = nil; end;
        if self.layout390 ~= nil then self.layout390:destroy(); self.layout390 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.imageCheckBox468 ~= nil then self.imageCheckBox468:destroy(); self.imageCheckBox468 = nil; end;
        if self.imageCheckBox389 ~= nil then self.imageCheckBox389:destroy(); self.imageCheckBox389 = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox353 ~= nil then self.imageCheckBox353:destroy(); self.imageCheckBox353 = nil; end;
        if self.layout395 ~= nil then self.layout395:destroy(); self.layout395 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout531 ~= nil then self.layout531:destroy(); self.layout531 = nil; end;
        if self.layout483 ~= nil then self.layout483:destroy(); self.layout483 = nil; end;
        if self.imageCheckBox445 ~= nil then self.imageCheckBox445:destroy(); self.imageCheckBox445 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.imageCheckBox481 ~= nil then self.imageCheckBox481:destroy(); self.imageCheckBox481 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox494 ~= nil then self.imageCheckBox494:destroy(); self.imageCheckBox494 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout529 ~= nil then self.layout529:destroy(); self.layout529 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.layout545 ~= nil then self.layout545:destroy(); self.layout545 = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout175 ~= nil then self.layout175:destroy(); self.layout175 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout402 ~= nil then self.layout402:destroy(); self.layout402 = nil; end;
        if self.layout264 ~= nil then self.layout264:destroy(); self.layout264 = nil; end;
        if self.imageCheckBox274 ~= nil then self.imageCheckBox274:destroy(); self.imageCheckBox274 = nil; end;
        if self.layout231 ~= nil then self.layout231:destroy(); self.layout231 = nil; end;
        if self.imageCheckBox436 ~= nil then self.imageCheckBox436:destroy(); self.imageCheckBox436 = nil; end;
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
        if self.imageCheckBox477 ~= nil then self.imageCheckBox477:destroy(); self.imageCheckBox477 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.imageCheckBox177 ~= nil then self.imageCheckBox177:destroy(); self.imageCheckBox177 = nil; end;
        if self.layout550 ~= nil then self.layout550:destroy(); self.layout550 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.layout281 ~= nil then self.layout281:destroy(); self.layout281 = nil; end;
        if self.imageCheckBox368 ~= nil then self.imageCheckBox368:destroy(); self.imageCheckBox368 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.imageCheckBox433 ~= nil then self.imageCheckBox433:destroy(); self.imageCheckBox433 = nil; end;
        if self.layout463 ~= nil then self.layout463:destroy(); self.layout463 = nil; end;
        if self.imageCheckBox457 ~= nil then self.imageCheckBox457:destroy(); self.imageCheckBox457 = nil; end;
        if self.imageCheckBox523 ~= nil then self.imageCheckBox523:destroy(); self.imageCheckBox523 = nil; end;
        if self.layout399 ~= nil then self.layout399:destroy(); self.layout399 = nil; end;
        if self.layout522 ~= nil then self.layout522:destroy(); self.layout522 = nil; end;
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
        if self.imageCheckBox413 ~= nil then self.imageCheckBox413:destroy(); self.imageCheckBox413 = nil; end;
        if self.imageCheckBox419 ~= nil then self.imageCheckBox419:destroy(); self.imageCheckBox419 = nil; end;
        if self.layout436 ~= nil then self.layout436:destroy(); self.layout436 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.layout511 ~= nil then self.layout511:destroy(); self.layout511 = nil; end;
        if self.layout265 ~= nil then self.layout265:destroy(); self.layout265 = nil; end;
        if self.imageCheckBox212 ~= nil then self.imageCheckBox212:destroy(); self.imageCheckBox212 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox282 ~= nil then self.imageCheckBox282:destroy(); self.imageCheckBox282 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.imageCheckBox435 ~= nil then self.imageCheckBox435:destroy(); self.imageCheckBox435 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.layout521 ~= nil then self.layout521:destroy(); self.layout521 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.layout421 ~= nil then self.layout421:destroy(); self.layout421 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.imageCheckBox273 ~= nil then self.imageCheckBox273:destroy(); self.imageCheckBox273 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.imageCheckBox269 ~= nil then self.imageCheckBox269:destroy(); self.imageCheckBox269 = nil; end;
        if self.imageCheckBox411 ~= nil then self.imageCheckBox411:destroy(); self.imageCheckBox411 = nil; end;
        if self.layout520 ~= nil then self.layout520:destroy(); self.layout520 = nil; end;
        if self.imageCheckBox277 ~= nil then self.imageCheckBox277:destroy(); self.imageCheckBox277 = nil; end;
        if self.imageCheckBox356 ~= nil then self.imageCheckBox356:destroy(); self.imageCheckBox356 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.imageCheckBox240 ~= nil then self.imageCheckBox240:destroy(); self.imageCheckBox240 = nil; end;
        if self.layout287 ~= nil then self.layout287:destroy(); self.layout287 = nil; end;
        if self.layout500 ~= nil then self.layout500:destroy(); self.layout500 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.imageCheckBox416 ~= nil then self.imageCheckBox416:destroy(); self.imageCheckBox416 = nil; end;
        if self.imageCheckBox324 ~= nil then self.imageCheckBox324:destroy(); self.imageCheckBox324 = nil; end;
        if self.imageCheckBox257 ~= nil then self.imageCheckBox257:destroy(); self.imageCheckBox257 = nil; end;
        if self.layout422 ~= nil then self.layout422:destroy(); self.layout422 = nil; end;
        if self.layout378 ~= nil then self.layout378:destroy(); self.layout378 = nil; end;
        if self.layout284 ~= nil then self.layout284:destroy(); self.layout284 = nil; end;
        if self.imageCheckBox402 ~= nil then self.imageCheckBox402:destroy(); self.imageCheckBox402 = nil; end;
        if self.layout518 ~= nil then self.layout518:destroy(); self.layout518 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.imageCheckBox439 ~= nil then self.imageCheckBox439:destroy(); self.imageCheckBox439 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout237 ~= nil then self.layout237:destroy(); self.layout237 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.layout482 ~= nil then self.layout482:destroy(); self.layout482 = nil; end;
        if self.layout340 ~= nil then self.layout340:destroy(); self.layout340 = nil; end;
        if self.imageCheckBox232 ~= nil then self.imageCheckBox232:destroy(); self.imageCheckBox232 = nil; end;
        if self.imageCheckBox383 ~= nil then self.imageCheckBox383:destroy(); self.imageCheckBox383 = nil; end;
        if self.imageCheckBox167 ~= nil then self.imageCheckBox167:destroy(); self.imageCheckBox167 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.layout301 ~= nil then self.layout301:destroy(); self.layout301 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmVampiro_Drake_Chronicles1_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmVampiro_Drake_Chronicles1_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmVampiro_Drake_Chronicles1_svg = {
    newEditor = newfrmVampiro_Drake_Chronicles1_svg, 
    new = newfrmVampiro_Drake_Chronicles1_svg, 
    name = "frmVampiro_Drake_Chronicles1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmVampiro_Drake_Chronicles1_svg = _frmVampiro_Drake_Chronicles1_svg;
Firecast.registrarForm(_frmVampiro_Drake_Chronicles1_svg);

return _frmVampiro_Drake_Chronicles1_svg;
