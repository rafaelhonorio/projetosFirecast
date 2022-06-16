require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPokeRPGT1_svg()
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
    obj:setName("frmPokeRPGT1_svg");
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
    obj.image1:setSRC("/PokeRPGT/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(630);
    obj.layout1:setTop(273);
    obj.layout1:setWidth(20);
    obj.layout1:setHeight(20);
    obj.layout1:setName("layout1");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout1);
    obj.imageCheckBox1:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox1:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox1:setWidth(20);
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setField("vit1");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(650);
    obj.layout2:setTop(273);
    obj.layout2:setWidth(20);
    obj.layout2:setHeight(20);
    obj.layout2:setName("layout2");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout2);
    obj.imageCheckBox2:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox2:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox2:setWidth(20);
    obj.imageCheckBox2:setHeight(20);
    obj.imageCheckBox2:setField("vit2");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(670);
    obj.layout3:setTop(273);
    obj.layout3:setWidth(20);
    obj.layout3:setHeight(20);
    obj.layout3:setName("layout3");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout3);
    obj.imageCheckBox3:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox3:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox3:setWidth(20);
    obj.imageCheckBox3:setHeight(20);
    obj.imageCheckBox3:setField("vit3");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(690);
    obj.layout4:setTop(273);
    obj.layout4:setWidth(20);
    obj.layout4:setHeight(20);
    obj.layout4:setName("layout4");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout4);
    obj.imageCheckBox4:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox4:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox4:setWidth(20);
    obj.imageCheckBox4:setHeight(20);
    obj.imageCheckBox4:setField("vit4");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(710);
    obj.layout5:setTop(273);
    obj.layout5:setWidth(20);
    obj.layout5:setHeight(20);
    obj.layout5:setName("layout5");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout5);
    obj.imageCheckBox5:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox5:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox5:setWidth(20);
    obj.imageCheckBox5:setHeight(20);
    obj.imageCheckBox5:setField("vit5");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(730);
    obj.layout6:setTop(273);
    obj.layout6:setWidth(20);
    obj.layout6:setHeight(20);
    obj.layout6:setName("layout6");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout6);
    obj.imageCheckBox6:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox6:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox6:setWidth(20);
    obj.imageCheckBox6:setHeight(20);
    obj.imageCheckBox6:setField("vit6");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(750);
    obj.layout7:setTop(273);
    obj.layout7:setWidth(20);
    obj.layout7:setHeight(20);
    obj.layout7:setName("layout7");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout7);
    obj.imageCheckBox7:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox7:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox7:setWidth(20);
    obj.imageCheckBox7:setHeight(20);
    obj.imageCheckBox7:setField("vit7");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(770);
    obj.layout8:setTop(273);
    obj.layout8:setWidth(20);
    obj.layout8:setHeight(20);
    obj.layout8:setName("layout8");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout8);
    obj.imageCheckBox8:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox8:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox8:setWidth(20);
    obj.imageCheckBox8:setHeight(20);
    obj.imageCheckBox8:setField("vit8");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(790);
    obj.layout9:setTop(273);
    obj.layout9:setWidth(20);
    obj.layout9:setHeight(20);
    obj.layout9:setName("layout9");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout9);
    obj.imageCheckBox9:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox9:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox9:setWidth(20);
    obj.imageCheckBox9:setHeight(20);
    obj.imageCheckBox9:setField("vit9");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(810);
    obj.layout10:setTop(273);
    obj.layout10:setWidth(20);
    obj.layout10:setHeight(20);
    obj.layout10:setName("layout10");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout10);
    obj.imageCheckBox10:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox10:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox10:setWidth(20);
    obj.imageCheckBox10:setHeight(20);
    obj.imageCheckBox10:setField("vit10");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(830);
    obj.layout11:setTop(273);
    obj.layout11:setWidth(20);
    obj.layout11:setHeight(20);
    obj.layout11:setName("layout11");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout11);
    obj.imageCheckBox11:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox11:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox11:setWidth(20);
    obj.imageCheckBox11:setHeight(20);
    obj.imageCheckBox11:setField("vit11");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(850);
    obj.layout12:setTop(273);
    obj.layout12:setWidth(20);
    obj.layout12:setHeight(20);
    obj.layout12:setName("layout12");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout12);
    obj.imageCheckBox12:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox12:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox12:setWidth(20);
    obj.imageCheckBox12:setHeight(20);
    obj.imageCheckBox12:setField("vit12");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(90);
    obj.layout13:setTop(268);
    obj.layout13:setWidth(210);
    obj.layout13:setHeight(30);
    obj.layout13:setName("layout13");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout13);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(16);
    obj.edit1:setFontColor("#ffffff");
    obj.edit1:setHorzTextAlign("leading");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(210);
    obj.edit1:setHeight(31);
    obj.edit1:setField("pj");
    obj.edit1:setName("edit1");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(368);
    obj.layout14:setTop(268);
    obj.layout14:setWidth(210);
    obj.layout14:setHeight(30);
    obj.layout14:setName("layout14");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout14);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(16);
    obj.edit2:setFontColor("#ffffff");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(210);
    obj.edit2:setHeight(31);
    obj.edit2:setField("cb");
    obj.edit2:setName("edit2");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(630);
    obj.layout15:setTop(316);
    obj.layout15:setWidth(20);
    obj.layout15:setHeight(20);
    obj.layout15:setName("layout15");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout15);
    obj.imageCheckBox13:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox13:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox13:setWidth(20);
    obj.imageCheckBox13:setHeight(20);
    obj.imageCheckBox13:setField("acd1");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(650);
    obj.layout16:setTop(316);
    obj.layout16:setWidth(20);
    obj.layout16:setHeight(20);
    obj.layout16:setName("layout16");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout16);
    obj.imageCheckBox14:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox14:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox14:setWidth(20);
    obj.imageCheckBox14:setHeight(20);
    obj.imageCheckBox14:setField("acd2");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(670);
    obj.layout17:setTop(316);
    obj.layout17:setWidth(20);
    obj.layout17:setHeight(20);
    obj.layout17:setName("layout17");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout17);
    obj.imageCheckBox15:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox15:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox15:setWidth(20);
    obj.imageCheckBox15:setHeight(20);
    obj.imageCheckBox15:setField("acd3");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(690);
    obj.layout18:setTop(316);
    obj.layout18:setWidth(20);
    obj.layout18:setHeight(20);
    obj.layout18:setName("layout18");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout18);
    obj.imageCheckBox16:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox16:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox16:setWidth(20);
    obj.imageCheckBox16:setHeight(20);
    obj.imageCheckBox16:setField("acd4");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(710);
    obj.layout19:setTop(316);
    obj.layout19:setWidth(20);
    obj.layout19:setHeight(20);
    obj.layout19:setName("layout19");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout19);
    obj.imageCheckBox17:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox17:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox17:setWidth(20);
    obj.imageCheckBox17:setHeight(20);
    obj.imageCheckBox17:setField("acd5");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(730);
    obj.layout20:setTop(316);
    obj.layout20:setWidth(20);
    obj.layout20:setHeight(20);
    obj.layout20:setName("layout20");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout20);
    obj.imageCheckBox18:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox18:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox18:setWidth(20);
    obj.imageCheckBox18:setHeight(20);
    obj.imageCheckBox18:setField("acd6");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(750);
    obj.layout21:setTop(316);
    obj.layout21:setWidth(20);
    obj.layout21:setHeight(20);
    obj.layout21:setName("layout21");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout21);
    obj.imageCheckBox19:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox19:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox19:setWidth(20);
    obj.imageCheckBox19:setHeight(20);
    obj.imageCheckBox19:setField("acd7");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(770);
    obj.layout22:setTop(316);
    obj.layout22:setWidth(20);
    obj.layout22:setHeight(20);
    obj.layout22:setName("layout22");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout22);
    obj.imageCheckBox20:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox20:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox20:setWidth(20);
    obj.imageCheckBox20:setHeight(20);
    obj.imageCheckBox20:setField("acd8");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(790);
    obj.layout23:setTop(316);
    obj.layout23:setWidth(20);
    obj.layout23:setHeight(20);
    obj.layout23:setName("layout23");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout23);
    obj.imageCheckBox21:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox21:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox21:setWidth(20);
    obj.imageCheckBox21:setHeight(20);
    obj.imageCheckBox21:setField("acd9");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(810);
    obj.layout24:setTop(316);
    obj.layout24:setWidth(20);
    obj.layout24:setHeight(20);
    obj.layout24:setName("layout24");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout24);
    obj.imageCheckBox22:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox22:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox22:setWidth(20);
    obj.imageCheckBox22:setHeight(20);
    obj.imageCheckBox22:setField("acd10");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(830);
    obj.layout25:setTop(316);
    obj.layout25:setWidth(20);
    obj.layout25:setHeight(20);
    obj.layout25:setName("layout25");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout25);
    obj.imageCheckBox23:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox23:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox23:setWidth(20);
    obj.imageCheckBox23:setHeight(20);
    obj.imageCheckBox23:setField("acd11");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(850);
    obj.layout26:setTop(316);
    obj.layout26:setWidth(20);
    obj.layout26:setHeight(20);
    obj.layout26:setName("layout26");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout26);
    obj.imageCheckBox24:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox24:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox24:setWidth(20);
    obj.imageCheckBox24:setHeight(20);
    obj.imageCheckBox24:setField("acd12");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(90);
    obj.layout27:setTop(320);
    obj.layout27:setWidth(210);
    obj.layout27:setHeight(30);
    obj.layout27:setName("layout27");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout27);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(16);
    obj.edit3:setFontColor("#ffffff");
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(210);
    obj.edit3:setHeight(31);
    obj.edit3:setField("Cidade");
    obj.edit3:setName("edit3");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(368);
    obj.layout28:setTop(320);
    obj.layout28:setWidth(210);
    obj.layout28:setHeight(30);
    obj.layout28:setName("layout28");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout28);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(16);
    obj.edit4:setFontColor("#ffffff");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(210);
    obj.edit4:setHeight(31);
    obj.edit4:setField("ca");
    obj.edit4:setName("edit4");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(90);
    obj.layout29:setTop(375);
    obj.layout29:setWidth(210);
    obj.layout29:setHeight(30);
    obj.layout29:setName("layout29");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout29);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(16);
    obj.edit5:setFontColor("#ffffff");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(210);
    obj.edit5:setHeight(31);
    obj.edit5:setField("prof");
    obj.edit5:setName("edit5");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(368);
    obj.layout30:setTop(375);
    obj.layout30:setWidth(210);
    obj.layout30:setHeight(30);
    obj.layout30:setName("layout30");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout30);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(16);
    obj.edit6:setFontColor("#ffffff");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(210);
    obj.edit6:setHeight(31);
    obj.edit6:setField("tend");
    obj.edit6:setName("edit6");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(630);
    obj.layout31:setTop(383);
    obj.layout31:setWidth(85);
    obj.layout31:setHeight(30);
    obj.layout31:setName("layout31");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout31);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(16);
    obj.edit7:setFontColor("#ffffff");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(85);
    obj.edit7:setHeight(30);
    obj.edit7:setField("xp");
    obj.edit7:setName("edit7");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(768);
    obj.layout32:setTop(383);
    obj.layout32:setWidth(85);
    obj.layout32:setHeight(30);
    obj.layout32:setName("layout32");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout32);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(16);
    obj.edit8:setFontColor("#ffffff");
    obj.edit8:setHorzTextAlign("leading");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(85);
    obj.edit8:setHeight(30);
    obj.edit8:setField("dinheiro");
    obj.edit8:setName("edit8");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(140);
    obj.layout33:setTop(523);
    obj.layout33:setWidth(19);
    obj.layout33:setHeight(19);
    obj.layout33:setName("layout33");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout33);
    obj.imageCheckBox25:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox25:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox25:setWidth(19);
    obj.imageCheckBox25:setHeight(19);
    obj.imageCheckBox25:setField("for1");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(159);
    obj.layout34:setTop(523);
    obj.layout34:setWidth(19);
    obj.layout34:setHeight(19);
    obj.layout34:setName("layout34");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout34);
    obj.imageCheckBox26:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox26:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox26:setWidth(19);
    obj.imageCheckBox26:setHeight(19);
    obj.imageCheckBox26:setField("for2");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(178);
    obj.layout35:setTop(523);
    obj.layout35:setWidth(19);
    obj.layout35:setHeight(19);
    obj.layout35:setName("layout35");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout35);
    obj.imageCheckBox27:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox27:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox27:setWidth(19);
    obj.imageCheckBox27:setHeight(19);
    obj.imageCheckBox27:setField("for3");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(197);
    obj.layout36:setTop(523);
    obj.layout36:setWidth(19);
    obj.layout36:setHeight(19);
    obj.layout36:setName("layout36");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout36);
    obj.imageCheckBox28:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox28:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox28:setWidth(19);
    obj.imageCheckBox28:setHeight(19);
    obj.imageCheckBox28:setField("for4");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(216);
    obj.layout37:setTop(523);
    obj.layout37:setWidth(19);
    obj.layout37:setHeight(19);
    obj.layout37:setName("layout37");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout37);
    obj.imageCheckBox29:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox29:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox29:setWidth(19);
    obj.imageCheckBox29:setHeight(19);
    obj.imageCheckBox29:setField("for5");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(235);
    obj.layout38:setTop(523);
    obj.layout38:setWidth(19);
    obj.layout38:setHeight(19);
    obj.layout38:setName("layout38");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout38);
    obj.imageCheckBox30:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox30:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox30:setWidth(19);
    obj.imageCheckBox30:setHeight(19);
    obj.imageCheckBox30:setField("for6");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(254);
    obj.layout39:setTop(523);
    obj.layout39:setWidth(19);
    obj.layout39:setHeight(19);
    obj.layout39:setName("layout39");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout39);
    obj.imageCheckBox31:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox31:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox31:setWidth(19);
    obj.imageCheckBox31:setHeight(19);
    obj.imageCheckBox31:setField("for7");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(273);
    obj.layout40:setTop(523);
    obj.layout40:setWidth(19);
    obj.layout40:setHeight(19);
    obj.layout40:setName("layout40");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout40);
    obj.imageCheckBox32:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox32:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox32:setWidth(19);
    obj.imageCheckBox32:setHeight(19);
    obj.imageCheckBox32:setField("for8");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(292);
    obj.layout41:setTop(523);
    obj.layout41:setWidth(19);
    obj.layout41:setHeight(19);
    obj.layout41:setName("layout41");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout41);
    obj.imageCheckBox33:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox33:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox33:setWidth(19);
    obj.imageCheckBox33:setHeight(19);
    obj.imageCheckBox33:setField("for9");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(747);
    obj.layout42:setTop(523);
    obj.layout42:setWidth(19);
    obj.layout42:setHeight(19);
    obj.layout42:setName("layout42");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout42);
    obj.imageCheckBox34:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox34:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox34:setWidth(19);
    obj.imageCheckBox34:setHeight(19);
    obj.imageCheckBox34:setField("per1");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(766);
    obj.layout43:setTop(523);
    obj.layout43:setWidth(19);
    obj.layout43:setHeight(19);
    obj.layout43:setName("layout43");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout43);
    obj.imageCheckBox35:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox35:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox35:setWidth(19);
    obj.imageCheckBox35:setHeight(19);
    obj.imageCheckBox35:setField("per2");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(785);
    obj.layout44:setTop(523);
    obj.layout44:setWidth(19);
    obj.layout44:setHeight(19);
    obj.layout44:setName("layout44");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout44);
    obj.imageCheckBox36:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox36:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox36:setWidth(19);
    obj.imageCheckBox36:setHeight(19);
    obj.imageCheckBox36:setField("per3");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(804);
    obj.layout45:setTop(523);
    obj.layout45:setWidth(19);
    obj.layout45:setHeight(19);
    obj.layout45:setName("layout45");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout45);
    obj.imageCheckBox37:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox37:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox37:setWidth(19);
    obj.imageCheckBox37:setHeight(19);
    obj.imageCheckBox37:setField("per4");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(823);
    obj.layout46:setTop(523);
    obj.layout46:setWidth(19);
    obj.layout46:setHeight(19);
    obj.layout46:setName("layout46");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout46);
    obj.imageCheckBox38:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox38:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox38:setWidth(19);
    obj.imageCheckBox38:setHeight(19);
    obj.imageCheckBox38:setField("per5");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(842);
    obj.layout47:setTop(523);
    obj.layout47:setWidth(19);
    obj.layout47:setHeight(19);
    obj.layout47:setName("layout47");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout47);
    obj.imageCheckBox39:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox39:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox39:setWidth(19);
    obj.imageCheckBox39:setHeight(19);
    obj.imageCheckBox39:setField("per6");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(861);
    obj.layout48:setTop(523);
    obj.layout48:setWidth(19);
    obj.layout48:setHeight(19);
    obj.layout48:setName("layout48");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout48);
    obj.imageCheckBox40:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox40:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox40:setWidth(19);
    obj.imageCheckBox40:setHeight(19);
    obj.imageCheckBox40:setField("per7");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(880);
    obj.layout49:setTop(523);
    obj.layout49:setWidth(19);
    obj.layout49:setHeight(19);
    obj.layout49:setName("layout49");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout49);
    obj.imageCheckBox41:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox41:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox41:setWidth(19);
    obj.imageCheckBox41:setHeight(19);
    obj.imageCheckBox41:setField("per8");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(899);
    obj.layout50:setTop(523);
    obj.layout50:setWidth(19);
    obj.layout50:setHeight(19);
    obj.layout50:setName("layout50");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout50);
    obj.imageCheckBox42:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox42:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox42:setWidth(19);
    obj.imageCheckBox42:setHeight(19);
    obj.imageCheckBox42:setField("per9");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(447);
    obj.layout51:setTop(523);
    obj.layout51:setWidth(19);
    obj.layout51:setHeight(19);
    obj.layout51:setName("layout51");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout51);
    obj.imageCheckBox43:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox43:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox43:setWidth(19);
    obj.imageCheckBox43:setHeight(19);
    obj.imageCheckBox43:setField("car1");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(466);
    obj.layout52:setTop(523);
    obj.layout52:setWidth(19);
    obj.layout52:setHeight(19);
    obj.layout52:setName("layout52");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout52);
    obj.imageCheckBox44:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox44:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox44:setWidth(19);
    obj.imageCheckBox44:setHeight(19);
    obj.imageCheckBox44:setField("car2");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(485);
    obj.layout53:setTop(523);
    obj.layout53:setWidth(19);
    obj.layout53:setHeight(19);
    obj.layout53:setName("layout53");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout53);
    obj.imageCheckBox45:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox45:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox45:setWidth(19);
    obj.imageCheckBox45:setHeight(19);
    obj.imageCheckBox45:setField("car3");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(504);
    obj.layout54:setTop(523);
    obj.layout54:setWidth(19);
    obj.layout54:setHeight(19);
    obj.layout54:setName("layout54");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout54);
    obj.imageCheckBox46:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox46:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox46:setWidth(19);
    obj.imageCheckBox46:setHeight(19);
    obj.imageCheckBox46:setField("car4");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(523);
    obj.layout55:setTop(523);
    obj.layout55:setWidth(19);
    obj.layout55:setHeight(19);
    obj.layout55:setName("layout55");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout55);
    obj.imageCheckBox47:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox47:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox47:setWidth(19);
    obj.imageCheckBox47:setHeight(19);
    obj.imageCheckBox47:setField("car5");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(542);
    obj.layout56:setTop(523);
    obj.layout56:setWidth(19);
    obj.layout56:setHeight(19);
    obj.layout56:setName("layout56");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout56);
    obj.imageCheckBox48:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox48:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox48:setWidth(19);
    obj.imageCheckBox48:setHeight(19);
    obj.imageCheckBox48:setField("car6");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(561);
    obj.layout57:setTop(523);
    obj.layout57:setWidth(19);
    obj.layout57:setHeight(19);
    obj.layout57:setName("layout57");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout57);
    obj.imageCheckBox49:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox49:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox49:setWidth(19);
    obj.imageCheckBox49:setHeight(19);
    obj.imageCheckBox49:setField("car7");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(580);
    obj.layout58:setTop(523);
    obj.layout58:setWidth(19);
    obj.layout58:setHeight(19);
    obj.layout58:setName("layout58");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout58);
    obj.imageCheckBox50:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox50:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox50:setWidth(19);
    obj.imageCheckBox50:setHeight(19);
    obj.imageCheckBox50:setField("car8");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(599);
    obj.layout59:setTop(523);
    obj.layout59:setWidth(19);
    obj.layout59:setHeight(19);
    obj.layout59:setName("layout59");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout59);
    obj.imageCheckBox51:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox51:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox51:setWidth(19);
    obj.imageCheckBox51:setHeight(19);
    obj.imageCheckBox51:setField("car9");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(140);
    obj.layout60:setTop(550);
    obj.layout60:setWidth(19);
    obj.layout60:setHeight(19);
    obj.layout60:setName("layout60");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout60);
    obj.imageCheckBox52:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox52:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox52:setWidth(19);
    obj.imageCheckBox52:setHeight(19);
    obj.imageCheckBox52:setField("des1");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(159);
    obj.layout61:setTop(550);
    obj.layout61:setWidth(19);
    obj.layout61:setHeight(19);
    obj.layout61:setName("layout61");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout61);
    obj.imageCheckBox53:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox53:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox53:setWidth(19);
    obj.imageCheckBox53:setHeight(19);
    obj.imageCheckBox53:setField("des2");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(178);
    obj.layout62:setTop(550);
    obj.layout62:setWidth(19);
    obj.layout62:setHeight(19);
    obj.layout62:setName("layout62");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout62);
    obj.imageCheckBox54:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox54:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox54:setWidth(19);
    obj.imageCheckBox54:setHeight(19);
    obj.imageCheckBox54:setField("des3");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(197);
    obj.layout63:setTop(550);
    obj.layout63:setWidth(19);
    obj.layout63:setHeight(19);
    obj.layout63:setName("layout63");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout63);
    obj.imageCheckBox55:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox55:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox55:setWidth(19);
    obj.imageCheckBox55:setHeight(19);
    obj.imageCheckBox55:setField("des4");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(216);
    obj.layout64:setTop(550);
    obj.layout64:setWidth(19);
    obj.layout64:setHeight(19);
    obj.layout64:setName("layout64");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout64);
    obj.imageCheckBox56:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox56:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox56:setWidth(19);
    obj.imageCheckBox56:setHeight(19);
    obj.imageCheckBox56:setField("des5");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(235);
    obj.layout65:setTop(550);
    obj.layout65:setWidth(19);
    obj.layout65:setHeight(19);
    obj.layout65:setName("layout65");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout65);
    obj.imageCheckBox57:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox57:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox57:setWidth(19);
    obj.imageCheckBox57:setHeight(19);
    obj.imageCheckBox57:setField("des6");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(254);
    obj.layout66:setTop(550);
    obj.layout66:setWidth(19);
    obj.layout66:setHeight(19);
    obj.layout66:setName("layout66");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout66);
    obj.imageCheckBox58:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox58:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox58:setWidth(19);
    obj.imageCheckBox58:setHeight(19);
    obj.imageCheckBox58:setField("des7");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(273);
    obj.layout67:setTop(550);
    obj.layout67:setWidth(19);
    obj.layout67:setHeight(19);
    obj.layout67:setName("layout67");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout67);
    obj.imageCheckBox59:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox59:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox59:setWidth(19);
    obj.imageCheckBox59:setHeight(19);
    obj.imageCheckBox59:setField("des8");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(292);
    obj.layout68:setTop(550);
    obj.layout68:setWidth(19);
    obj.layout68:setHeight(19);
    obj.layout68:setName("layout68");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout68);
    obj.imageCheckBox60:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox60:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox60:setWidth(19);
    obj.imageCheckBox60:setHeight(19);
    obj.imageCheckBox60:setField("des9");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(747);
    obj.layout69:setTop(550);
    obj.layout69:setWidth(19);
    obj.layout69:setHeight(19);
    obj.layout69:setName("layout69");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout69);
    obj.imageCheckBox61:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox61:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox61:setWidth(19);
    obj.imageCheckBox61:setHeight(19);
    obj.imageCheckBox61:setField("int1");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(766);
    obj.layout70:setTop(550);
    obj.layout70:setWidth(19);
    obj.layout70:setHeight(19);
    obj.layout70:setName("layout70");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout70);
    obj.imageCheckBox62:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox62:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox62:setWidth(19);
    obj.imageCheckBox62:setHeight(19);
    obj.imageCheckBox62:setField("int2");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(785);
    obj.layout71:setTop(550);
    obj.layout71:setWidth(19);
    obj.layout71:setHeight(19);
    obj.layout71:setName("layout71");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout71);
    obj.imageCheckBox63:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox63:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox63:setWidth(19);
    obj.imageCheckBox63:setHeight(19);
    obj.imageCheckBox63:setField("int3");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(804);
    obj.layout72:setTop(550);
    obj.layout72:setWidth(19);
    obj.layout72:setHeight(19);
    obj.layout72:setName("layout72");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout72);
    obj.imageCheckBox64:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox64:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox64:setWidth(19);
    obj.imageCheckBox64:setHeight(19);
    obj.imageCheckBox64:setField("int4");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(823);
    obj.layout73:setTop(550);
    obj.layout73:setWidth(19);
    obj.layout73:setHeight(19);
    obj.layout73:setName("layout73");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout73);
    obj.imageCheckBox65:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox65:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox65:setWidth(19);
    obj.imageCheckBox65:setHeight(19);
    obj.imageCheckBox65:setField("int5");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(842);
    obj.layout74:setTop(550);
    obj.layout74:setWidth(19);
    obj.layout74:setHeight(19);
    obj.layout74:setName("layout74");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout74);
    obj.imageCheckBox66:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox66:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox66:setWidth(19);
    obj.imageCheckBox66:setHeight(19);
    obj.imageCheckBox66:setField("int6");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(861);
    obj.layout75:setTop(550);
    obj.layout75:setWidth(19);
    obj.layout75:setHeight(19);
    obj.layout75:setName("layout75");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout75);
    obj.imageCheckBox67:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox67:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox67:setWidth(19);
    obj.imageCheckBox67:setHeight(19);
    obj.imageCheckBox67:setField("int7");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(880);
    obj.layout76:setTop(550);
    obj.layout76:setWidth(19);
    obj.layout76:setHeight(19);
    obj.layout76:setName("layout76");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout76);
    obj.imageCheckBox68:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox68:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox68:setWidth(19);
    obj.imageCheckBox68:setHeight(19);
    obj.imageCheckBox68:setField("int8");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(899);
    obj.layout77:setTop(550);
    obj.layout77:setWidth(19);
    obj.layout77:setHeight(19);
    obj.layout77:setName("layout77");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout77);
    obj.imageCheckBox69:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox69:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox69:setWidth(19);
    obj.imageCheckBox69:setHeight(19);
    obj.imageCheckBox69:setField("int9");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(447);
    obj.layout78:setTop(550);
    obj.layout78:setWidth(19);
    obj.layout78:setHeight(19);
    obj.layout78:setName("layout78");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout78);
    obj.imageCheckBox70:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox70:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox70:setWidth(19);
    obj.imageCheckBox70:setHeight(19);
    obj.imageCheckBox70:setField("man1");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(466);
    obj.layout79:setTop(550);
    obj.layout79:setWidth(19);
    obj.layout79:setHeight(19);
    obj.layout79:setName("layout79");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout79);
    obj.imageCheckBox71:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox71:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox71:setWidth(19);
    obj.imageCheckBox71:setHeight(19);
    obj.imageCheckBox71:setField("man2");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(485);
    obj.layout80:setTop(550);
    obj.layout80:setWidth(19);
    obj.layout80:setHeight(19);
    obj.layout80:setName("layout80");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout80);
    obj.imageCheckBox72:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox72:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox72:setWidth(19);
    obj.imageCheckBox72:setHeight(19);
    obj.imageCheckBox72:setField("man3");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(504);
    obj.layout81:setTop(550);
    obj.layout81:setWidth(19);
    obj.layout81:setHeight(19);
    obj.layout81:setName("layout81");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout81);
    obj.imageCheckBox73:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox73:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox73:setWidth(19);
    obj.imageCheckBox73:setHeight(19);
    obj.imageCheckBox73:setField("man4");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(523);
    obj.layout82:setTop(550);
    obj.layout82:setWidth(19);
    obj.layout82:setHeight(19);
    obj.layout82:setName("layout82");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout82);
    obj.imageCheckBox74:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox74:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox74:setWidth(19);
    obj.imageCheckBox74:setHeight(19);
    obj.imageCheckBox74:setField("man5");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(542);
    obj.layout83:setTop(550);
    obj.layout83:setWidth(19);
    obj.layout83:setHeight(19);
    obj.layout83:setName("layout83");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout83);
    obj.imageCheckBox75:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox75:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox75:setWidth(19);
    obj.imageCheckBox75:setHeight(19);
    obj.imageCheckBox75:setField("man6");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(561);
    obj.layout84:setTop(550);
    obj.layout84:setWidth(19);
    obj.layout84:setHeight(19);
    obj.layout84:setName("layout84");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout84);
    obj.imageCheckBox76:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox76:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox76:setWidth(19);
    obj.imageCheckBox76:setHeight(19);
    obj.imageCheckBox76:setField("man7");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(580);
    obj.layout85:setTop(550);
    obj.layout85:setWidth(19);
    obj.layout85:setHeight(19);
    obj.layout85:setName("layout85");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout85);
    obj.imageCheckBox77:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox77:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox77:setWidth(19);
    obj.imageCheckBox77:setHeight(19);
    obj.imageCheckBox77:setField("man8");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(599);
    obj.layout86:setTop(550);
    obj.layout86:setWidth(19);
    obj.layout86:setHeight(19);
    obj.layout86:setName("layout86");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout86);
    obj.imageCheckBox78:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox78:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox78:setWidth(19);
    obj.imageCheckBox78:setHeight(19);
    obj.imageCheckBox78:setField("man9");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(140);
    obj.layout87:setTop(575);
    obj.layout87:setWidth(19);
    obj.layout87:setHeight(19);
    obj.layout87:setName("layout87");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout87);
    obj.imageCheckBox79:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox79:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox79:setWidth(19);
    obj.imageCheckBox79:setHeight(19);
    obj.imageCheckBox79:setField("vig1");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(159);
    obj.layout88:setTop(575);
    obj.layout88:setWidth(19);
    obj.layout88:setHeight(19);
    obj.layout88:setName("layout88");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout88);
    obj.imageCheckBox80:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox80:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox80:setWidth(19);
    obj.imageCheckBox80:setHeight(19);
    obj.imageCheckBox80:setField("vig2");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(178);
    obj.layout89:setTop(575);
    obj.layout89:setWidth(19);
    obj.layout89:setHeight(19);
    obj.layout89:setName("layout89");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout89);
    obj.imageCheckBox81:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox81:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox81:setWidth(19);
    obj.imageCheckBox81:setHeight(19);
    obj.imageCheckBox81:setField("vig3");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(197);
    obj.layout90:setTop(575);
    obj.layout90:setWidth(19);
    obj.layout90:setHeight(19);
    obj.layout90:setName("layout90");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout90);
    obj.imageCheckBox82:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox82:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox82:setWidth(19);
    obj.imageCheckBox82:setHeight(19);
    obj.imageCheckBox82:setField("vig4");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(216);
    obj.layout91:setTop(575);
    obj.layout91:setWidth(19);
    obj.layout91:setHeight(19);
    obj.layout91:setName("layout91");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout91);
    obj.imageCheckBox83:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox83:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox83:setWidth(19);
    obj.imageCheckBox83:setHeight(19);
    obj.imageCheckBox83:setField("vig5");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(235);
    obj.layout92:setTop(575);
    obj.layout92:setWidth(19);
    obj.layout92:setHeight(19);
    obj.layout92:setName("layout92");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout92);
    obj.imageCheckBox84:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox84:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox84:setWidth(19);
    obj.imageCheckBox84:setHeight(19);
    obj.imageCheckBox84:setField("vig6");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(254);
    obj.layout93:setTop(575);
    obj.layout93:setWidth(19);
    obj.layout93:setHeight(19);
    obj.layout93:setName("layout93");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout93);
    obj.imageCheckBox85:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox85:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox85:setWidth(19);
    obj.imageCheckBox85:setHeight(19);
    obj.imageCheckBox85:setField("vig7");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(273);
    obj.layout94:setTop(575);
    obj.layout94:setWidth(19);
    obj.layout94:setHeight(19);
    obj.layout94:setName("layout94");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout94);
    obj.imageCheckBox86:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox86:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox86:setWidth(19);
    obj.imageCheckBox86:setHeight(19);
    obj.imageCheckBox86:setField("vig8");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(292);
    obj.layout95:setTop(575);
    obj.layout95:setWidth(19);
    obj.layout95:setHeight(19);
    obj.layout95:setName("layout95");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout95);
    obj.imageCheckBox87:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox87:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox87:setWidth(19);
    obj.imageCheckBox87:setHeight(19);
    obj.imageCheckBox87:setField("vig9");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(747);
    obj.layout96:setTop(575);
    obj.layout96:setWidth(19);
    obj.layout96:setHeight(19);
    obj.layout96:setName("layout96");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout96);
    obj.imageCheckBox88:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox88:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox88:setWidth(19);
    obj.imageCheckBox88:setHeight(19);
    obj.imageCheckBox88:setField("rac1");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(766);
    obj.layout97:setTop(575);
    obj.layout97:setWidth(19);
    obj.layout97:setHeight(19);
    obj.layout97:setName("layout97");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout97);
    obj.imageCheckBox89:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox89:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox89:setWidth(19);
    obj.imageCheckBox89:setHeight(19);
    obj.imageCheckBox89:setField("rac2");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(785);
    obj.layout98:setTop(575);
    obj.layout98:setWidth(19);
    obj.layout98:setHeight(19);
    obj.layout98:setName("layout98");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout98);
    obj.imageCheckBox90:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox90:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox90:setWidth(19);
    obj.imageCheckBox90:setHeight(19);
    obj.imageCheckBox90:setField("rac3");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(804);
    obj.layout99:setTop(575);
    obj.layout99:setWidth(19);
    obj.layout99:setHeight(19);
    obj.layout99:setName("layout99");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout99);
    obj.imageCheckBox91:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox91:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox91:setWidth(19);
    obj.imageCheckBox91:setHeight(19);
    obj.imageCheckBox91:setField("rac4");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(823);
    obj.layout100:setTop(575);
    obj.layout100:setWidth(19);
    obj.layout100:setHeight(19);
    obj.layout100:setName("layout100");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout100);
    obj.imageCheckBox92:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox92:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox92:setWidth(19);
    obj.imageCheckBox92:setHeight(19);
    obj.imageCheckBox92:setField("rac5");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(842);
    obj.layout101:setTop(575);
    obj.layout101:setWidth(19);
    obj.layout101:setHeight(19);
    obj.layout101:setName("layout101");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout101);
    obj.imageCheckBox93:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox93:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox93:setWidth(19);
    obj.imageCheckBox93:setHeight(19);
    obj.imageCheckBox93:setField("rac6");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(861);
    obj.layout102:setTop(575);
    obj.layout102:setWidth(19);
    obj.layout102:setHeight(19);
    obj.layout102:setName("layout102");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout102);
    obj.imageCheckBox94:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox94:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox94:setWidth(19);
    obj.imageCheckBox94:setHeight(19);
    obj.imageCheckBox94:setField("rac7");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(880);
    obj.layout103:setTop(575);
    obj.layout103:setWidth(19);
    obj.layout103:setHeight(19);
    obj.layout103:setName("layout103");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout103);
    obj.imageCheckBox95:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox95:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox95:setWidth(19);
    obj.imageCheckBox95:setHeight(19);
    obj.imageCheckBox95:setField("rac8");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(899);
    obj.layout104:setTop(575);
    obj.layout104:setWidth(19);
    obj.layout104:setHeight(19);
    obj.layout104:setName("layout104");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout104);
    obj.imageCheckBox96:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox96:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox96:setWidth(19);
    obj.imageCheckBox96:setHeight(19);
    obj.imageCheckBox96:setField("rac9");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(447);
    obj.layout105:setTop(575);
    obj.layout105:setWidth(19);
    obj.layout105:setHeight(19);
    obj.layout105:setName("layout105");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout105);
    obj.imageCheckBox97:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox97:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox97:setWidth(19);
    obj.imageCheckBox97:setHeight(19);
    obj.imageCheckBox97:setField("ap1");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(466);
    obj.layout106:setTop(575);
    obj.layout106:setWidth(19);
    obj.layout106:setHeight(19);
    obj.layout106:setName("layout106");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout106);
    obj.imageCheckBox98:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox98:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox98:setWidth(19);
    obj.imageCheckBox98:setHeight(19);
    obj.imageCheckBox98:setField("ap2");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(485);
    obj.layout107:setTop(575);
    obj.layout107:setWidth(19);
    obj.layout107:setHeight(19);
    obj.layout107:setName("layout107");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout107);
    obj.imageCheckBox99:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox99:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox99:setWidth(19);
    obj.imageCheckBox99:setHeight(19);
    obj.imageCheckBox99:setField("ap3");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(504);
    obj.layout108:setTop(575);
    obj.layout108:setWidth(19);
    obj.layout108:setHeight(19);
    obj.layout108:setName("layout108");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout108);
    obj.imageCheckBox100:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox100:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox100:setWidth(19);
    obj.imageCheckBox100:setHeight(19);
    obj.imageCheckBox100:setField("ap4");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(523);
    obj.layout109:setTop(575);
    obj.layout109:setWidth(19);
    obj.layout109:setHeight(19);
    obj.layout109:setName("layout109");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout109);
    obj.imageCheckBox101:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox101:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox101:setWidth(19);
    obj.imageCheckBox101:setHeight(19);
    obj.imageCheckBox101:setField("ap5");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(542);
    obj.layout110:setTop(575);
    obj.layout110:setWidth(19);
    obj.layout110:setHeight(19);
    obj.layout110:setName("layout110");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout110);
    obj.imageCheckBox102:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox102:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox102:setWidth(19);
    obj.imageCheckBox102:setHeight(19);
    obj.imageCheckBox102:setField("ap6");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(561);
    obj.layout111:setTop(575);
    obj.layout111:setWidth(19);
    obj.layout111:setHeight(19);
    obj.layout111:setName("layout111");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout111);
    obj.imageCheckBox103:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox103:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox103:setWidth(19);
    obj.imageCheckBox103:setHeight(19);
    obj.imageCheckBox103:setField("ap7");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(580);
    obj.layout112:setTop(575);
    obj.layout112:setWidth(19);
    obj.layout112:setHeight(19);
    obj.layout112:setName("layout112");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout112);
    obj.imageCheckBox104:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox104:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox104:setWidth(19);
    obj.imageCheckBox104:setHeight(19);
    obj.imageCheckBox104:setField("ap8");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(599);
    obj.layout113:setTop(575);
    obj.layout113:setWidth(19);
    obj.layout113:setHeight(19);
    obj.layout113:setName("layout113");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout113);
    obj.imageCheckBox105:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox105:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox105:setWidth(19);
    obj.imageCheckBox105:setHeight(19);
    obj.imageCheckBox105:setField("ap9");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(140);
    obj.layout114:setTop(695);
    obj.layout114:setWidth(19);
    obj.layout114:setHeight(19);
    obj.layout114:setName("layout114");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout114);
    obj.imageCheckBox106:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox106:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox106:setWidth(19);
    obj.imageCheckBox106:setHeight(19);
    obj.imageCheckBox106:setField("pront1");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(159);
    obj.layout115:setTop(695);
    obj.layout115:setWidth(19);
    obj.layout115:setHeight(19);
    obj.layout115:setName("layout115");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout115);
    obj.imageCheckBox107:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox107:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox107:setWidth(19);
    obj.imageCheckBox107:setHeight(19);
    obj.imageCheckBox107:setField("pront2");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(178);
    obj.layout116:setTop(695);
    obj.layout116:setWidth(19);
    obj.layout116:setHeight(19);
    obj.layout116:setName("layout116");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout116);
    obj.imageCheckBox108:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox108:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox108:setWidth(19);
    obj.imageCheckBox108:setHeight(19);
    obj.imageCheckBox108:setField("pront3");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(197);
    obj.layout117:setTop(695);
    obj.layout117:setWidth(19);
    obj.layout117:setHeight(19);
    obj.layout117:setName("layout117");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout117);
    obj.imageCheckBox109:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox109:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox109:setWidth(19);
    obj.imageCheckBox109:setHeight(19);
    obj.imageCheckBox109:setField("pront4");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(216);
    obj.layout118:setTop(695);
    obj.layout118:setWidth(19);
    obj.layout118:setHeight(19);
    obj.layout118:setName("layout118");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout118);
    obj.imageCheckBox110:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox110:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox110:setWidth(19);
    obj.imageCheckBox110:setHeight(19);
    obj.imageCheckBox110:setField("pront5");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(235);
    obj.layout119:setTop(695);
    obj.layout119:setWidth(19);
    obj.layout119:setHeight(19);
    obj.layout119:setName("layout119");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout119);
    obj.imageCheckBox111:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox111:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox111:setWidth(19);
    obj.imageCheckBox111:setHeight(19);
    obj.imageCheckBox111:setField("pront6");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(254);
    obj.layout120:setTop(695);
    obj.layout120:setWidth(19);
    obj.layout120:setHeight(19);
    obj.layout120:setName("layout120");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout120);
    obj.imageCheckBox112:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox112:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox112:setWidth(19);
    obj.imageCheckBox112:setHeight(19);
    obj.imageCheckBox112:setField("pront7");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(273);
    obj.layout121:setTop(695);
    obj.layout121:setWidth(19);
    obj.layout121:setHeight(19);
    obj.layout121:setName("layout121");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout121);
    obj.imageCheckBox113:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox113:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox113:setWidth(19);
    obj.imageCheckBox113:setHeight(19);
    obj.imageCheckBox113:setField("pront8");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(292);
    obj.layout122:setTop(695);
    obj.layout122:setWidth(19);
    obj.layout122:setHeight(19);
    obj.layout122:setName("layout122");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout122);
    obj.imageCheckBox114:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox114:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox114:setWidth(19);
    obj.imageCheckBox114:setHeight(19);
    obj.imageCheckBox114:setField("pront9");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(747);
    obj.layout123:setTop(695);
    obj.layout123:setWidth(19);
    obj.layout123:setHeight(19);
    obj.layout123:setName("layout123");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout123);
    obj.imageCheckBox115:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox115:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox115:setWidth(19);
    obj.imageCheckBox115:setHeight(19);
    obj.imageCheckBox115:setField("acad1");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(766);
    obj.layout124:setTop(695);
    obj.layout124:setWidth(19);
    obj.layout124:setHeight(19);
    obj.layout124:setName("layout124");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout124);
    obj.imageCheckBox116:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox116:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox116:setWidth(19);
    obj.imageCheckBox116:setHeight(19);
    obj.imageCheckBox116:setField("acad2");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(785);
    obj.layout125:setTop(695);
    obj.layout125:setWidth(19);
    obj.layout125:setHeight(19);
    obj.layout125:setName("layout125");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout125);
    obj.imageCheckBox117:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox117:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox117:setWidth(19);
    obj.imageCheckBox117:setHeight(19);
    obj.imageCheckBox117:setField("acad3");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(804);
    obj.layout126:setTop(695);
    obj.layout126:setWidth(19);
    obj.layout126:setHeight(19);
    obj.layout126:setName("layout126");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout126);
    obj.imageCheckBox118:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox118:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox118:setWidth(19);
    obj.imageCheckBox118:setHeight(19);
    obj.imageCheckBox118:setField("acad4");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(823);
    obj.layout127:setTop(695);
    obj.layout127:setWidth(19);
    obj.layout127:setHeight(19);
    obj.layout127:setName("layout127");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout127);
    obj.imageCheckBox119:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox119:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox119:setWidth(19);
    obj.imageCheckBox119:setHeight(19);
    obj.imageCheckBox119:setField("acad5");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(842);
    obj.layout128:setTop(695);
    obj.layout128:setWidth(19);
    obj.layout128:setHeight(19);
    obj.layout128:setName("layout128");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout128);
    obj.imageCheckBox120:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox120:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox120:setWidth(19);
    obj.imageCheckBox120:setHeight(19);
    obj.imageCheckBox120:setField("acad6");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(861);
    obj.layout129:setTop(695);
    obj.layout129:setWidth(19);
    obj.layout129:setHeight(19);
    obj.layout129:setName("layout129");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout129);
    obj.imageCheckBox121:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox121:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox121:setWidth(19);
    obj.imageCheckBox121:setHeight(19);
    obj.imageCheckBox121:setField("acad7");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(880);
    obj.layout130:setTop(695);
    obj.layout130:setWidth(19);
    obj.layout130:setHeight(19);
    obj.layout130:setName("layout130");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout130);
    obj.imageCheckBox122:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox122:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox122:setWidth(19);
    obj.imageCheckBox122:setHeight(19);
    obj.imageCheckBox122:setField("acad8");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(899);
    obj.layout131:setTop(695);
    obj.layout131:setWidth(19);
    obj.layout131:setHeight(19);
    obj.layout131:setName("layout131");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout131);
    obj.imageCheckBox123:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox123:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox123:setWidth(19);
    obj.imageCheckBox123:setHeight(19);
    obj.imageCheckBox123:setField("acad9");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(447);
    obj.layout132:setTop(695);
    obj.layout132:setWidth(19);
    obj.layout132:setHeight(19);
    obj.layout132:setName("layout132");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout132);
    obj.imageCheckBox124:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox124:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox124:setWidth(19);
    obj.imageCheckBox124:setHeight(19);
    obj.imageCheckBox124:setField("poke1");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(466);
    obj.layout133:setTop(695);
    obj.layout133:setWidth(19);
    obj.layout133:setHeight(19);
    obj.layout133:setName("layout133");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout133);
    obj.imageCheckBox125:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox125:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox125:setWidth(19);
    obj.imageCheckBox125:setHeight(19);
    obj.imageCheckBox125:setField("poke2");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(485);
    obj.layout134:setTop(695);
    obj.layout134:setWidth(19);
    obj.layout134:setHeight(19);
    obj.layout134:setName("layout134");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout134);
    obj.imageCheckBox126:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox126:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox126:setWidth(19);
    obj.imageCheckBox126:setHeight(19);
    obj.imageCheckBox126:setField("poke3");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(504);
    obj.layout135:setTop(695);
    obj.layout135:setWidth(19);
    obj.layout135:setHeight(19);
    obj.layout135:setName("layout135");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout135);
    obj.imageCheckBox127:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox127:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox127:setWidth(19);
    obj.imageCheckBox127:setHeight(19);
    obj.imageCheckBox127:setField("poke4");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle1);
    obj.layout136:setLeft(523);
    obj.layout136:setTop(695);
    obj.layout136:setWidth(19);
    obj.layout136:setHeight(19);
    obj.layout136:setName("layout136");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout136);
    obj.imageCheckBox128:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox128:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox128:setWidth(19);
    obj.imageCheckBox128:setHeight(19);
    obj.imageCheckBox128:setField("poke5");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle1);
    obj.layout137:setLeft(542);
    obj.layout137:setTop(695);
    obj.layout137:setWidth(19);
    obj.layout137:setHeight(19);
    obj.layout137:setName("layout137");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout137);
    obj.imageCheckBox129:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox129:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox129:setWidth(19);
    obj.imageCheckBox129:setHeight(19);
    obj.imageCheckBox129:setField("poke6");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle1);
    obj.layout138:setLeft(561);
    obj.layout138:setTop(695);
    obj.layout138:setWidth(19);
    obj.layout138:setHeight(19);
    obj.layout138:setName("layout138");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout138);
    obj.imageCheckBox130:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox130:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox130:setWidth(19);
    obj.imageCheckBox130:setHeight(19);
    obj.imageCheckBox130:setField("poke7");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle1);
    obj.layout139:setLeft(580);
    obj.layout139:setTop(695);
    obj.layout139:setWidth(19);
    obj.layout139:setHeight(19);
    obj.layout139:setName("layout139");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout139);
    obj.imageCheckBox131:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox131:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox131:setWidth(19);
    obj.imageCheckBox131:setHeight(19);
    obj.imageCheckBox131:setField("poke8");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle1);
    obj.layout140:setLeft(599);
    obj.layout140:setTop(695);
    obj.layout140:setWidth(19);
    obj.layout140:setHeight(19);
    obj.layout140:setName("layout140");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout140);
    obj.imageCheckBox132:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox132:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox132:setWidth(19);
    obj.imageCheckBox132:setHeight(19);
    obj.imageCheckBox132:setField("poke9");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle1);
    obj.layout141:setLeft(140);
    obj.layout141:setTop(721);
    obj.layout141:setWidth(19);
    obj.layout141:setHeight(19);
    obj.layout141:setName("layout141");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout141);
    obj.imageCheckBox133:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox133:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox133:setWidth(19);
    obj.imageCheckBox133:setHeight(19);
    obj.imageCheckBox133:setField("esp1");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle1);
    obj.layout142:setLeft(159);
    obj.layout142:setTop(721);
    obj.layout142:setWidth(19);
    obj.layout142:setHeight(19);
    obj.layout142:setName("layout142");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout142);
    obj.imageCheckBox134:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox134:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox134:setWidth(19);
    obj.imageCheckBox134:setHeight(19);
    obj.imageCheckBox134:setField("esp2");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle1);
    obj.layout143:setLeft(178);
    obj.layout143:setTop(721);
    obj.layout143:setWidth(19);
    obj.layout143:setHeight(19);
    obj.layout143:setName("layout143");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout143);
    obj.imageCheckBox135:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox135:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox135:setWidth(19);
    obj.imageCheckBox135:setHeight(19);
    obj.imageCheckBox135:setField("esp3");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle1);
    obj.layout144:setLeft(197);
    obj.layout144:setTop(721);
    obj.layout144:setWidth(19);
    obj.layout144:setHeight(19);
    obj.layout144:setName("layout144");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout144);
    obj.imageCheckBox136:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox136:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox136:setWidth(19);
    obj.imageCheckBox136:setHeight(19);
    obj.imageCheckBox136:setField("esp4");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle1);
    obj.layout145:setLeft(216);
    obj.layout145:setTop(721);
    obj.layout145:setWidth(19);
    obj.layout145:setHeight(19);
    obj.layout145:setName("layout145");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout145);
    obj.imageCheckBox137:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox137:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox137:setWidth(19);
    obj.imageCheckBox137:setHeight(19);
    obj.imageCheckBox137:setField("esp5");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle1);
    obj.layout146:setLeft(235);
    obj.layout146:setTop(721);
    obj.layout146:setWidth(19);
    obj.layout146:setHeight(19);
    obj.layout146:setName("layout146");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout146);
    obj.imageCheckBox138:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox138:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox138:setWidth(19);
    obj.imageCheckBox138:setHeight(19);
    obj.imageCheckBox138:setField("esp6");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle1);
    obj.layout147:setLeft(254);
    obj.layout147:setTop(721);
    obj.layout147:setWidth(19);
    obj.layout147:setHeight(19);
    obj.layout147:setName("layout147");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout147);
    obj.imageCheckBox139:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox139:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox139:setWidth(19);
    obj.imageCheckBox139:setHeight(19);
    obj.imageCheckBox139:setField("esp7");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle1);
    obj.layout148:setLeft(273);
    obj.layout148:setTop(721);
    obj.layout148:setWidth(19);
    obj.layout148:setHeight(19);
    obj.layout148:setName("layout148");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout148);
    obj.imageCheckBox140:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox140:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox140:setWidth(19);
    obj.imageCheckBox140:setHeight(19);
    obj.imageCheckBox140:setField("esp8");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle1);
    obj.layout149:setLeft(292);
    obj.layout149:setTop(721);
    obj.layout149:setWidth(19);
    obj.layout149:setHeight(19);
    obj.layout149:setName("layout149");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout149);
    obj.imageCheckBox141:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox141:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox141:setWidth(19);
    obj.imageCheckBox141:setHeight(19);
    obj.imageCheckBox141:setField("esp9");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle1);
    obj.layout150:setLeft(747);
    obj.layout150:setTop(721);
    obj.layout150:setWidth(19);
    obj.layout150:setHeight(19);
    obj.layout150:setName("layout150");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout150);
    obj.imageCheckBox142:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox142:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox142:setWidth(19);
    obj.imageCheckBox142:setHeight(19);
    obj.imageCheckBox142:setField("comp1");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle1);
    obj.layout151:setLeft(766);
    obj.layout151:setTop(721);
    obj.layout151:setWidth(19);
    obj.layout151:setHeight(19);
    obj.layout151:setName("layout151");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout151);
    obj.imageCheckBox143:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox143:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox143:setWidth(19);
    obj.imageCheckBox143:setHeight(19);
    obj.imageCheckBox143:setField("comp2");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle1);
    obj.layout152:setLeft(785);
    obj.layout152:setTop(721);
    obj.layout152:setWidth(19);
    obj.layout152:setHeight(19);
    obj.layout152:setName("layout152");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout152);
    obj.imageCheckBox144:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox144:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox144:setWidth(19);
    obj.imageCheckBox144:setHeight(19);
    obj.imageCheckBox144:setField("comp3");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle1);
    obj.layout153:setLeft(804);
    obj.layout153:setTop(721);
    obj.layout153:setWidth(19);
    obj.layout153:setHeight(19);
    obj.layout153:setName("layout153");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout153);
    obj.imageCheckBox145:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox145:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox145:setWidth(19);
    obj.imageCheckBox145:setHeight(19);
    obj.imageCheckBox145:setField("comp4");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle1);
    obj.layout154:setLeft(823);
    obj.layout154:setTop(721);
    obj.layout154:setWidth(19);
    obj.layout154:setHeight(19);
    obj.layout154:setName("layout154");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout154);
    obj.imageCheckBox146:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox146:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox146:setWidth(19);
    obj.imageCheckBox146:setHeight(19);
    obj.imageCheckBox146:setField("comp5");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle1);
    obj.layout155:setLeft(842);
    obj.layout155:setTop(721);
    obj.layout155:setWidth(19);
    obj.layout155:setHeight(19);
    obj.layout155:setName("layout155");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout155);
    obj.imageCheckBox147:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox147:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox147:setWidth(19);
    obj.imageCheckBox147:setHeight(19);
    obj.imageCheckBox147:setField("comp6");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle1);
    obj.layout156:setLeft(861);
    obj.layout156:setTop(721);
    obj.layout156:setWidth(19);
    obj.layout156:setHeight(19);
    obj.layout156:setName("layout156");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout156);
    obj.imageCheckBox148:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox148:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox148:setWidth(19);
    obj.imageCheckBox148:setHeight(19);
    obj.imageCheckBox148:setField("comp7");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle1);
    obj.layout157:setLeft(880);
    obj.layout157:setTop(721);
    obj.layout157:setWidth(19);
    obj.layout157:setHeight(19);
    obj.layout157:setName("layout157");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout157);
    obj.imageCheckBox149:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox149:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox149:setWidth(19);
    obj.imageCheckBox149:setHeight(19);
    obj.imageCheckBox149:setField("comp8");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle1);
    obj.layout158:setLeft(899);
    obj.layout158:setTop(721);
    obj.layout158:setWidth(19);
    obj.layout158:setHeight(19);
    obj.layout158:setName("layout158");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout158);
    obj.imageCheckBox150:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox150:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox150:setWidth(19);
    obj.imageCheckBox150:setHeight(19);
    obj.imageCheckBox150:setField("comp9");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle1);
    obj.layout159:setLeft(447);
    obj.layout159:setTop(721);
    obj.layout159:setWidth(19);
    obj.layout159:setHeight(19);
    obj.layout159:setName("layout159");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout159);
    obj.imageCheckBox151:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox151:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox151:setWidth(19);
    obj.imageCheckBox151:setHeight(19);
    obj.imageCheckBox151:setField("ofc1");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle1);
    obj.layout160:setLeft(466);
    obj.layout160:setTop(721);
    obj.layout160:setWidth(19);
    obj.layout160:setHeight(19);
    obj.layout160:setName("layout160");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout160);
    obj.imageCheckBox152:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox152:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox152:setWidth(19);
    obj.imageCheckBox152:setHeight(19);
    obj.imageCheckBox152:setField("ofc2");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle1);
    obj.layout161:setLeft(485);
    obj.layout161:setTop(721);
    obj.layout161:setWidth(19);
    obj.layout161:setHeight(19);
    obj.layout161:setName("layout161");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout161);
    obj.imageCheckBox153:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox153:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox153:setWidth(19);
    obj.imageCheckBox153:setHeight(19);
    obj.imageCheckBox153:setField("ofc3");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle1);
    obj.layout162:setLeft(504);
    obj.layout162:setTop(721);
    obj.layout162:setWidth(19);
    obj.layout162:setHeight(19);
    obj.layout162:setName("layout162");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout162);
    obj.imageCheckBox154:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox154:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox154:setWidth(19);
    obj.imageCheckBox154:setHeight(19);
    obj.imageCheckBox154:setField("ofc4");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle1);
    obj.layout163:setLeft(523);
    obj.layout163:setTop(721);
    obj.layout163:setWidth(19);
    obj.layout163:setHeight(19);
    obj.layout163:setName("layout163");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout163);
    obj.imageCheckBox155:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox155:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox155:setWidth(19);
    obj.imageCheckBox155:setHeight(19);
    obj.imageCheckBox155:setField("ofc5");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle1);
    obj.layout164:setLeft(542);
    obj.layout164:setTop(721);
    obj.layout164:setWidth(19);
    obj.layout164:setHeight(19);
    obj.layout164:setName("layout164");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout164);
    obj.imageCheckBox156:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox156:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox156:setWidth(19);
    obj.imageCheckBox156:setHeight(19);
    obj.imageCheckBox156:setField("ofc6");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle1);
    obj.layout165:setLeft(561);
    obj.layout165:setTop(721);
    obj.layout165:setWidth(19);
    obj.layout165:setHeight(19);
    obj.layout165:setName("layout165");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout165);
    obj.imageCheckBox157:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox157:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox157:setWidth(19);
    obj.imageCheckBox157:setHeight(19);
    obj.imageCheckBox157:setField("ofc7");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle1);
    obj.layout166:setLeft(580);
    obj.layout166:setTop(721);
    obj.layout166:setWidth(19);
    obj.layout166:setHeight(19);
    obj.layout166:setName("layout166");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout166);
    obj.imageCheckBox158:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox158:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox158:setWidth(19);
    obj.imageCheckBox158:setHeight(19);
    obj.imageCheckBox158:setField("ofc8");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle1);
    obj.layout167:setLeft(599);
    obj.layout167:setTop(721);
    obj.layout167:setWidth(19);
    obj.layout167:setHeight(19);
    obj.layout167:setName("layout167");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout167);
    obj.imageCheckBox159:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox159:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox159:setWidth(19);
    obj.imageCheckBox159:setHeight(19);
    obj.imageCheckBox159:setField("ofc9");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle1);
    obj.layout168:setLeft(140);
    obj.layout168:setTop(747);
    obj.layout168:setWidth(19);
    obj.layout168:setHeight(19);
    obj.layout168:setName("layout168");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout168);
    obj.imageCheckBox160:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox160:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox160:setWidth(19);
    obj.imageCheckBox160:setHeight(19);
    obj.imageCheckBox160:setField("bri1");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle1);
    obj.layout169:setLeft(159);
    obj.layout169:setTop(747);
    obj.layout169:setWidth(19);
    obj.layout169:setHeight(19);
    obj.layout169:setName("layout169");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout169);
    obj.imageCheckBox161:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox161:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox161:setWidth(19);
    obj.imageCheckBox161:setHeight(19);
    obj.imageCheckBox161:setField("bri2");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle1);
    obj.layout170:setLeft(178);
    obj.layout170:setTop(747);
    obj.layout170:setWidth(19);
    obj.layout170:setHeight(19);
    obj.layout170:setName("layout170");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout170);
    obj.imageCheckBox162:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox162:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox162:setWidth(19);
    obj.imageCheckBox162:setHeight(19);
    obj.imageCheckBox162:setField("bri3");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle1);
    obj.layout171:setLeft(197);
    obj.layout171:setTop(747);
    obj.layout171:setWidth(19);
    obj.layout171:setHeight(19);
    obj.layout171:setName("layout171");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout171);
    obj.imageCheckBox163:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox163:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox163:setWidth(19);
    obj.imageCheckBox163:setHeight(19);
    obj.imageCheckBox163:setField("bri4");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle1);
    obj.layout172:setLeft(216);
    obj.layout172:setTop(747);
    obj.layout172:setWidth(19);
    obj.layout172:setHeight(19);
    obj.layout172:setName("layout172");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout172);
    obj.imageCheckBox164:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox164:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox164:setWidth(19);
    obj.imageCheckBox164:setHeight(19);
    obj.imageCheckBox164:setField("bri5");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle1);
    obj.layout173:setLeft(235);
    obj.layout173:setTop(747);
    obj.layout173:setWidth(19);
    obj.layout173:setHeight(19);
    obj.layout173:setName("layout173");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout173);
    obj.imageCheckBox165:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox165:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox165:setWidth(19);
    obj.imageCheckBox165:setHeight(19);
    obj.imageCheckBox165:setField("bri6");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle1);
    obj.layout174:setLeft(254);
    obj.layout174:setTop(747);
    obj.layout174:setWidth(19);
    obj.layout174:setHeight(19);
    obj.layout174:setName("layout174");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout174);
    obj.imageCheckBox166:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox166:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox166:setWidth(19);
    obj.imageCheckBox166:setHeight(19);
    obj.imageCheckBox166:setField("bri7");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle1);
    obj.layout175:setLeft(273);
    obj.layout175:setTop(747);
    obj.layout175:setWidth(19);
    obj.layout175:setHeight(19);
    obj.layout175:setName("layout175");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout175);
    obj.imageCheckBox167:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox167:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox167:setWidth(19);
    obj.imageCheckBox167:setHeight(19);
    obj.imageCheckBox167:setField("bri8");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle1);
    obj.layout176:setLeft(292);
    obj.layout176:setTop(747);
    obj.layout176:setWidth(19);
    obj.layout176:setHeight(19);
    obj.layout176:setName("layout176");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout176);
    obj.imageCheckBox168:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox168:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox168:setWidth(19);
    obj.imageCheckBox168:setHeight(19);
    obj.imageCheckBox168:setField("bri9");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle1);
    obj.layout177:setLeft(747);
    obj.layout177:setTop(747);
    obj.layout177:setWidth(19);
    obj.layout177:setHeight(19);
    obj.layout177:setName("layout177");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout177);
    obj.imageCheckBox169:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox169:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox169:setWidth(19);
    obj.imageCheckBox169:setHeight(19);
    obj.imageCheckBox169:setField("habit1");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle1);
    obj.layout178:setLeft(766);
    obj.layout178:setTop(747);
    obj.layout178:setWidth(19);
    obj.layout178:setHeight(19);
    obj.layout178:setName("layout178");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout178);
    obj.imageCheckBox170:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox170:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox170:setWidth(19);
    obj.imageCheckBox170:setHeight(19);
    obj.imageCheckBox170:setField("habit2");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle1);
    obj.layout179:setLeft(785);
    obj.layout179:setTop(747);
    obj.layout179:setWidth(19);
    obj.layout179:setHeight(19);
    obj.layout179:setName("layout179");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout179);
    obj.imageCheckBox171:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox171:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox171:setWidth(19);
    obj.imageCheckBox171:setHeight(19);
    obj.imageCheckBox171:setField("habit3");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle1);
    obj.layout180:setLeft(804);
    obj.layout180:setTop(747);
    obj.layout180:setWidth(19);
    obj.layout180:setHeight(19);
    obj.layout180:setName("layout180");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout180);
    obj.imageCheckBox172:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox172:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox172:setWidth(19);
    obj.imageCheckBox172:setHeight(19);
    obj.imageCheckBox172:setField("habit4");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle1);
    obj.layout181:setLeft(823);
    obj.layout181:setTop(747);
    obj.layout181:setWidth(19);
    obj.layout181:setHeight(19);
    obj.layout181:setName("layout181");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout181);
    obj.imageCheckBox173:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox173:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox173:setWidth(19);
    obj.imageCheckBox173:setHeight(19);
    obj.imageCheckBox173:setField("habit5");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle1);
    obj.layout182:setLeft(842);
    obj.layout182:setTop(747);
    obj.layout182:setWidth(19);
    obj.layout182:setHeight(19);
    obj.layout182:setName("layout182");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout182);
    obj.imageCheckBox174:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox174:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox174:setWidth(19);
    obj.imageCheckBox174:setHeight(19);
    obj.imageCheckBox174:setField("habit6");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle1);
    obj.layout183:setLeft(861);
    obj.layout183:setTop(747);
    obj.layout183:setWidth(19);
    obj.layout183:setHeight(19);
    obj.layout183:setName("layout183");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout183);
    obj.imageCheckBox175:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox175:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox175:setWidth(19);
    obj.imageCheckBox175:setHeight(19);
    obj.imageCheckBox175:setField("habit7");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle1);
    obj.layout184:setLeft(880);
    obj.layout184:setTop(747);
    obj.layout184:setWidth(19);
    obj.layout184:setHeight(19);
    obj.layout184:setName("layout184");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout184);
    obj.imageCheckBox176:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox176:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox176:setWidth(19);
    obj.imageCheckBox176:setHeight(19);
    obj.imageCheckBox176:setField("habit8");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle1);
    obj.layout185:setLeft(899);
    obj.layout185:setTop(747);
    obj.layout185:setWidth(19);
    obj.layout185:setHeight(19);
    obj.layout185:setName("layout185");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout185);
    obj.imageCheckBox177:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox177:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox177:setWidth(19);
    obj.imageCheckBox177:setHeight(19);
    obj.imageCheckBox177:setField("habit9");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle1);
    obj.layout186:setLeft(447);
    obj.layout186:setTop(747);
    obj.layout186:setWidth(19);
    obj.layout186:setHeight(19);
    obj.layout186:setName("layout186");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout186);
    obj.imageCheckBox178:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox178:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox178:setWidth(19);
    obj.imageCheckBox178:setHeight(19);
    obj.imageCheckBox178:setField("cond1");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle1);
    obj.layout187:setLeft(466);
    obj.layout187:setTop(747);
    obj.layout187:setWidth(19);
    obj.layout187:setHeight(19);
    obj.layout187:setName("layout187");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout187);
    obj.imageCheckBox179:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox179:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox179:setWidth(19);
    obj.imageCheckBox179:setHeight(19);
    obj.imageCheckBox179:setField("cond2");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle1);
    obj.layout188:setLeft(485);
    obj.layout188:setTop(747);
    obj.layout188:setWidth(19);
    obj.layout188:setHeight(19);
    obj.layout188:setName("layout188");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout188);
    obj.imageCheckBox180:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox180:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox180:setWidth(19);
    obj.imageCheckBox180:setHeight(19);
    obj.imageCheckBox180:setField("cond3");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle1);
    obj.layout189:setLeft(504);
    obj.layout189:setTop(747);
    obj.layout189:setWidth(19);
    obj.layout189:setHeight(19);
    obj.layout189:setName("layout189");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout189);
    obj.imageCheckBox181:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox181:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox181:setWidth(19);
    obj.imageCheckBox181:setHeight(19);
    obj.imageCheckBox181:setField("cond4");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.layout190 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout190:setParent(obj.rectangle1);
    obj.layout190:setLeft(523);
    obj.layout190:setTop(747);
    obj.layout190:setWidth(19);
    obj.layout190:setHeight(19);
    obj.layout190:setName("layout190");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout190);
    obj.imageCheckBox182:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox182:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox182:setWidth(19);
    obj.imageCheckBox182:setHeight(19);
    obj.imageCheckBox182:setField("cond5");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.layout191 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout191:setParent(obj.rectangle1);
    obj.layout191:setLeft(542);
    obj.layout191:setTop(747);
    obj.layout191:setWidth(19);
    obj.layout191:setHeight(19);
    obj.layout191:setName("layout191");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout191);
    obj.imageCheckBox183:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox183:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox183:setWidth(19);
    obj.imageCheckBox183:setHeight(19);
    obj.imageCheckBox183:setField("cond6");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.layout192 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout192:setParent(obj.rectangle1);
    obj.layout192:setLeft(561);
    obj.layout192:setTop(747);
    obj.layout192:setWidth(19);
    obj.layout192:setHeight(19);
    obj.layout192:setName("layout192");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout192);
    obj.imageCheckBox184:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox184:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox184:setWidth(19);
    obj.imageCheckBox184:setHeight(19);
    obj.imageCheckBox184:setField("cond7");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.layout193 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout193:setParent(obj.rectangle1);
    obj.layout193:setLeft(580);
    obj.layout193:setTop(747);
    obj.layout193:setWidth(19);
    obj.layout193:setHeight(19);
    obj.layout193:setName("layout193");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout193);
    obj.imageCheckBox185:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox185:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox185:setWidth(19);
    obj.imageCheckBox185:setHeight(19);
    obj.imageCheckBox185:setField("cond8");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.layout194 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout194:setParent(obj.rectangle1);
    obj.layout194:setLeft(599);
    obj.layout194:setTop(747);
    obj.layout194:setWidth(19);
    obj.layout194:setHeight(19);
    obj.layout194:setName("layout194");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout194);
    obj.imageCheckBox186:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox186:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox186:setWidth(19);
    obj.imageCheckBox186:setHeight(19);
    obj.imageCheckBox186:setField("cond9");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.layout195 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout195:setParent(obj.rectangle1);
    obj.layout195:setLeft(140);
    obj.layout195:setTop(774);
    obj.layout195:setWidth(19);
    obj.layout195:setHeight(19);
    obj.layout195:setName("layout195");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout195);
    obj.imageCheckBox187:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox187:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox187:setWidth(19);
    obj.imageCheckBox187:setHeight(19);
    obj.imageCheckBox187:setField("esq1");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.layout196 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout196:setParent(obj.rectangle1);
    obj.layout196:setLeft(159);
    obj.layout196:setTop(774);
    obj.layout196:setWidth(19);
    obj.layout196:setHeight(19);
    obj.layout196:setName("layout196");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout196);
    obj.imageCheckBox188:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox188:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox188:setWidth(19);
    obj.imageCheckBox188:setHeight(19);
    obj.imageCheckBox188:setField("esq2");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.layout197 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout197:setParent(obj.rectangle1);
    obj.layout197:setLeft(178);
    obj.layout197:setTop(774);
    obj.layout197:setWidth(19);
    obj.layout197:setHeight(19);
    obj.layout197:setName("layout197");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout197);
    obj.imageCheckBox189:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox189:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox189:setWidth(19);
    obj.imageCheckBox189:setHeight(19);
    obj.imageCheckBox189:setField("esq3");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.layout198 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout198:setParent(obj.rectangle1);
    obj.layout198:setLeft(197);
    obj.layout198:setTop(774);
    obj.layout198:setWidth(19);
    obj.layout198:setHeight(19);
    obj.layout198:setName("layout198");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout198);
    obj.imageCheckBox190:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox190:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox190:setWidth(19);
    obj.imageCheckBox190:setHeight(19);
    obj.imageCheckBox190:setField("esq4");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.layout199 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout199:setParent(obj.rectangle1);
    obj.layout199:setLeft(216);
    obj.layout199:setTop(774);
    obj.layout199:setWidth(19);
    obj.layout199:setHeight(19);
    obj.layout199:setName("layout199");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout199);
    obj.imageCheckBox191:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox191:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox191:setWidth(19);
    obj.imageCheckBox191:setHeight(19);
    obj.imageCheckBox191:setField("esq5");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.layout200 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout200:setParent(obj.rectangle1);
    obj.layout200:setLeft(235);
    obj.layout200:setTop(774);
    obj.layout200:setWidth(19);
    obj.layout200:setHeight(19);
    obj.layout200:setName("layout200");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout200);
    obj.imageCheckBox192:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox192:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox192:setWidth(19);
    obj.imageCheckBox192:setHeight(19);
    obj.imageCheckBox192:setField("esq6");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.layout201 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout201:setParent(obj.rectangle1);
    obj.layout201:setLeft(254);
    obj.layout201:setTop(774);
    obj.layout201:setWidth(19);
    obj.layout201:setHeight(19);
    obj.layout201:setName("layout201");

    obj.imageCheckBox193 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox193:setParent(obj.layout201);
    obj.imageCheckBox193:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox193:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox193:setWidth(19);
    obj.imageCheckBox193:setHeight(19);
    obj.imageCheckBox193:setField("esq7");
    obj.imageCheckBox193:setName("imageCheckBox193");

    obj.layout202 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout202:setParent(obj.rectangle1);
    obj.layout202:setLeft(273);
    obj.layout202:setTop(774);
    obj.layout202:setWidth(19);
    obj.layout202:setHeight(19);
    obj.layout202:setName("layout202");

    obj.imageCheckBox194 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox194:setParent(obj.layout202);
    obj.imageCheckBox194:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox194:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox194:setWidth(19);
    obj.imageCheckBox194:setHeight(19);
    obj.imageCheckBox194:setField("esq8");
    obj.imageCheckBox194:setName("imageCheckBox194");

    obj.layout203 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout203:setParent(obj.rectangle1);
    obj.layout203:setLeft(292);
    obj.layout203:setTop(774);
    obj.layout203:setWidth(19);
    obj.layout203:setHeight(19);
    obj.layout203:setName("layout203");

    obj.imageCheckBox195 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox195:setParent(obj.layout203);
    obj.imageCheckBox195:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox195:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox195:setWidth(19);
    obj.imageCheckBox195:setHeight(19);
    obj.imageCheckBox195:setField("esq9");
    obj.imageCheckBox195:setName("imageCheckBox195");

    obj.layout204 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout204:setParent(obj.rectangle1);
    obj.layout204:setLeft(747);
    obj.layout204:setTop(774);
    obj.layout204:setWidth(19);
    obj.layout204:setHeight(19);
    obj.layout204:setName("layout204");

    obj.imageCheckBox196 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox196:setParent(obj.layout204);
    obj.imageCheckBox196:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox196:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox196:setWidth(19);
    obj.imageCheckBox196:setHeight(19);
    obj.imageCheckBox196:setField("inves1");
    obj.imageCheckBox196:setName("imageCheckBox196");

    obj.layout205 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout205:setParent(obj.rectangle1);
    obj.layout205:setLeft(766);
    obj.layout205:setTop(774);
    obj.layout205:setWidth(19);
    obj.layout205:setHeight(19);
    obj.layout205:setName("layout205");

    obj.imageCheckBox197 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox197:setParent(obj.layout205);
    obj.imageCheckBox197:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox197:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox197:setWidth(19);
    obj.imageCheckBox197:setHeight(19);
    obj.imageCheckBox197:setField("inves2");
    obj.imageCheckBox197:setName("imageCheckBox197");

    obj.layout206 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout206:setParent(obj.rectangle1);
    obj.layout206:setLeft(785);
    obj.layout206:setTop(774);
    obj.layout206:setWidth(19);
    obj.layout206:setHeight(19);
    obj.layout206:setName("layout206");

    obj.imageCheckBox198 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox198:setParent(obj.layout206);
    obj.imageCheckBox198:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox198:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox198:setWidth(19);
    obj.imageCheckBox198:setHeight(19);
    obj.imageCheckBox198:setField("inves3");
    obj.imageCheckBox198:setName("imageCheckBox198");

    obj.layout207 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout207:setParent(obj.rectangle1);
    obj.layout207:setLeft(804);
    obj.layout207:setTop(774);
    obj.layout207:setWidth(19);
    obj.layout207:setHeight(19);
    obj.layout207:setName("layout207");

    obj.imageCheckBox199 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox199:setParent(obj.layout207);
    obj.imageCheckBox199:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox199:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox199:setWidth(19);
    obj.imageCheckBox199:setHeight(19);
    obj.imageCheckBox199:setField("inves4");
    obj.imageCheckBox199:setName("imageCheckBox199");

    obj.layout208 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout208:setParent(obj.rectangle1);
    obj.layout208:setLeft(823);
    obj.layout208:setTop(774);
    obj.layout208:setWidth(19);
    obj.layout208:setHeight(19);
    obj.layout208:setName("layout208");

    obj.imageCheckBox200 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox200:setParent(obj.layout208);
    obj.imageCheckBox200:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox200:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox200:setWidth(19);
    obj.imageCheckBox200:setHeight(19);
    obj.imageCheckBox200:setField("inves5");
    obj.imageCheckBox200:setName("imageCheckBox200");

    obj.layout209 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout209:setParent(obj.rectangle1);
    obj.layout209:setLeft(842);
    obj.layout209:setTop(774);
    obj.layout209:setWidth(19);
    obj.layout209:setHeight(19);
    obj.layout209:setName("layout209");

    obj.imageCheckBox201 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox201:setParent(obj.layout209);
    obj.imageCheckBox201:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox201:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox201:setWidth(19);
    obj.imageCheckBox201:setHeight(19);
    obj.imageCheckBox201:setField("inves6");
    obj.imageCheckBox201:setName("imageCheckBox201");

    obj.layout210 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout210:setParent(obj.rectangle1);
    obj.layout210:setLeft(861);
    obj.layout210:setTop(774);
    obj.layout210:setWidth(19);
    obj.layout210:setHeight(19);
    obj.layout210:setName("layout210");

    obj.imageCheckBox202 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox202:setParent(obj.layout210);
    obj.imageCheckBox202:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox202:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox202:setWidth(19);
    obj.imageCheckBox202:setHeight(19);
    obj.imageCheckBox202:setField("inves7");
    obj.imageCheckBox202:setName("imageCheckBox202");

    obj.layout211 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout211:setParent(obj.rectangle1);
    obj.layout211:setLeft(880);
    obj.layout211:setTop(774);
    obj.layout211:setWidth(19);
    obj.layout211:setHeight(19);
    obj.layout211:setName("layout211");

    obj.imageCheckBox203 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox203:setParent(obj.layout211);
    obj.imageCheckBox203:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox203:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox203:setWidth(19);
    obj.imageCheckBox203:setHeight(19);
    obj.imageCheckBox203:setField("inves8");
    obj.imageCheckBox203:setName("imageCheckBox203");

    obj.layout212 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout212:setParent(obj.rectangle1);
    obj.layout212:setLeft(899);
    obj.layout212:setTop(774);
    obj.layout212:setWidth(19);
    obj.layout212:setHeight(19);
    obj.layout212:setName("layout212");

    obj.imageCheckBox204 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox204:setParent(obj.layout212);
    obj.imageCheckBox204:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox204:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox204:setWidth(19);
    obj.imageCheckBox204:setHeight(19);
    obj.imageCheckBox204:setField("inves9");
    obj.imageCheckBox204:setName("imageCheckBox204");

    obj.layout213 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout213:setParent(obj.rectangle1);
    obj.layout213:setLeft(447);
    obj.layout213:setTop(774);
    obj.layout213:setWidth(19);
    obj.layout213:setHeight(19);
    obj.layout213:setName("layout213");

    obj.imageCheckBox205 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox205:setParent(obj.layout213);
    obj.imageCheckBox205:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox205:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox205:setWidth(19);
    obj.imageCheckBox205:setHeight(19);
    obj.imageCheckBox205:setField("et1");
    obj.imageCheckBox205:setName("imageCheckBox205");

    obj.layout214 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout214:setParent(obj.rectangle1);
    obj.layout214:setLeft(466);
    obj.layout214:setTop(774);
    obj.layout214:setWidth(19);
    obj.layout214:setHeight(19);
    obj.layout214:setName("layout214");

    obj.imageCheckBox206 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox206:setParent(obj.layout214);
    obj.imageCheckBox206:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox206:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox206:setWidth(19);
    obj.imageCheckBox206:setHeight(19);
    obj.imageCheckBox206:setField("et2");
    obj.imageCheckBox206:setName("imageCheckBox206");

    obj.layout215 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout215:setParent(obj.rectangle1);
    obj.layout215:setLeft(485);
    obj.layout215:setTop(774);
    obj.layout215:setWidth(19);
    obj.layout215:setHeight(19);
    obj.layout215:setName("layout215");

    obj.imageCheckBox207 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox207:setParent(obj.layout215);
    obj.imageCheckBox207:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox207:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox207:setWidth(19);
    obj.imageCheckBox207:setHeight(19);
    obj.imageCheckBox207:setField("et3");
    obj.imageCheckBox207:setName("imageCheckBox207");

    obj.layout216 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout216:setParent(obj.rectangle1);
    obj.layout216:setLeft(504);
    obj.layout216:setTop(774);
    obj.layout216:setWidth(19);
    obj.layout216:setHeight(19);
    obj.layout216:setName("layout216");

    obj.imageCheckBox208 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox208:setParent(obj.layout216);
    obj.imageCheckBox208:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox208:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox208:setWidth(19);
    obj.imageCheckBox208:setHeight(19);
    obj.imageCheckBox208:setField("et4");
    obj.imageCheckBox208:setName("imageCheckBox208");

    obj.layout217 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout217:setParent(obj.rectangle1);
    obj.layout217:setLeft(523);
    obj.layout217:setTop(774);
    obj.layout217:setWidth(19);
    obj.layout217:setHeight(19);
    obj.layout217:setName("layout217");

    obj.imageCheckBox209 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox209:setParent(obj.layout217);
    obj.imageCheckBox209:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox209:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox209:setWidth(19);
    obj.imageCheckBox209:setHeight(19);
    obj.imageCheckBox209:setField("et5");
    obj.imageCheckBox209:setName("imageCheckBox209");

    obj.layout218 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout218:setParent(obj.rectangle1);
    obj.layout218:setLeft(542);
    obj.layout218:setTop(774);
    obj.layout218:setWidth(19);
    obj.layout218:setHeight(19);
    obj.layout218:setName("layout218");

    obj.imageCheckBox210 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox210:setParent(obj.layout218);
    obj.imageCheckBox210:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox210:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox210:setWidth(19);
    obj.imageCheckBox210:setHeight(19);
    obj.imageCheckBox210:setField("et6");
    obj.imageCheckBox210:setName("imageCheckBox210");

    obj.layout219 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout219:setParent(obj.rectangle1);
    obj.layout219:setLeft(561);
    obj.layout219:setTop(774);
    obj.layout219:setWidth(19);
    obj.layout219:setHeight(19);
    obj.layout219:setName("layout219");

    obj.imageCheckBox211 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox211:setParent(obj.layout219);
    obj.imageCheckBox211:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox211:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox211:setWidth(19);
    obj.imageCheckBox211:setHeight(19);
    obj.imageCheckBox211:setField("et7");
    obj.imageCheckBox211:setName("imageCheckBox211");

    obj.layout220 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout220:setParent(obj.rectangle1);
    obj.layout220:setLeft(580);
    obj.layout220:setTop(774);
    obj.layout220:setWidth(19);
    obj.layout220:setHeight(19);
    obj.layout220:setName("layout220");

    obj.imageCheckBox212 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox212:setParent(obj.layout220);
    obj.imageCheckBox212:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox212:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox212:setWidth(19);
    obj.imageCheckBox212:setHeight(19);
    obj.imageCheckBox212:setField("et8");
    obj.imageCheckBox212:setName("imageCheckBox212");

    obj.layout221 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout221:setParent(obj.rectangle1);
    obj.layout221:setLeft(599);
    obj.layout221:setTop(774);
    obj.layout221:setWidth(19);
    obj.layout221:setHeight(19);
    obj.layout221:setName("layout221");

    obj.imageCheckBox213 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox213:setParent(obj.layout221);
    obj.imageCheckBox213:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox213:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox213:setWidth(19);
    obj.imageCheckBox213:setHeight(19);
    obj.imageCheckBox213:setField("et9");
    obj.imageCheckBox213:setName("imageCheckBox213");

    obj.layout222 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout222:setParent(obj.rectangle1);
    obj.layout222:setLeft(140);
    obj.layout222:setTop(799);
    obj.layout222:setWidth(19);
    obj.layout222:setHeight(19);
    obj.layout222:setName("layout222");

    obj.imageCheckBox214 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox214:setParent(obj.layout222);
    obj.imageCheckBox214:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox214:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox214:setWidth(19);
    obj.imageCheckBox214:setHeight(19);
    obj.imageCheckBox214:setField("emp1");
    obj.imageCheckBox214:setName("imageCheckBox214");

    obj.layout223 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout223:setParent(obj.rectangle1);
    obj.layout223:setLeft(159);
    obj.layout223:setTop(799);
    obj.layout223:setWidth(19);
    obj.layout223:setHeight(19);
    obj.layout223:setName("layout223");

    obj.imageCheckBox215 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox215:setParent(obj.layout223);
    obj.imageCheckBox215:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox215:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox215:setWidth(19);
    obj.imageCheckBox215:setHeight(19);
    obj.imageCheckBox215:setField("emp2");
    obj.imageCheckBox215:setName("imageCheckBox215");

    obj.layout224 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout224:setParent(obj.rectangle1);
    obj.layout224:setLeft(178);
    obj.layout224:setTop(799);
    obj.layout224:setWidth(19);
    obj.layout224:setHeight(19);
    obj.layout224:setName("layout224");

    obj.imageCheckBox216 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox216:setParent(obj.layout224);
    obj.imageCheckBox216:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox216:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox216:setWidth(19);
    obj.imageCheckBox216:setHeight(19);
    obj.imageCheckBox216:setField("emp3");
    obj.imageCheckBox216:setName("imageCheckBox216");

    obj.layout225 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout225:setParent(obj.rectangle1);
    obj.layout225:setLeft(197);
    obj.layout225:setTop(799);
    obj.layout225:setWidth(19);
    obj.layout225:setHeight(19);
    obj.layout225:setName("layout225");

    obj.imageCheckBox217 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox217:setParent(obj.layout225);
    obj.imageCheckBox217:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox217:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox217:setWidth(19);
    obj.imageCheckBox217:setHeight(19);
    obj.imageCheckBox217:setField("emp4");
    obj.imageCheckBox217:setName("imageCheckBox217");

    obj.layout226 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout226:setParent(obj.rectangle1);
    obj.layout226:setLeft(216);
    obj.layout226:setTop(799);
    obj.layout226:setWidth(19);
    obj.layout226:setHeight(19);
    obj.layout226:setName("layout226");

    obj.imageCheckBox218 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox218:setParent(obj.layout226);
    obj.imageCheckBox218:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox218:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox218:setWidth(19);
    obj.imageCheckBox218:setHeight(19);
    obj.imageCheckBox218:setField("emp5");
    obj.imageCheckBox218:setName("imageCheckBox218");

    obj.layout227 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout227:setParent(obj.rectangle1);
    obj.layout227:setLeft(235);
    obj.layout227:setTop(799);
    obj.layout227:setWidth(19);
    obj.layout227:setHeight(19);
    obj.layout227:setName("layout227");

    obj.imageCheckBox219 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox219:setParent(obj.layout227);
    obj.imageCheckBox219:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox219:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox219:setWidth(19);
    obj.imageCheckBox219:setHeight(19);
    obj.imageCheckBox219:setField("emp6");
    obj.imageCheckBox219:setName("imageCheckBox219");

    obj.layout228 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout228:setParent(obj.rectangle1);
    obj.layout228:setLeft(254);
    obj.layout228:setTop(799);
    obj.layout228:setWidth(19);
    obj.layout228:setHeight(19);
    obj.layout228:setName("layout228");

    obj.imageCheckBox220 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox220:setParent(obj.layout228);
    obj.imageCheckBox220:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox220:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox220:setWidth(19);
    obj.imageCheckBox220:setHeight(19);
    obj.imageCheckBox220:setField("emp7");
    obj.imageCheckBox220:setName("imageCheckBox220");

    obj.layout229 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout229:setParent(obj.rectangle1);
    obj.layout229:setLeft(273);
    obj.layout229:setTop(799);
    obj.layout229:setWidth(19);
    obj.layout229:setHeight(19);
    obj.layout229:setName("layout229");

    obj.imageCheckBox221 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox221:setParent(obj.layout229);
    obj.imageCheckBox221:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox221:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox221:setWidth(19);
    obj.imageCheckBox221:setHeight(19);
    obj.imageCheckBox221:setField("emp8");
    obj.imageCheckBox221:setName("imageCheckBox221");

    obj.layout230 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout230:setParent(obj.rectangle1);
    obj.layout230:setLeft(292);
    obj.layout230:setTop(799);
    obj.layout230:setWidth(19);
    obj.layout230:setHeight(19);
    obj.layout230:setName("layout230");

    obj.imageCheckBox222 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox222:setParent(obj.layout230);
    obj.imageCheckBox222:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox222:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox222:setWidth(19);
    obj.imageCheckBox222:setHeight(19);
    obj.imageCheckBox222:setField("emp9");
    obj.imageCheckBox222:setName("imageCheckBox222");

    obj.layout231 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout231:setParent(obj.rectangle1);
    obj.layout231:setLeft(447);
    obj.layout231:setTop(799);
    obj.layout231:setWidth(19);
    obj.layout231:setHeight(19);
    obj.layout231:setName("layout231");

    obj.imageCheckBox223 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox223:setParent(obj.layout231);
    obj.imageCheckBox223:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox223:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox223:setWidth(19);
    obj.imageCheckBox223:setHeight(19);
    obj.imageCheckBox223:setField("act1");
    obj.imageCheckBox223:setName("imageCheckBox223");

    obj.layout232 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout232:setParent(obj.rectangle1);
    obj.layout232:setLeft(466);
    obj.layout232:setTop(799);
    obj.layout232:setWidth(19);
    obj.layout232:setHeight(19);
    obj.layout232:setName("layout232");

    obj.imageCheckBox224 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox224:setParent(obj.layout232);
    obj.imageCheckBox224:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox224:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox224:setWidth(19);
    obj.imageCheckBox224:setHeight(19);
    obj.imageCheckBox224:setField("act2");
    obj.imageCheckBox224:setName("imageCheckBox224");

    obj.layout233 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout233:setParent(obj.rectangle1);
    obj.layout233:setLeft(485);
    obj.layout233:setTop(799);
    obj.layout233:setWidth(19);
    obj.layout233:setHeight(19);
    obj.layout233:setName("layout233");

    obj.imageCheckBox225 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox225:setParent(obj.layout233);
    obj.imageCheckBox225:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox225:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox225:setWidth(19);
    obj.imageCheckBox225:setHeight(19);
    obj.imageCheckBox225:setField("act3");
    obj.imageCheckBox225:setName("imageCheckBox225");

    obj.layout234 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout234:setParent(obj.rectangle1);
    obj.layout234:setLeft(504);
    obj.layout234:setTop(799);
    obj.layout234:setWidth(19);
    obj.layout234:setHeight(19);
    obj.layout234:setName("layout234");

    obj.imageCheckBox226 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox226:setParent(obj.layout234);
    obj.imageCheckBox226:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox226:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox226:setWidth(19);
    obj.imageCheckBox226:setHeight(19);
    obj.imageCheckBox226:setField("act4");
    obj.imageCheckBox226:setName("imageCheckBox226");

    obj.layout235 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout235:setParent(obj.rectangle1);
    obj.layout235:setLeft(523);
    obj.layout235:setTop(799);
    obj.layout235:setWidth(19);
    obj.layout235:setHeight(19);
    obj.layout235:setName("layout235");

    obj.imageCheckBox227 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox227:setParent(obj.layout235);
    obj.imageCheckBox227:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox227:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox227:setWidth(19);
    obj.imageCheckBox227:setHeight(19);
    obj.imageCheckBox227:setField("act5");
    obj.imageCheckBox227:setName("imageCheckBox227");

    obj.layout236 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout236:setParent(obj.rectangle1);
    obj.layout236:setLeft(542);
    obj.layout236:setTop(799);
    obj.layout236:setWidth(19);
    obj.layout236:setHeight(19);
    obj.layout236:setName("layout236");

    obj.imageCheckBox228 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox228:setParent(obj.layout236);
    obj.imageCheckBox228:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox228:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox228:setWidth(19);
    obj.imageCheckBox228:setHeight(19);
    obj.imageCheckBox228:setField("act6");
    obj.imageCheckBox228:setName("imageCheckBox228");

    obj.layout237 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout237:setParent(obj.rectangle1);
    obj.layout237:setLeft(561);
    obj.layout237:setTop(799);
    obj.layout237:setWidth(19);
    obj.layout237:setHeight(19);
    obj.layout237:setName("layout237");

    obj.imageCheckBox229 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox229:setParent(obj.layout237);
    obj.imageCheckBox229:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox229:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox229:setWidth(19);
    obj.imageCheckBox229:setHeight(19);
    obj.imageCheckBox229:setField("act7");
    obj.imageCheckBox229:setName("imageCheckBox229");

    obj.layout238 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout238:setParent(obj.rectangle1);
    obj.layout238:setLeft(580);
    obj.layout238:setTop(799);
    obj.layout238:setWidth(19);
    obj.layout238:setHeight(19);
    obj.layout238:setName("layout238");

    obj.imageCheckBox230 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox230:setParent(obj.layout238);
    obj.imageCheckBox230:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox230:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox230:setWidth(19);
    obj.imageCheckBox230:setHeight(19);
    obj.imageCheckBox230:setField("act8");
    obj.imageCheckBox230:setName("imageCheckBox230");

    obj.layout239 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout239:setParent(obj.rectangle1);
    obj.layout239:setLeft(599);
    obj.layout239:setTop(799);
    obj.layout239:setWidth(19);
    obj.layout239:setHeight(19);
    obj.layout239:setName("layout239");

    obj.imageCheckBox231 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox231:setParent(obj.layout239);
    obj.imageCheckBox231:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox231:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox231:setWidth(19);
    obj.imageCheckBox231:setHeight(19);
    obj.imageCheckBox231:setField("act9");
    obj.imageCheckBox231:setName("imageCheckBox231");

    obj.layout240 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout240:setParent(obj.rectangle1);
    obj.layout240:setLeft(747);
    obj.layout240:setTop(799);
    obj.layout240:setWidth(19);
    obj.layout240:setHeight(19);
    obj.layout240:setName("layout240");

    obj.imageCheckBox232 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox232:setParent(obj.layout240);
    obj.imageCheckBox232:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox232:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox232:setWidth(19);
    obj.imageCheckBox232:setHeight(19);
    obj.imageCheckBox232:setField("dir1");
    obj.imageCheckBox232:setName("imageCheckBox232");

    obj.layout241 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout241:setParent(obj.rectangle1);
    obj.layout241:setLeft(766);
    obj.layout241:setTop(799);
    obj.layout241:setWidth(19);
    obj.layout241:setHeight(19);
    obj.layout241:setName("layout241");

    obj.imageCheckBox233 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox233:setParent(obj.layout241);
    obj.imageCheckBox233:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox233:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox233:setWidth(19);
    obj.imageCheckBox233:setHeight(19);
    obj.imageCheckBox233:setField("dir2");
    obj.imageCheckBox233:setName("imageCheckBox233");

    obj.layout242 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout242:setParent(obj.rectangle1);
    obj.layout242:setLeft(785);
    obj.layout242:setTop(799);
    obj.layout242:setWidth(19);
    obj.layout242:setHeight(19);
    obj.layout242:setName("layout242");

    obj.imageCheckBox234 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox234:setParent(obj.layout242);
    obj.imageCheckBox234:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox234:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox234:setWidth(19);
    obj.imageCheckBox234:setHeight(19);
    obj.imageCheckBox234:setField("dir3");
    obj.imageCheckBox234:setName("imageCheckBox234");

    obj.layout243 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout243:setParent(obj.rectangle1);
    obj.layout243:setLeft(804);
    obj.layout243:setTop(799);
    obj.layout243:setWidth(19);
    obj.layout243:setHeight(19);
    obj.layout243:setName("layout243");

    obj.imageCheckBox235 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox235:setParent(obj.layout243);
    obj.imageCheckBox235:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox235:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox235:setWidth(19);
    obj.imageCheckBox235:setHeight(19);
    obj.imageCheckBox235:setField("dir4");
    obj.imageCheckBox235:setName("imageCheckBox235");

    obj.layout244 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout244:setParent(obj.rectangle1);
    obj.layout244:setLeft(823);
    obj.layout244:setTop(799);
    obj.layout244:setWidth(19);
    obj.layout244:setHeight(19);
    obj.layout244:setName("layout244");

    obj.imageCheckBox236 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox236:setParent(obj.layout244);
    obj.imageCheckBox236:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox236:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox236:setWidth(19);
    obj.imageCheckBox236:setHeight(19);
    obj.imageCheckBox236:setField("dir5");
    obj.imageCheckBox236:setName("imageCheckBox236");

    obj.layout245 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout245:setParent(obj.rectangle1);
    obj.layout245:setLeft(842);
    obj.layout245:setTop(799);
    obj.layout245:setWidth(19);
    obj.layout245:setHeight(19);
    obj.layout245:setName("layout245");

    obj.imageCheckBox237 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox237:setParent(obj.layout245);
    obj.imageCheckBox237:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox237:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox237:setWidth(19);
    obj.imageCheckBox237:setHeight(19);
    obj.imageCheckBox237:setField("dir6");
    obj.imageCheckBox237:setName("imageCheckBox237");

    obj.layout246 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout246:setParent(obj.rectangle1);
    obj.layout246:setLeft(861);
    obj.layout246:setTop(799);
    obj.layout246:setWidth(19);
    obj.layout246:setHeight(19);
    obj.layout246:setName("layout246");

    obj.imageCheckBox238 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox238:setParent(obj.layout246);
    obj.imageCheckBox238:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox238:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox238:setWidth(19);
    obj.imageCheckBox238:setHeight(19);
    obj.imageCheckBox238:setField("dir7");
    obj.imageCheckBox238:setName("imageCheckBox238");

    obj.layout247 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout247:setParent(obj.rectangle1);
    obj.layout247:setLeft(880);
    obj.layout247:setTop(799);
    obj.layout247:setWidth(19);
    obj.layout247:setHeight(19);
    obj.layout247:setName("layout247");

    obj.imageCheckBox239 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox239:setParent(obj.layout247);
    obj.imageCheckBox239:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox239:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox239:setWidth(19);
    obj.imageCheckBox239:setHeight(19);
    obj.imageCheckBox239:setField("dir8");
    obj.imageCheckBox239:setName("imageCheckBox239");

    obj.layout248 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout248:setParent(obj.rectangle1);
    obj.layout248:setLeft(899);
    obj.layout248:setTop(799);
    obj.layout248:setWidth(19);
    obj.layout248:setHeight(19);
    obj.layout248:setName("layout248");

    obj.imageCheckBox240 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox240:setParent(obj.layout248);
    obj.imageCheckBox240:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox240:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox240:setWidth(19);
    obj.imageCheckBox240:setHeight(19);
    obj.imageCheckBox240:setField("dir9");
    obj.imageCheckBox240:setName("imageCheckBox240");

    obj.layout249 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout249:setParent(obj.rectangle1);
    obj.layout249:setLeft(140);
    obj.layout249:setTop(824);
    obj.layout249:setWidth(19);
    obj.layout249:setHeight(19);
    obj.layout249:setName("layout249");

    obj.imageCheckBox241 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox241:setParent(obj.layout249);
    obj.imageCheckBox241:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox241:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox241:setWidth(19);
    obj.imageCheckBox241:setHeight(19);
    obj.imageCheckBox241:setField("expre1");
    obj.imageCheckBox241:setName("imageCheckBox241");

    obj.layout250 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout250:setParent(obj.rectangle1);
    obj.layout250:setLeft(159);
    obj.layout250:setTop(824);
    obj.layout250:setWidth(19);
    obj.layout250:setHeight(19);
    obj.layout250:setName("layout250");

    obj.imageCheckBox242 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox242:setParent(obj.layout250);
    obj.imageCheckBox242:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox242:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox242:setWidth(19);
    obj.imageCheckBox242:setHeight(19);
    obj.imageCheckBox242:setField("expre2");
    obj.imageCheckBox242:setName("imageCheckBox242");

    obj.layout251 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout251:setParent(obj.rectangle1);
    obj.layout251:setLeft(178);
    obj.layout251:setTop(824);
    obj.layout251:setWidth(19);
    obj.layout251:setHeight(19);
    obj.layout251:setName("layout251");

    obj.imageCheckBox243 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox243:setParent(obj.layout251);
    obj.imageCheckBox243:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox243:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox243:setWidth(19);
    obj.imageCheckBox243:setHeight(19);
    obj.imageCheckBox243:setField("expre3");
    obj.imageCheckBox243:setName("imageCheckBox243");

    obj.layout252 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout252:setParent(obj.rectangle1);
    obj.layout252:setLeft(197);
    obj.layout252:setTop(824);
    obj.layout252:setWidth(19);
    obj.layout252:setHeight(19);
    obj.layout252:setName("layout252");

    obj.imageCheckBox244 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox244:setParent(obj.layout252);
    obj.imageCheckBox244:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox244:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox244:setWidth(19);
    obj.imageCheckBox244:setHeight(19);
    obj.imageCheckBox244:setField("expre4");
    obj.imageCheckBox244:setName("imageCheckBox244");

    obj.layout253 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout253:setParent(obj.rectangle1);
    obj.layout253:setLeft(216);
    obj.layout253:setTop(824);
    obj.layout253:setWidth(19);
    obj.layout253:setHeight(19);
    obj.layout253:setName("layout253");

    obj.imageCheckBox245 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox245:setParent(obj.layout253);
    obj.imageCheckBox245:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox245:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox245:setWidth(19);
    obj.imageCheckBox245:setHeight(19);
    obj.imageCheckBox245:setField("expre5");
    obj.imageCheckBox245:setName("imageCheckBox245");

    obj.layout254 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout254:setParent(obj.rectangle1);
    obj.layout254:setLeft(235);
    obj.layout254:setTop(824);
    obj.layout254:setWidth(19);
    obj.layout254:setHeight(19);
    obj.layout254:setName("layout254");

    obj.imageCheckBox246 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox246:setParent(obj.layout254);
    obj.imageCheckBox246:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox246:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox246:setWidth(19);
    obj.imageCheckBox246:setHeight(19);
    obj.imageCheckBox246:setField("expre6");
    obj.imageCheckBox246:setName("imageCheckBox246");

    obj.layout255 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout255:setParent(obj.rectangle1);
    obj.layout255:setLeft(254);
    obj.layout255:setTop(824);
    obj.layout255:setWidth(19);
    obj.layout255:setHeight(19);
    obj.layout255:setName("layout255");

    obj.imageCheckBox247 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox247:setParent(obj.layout255);
    obj.imageCheckBox247:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox247:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox247:setWidth(19);
    obj.imageCheckBox247:setHeight(19);
    obj.imageCheckBox247:setField("expre7");
    obj.imageCheckBox247:setName("imageCheckBox247");

    obj.layout256 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout256:setParent(obj.rectangle1);
    obj.layout256:setLeft(273);
    obj.layout256:setTop(824);
    obj.layout256:setWidth(19);
    obj.layout256:setHeight(19);
    obj.layout256:setName("layout256");

    obj.imageCheckBox248 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox248:setParent(obj.layout256);
    obj.imageCheckBox248:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox248:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox248:setWidth(19);
    obj.imageCheckBox248:setHeight(19);
    obj.imageCheckBox248:setField("expre8");
    obj.imageCheckBox248:setName("imageCheckBox248");

    obj.layout257 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout257:setParent(obj.rectangle1);
    obj.layout257:setLeft(292);
    obj.layout257:setTop(824);
    obj.layout257:setWidth(19);
    obj.layout257:setHeight(19);
    obj.layout257:setName("layout257");

    obj.imageCheckBox249 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox249:setParent(obj.layout257);
    obj.imageCheckBox249:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox249:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox249:setWidth(19);
    obj.imageCheckBox249:setHeight(19);
    obj.imageCheckBox249:setField("expre9");
    obj.imageCheckBox249:setName("imageCheckBox249");

    obj.layout258 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout258:setParent(obj.rectangle1);
    obj.layout258:setLeft(747);
    obj.layout258:setTop(824);
    obj.layout258:setWidth(19);
    obj.layout258:setHeight(19);
    obj.layout258:setName("layout258");

    obj.imageCheckBox250 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox250:setParent(obj.layout258);
    obj.imageCheckBox250:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox250:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox250:setWidth(19);
    obj.imageCheckBox250:setHeight(19);
    obj.imageCheckBox250:setField("ling1");
    obj.imageCheckBox250:setName("imageCheckBox250");

    obj.layout259 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout259:setParent(obj.rectangle1);
    obj.layout259:setLeft(766);
    obj.layout259:setTop(824);
    obj.layout259:setWidth(19);
    obj.layout259:setHeight(19);
    obj.layout259:setName("layout259");

    obj.imageCheckBox251 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox251:setParent(obj.layout259);
    obj.imageCheckBox251:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox251:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox251:setWidth(19);
    obj.imageCheckBox251:setHeight(19);
    obj.imageCheckBox251:setField("ling2");
    obj.imageCheckBox251:setName("imageCheckBox251");

    obj.layout260 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout260:setParent(obj.rectangle1);
    obj.layout260:setLeft(785);
    obj.layout260:setTop(824);
    obj.layout260:setWidth(19);
    obj.layout260:setHeight(19);
    obj.layout260:setName("layout260");

    obj.imageCheckBox252 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox252:setParent(obj.layout260);
    obj.imageCheckBox252:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox252:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox252:setWidth(19);
    obj.imageCheckBox252:setHeight(19);
    obj.imageCheckBox252:setField("ling3");
    obj.imageCheckBox252:setName("imageCheckBox252");

    obj.layout261 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout261:setParent(obj.rectangle1);
    obj.layout261:setLeft(804);
    obj.layout261:setTop(824);
    obj.layout261:setWidth(19);
    obj.layout261:setHeight(19);
    obj.layout261:setName("layout261");

    obj.imageCheckBox253 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox253:setParent(obj.layout261);
    obj.imageCheckBox253:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox253:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox253:setWidth(19);
    obj.imageCheckBox253:setHeight(19);
    obj.imageCheckBox253:setField("ling4");
    obj.imageCheckBox253:setName("imageCheckBox253");

    obj.layout262 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout262:setParent(obj.rectangle1);
    obj.layout262:setLeft(823);
    obj.layout262:setTop(824);
    obj.layout262:setWidth(19);
    obj.layout262:setHeight(19);
    obj.layout262:setName("layout262");

    obj.imageCheckBox254 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox254:setParent(obj.layout262);
    obj.imageCheckBox254:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox254:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox254:setWidth(19);
    obj.imageCheckBox254:setHeight(19);
    obj.imageCheckBox254:setField("ling5");
    obj.imageCheckBox254:setName("imageCheckBox254");

    obj.layout263 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout263:setParent(obj.rectangle1);
    obj.layout263:setLeft(842);
    obj.layout263:setTop(824);
    obj.layout263:setWidth(19);
    obj.layout263:setHeight(19);
    obj.layout263:setName("layout263");

    obj.imageCheckBox255 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox255:setParent(obj.layout263);
    obj.imageCheckBox255:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox255:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox255:setWidth(19);
    obj.imageCheckBox255:setHeight(19);
    obj.imageCheckBox255:setField("ling6");
    obj.imageCheckBox255:setName("imageCheckBox255");

    obj.layout264 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout264:setParent(obj.rectangle1);
    obj.layout264:setLeft(861);
    obj.layout264:setTop(824);
    obj.layout264:setWidth(19);
    obj.layout264:setHeight(19);
    obj.layout264:setName("layout264");

    obj.imageCheckBox256 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox256:setParent(obj.layout264);
    obj.imageCheckBox256:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox256:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox256:setWidth(19);
    obj.imageCheckBox256:setHeight(19);
    obj.imageCheckBox256:setField("ling7");
    obj.imageCheckBox256:setName("imageCheckBox256");

    obj.layout265 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout265:setParent(obj.rectangle1);
    obj.layout265:setLeft(880);
    obj.layout265:setTop(824);
    obj.layout265:setWidth(19);
    obj.layout265:setHeight(19);
    obj.layout265:setName("layout265");

    obj.imageCheckBox257 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox257:setParent(obj.layout265);
    obj.imageCheckBox257:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox257:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox257:setWidth(19);
    obj.imageCheckBox257:setHeight(19);
    obj.imageCheckBox257:setField("ling8");
    obj.imageCheckBox257:setName("imageCheckBox257");

    obj.layout266 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout266:setParent(obj.rectangle1);
    obj.layout266:setLeft(899);
    obj.layout266:setTop(824);
    obj.layout266:setWidth(19);
    obj.layout266:setHeight(19);
    obj.layout266:setName("layout266");

    obj.imageCheckBox258 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox258:setParent(obj.layout266);
    obj.imageCheckBox258:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox258:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox258:setWidth(19);
    obj.imageCheckBox258:setHeight(19);
    obj.imageCheckBox258:setField("ling9");
    obj.imageCheckBox258:setName("imageCheckBox258");

    obj.layout267 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout267:setParent(obj.rectangle1);
    obj.layout267:setLeft(447);
    obj.layout267:setTop(824);
    obj.layout267:setWidth(19);
    obj.layout267:setHeight(19);
    obj.layout267:setName("layout267");

    obj.imageCheckBox259 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox259:setParent(obj.layout267);
    obj.imageCheckBox259:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox259:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox259:setWidth(19);
    obj.imageCheckBox259:setHeight(19);
    obj.imageCheckBox259:setField("seg1");
    obj.imageCheckBox259:setName("imageCheckBox259");

    obj.layout268 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout268:setParent(obj.rectangle1);
    obj.layout268:setLeft(466);
    obj.layout268:setTop(824);
    obj.layout268:setWidth(19);
    obj.layout268:setHeight(19);
    obj.layout268:setName("layout268");

    obj.imageCheckBox260 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox260:setParent(obj.layout268);
    obj.imageCheckBox260:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox260:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox260:setWidth(19);
    obj.imageCheckBox260:setHeight(19);
    obj.imageCheckBox260:setField("seg2");
    obj.imageCheckBox260:setName("imageCheckBox260");

    obj.layout269 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout269:setParent(obj.rectangle1);
    obj.layout269:setLeft(485);
    obj.layout269:setTop(824);
    obj.layout269:setWidth(19);
    obj.layout269:setHeight(19);
    obj.layout269:setName("layout269");

    obj.imageCheckBox261 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox261:setParent(obj.layout269);
    obj.imageCheckBox261:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox261:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox261:setWidth(19);
    obj.imageCheckBox261:setHeight(19);
    obj.imageCheckBox261:setField("seg3");
    obj.imageCheckBox261:setName("imageCheckBox261");

    obj.layout270 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout270:setParent(obj.rectangle1);
    obj.layout270:setLeft(504);
    obj.layout270:setTop(824);
    obj.layout270:setWidth(19);
    obj.layout270:setHeight(19);
    obj.layout270:setName("layout270");

    obj.imageCheckBox262 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox262:setParent(obj.layout270);
    obj.imageCheckBox262:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox262:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox262:setWidth(19);
    obj.imageCheckBox262:setHeight(19);
    obj.imageCheckBox262:setField("seg4");
    obj.imageCheckBox262:setName("imageCheckBox262");

    obj.layout271 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout271:setParent(obj.rectangle1);
    obj.layout271:setLeft(523);
    obj.layout271:setTop(824);
    obj.layout271:setWidth(19);
    obj.layout271:setHeight(19);
    obj.layout271:setName("layout271");

    obj.imageCheckBox263 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox263:setParent(obj.layout271);
    obj.imageCheckBox263:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox263:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox263:setWidth(19);
    obj.imageCheckBox263:setHeight(19);
    obj.imageCheckBox263:setField("seg5");
    obj.imageCheckBox263:setName("imageCheckBox263");

    obj.layout272 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout272:setParent(obj.rectangle1);
    obj.layout272:setLeft(542);
    obj.layout272:setTop(824);
    obj.layout272:setWidth(19);
    obj.layout272:setHeight(19);
    obj.layout272:setName("layout272");

    obj.imageCheckBox264 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox264:setParent(obj.layout272);
    obj.imageCheckBox264:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox264:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox264:setWidth(19);
    obj.imageCheckBox264:setHeight(19);
    obj.imageCheckBox264:setField("seg6");
    obj.imageCheckBox264:setName("imageCheckBox264");

    obj.layout273 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout273:setParent(obj.rectangle1);
    obj.layout273:setLeft(561);
    obj.layout273:setTop(824);
    obj.layout273:setWidth(19);
    obj.layout273:setHeight(19);
    obj.layout273:setName("layout273");

    obj.imageCheckBox265 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox265:setParent(obj.layout273);
    obj.imageCheckBox265:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox265:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox265:setWidth(19);
    obj.imageCheckBox265:setHeight(19);
    obj.imageCheckBox265:setField("seg7");
    obj.imageCheckBox265:setName("imageCheckBox265");

    obj.layout274 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout274:setParent(obj.rectangle1);
    obj.layout274:setLeft(580);
    obj.layout274:setTop(824);
    obj.layout274:setWidth(19);
    obj.layout274:setHeight(19);
    obj.layout274:setName("layout274");

    obj.imageCheckBox266 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox266:setParent(obj.layout274);
    obj.imageCheckBox266:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox266:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox266:setWidth(19);
    obj.imageCheckBox266:setHeight(19);
    obj.imageCheckBox266:setField("seg8");
    obj.imageCheckBox266:setName("imageCheckBox266");

    obj.layout275 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout275:setParent(obj.rectangle1);
    obj.layout275:setLeft(599);
    obj.layout275:setTop(824);
    obj.layout275:setWidth(19);
    obj.layout275:setHeight(19);
    obj.layout275:setName("layout275");

    obj.imageCheckBox267 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox267:setParent(obj.layout275);
    obj.imageCheckBox267:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox267:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox267:setWidth(19);
    obj.imageCheckBox267:setHeight(19);
    obj.imageCheckBox267:setField("seg9");
    obj.imageCheckBox267:setName("imageCheckBox267");

    obj.layout276 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout276:setParent(obj.rectangle1);
    obj.layout276:setLeft(140);
    obj.layout276:setTop(851);
    obj.layout276:setWidth(19);
    obj.layout276:setHeight(19);
    obj.layout276:setName("layout276");

    obj.imageCheckBox268 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox268:setParent(obj.layout276);
    obj.imageCheckBox268:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox268:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox268:setWidth(19);
    obj.imageCheckBox268:setHeight(19);
    obj.imageCheckBox268:setField("intim1");
    obj.imageCheckBox268:setName("imageCheckBox268");

    obj.layout277 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout277:setParent(obj.rectangle1);
    obj.layout277:setLeft(159);
    obj.layout277:setTop(851);
    obj.layout277:setWidth(19);
    obj.layout277:setHeight(19);
    obj.layout277:setName("layout277");

    obj.imageCheckBox269 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox269:setParent(obj.layout277);
    obj.imageCheckBox269:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox269:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox269:setWidth(19);
    obj.imageCheckBox269:setHeight(19);
    obj.imageCheckBox269:setField("intim2");
    obj.imageCheckBox269:setName("imageCheckBox269");

    obj.layout278 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout278:setParent(obj.rectangle1);
    obj.layout278:setLeft(178);
    obj.layout278:setTop(851);
    obj.layout278:setWidth(19);
    obj.layout278:setHeight(19);
    obj.layout278:setName("layout278");

    obj.imageCheckBox270 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox270:setParent(obj.layout278);
    obj.imageCheckBox270:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox270:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox270:setWidth(19);
    obj.imageCheckBox270:setHeight(19);
    obj.imageCheckBox270:setField("intim3");
    obj.imageCheckBox270:setName("imageCheckBox270");

    obj.layout279 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout279:setParent(obj.rectangle1);
    obj.layout279:setLeft(197);
    obj.layout279:setTop(851);
    obj.layout279:setWidth(19);
    obj.layout279:setHeight(19);
    obj.layout279:setName("layout279");

    obj.imageCheckBox271 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox271:setParent(obj.layout279);
    obj.imageCheckBox271:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox271:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox271:setWidth(19);
    obj.imageCheckBox271:setHeight(19);
    obj.imageCheckBox271:setField("intim4");
    obj.imageCheckBox271:setName("imageCheckBox271");

    obj.layout280 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout280:setParent(obj.rectangle1);
    obj.layout280:setLeft(216);
    obj.layout280:setTop(851);
    obj.layout280:setWidth(19);
    obj.layout280:setHeight(19);
    obj.layout280:setName("layout280");

    obj.imageCheckBox272 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox272:setParent(obj.layout280);
    obj.imageCheckBox272:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox272:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox272:setWidth(19);
    obj.imageCheckBox272:setHeight(19);
    obj.imageCheckBox272:setField("intim5");
    obj.imageCheckBox272:setName("imageCheckBox272");

    obj.layout281 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout281:setParent(obj.rectangle1);
    obj.layout281:setLeft(235);
    obj.layout281:setTop(851);
    obj.layout281:setWidth(19);
    obj.layout281:setHeight(19);
    obj.layout281:setName("layout281");

    obj.imageCheckBox273 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox273:setParent(obj.layout281);
    obj.imageCheckBox273:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox273:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox273:setWidth(19);
    obj.imageCheckBox273:setHeight(19);
    obj.imageCheckBox273:setField("intim6");
    obj.imageCheckBox273:setName("imageCheckBox273");

    obj.layout282 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout282:setParent(obj.rectangle1);
    obj.layout282:setLeft(254);
    obj.layout282:setTop(851);
    obj.layout282:setWidth(19);
    obj.layout282:setHeight(19);
    obj.layout282:setName("layout282");

    obj.imageCheckBox274 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox274:setParent(obj.layout282);
    obj.imageCheckBox274:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox274:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox274:setWidth(19);
    obj.imageCheckBox274:setHeight(19);
    obj.imageCheckBox274:setField("intim7");
    obj.imageCheckBox274:setName("imageCheckBox274");

    obj.layout283 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout283:setParent(obj.rectangle1);
    obj.layout283:setLeft(273);
    obj.layout283:setTop(851);
    obj.layout283:setWidth(19);
    obj.layout283:setHeight(19);
    obj.layout283:setName("layout283");

    obj.imageCheckBox275 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox275:setParent(obj.layout283);
    obj.imageCheckBox275:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox275:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox275:setWidth(19);
    obj.imageCheckBox275:setHeight(19);
    obj.imageCheckBox275:setField("intim8");
    obj.imageCheckBox275:setName("imageCheckBox275");

    obj.layout284 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout284:setParent(obj.rectangle1);
    obj.layout284:setLeft(292);
    obj.layout284:setTop(851);
    obj.layout284:setWidth(19);
    obj.layout284:setHeight(19);
    obj.layout284:setName("layout284");

    obj.imageCheckBox276 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox276:setParent(obj.layout284);
    obj.imageCheckBox276:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox276:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox276:setWidth(19);
    obj.imageCheckBox276:setHeight(19);
    obj.imageCheckBox276:setField("intim9");
    obj.imageCheckBox276:setName("imageCheckBox276");

    obj.layout285 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout285:setParent(obj.rectangle1);
    obj.layout285:setLeft(747);
    obj.layout285:setTop(851);
    obj.layout285:setWidth(19);
    obj.layout285:setHeight(19);
    obj.layout285:setName("layout285");

    obj.imageCheckBox277 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox277:setParent(obj.layout285);
    obj.imageCheckBox277:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox277:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox277:setWidth(19);
    obj.imageCheckBox277:setHeight(19);
    obj.imageCheckBox277:setField("med1");
    obj.imageCheckBox277:setName("imageCheckBox277");

    obj.layout286 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout286:setParent(obj.rectangle1);
    obj.layout286:setLeft(766);
    obj.layout286:setTop(851);
    obj.layout286:setWidth(19);
    obj.layout286:setHeight(19);
    obj.layout286:setName("layout286");

    obj.imageCheckBox278 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox278:setParent(obj.layout286);
    obj.imageCheckBox278:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox278:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox278:setWidth(19);
    obj.imageCheckBox278:setHeight(19);
    obj.imageCheckBox278:setField("med2");
    obj.imageCheckBox278:setName("imageCheckBox278");

    obj.layout287 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout287:setParent(obj.rectangle1);
    obj.layout287:setLeft(785);
    obj.layout287:setTop(851);
    obj.layout287:setWidth(19);
    obj.layout287:setHeight(19);
    obj.layout287:setName("layout287");

    obj.imageCheckBox279 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox279:setParent(obj.layout287);
    obj.imageCheckBox279:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox279:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox279:setWidth(19);
    obj.imageCheckBox279:setHeight(19);
    obj.imageCheckBox279:setField("med3");
    obj.imageCheckBox279:setName("imageCheckBox279");

    obj.layout288 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout288:setParent(obj.rectangle1);
    obj.layout288:setLeft(804);
    obj.layout288:setTop(851);
    obj.layout288:setWidth(19);
    obj.layout288:setHeight(19);
    obj.layout288:setName("layout288");

    obj.imageCheckBox280 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox280:setParent(obj.layout288);
    obj.imageCheckBox280:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox280:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox280:setWidth(19);
    obj.imageCheckBox280:setHeight(19);
    obj.imageCheckBox280:setField("med4");
    obj.imageCheckBox280:setName("imageCheckBox280");

    obj.layout289 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout289:setParent(obj.rectangle1);
    obj.layout289:setLeft(823);
    obj.layout289:setTop(851);
    obj.layout289:setWidth(19);
    obj.layout289:setHeight(19);
    obj.layout289:setName("layout289");

    obj.imageCheckBox281 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox281:setParent(obj.layout289);
    obj.imageCheckBox281:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox281:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox281:setWidth(19);
    obj.imageCheckBox281:setHeight(19);
    obj.imageCheckBox281:setField("med5");
    obj.imageCheckBox281:setName("imageCheckBox281");

    obj.layout290 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout290:setParent(obj.rectangle1);
    obj.layout290:setLeft(842);
    obj.layout290:setTop(851);
    obj.layout290:setWidth(19);
    obj.layout290:setHeight(19);
    obj.layout290:setName("layout290");

    obj.imageCheckBox282 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox282:setParent(obj.layout290);
    obj.imageCheckBox282:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox282:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox282:setWidth(19);
    obj.imageCheckBox282:setHeight(19);
    obj.imageCheckBox282:setField("med6");
    obj.imageCheckBox282:setName("imageCheckBox282");

    obj.layout291 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout291:setParent(obj.rectangle1);
    obj.layout291:setLeft(861);
    obj.layout291:setTop(851);
    obj.layout291:setWidth(19);
    obj.layout291:setHeight(19);
    obj.layout291:setName("layout291");

    obj.imageCheckBox283 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox283:setParent(obj.layout291);
    obj.imageCheckBox283:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox283:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox283:setWidth(19);
    obj.imageCheckBox283:setHeight(19);
    obj.imageCheckBox283:setField("med7");
    obj.imageCheckBox283:setName("imageCheckBox283");

    obj.layout292 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout292:setParent(obj.rectangle1);
    obj.layout292:setLeft(880);
    obj.layout292:setTop(851);
    obj.layout292:setWidth(19);
    obj.layout292:setHeight(19);
    obj.layout292:setName("layout292");

    obj.imageCheckBox284 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox284:setParent(obj.layout292);
    obj.imageCheckBox284:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox284:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox284:setWidth(19);
    obj.imageCheckBox284:setHeight(19);
    obj.imageCheckBox284:setField("med8");
    obj.imageCheckBox284:setName("imageCheckBox284");

    obj.layout293 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout293:setParent(obj.rectangle1);
    obj.layout293:setLeft(899);
    obj.layout293:setTop(851);
    obj.layout293:setWidth(19);
    obj.layout293:setHeight(19);
    obj.layout293:setName("layout293");

    obj.imageCheckBox285 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox285:setParent(obj.layout293);
    obj.imageCheckBox285:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox285:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox285:setWidth(19);
    obj.imageCheckBox285:setHeight(19);
    obj.imageCheckBox285:setField("med9");
    obj.imageCheckBox285:setName("imageCheckBox285");

    obj.layout294 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout294:setParent(obj.rectangle1);
    obj.layout294:setLeft(447);
    obj.layout294:setTop(851);
    obj.layout294:setWidth(19);
    obj.layout294:setHeight(19);
    obj.layout294:setName("layout294");

    obj.imageCheckBox286 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox286:setParent(obj.layout294);
    obj.imageCheckBox286:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox286:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox286:setWidth(19);
    obj.imageCheckBox286:setHeight(19);
    obj.imageCheckBox286:setField("furt1");
    obj.imageCheckBox286:setName("imageCheckBox286");

    obj.layout295 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout295:setParent(obj.rectangle1);
    obj.layout295:setLeft(466);
    obj.layout295:setTop(851);
    obj.layout295:setWidth(19);
    obj.layout295:setHeight(19);
    obj.layout295:setName("layout295");

    obj.imageCheckBox287 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox287:setParent(obj.layout295);
    obj.imageCheckBox287:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox287:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox287:setWidth(19);
    obj.imageCheckBox287:setHeight(19);
    obj.imageCheckBox287:setField("furt2");
    obj.imageCheckBox287:setName("imageCheckBox287");

    obj.layout296 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout296:setParent(obj.rectangle1);
    obj.layout296:setLeft(485);
    obj.layout296:setTop(851);
    obj.layout296:setWidth(19);
    obj.layout296:setHeight(19);
    obj.layout296:setName("layout296");

    obj.imageCheckBox288 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox288:setParent(obj.layout296);
    obj.imageCheckBox288:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox288:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox288:setWidth(19);
    obj.imageCheckBox288:setHeight(19);
    obj.imageCheckBox288:setField("furt3");
    obj.imageCheckBox288:setName("imageCheckBox288");

    obj.layout297 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout297:setParent(obj.rectangle1);
    obj.layout297:setLeft(504);
    obj.layout297:setTop(851);
    obj.layout297:setWidth(19);
    obj.layout297:setHeight(19);
    obj.layout297:setName("layout297");

    obj.imageCheckBox289 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox289:setParent(obj.layout297);
    obj.imageCheckBox289:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox289:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox289:setWidth(19);
    obj.imageCheckBox289:setHeight(19);
    obj.imageCheckBox289:setField("furt4");
    obj.imageCheckBox289:setName("imageCheckBox289");

    obj.layout298 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout298:setParent(obj.rectangle1);
    obj.layout298:setLeft(523);
    obj.layout298:setTop(851);
    obj.layout298:setWidth(19);
    obj.layout298:setHeight(19);
    obj.layout298:setName("layout298");

    obj.imageCheckBox290 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox290:setParent(obj.layout298);
    obj.imageCheckBox290:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox290:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox290:setWidth(19);
    obj.imageCheckBox290:setHeight(19);
    obj.imageCheckBox290:setField("furt5");
    obj.imageCheckBox290:setName("imageCheckBox290");

    obj.layout299 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout299:setParent(obj.rectangle1);
    obj.layout299:setLeft(542);
    obj.layout299:setTop(851);
    obj.layout299:setWidth(19);
    obj.layout299:setHeight(19);
    obj.layout299:setName("layout299");

    obj.imageCheckBox291 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox291:setParent(obj.layout299);
    obj.imageCheckBox291:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox291:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox291:setWidth(19);
    obj.imageCheckBox291:setHeight(19);
    obj.imageCheckBox291:setField("furt6");
    obj.imageCheckBox291:setName("imageCheckBox291");

    obj.layout300 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout300:setParent(obj.rectangle1);
    obj.layout300:setLeft(561);
    obj.layout300:setTop(851);
    obj.layout300:setWidth(19);
    obj.layout300:setHeight(19);
    obj.layout300:setName("layout300");

    obj.imageCheckBox292 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox292:setParent(obj.layout300);
    obj.imageCheckBox292:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox292:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox292:setWidth(19);
    obj.imageCheckBox292:setHeight(19);
    obj.imageCheckBox292:setField("furt7");
    obj.imageCheckBox292:setName("imageCheckBox292");

    obj.layout301 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout301:setParent(obj.rectangle1);
    obj.layout301:setLeft(580);
    obj.layout301:setTop(851);
    obj.layout301:setWidth(19);
    obj.layout301:setHeight(19);
    obj.layout301:setName("layout301");

    obj.imageCheckBox293 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox293:setParent(obj.layout301);
    obj.imageCheckBox293:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox293:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox293:setWidth(19);
    obj.imageCheckBox293:setHeight(19);
    obj.imageCheckBox293:setField("furt8");
    obj.imageCheckBox293:setName("imageCheckBox293");

    obj.layout302 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout302:setParent(obj.rectangle1);
    obj.layout302:setLeft(599);
    obj.layout302:setTop(851);
    obj.layout302:setWidth(19);
    obj.layout302:setHeight(19);
    obj.layout302:setName("layout302");

    obj.imageCheckBox294 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox294:setParent(obj.layout302);
    obj.imageCheckBox294:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox294:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox294:setWidth(19);
    obj.imageCheckBox294:setHeight(19);
    obj.imageCheckBox294:setField("furt9");
    obj.imageCheckBox294:setName("imageCheckBox294");

    obj.layout303 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout303:setParent(obj.rectangle1);
    obj.layout303:setLeft(140);
    obj.layout303:setTop(879);
    obj.layout303:setWidth(19);
    obj.layout303:setHeight(19);
    obj.layout303:setName("layout303");

    obj.imageCheckBox295 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox295:setParent(obj.layout303);
    obj.imageCheckBox295:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox295:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox295:setWidth(19);
    obj.imageCheckBox295:setHeight(19);
    obj.imageCheckBox295:setField("lid1");
    obj.imageCheckBox295:setName("imageCheckBox295");

    obj.layout304 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout304:setParent(obj.rectangle1);
    obj.layout304:setLeft(159);
    obj.layout304:setTop(879);
    obj.layout304:setWidth(19);
    obj.layout304:setHeight(19);
    obj.layout304:setName("layout304");

    obj.imageCheckBox296 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox296:setParent(obj.layout304);
    obj.imageCheckBox296:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox296:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox296:setWidth(19);
    obj.imageCheckBox296:setHeight(19);
    obj.imageCheckBox296:setField("lid2");
    obj.imageCheckBox296:setName("imageCheckBox296");

    obj.layout305 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout305:setParent(obj.rectangle1);
    obj.layout305:setLeft(178);
    obj.layout305:setTop(879);
    obj.layout305:setWidth(19);
    obj.layout305:setHeight(19);
    obj.layout305:setName("layout305");

    obj.imageCheckBox297 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox297:setParent(obj.layout305);
    obj.imageCheckBox297:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox297:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox297:setWidth(19);
    obj.imageCheckBox297:setHeight(19);
    obj.imageCheckBox297:setField("lid3");
    obj.imageCheckBox297:setName("imageCheckBox297");

    obj.layout306 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout306:setParent(obj.rectangle1);
    obj.layout306:setLeft(197);
    obj.layout306:setTop(879);
    obj.layout306:setWidth(19);
    obj.layout306:setHeight(19);
    obj.layout306:setName("layout306");

    obj.imageCheckBox298 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox298:setParent(obj.layout306);
    obj.imageCheckBox298:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox298:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox298:setWidth(19);
    obj.imageCheckBox298:setHeight(19);
    obj.imageCheckBox298:setField("lid4");
    obj.imageCheckBox298:setName("imageCheckBox298");

    obj.layout307 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout307:setParent(obj.rectangle1);
    obj.layout307:setLeft(216);
    obj.layout307:setTop(879);
    obj.layout307:setWidth(19);
    obj.layout307:setHeight(19);
    obj.layout307:setName("layout307");

    obj.imageCheckBox299 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox299:setParent(obj.layout307);
    obj.imageCheckBox299:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox299:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox299:setWidth(19);
    obj.imageCheckBox299:setHeight(19);
    obj.imageCheckBox299:setField("lid5");
    obj.imageCheckBox299:setName("imageCheckBox299");

    obj.layout308 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout308:setParent(obj.rectangle1);
    obj.layout308:setLeft(235);
    obj.layout308:setTop(879);
    obj.layout308:setWidth(19);
    obj.layout308:setHeight(19);
    obj.layout308:setName("layout308");

    obj.imageCheckBox300 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox300:setParent(obj.layout308);
    obj.imageCheckBox300:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox300:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox300:setWidth(19);
    obj.imageCheckBox300:setHeight(19);
    obj.imageCheckBox300:setField("lid6");
    obj.imageCheckBox300:setName("imageCheckBox300");

    obj.layout309 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout309:setParent(obj.rectangle1);
    obj.layout309:setLeft(254);
    obj.layout309:setTop(879);
    obj.layout309:setWidth(19);
    obj.layout309:setHeight(19);
    obj.layout309:setName("layout309");

    obj.imageCheckBox301 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox301:setParent(obj.layout309);
    obj.imageCheckBox301:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox301:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox301:setWidth(19);
    obj.imageCheckBox301:setHeight(19);
    obj.imageCheckBox301:setField("lid7");
    obj.imageCheckBox301:setName("imageCheckBox301");

    obj.layout310 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout310:setParent(obj.rectangle1);
    obj.layout310:setLeft(273);
    obj.layout310:setTop(879);
    obj.layout310:setWidth(19);
    obj.layout310:setHeight(19);
    obj.layout310:setName("layout310");

    obj.imageCheckBox302 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox302:setParent(obj.layout310);
    obj.imageCheckBox302:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox302:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox302:setWidth(19);
    obj.imageCheckBox302:setHeight(19);
    obj.imageCheckBox302:setField("lid8");
    obj.imageCheckBox302:setName("imageCheckBox302");

    obj.layout311 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout311:setParent(obj.rectangle1);
    obj.layout311:setLeft(292);
    obj.layout311:setTop(879);
    obj.layout311:setWidth(19);
    obj.layout311:setHeight(19);
    obj.layout311:setName("layout311");

    obj.imageCheckBox303 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox303:setParent(obj.layout311);
    obj.imageCheckBox303:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox303:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox303:setWidth(19);
    obj.imageCheckBox303:setHeight(19);
    obj.imageCheckBox303:setField("lid9");
    obj.imageCheckBox303:setName("imageCheckBox303");

    obj.layout312 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout312:setParent(obj.rectangle1);
    obj.layout312:setLeft(747);
    obj.layout312:setTop(879);
    obj.layout312:setWidth(19);
    obj.layout312:setHeight(19);
    obj.layout312:setName("layout312");

    obj.imageCheckBox304 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox304:setParent(obj.layout312);
    obj.imageCheckBox304:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox304:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox304:setWidth(19);
    obj.imageCheckBox304:setHeight(19);
    obj.imageCheckBox304:setField("cie1");
    obj.imageCheckBox304:setName("imageCheckBox304");

    obj.layout313 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout313:setParent(obj.rectangle1);
    obj.layout313:setLeft(766);
    obj.layout313:setTop(879);
    obj.layout313:setWidth(19);
    obj.layout313:setHeight(19);
    obj.layout313:setName("layout313");

    obj.imageCheckBox305 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox305:setParent(obj.layout313);
    obj.imageCheckBox305:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox305:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox305:setWidth(19);
    obj.imageCheckBox305:setHeight(19);
    obj.imageCheckBox305:setField("cie2");
    obj.imageCheckBox305:setName("imageCheckBox305");

    obj.layout314 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout314:setParent(obj.rectangle1);
    obj.layout314:setLeft(785);
    obj.layout314:setTop(879);
    obj.layout314:setWidth(19);
    obj.layout314:setHeight(19);
    obj.layout314:setName("layout314");

    obj.imageCheckBox306 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox306:setParent(obj.layout314);
    obj.imageCheckBox306:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox306:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox306:setWidth(19);
    obj.imageCheckBox306:setHeight(19);
    obj.imageCheckBox306:setField("cie3");
    obj.imageCheckBox306:setName("imageCheckBox306");

    obj.layout315 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout315:setParent(obj.rectangle1);
    obj.layout315:setLeft(804);
    obj.layout315:setTop(879);
    obj.layout315:setWidth(19);
    obj.layout315:setHeight(19);
    obj.layout315:setName("layout315");

    obj.imageCheckBox307 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox307:setParent(obj.layout315);
    obj.imageCheckBox307:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox307:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox307:setWidth(19);
    obj.imageCheckBox307:setHeight(19);
    obj.imageCheckBox307:setField("cie4");
    obj.imageCheckBox307:setName("imageCheckBox307");

    obj.layout316 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout316:setParent(obj.rectangle1);
    obj.layout316:setLeft(823);
    obj.layout316:setTop(879);
    obj.layout316:setWidth(19);
    obj.layout316:setHeight(19);
    obj.layout316:setName("layout316");

    obj.imageCheckBox308 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox308:setParent(obj.layout316);
    obj.imageCheckBox308:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox308:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox308:setWidth(19);
    obj.imageCheckBox308:setHeight(19);
    obj.imageCheckBox308:setField("cie5");
    obj.imageCheckBox308:setName("imageCheckBox308");

    obj.layout317 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout317:setParent(obj.rectangle1);
    obj.layout317:setLeft(842);
    obj.layout317:setTop(879);
    obj.layout317:setWidth(19);
    obj.layout317:setHeight(19);
    obj.layout317:setName("layout317");

    obj.imageCheckBox309 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox309:setParent(obj.layout317);
    obj.imageCheckBox309:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox309:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox309:setWidth(19);
    obj.imageCheckBox309:setHeight(19);
    obj.imageCheckBox309:setField("cie6");
    obj.imageCheckBox309:setName("imageCheckBox309");

    obj.layout318 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout318:setParent(obj.rectangle1);
    obj.layout318:setLeft(861);
    obj.layout318:setTop(879);
    obj.layout318:setWidth(19);
    obj.layout318:setHeight(19);
    obj.layout318:setName("layout318");

    obj.imageCheckBox310 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox310:setParent(obj.layout318);
    obj.imageCheckBox310:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox310:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox310:setWidth(19);
    obj.imageCheckBox310:setHeight(19);
    obj.imageCheckBox310:setField("cie7");
    obj.imageCheckBox310:setName("imageCheckBox310");

    obj.layout319 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout319:setParent(obj.rectangle1);
    obj.layout319:setLeft(880);
    obj.layout319:setTop(879);
    obj.layout319:setWidth(19);
    obj.layout319:setHeight(19);
    obj.layout319:setName("layout319");

    obj.imageCheckBox311 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox311:setParent(obj.layout319);
    obj.imageCheckBox311:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox311:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox311:setWidth(19);
    obj.imageCheckBox311:setHeight(19);
    obj.imageCheckBox311:setField("cie8");
    obj.imageCheckBox311:setName("imageCheckBox311");

    obj.layout320 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout320:setParent(obj.rectangle1);
    obj.layout320:setLeft(899);
    obj.layout320:setTop(879);
    obj.layout320:setWidth(19);
    obj.layout320:setHeight(19);
    obj.layout320:setName("layout320");

    obj.imageCheckBox312 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox312:setParent(obj.layout320);
    obj.imageCheckBox312:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox312:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox312:setWidth(19);
    obj.imageCheckBox312:setHeight(19);
    obj.imageCheckBox312:setField("cie9");
    obj.imageCheckBox312:setName("imageCheckBox312");

    obj.layout321 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout321:setParent(obj.rectangle1);
    obj.layout321:setLeft(447);
    obj.layout321:setTop(879);
    obj.layout321:setWidth(19);
    obj.layout321:setHeight(19);
    obj.layout321:setName("layout321");

    obj.imageCheckBox313 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox313:setParent(obj.layout321);
    obj.imageCheckBox313:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox313:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox313:setWidth(19);
    obj.imageCheckBox313:setHeight(19);
    obj.imageCheckBox313:setField("sob1");
    obj.imageCheckBox313:setName("imageCheckBox313");

    obj.layout322 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout322:setParent(obj.rectangle1);
    obj.layout322:setLeft(466);
    obj.layout322:setTop(879);
    obj.layout322:setWidth(19);
    obj.layout322:setHeight(19);
    obj.layout322:setName("layout322");

    obj.imageCheckBox314 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox314:setParent(obj.layout322);
    obj.imageCheckBox314:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox314:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox314:setWidth(19);
    obj.imageCheckBox314:setHeight(19);
    obj.imageCheckBox314:setField("sob2");
    obj.imageCheckBox314:setName("imageCheckBox314");

    obj.layout323 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout323:setParent(obj.rectangle1);
    obj.layout323:setLeft(485);
    obj.layout323:setTop(879);
    obj.layout323:setWidth(19);
    obj.layout323:setHeight(19);
    obj.layout323:setName("layout323");

    obj.imageCheckBox315 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox315:setParent(obj.layout323);
    obj.imageCheckBox315:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox315:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox315:setWidth(19);
    obj.imageCheckBox315:setHeight(19);
    obj.imageCheckBox315:setField("sob3");
    obj.imageCheckBox315:setName("imageCheckBox315");

    obj.layout324 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout324:setParent(obj.rectangle1);
    obj.layout324:setLeft(504);
    obj.layout324:setTop(879);
    obj.layout324:setWidth(19);
    obj.layout324:setHeight(19);
    obj.layout324:setName("layout324");

    obj.imageCheckBox316 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox316:setParent(obj.layout324);
    obj.imageCheckBox316:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox316:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox316:setWidth(19);
    obj.imageCheckBox316:setHeight(19);
    obj.imageCheckBox316:setField("sob4");
    obj.imageCheckBox316:setName("imageCheckBox316");

    obj.layout325 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout325:setParent(obj.rectangle1);
    obj.layout325:setLeft(523);
    obj.layout325:setTop(879);
    obj.layout325:setWidth(19);
    obj.layout325:setHeight(19);
    obj.layout325:setName("layout325");

    obj.imageCheckBox317 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox317:setParent(obj.layout325);
    obj.imageCheckBox317:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox317:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox317:setWidth(19);
    obj.imageCheckBox317:setHeight(19);
    obj.imageCheckBox317:setField("sob5");
    obj.imageCheckBox317:setName("imageCheckBox317");

    obj.layout326 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout326:setParent(obj.rectangle1);
    obj.layout326:setLeft(542);
    obj.layout326:setTop(879);
    obj.layout326:setWidth(19);
    obj.layout326:setHeight(19);
    obj.layout326:setName("layout326");

    obj.imageCheckBox318 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox318:setParent(obj.layout326);
    obj.imageCheckBox318:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox318:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox318:setWidth(19);
    obj.imageCheckBox318:setHeight(19);
    obj.imageCheckBox318:setField("sob6");
    obj.imageCheckBox318:setName("imageCheckBox318");

    obj.layout327 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout327:setParent(obj.rectangle1);
    obj.layout327:setLeft(561);
    obj.layout327:setTop(879);
    obj.layout327:setWidth(19);
    obj.layout327:setHeight(19);
    obj.layout327:setName("layout327");

    obj.imageCheckBox319 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox319:setParent(obj.layout327);
    obj.imageCheckBox319:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox319:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox319:setWidth(19);
    obj.imageCheckBox319:setHeight(19);
    obj.imageCheckBox319:setField("sob7");
    obj.imageCheckBox319:setName("imageCheckBox319");

    obj.layout328 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout328:setParent(obj.rectangle1);
    obj.layout328:setLeft(580);
    obj.layout328:setTop(879);
    obj.layout328:setWidth(19);
    obj.layout328:setHeight(19);
    obj.layout328:setName("layout328");

    obj.imageCheckBox320 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox320:setParent(obj.layout328);
    obj.imageCheckBox320:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox320:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox320:setWidth(19);
    obj.imageCheckBox320:setHeight(19);
    obj.imageCheckBox320:setField("sob8");
    obj.imageCheckBox320:setName("imageCheckBox320");

    obj.layout329 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout329:setParent(obj.rectangle1);
    obj.layout329:setLeft(599);
    obj.layout329:setTop(879);
    obj.layout329:setWidth(19);
    obj.layout329:setHeight(19);
    obj.layout329:setName("layout329");

    obj.imageCheckBox321 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox321:setParent(obj.layout329);
    obj.imageCheckBox321:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox321:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox321:setWidth(19);
    obj.imageCheckBox321:setHeight(19);
    obj.imageCheckBox321:setField("sob9");
    obj.imageCheckBox321:setName("imageCheckBox321");

    obj.layout330 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout330:setParent(obj.rectangle1);
    obj.layout330:setLeft(37);
    obj.layout330:setTop(999);
    obj.layout330:setWidth(285);
    obj.layout330:setHeight(272);
    obj.layout330:setName("layout330");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout330);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(285);
    obj.textEditor1:setHeight(272);
    obj.textEditor1:setField("ant1");
    obj.textEditor1:setName("textEditor1");

    obj.layout331 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout331:setParent(obj.rectangle1);
    obj.layout331:setLeft(345);
    obj.layout331:setTop(1070);
    obj.layout331:setWidth(21);
    obj.layout331:setHeight(21);
    obj.layout331:setName("layout331");

    obj.imageCheckBox322 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox322:setParent(obj.layout331);
    obj.imageCheckBox322:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox322:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox322:setWidth(21);
    obj.imageCheckBox322:setHeight(21);
    obj.imageCheckBox322:setField("cor1");
    obj.imageCheckBox322:setName("imageCheckBox322");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(670);
    obj.button1:setTop(1070);
    obj.button1:setWidth(21);
    obj.button1:setHeight(21);
    obj.button1:setName("button1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.button1);
    obj.dataLink1:setField("recon1");
    obj.dataLink1:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink1:setName("dataLink1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.button1);
    obj.image2:setAlign("client");
    obj.image2:setField("recon1");
    obj.image2:setName("image2");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setLeft(692);
    obj.button2:setTop(1070);
    obj.button2:setWidth(21);
    obj.button2:setHeight(21);
    obj.button2:setName("button2");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.button2);
    obj.dataLink2:setField("recon2");
    obj.dataLink2:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink2:setName("dataLink2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.button2);
    obj.image3:setAlign("client");
    obj.image3:setField("recon2");
    obj.image3:setName("image3");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle1);
    obj.button3:setLeft(714);
    obj.button3:setTop(1070);
    obj.button3:setWidth(21);
    obj.button3:setHeight(21);
    obj.button3:setName("button3");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.button3);
    obj.dataLink3:setField("recon3");
    obj.dataLink3:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink3:setName("dataLink3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.button3);
    obj.image4:setAlign("client");
    obj.image4:setField("recon3");
    obj.image4:setName("image4");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle1);
    obj.button4:setLeft(736);
    obj.button4:setTop(1070);
    obj.button4:setWidth(21);
    obj.button4:setHeight(21);
    obj.button4:setName("button4");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.button4);
    obj.dataLink4:setField("recon4");
    obj.dataLink4:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink4:setName("dataLink4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.button4);
    obj.image5:setAlign("client");
    obj.image5:setField("recon4");
    obj.image5:setName("image5");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setLeft(758);
    obj.button5:setTop(1070);
    obj.button5:setWidth(21);
    obj.button5:setHeight(21);
    obj.button5:setName("button5");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.button5);
    obj.dataLink5:setField("recon5");
    obj.dataLink5:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink5:setName("dataLink5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.button5);
    obj.image6:setAlign("client");
    obj.image6:setField("recon5");
    obj.image6:setName("image6");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setLeft(780);
    obj.button6:setTop(1070);
    obj.button6:setWidth(21);
    obj.button6:setHeight(21);
    obj.button6:setName("button6");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.button6);
    obj.dataLink6:setField("recon6");
    obj.dataLink6:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink6:setName("dataLink6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.button6);
    obj.image7:setAlign("client");
    obj.image7:setField("recon6");
    obj.image7:setName("image7");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setLeft(802);
    obj.button7:setTop(1070);
    obj.button7:setWidth(21);
    obj.button7:setHeight(21);
    obj.button7:setName("button7");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.button7);
    obj.dataLink7:setField("recon7");
    obj.dataLink7:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink7:setName("dataLink7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.button7);
    obj.image8:setAlign("client");
    obj.image8:setField("recon7");
    obj.image8:setName("image8");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle1);
    obj.button8:setLeft(824);
    obj.button8:setTop(1070);
    obj.button8:setWidth(21);
    obj.button8:setHeight(21);
    obj.button8:setName("button8");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.button8);
    obj.dataLink8:setField("recon8");
    obj.dataLink8:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink8:setName("dataLink8");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.button8);
    obj.image9:setAlign("client");
    obj.image9:setField("recon8");
    obj.image9:setName("image9");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR8 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/ultraball1_on.png", 
									"PokeRPGT/images/rocketultra_on.png"};
					


    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle1);
    obj.button9:setLeft(846);
    obj.button9:setTop(1070);
    obj.button9:setWidth(21);
    obj.button9:setHeight(21);
    obj.button9:setName("button9");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.button9);
    obj.dataLink9:setField("recon9");
    obj.dataLink9:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink9:setName("dataLink9");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.button9);
    obj.image10:setAlign("client");
    obj.image10:setField("recon9");
    obj.image10:setName("image10");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR9 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/ultraball1_on.png", 
									"PokeRPGT/images/rocketultra_on.png"};
					


    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle1);
    obj.button10:setLeft(868);
    obj.button10:setTop(1070);
    obj.button10:setWidth(21);
    obj.button10:setHeight(21);
    obj.button10:setName("button10");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.button10);
    obj.dataLink10:setField("recon10");
    obj.dataLink10:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink10:setName("dataLink10");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.button10);
    obj.image11:setAlign("client");
    obj.image11:setField("recon10");
    obj.image11:setName("image11");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsR10 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/masterball1_on.png", 
									"PokeRPGT/images/rocketmaster_on.png"};
					


    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle1);
    obj.button11:setLeft(670);
    obj.button11:setTop(1148);
    obj.button11:setWidth(21);
    obj.button11:setHeight(21);
    obj.button11:setName("button11");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.button11);
    obj.dataLink11:setField("fama1");
    obj.dataLink11:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink11:setName("dataLink11");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.button11);
    obj.image12:setAlign("client");
    obj.image12:setField("fama1");
    obj.image12:setName("image12");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle1);
    obj.button12:setLeft(692);
    obj.button12:setTop(1148);
    obj.button12:setWidth(21);
    obj.button12:setHeight(21);
    obj.button12:setName("button12");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.button12);
    obj.dataLink12:setField("fama2");
    obj.dataLink12:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink12:setName("dataLink12");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.button12);
    obj.image13:setAlign("client");
    obj.image13:setField("fama2");
    obj.image13:setName("image13");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle1);
    obj.button13:setLeft(714);
    obj.button13:setTop(1148);
    obj.button13:setWidth(21);
    obj.button13:setHeight(21);
    obj.button13:setName("button13");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.button13);
    obj.dataLink13:setField("fama3");
    obj.dataLink13:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink13:setName("dataLink13");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.button13);
    obj.image14:setAlign("client");
    obj.image14:setField("fama3");
    obj.image14:setName("image14");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle1);
    obj.button14:setLeft(736);
    obj.button14:setTop(1148);
    obj.button14:setWidth(21);
    obj.button14:setHeight(21);
    obj.button14:setName("button14");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.button14);
    obj.dataLink14:setField("fama4");
    obj.dataLink14:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink14:setName("dataLink14");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.button14);
    obj.image15:setAlign("client");
    obj.image15:setField("fama4");
    obj.image15:setName("image15");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle1);
    obj.button15:setLeft(758);
    obj.button15:setTop(1148);
    obj.button15:setWidth(21);
    obj.button15:setHeight(21);
    obj.button15:setName("button15");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.button15);
    obj.dataLink15:setField("fama5");
    obj.dataLink15:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink15:setName("dataLink15");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.button15);
    obj.image16:setAlign("client");
    obj.image16:setField("fama5");
    obj.image16:setName("image16");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle1);
    obj.button16:setLeft(780);
    obj.button16:setTop(1148);
    obj.button16:setWidth(21);
    obj.button16:setHeight(21);
    obj.button16:setName("button16");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.button16);
    obj.dataLink16:setField("fama6");
    obj.dataLink16:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink16:setName("dataLink16");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.button16);
    obj.image17:setAlign("client");
    obj.image17:setField("fama6");
    obj.image17:setName("image17");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle1);
    obj.button17:setLeft(802);
    obj.button17:setTop(1148);
    obj.button17:setWidth(21);
    obj.button17:setHeight(21);
    obj.button17:setName("button17");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.button17);
    obj.dataLink17:setField("fama7");
    obj.dataLink17:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink17:setName("dataLink17");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.button17);
    obj.image18:setAlign("client");
    obj.image18:setField("fama7");
    obj.image18:setName("image18");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle1);
    obj.button18:setLeft(824);
    obj.button18:setTop(1148);
    obj.button18:setWidth(21);
    obj.button18:setHeight(21);
    obj.button18:setName("button18");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.button18);
    obj.dataLink18:setField("fama8");
    obj.dataLink18:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink18:setName("dataLink18");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.button18);
    obj.image19:setAlign("client");
    obj.image19:setField("fama8");
    obj.image19:setName("image19");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF8 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/ultraball1_on.png", 
									"PokeRPGT/images/rocketultra_on.png"};
					


    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle1);
    obj.button19:setLeft(846);
    obj.button19:setTop(1148);
    obj.button19:setWidth(21);
    obj.button19:setHeight(21);
    obj.button19:setName("button19");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.button19);
    obj.dataLink19:setField("fama9");
    obj.dataLink19:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink19:setName("dataLink19");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.button19);
    obj.image20:setAlign("client");
    obj.image20:setField("fama9");
    obj.image20:setName("image20");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF9 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/ultraball1_on.png", 
									"PokeRPGT/images/rocketultra_on.png"};
					


    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle1);
    obj.button20:setLeft(868);
    obj.button20:setTop(1148);
    obj.button20:setWidth(21);
    obj.button20:setHeight(21);
    obj.button20:setName("button20");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.button20);
    obj.dataLink20:setField("fama10");
    obj.dataLink20:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink20:setName("dataLink20");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.button20);
    obj.image21:setAlign("client");
    obj.image21:setField("fama10");
    obj.image21:setName("image21");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsF10 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/masterball1_on.png", 
									"PokeRPGT/images/rocketmaster_on.png"};
					


    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.rectangle1);
    obj.button21:setLeft(670);
    obj.button21:setTop(1226);
    obj.button21:setWidth(21);
    obj.button21:setHeight(21);
    obj.button21:setName("button21");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.button21);
    obj.dataLink21:setField("influ1");
    obj.dataLink21:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink21:setName("dataLink21");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.button21);
    obj.image22:setAlign("client");
    obj.image22:setField("influ1");
    obj.image22:setName("image22");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.rectangle1);
    obj.button22:setLeft(692);
    obj.button22:setTop(1226);
    obj.button22:setWidth(21);
    obj.button22:setHeight(21);
    obj.button22:setName("button22");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.button22);
    obj.dataLink22:setField("influ2");
    obj.dataLink22:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink22:setName("dataLink22");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.button22);
    obj.image23:setAlign("client");
    obj.image23:setField("influ2");
    obj.image23:setName("image23");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.rectangle1);
    obj.button23:setLeft(714);
    obj.button23:setTop(1226);
    obj.button23:setWidth(21);
    obj.button23:setHeight(21);
    obj.button23:setName("button23");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.button23);
    obj.dataLink23:setField("influ3");
    obj.dataLink23:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink23:setName("dataLink23");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.button23);
    obj.image24:setAlign("client");
    obj.image24:setField("influ3");
    obj.image24:setName("image24");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.rectangle1);
    obj.button24:setLeft(736);
    obj.button24:setTop(1226);
    obj.button24:setWidth(21);
    obj.button24:setHeight(21);
    obj.button24:setName("button24");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.button24);
    obj.dataLink24:setField("influ4");
    obj.dataLink24:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink24:setName("dataLink24");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.button24);
    obj.image25:setAlign("client");
    obj.image25:setField("influ4");
    obj.image25:setName("image25");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/rocketball_on.png"};
					


    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.rectangle1);
    obj.button25:setLeft(758);
    obj.button25:setTop(1226);
    obj.button25:setWidth(21);
    obj.button25:setHeight(21);
    obj.button25:setName("button25");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.button25);
    obj.dataLink25:setField("influ5");
    obj.dataLink25:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink25:setName("dataLink25");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.button25);
    obj.image26:setAlign("client");
    obj.image26:setField("influ5");
    obj.image26:setName("image26");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.rectangle1);
    obj.button26:setLeft(780);
    obj.button26:setTop(1226);
    obj.button26:setWidth(21);
    obj.button26:setHeight(21);
    obj.button26:setName("button26");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.button26);
    obj.dataLink26:setField("influ6");
    obj.dataLink26:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink26:setName("dataLink26");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.button26);
    obj.image27:setAlign("client");
    obj.image27:setField("influ6");
    obj.image27:setName("image27");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.rectangle1);
    obj.button27:setLeft(802);
    obj.button27:setTop(1226);
    obj.button27:setWidth(21);
    obj.button27:setHeight(21);
    obj.button27:setName("button27");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.button27);
    obj.dataLink27:setField("influ7");
    obj.dataLink27:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink27:setName("dataLink27");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.button27);
    obj.image28:setAlign("client");
    obj.image28:setField("influ7");
    obj.image28:setName("image28");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/greatball1_on.png", 
									"PokeRPGT/images/rocketgreat_on.png"};
					


    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.rectangle1);
    obj.button28:setLeft(824);
    obj.button28:setTop(1226);
    obj.button28:setWidth(21);
    obj.button28:setHeight(21);
    obj.button28:setName("button28");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.button28);
    obj.dataLink28:setField("influ8");
    obj.dataLink28:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink28:setName("dataLink28");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.button28);
    obj.image29:setAlign("client");
    obj.image29:setField("influ8");
    obj.image29:setName("image29");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI8 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/ultraball1_on.png", 
									"PokeRPGT/images/rocketultra_on.png"};
					


    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.rectangle1);
    obj.button29:setLeft(846);
    obj.button29:setTop(1226);
    obj.button29:setWidth(21);
    obj.button29:setHeight(21);
    obj.button29:setName("button29");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.button29);
    obj.dataLink29:setField("influ9");
    obj.dataLink29:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink29:setName("dataLink29");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.button29);
    obj.image30:setAlign("client");
    obj.image30:setField("influ9");
    obj.image30:setName("image30");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI9 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/ultraball1_on.png", 
									"PokeRPGT/images/rocketultra_on.png"};
					


    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.rectangle1);
    obj.button30:setLeft(868);
    obj.button30:setTop(1226);
    obj.button30:setWidth(21);
    obj.button30:setHeight(21);
    obj.button30:setName("button30");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.button30);
    obj.dataLink30:setField("influ10");
    obj.dataLink30:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink30:setName("dataLink30");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.button30);
    obj.image31:setAlign("client");
    obj.image31:setField("influ10");
    obj.image31:setName("image31");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsI10 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/masterball1_on.png", 
									"PokeRPGT/images/rocketmaster_on.png"};
					


    obj.layout332 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout332:setParent(obj.rectangle1);
    obj.layout332:setLeft(367);
    obj.layout332:setTop(1070);
    obj.layout332:setWidth(21);
    obj.layout332:setHeight(21);
    obj.layout332:setName("layout332");

    obj.imageCheckBox323 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox323:setParent(obj.layout332);
    obj.imageCheckBox323:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox323:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox323:setWidth(21);
    obj.imageCheckBox323:setHeight(21);
    obj.imageCheckBox323:setField("cor2");
    obj.imageCheckBox323:setName("imageCheckBox323");

    obj.layout333 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout333:setParent(obj.rectangle1);
    obj.layout333:setLeft(389);
    obj.layout333:setTop(1070);
    obj.layout333:setWidth(21);
    obj.layout333:setHeight(21);
    obj.layout333:setName("layout333");

    obj.imageCheckBox324 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox324:setParent(obj.layout333);
    obj.imageCheckBox324:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox324:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox324:setWidth(21);
    obj.imageCheckBox324:setHeight(21);
    obj.imageCheckBox324:setField("cor3");
    obj.imageCheckBox324:setName("imageCheckBox324");

    obj.layout334 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout334:setParent(obj.rectangle1);
    obj.layout334:setLeft(411);
    obj.layout334:setTop(1070);
    obj.layout334:setWidth(21);
    obj.layout334:setHeight(21);
    obj.layout334:setName("layout334");

    obj.imageCheckBox325 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox325:setParent(obj.layout334);
    obj.imageCheckBox325:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox325:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox325:setWidth(21);
    obj.imageCheckBox325:setHeight(21);
    obj.imageCheckBox325:setField("cor4");
    obj.imageCheckBox325:setName("imageCheckBox325");

    obj.layout335 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout335:setParent(obj.rectangle1);
    obj.layout335:setLeft(433);
    obj.layout335:setTop(1070);
    obj.layout335:setWidth(21);
    obj.layout335:setHeight(21);
    obj.layout335:setName("layout335");

    obj.imageCheckBox326 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox326:setParent(obj.layout335);
    obj.imageCheckBox326:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox326:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox326:setWidth(21);
    obj.imageCheckBox326:setHeight(21);
    obj.imageCheckBox326:setField("cor5");
    obj.imageCheckBox326:setName("imageCheckBox326");

    obj.layout336 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout336:setParent(obj.rectangle1);
    obj.layout336:setLeft(455);
    obj.layout336:setTop(1070);
    obj.layout336:setWidth(21);
    obj.layout336:setHeight(21);
    obj.layout336:setName("layout336");

    obj.imageCheckBox327 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox327:setParent(obj.layout336);
    obj.imageCheckBox327:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox327:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox327:setWidth(21);
    obj.imageCheckBox327:setHeight(21);
    obj.imageCheckBox327:setField("cor6");
    obj.imageCheckBox327:setName("imageCheckBox327");

    obj.layout337 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout337:setParent(obj.rectangle1);
    obj.layout337:setLeft(477);
    obj.layout337:setTop(1070);
    obj.layout337:setWidth(21);
    obj.layout337:setHeight(21);
    obj.layout337:setName("layout337");

    obj.imageCheckBox328 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox328:setParent(obj.layout337);
    obj.imageCheckBox328:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox328:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox328:setWidth(21);
    obj.imageCheckBox328:setHeight(21);
    obj.imageCheckBox328:setField("cor7");
    obj.imageCheckBox328:setName("imageCheckBox328");

    obj.layout338 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout338:setParent(obj.rectangle1);
    obj.layout338:setLeft(499);
    obj.layout338:setTop(1070);
    obj.layout338:setWidth(21);
    obj.layout338:setHeight(21);
    obj.layout338:setName("layout338");

    obj.imageCheckBox329 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox329:setParent(obj.layout338);
    obj.imageCheckBox329:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox329:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox329:setWidth(21);
    obj.imageCheckBox329:setHeight(21);
    obj.imageCheckBox329:setField("cor8");
    obj.imageCheckBox329:setName("imageCheckBox329");

    obj.layout339 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout339:setParent(obj.rectangle1);
    obj.layout339:setLeft(521);
    obj.layout339:setTop(1070);
    obj.layout339:setWidth(21);
    obj.layout339:setHeight(21);
    obj.layout339:setName("layout339");

    obj.imageCheckBox330 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox330:setParent(obj.layout339);
    obj.imageCheckBox330:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox330:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox330:setWidth(21);
    obj.imageCheckBox330:setHeight(21);
    obj.imageCheckBox330:setField("cor9");
    obj.imageCheckBox330:setName("imageCheckBox330");

    obj.layout340 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout340:setParent(obj.rectangle1);
    obj.layout340:setLeft(543);
    obj.layout340:setTop(1070);
    obj.layout340:setWidth(21);
    obj.layout340:setHeight(21);
    obj.layout340:setName("layout340");

    obj.imageCheckBox331 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox331:setParent(obj.layout340);
    obj.imageCheckBox331:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox331:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox331:setWidth(21);
    obj.imageCheckBox331:setHeight(21);
    obj.imageCheckBox331:setField("cor10");
    obj.imageCheckBox331:setName("imageCheckBox331");

    obj.layout341 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout341:setParent(obj.rectangle1);
    obj.layout341:setLeft(565);
    obj.layout341:setTop(1070);
    obj.layout341:setWidth(21);
    obj.layout341:setHeight(21);
    obj.layout341:setName("layout341");

    obj.imageCheckBox332 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox332:setParent(obj.layout341);
    obj.imageCheckBox332:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox332:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox332:setWidth(21);
    obj.imageCheckBox332:setHeight(21);
    obj.imageCheckBox332:setField("cor11");
    obj.imageCheckBox332:setName("imageCheckBox332");

    obj.layout342 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout342:setParent(obj.rectangle1);
    obj.layout342:setLeft(587);
    obj.layout342:setTop(1070);
    obj.layout342:setWidth(21);
    obj.layout342:setHeight(21);
    obj.layout342:setName("layout342");

    obj.imageCheckBox333 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox333:setParent(obj.layout342);
    obj.imageCheckBox333:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox333:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox333:setWidth(21);
    obj.imageCheckBox333:setHeight(21);
    obj.imageCheckBox333:setField("cor12");
    obj.imageCheckBox333:setName("imageCheckBox333");

    obj.layout343 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout343:setParent(obj.rectangle1);
    obj.layout343:setLeft(345);
    obj.layout343:setTop(1148);
    obj.layout343:setWidth(21);
    obj.layout343:setHeight(21);
    obj.layout343:setName("layout343");

    obj.imageCheckBox334 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox334:setParent(obj.layout343);
    obj.imageCheckBox334:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox334:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox334:setWidth(21);
    obj.imageCheckBox334:setHeight(21);
    obj.imageCheckBox334:setField("ins1");
    obj.imageCheckBox334:setName("imageCheckBox334");

    obj.layout344 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout344:setParent(obj.rectangle1);
    obj.layout344:setLeft(367);
    obj.layout344:setTop(1148);
    obj.layout344:setWidth(21);
    obj.layout344:setHeight(21);
    obj.layout344:setName("layout344");

    obj.imageCheckBox335 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox335:setParent(obj.layout344);
    obj.imageCheckBox335:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox335:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox335:setWidth(21);
    obj.imageCheckBox335:setHeight(21);
    obj.imageCheckBox335:setField("ins2");
    obj.imageCheckBox335:setName("imageCheckBox335");

    obj.layout345 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout345:setParent(obj.rectangle1);
    obj.layout345:setLeft(389);
    obj.layout345:setTop(1148);
    obj.layout345:setWidth(21);
    obj.layout345:setHeight(21);
    obj.layout345:setName("layout345");

    obj.imageCheckBox336 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox336:setParent(obj.layout345);
    obj.imageCheckBox336:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox336:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox336:setWidth(21);
    obj.imageCheckBox336:setHeight(21);
    obj.imageCheckBox336:setField("ins3");
    obj.imageCheckBox336:setName("imageCheckBox336");

    obj.layout346 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout346:setParent(obj.rectangle1);
    obj.layout346:setLeft(411);
    obj.layout346:setTop(1148);
    obj.layout346:setWidth(21);
    obj.layout346:setHeight(21);
    obj.layout346:setName("layout346");

    obj.imageCheckBox337 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox337:setParent(obj.layout346);
    obj.imageCheckBox337:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox337:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox337:setWidth(21);
    obj.imageCheckBox337:setHeight(21);
    obj.imageCheckBox337:setField("ins4");
    obj.imageCheckBox337:setName("imageCheckBox337");

    obj.layout347 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout347:setParent(obj.rectangle1);
    obj.layout347:setLeft(433);
    obj.layout347:setTop(1148);
    obj.layout347:setWidth(21);
    obj.layout347:setHeight(21);
    obj.layout347:setName("layout347");

    obj.imageCheckBox338 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox338:setParent(obj.layout347);
    obj.imageCheckBox338:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox338:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox338:setWidth(21);
    obj.imageCheckBox338:setHeight(21);
    obj.imageCheckBox338:setField("ins5");
    obj.imageCheckBox338:setName("imageCheckBox338");

    obj.layout348 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout348:setParent(obj.rectangle1);
    obj.layout348:setLeft(455);
    obj.layout348:setTop(1148);
    obj.layout348:setWidth(21);
    obj.layout348:setHeight(21);
    obj.layout348:setName("layout348");

    obj.imageCheckBox339 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox339:setParent(obj.layout348);
    obj.imageCheckBox339:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox339:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox339:setWidth(21);
    obj.imageCheckBox339:setHeight(21);
    obj.imageCheckBox339:setField("ins6");
    obj.imageCheckBox339:setName("imageCheckBox339");

    obj.layout349 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout349:setParent(obj.rectangle1);
    obj.layout349:setLeft(477);
    obj.layout349:setTop(1148);
    obj.layout349:setWidth(21);
    obj.layout349:setHeight(21);
    obj.layout349:setName("layout349");

    obj.imageCheckBox340 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox340:setParent(obj.layout349);
    obj.imageCheckBox340:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox340:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox340:setWidth(21);
    obj.imageCheckBox340:setHeight(21);
    obj.imageCheckBox340:setField("ins7");
    obj.imageCheckBox340:setName("imageCheckBox340");

    obj.layout350 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout350:setParent(obj.rectangle1);
    obj.layout350:setLeft(499);
    obj.layout350:setTop(1148);
    obj.layout350:setWidth(21);
    obj.layout350:setHeight(21);
    obj.layout350:setName("layout350");

    obj.imageCheckBox341 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox341:setParent(obj.layout350);
    obj.imageCheckBox341:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox341:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox341:setWidth(21);
    obj.imageCheckBox341:setHeight(21);
    obj.imageCheckBox341:setField("ins8");
    obj.imageCheckBox341:setName("imageCheckBox341");

    obj.layout351 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout351:setParent(obj.rectangle1);
    obj.layout351:setLeft(521);
    obj.layout351:setTop(1148);
    obj.layout351:setWidth(21);
    obj.layout351:setHeight(21);
    obj.layout351:setName("layout351");

    obj.imageCheckBox342 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox342:setParent(obj.layout351);
    obj.imageCheckBox342:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox342:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox342:setWidth(21);
    obj.imageCheckBox342:setHeight(21);
    obj.imageCheckBox342:setField("ins9");
    obj.imageCheckBox342:setName("imageCheckBox342");

    obj.layout352 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout352:setParent(obj.rectangle1);
    obj.layout352:setLeft(543);
    obj.layout352:setTop(1148);
    obj.layout352:setWidth(21);
    obj.layout352:setHeight(21);
    obj.layout352:setName("layout352");

    obj.imageCheckBox343 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox343:setParent(obj.layout352);
    obj.imageCheckBox343:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox343:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox343:setWidth(21);
    obj.imageCheckBox343:setHeight(21);
    obj.imageCheckBox343:setField("ins10");
    obj.imageCheckBox343:setName("imageCheckBox343");

    obj.layout353 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout353:setParent(obj.rectangle1);
    obj.layout353:setLeft(565);
    obj.layout353:setTop(1148);
    obj.layout353:setWidth(21);
    obj.layout353:setHeight(21);
    obj.layout353:setName("layout353");

    obj.imageCheckBox344 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox344:setParent(obj.layout353);
    obj.imageCheckBox344:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox344:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox344:setWidth(21);
    obj.imageCheckBox344:setHeight(21);
    obj.imageCheckBox344:setField("ins11");
    obj.imageCheckBox344:setName("imageCheckBox344");

    obj.layout354 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout354:setParent(obj.rectangle1);
    obj.layout354:setLeft(587);
    obj.layout354:setTop(1148);
    obj.layout354:setWidth(21);
    obj.layout354:setHeight(21);
    obj.layout354:setName("layout354");

    obj.imageCheckBox345 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox345:setParent(obj.layout354);
    obj.imageCheckBox345:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox345:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox345:setWidth(21);
    obj.imageCheckBox345:setHeight(21);
    obj.imageCheckBox345:setField("ins12");
    obj.imageCheckBox345:setName("imageCheckBox345");

    obj.layout355 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout355:setParent(obj.rectangle1);
    obj.layout355:setLeft(345);
    obj.layout355:setTop(1226);
    obj.layout355:setWidth(21);
    obj.layout355:setHeight(21);
    obj.layout355:setName("layout355");

    obj.imageCheckBox346 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox346:setParent(obj.layout355);
    obj.imageCheckBox346:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox346:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox346:setWidth(21);
    obj.imageCheckBox346:setHeight(21);
    obj.imageCheckBox346:setField("fdv1");
    obj.imageCheckBox346:setName("imageCheckBox346");

    obj.layout356 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout356:setParent(obj.rectangle1);
    obj.layout356:setLeft(367);
    obj.layout356:setTop(1226);
    obj.layout356:setWidth(21);
    obj.layout356:setHeight(21);
    obj.layout356:setName("layout356");

    obj.imageCheckBox347 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox347:setParent(obj.layout356);
    obj.imageCheckBox347:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox347:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox347:setWidth(21);
    obj.imageCheckBox347:setHeight(21);
    obj.imageCheckBox347:setField("fdv2");
    obj.imageCheckBox347:setName("imageCheckBox347");

    obj.layout357 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout357:setParent(obj.rectangle1);
    obj.layout357:setLeft(389);
    obj.layout357:setTop(1226);
    obj.layout357:setWidth(21);
    obj.layout357:setHeight(21);
    obj.layout357:setName("layout357");

    obj.imageCheckBox348 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox348:setParent(obj.layout357);
    obj.imageCheckBox348:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox348:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox348:setWidth(21);
    obj.imageCheckBox348:setHeight(21);
    obj.imageCheckBox348:setField("fdv3");
    obj.imageCheckBox348:setName("imageCheckBox348");

    obj.layout358 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout358:setParent(obj.rectangle1);
    obj.layout358:setLeft(411);
    obj.layout358:setTop(1226);
    obj.layout358:setWidth(21);
    obj.layout358:setHeight(21);
    obj.layout358:setName("layout358");

    obj.imageCheckBox349 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox349:setParent(obj.layout358);
    obj.imageCheckBox349:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox349:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox349:setWidth(21);
    obj.imageCheckBox349:setHeight(21);
    obj.imageCheckBox349:setField("fdv4");
    obj.imageCheckBox349:setName("imageCheckBox349");

    obj.layout359 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout359:setParent(obj.rectangle1);
    obj.layout359:setLeft(433);
    obj.layout359:setTop(1226);
    obj.layout359:setWidth(21);
    obj.layout359:setHeight(21);
    obj.layout359:setName("layout359");

    obj.imageCheckBox350 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox350:setParent(obj.layout359);
    obj.imageCheckBox350:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox350:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox350:setWidth(21);
    obj.imageCheckBox350:setHeight(21);
    obj.imageCheckBox350:setField("fdv5");
    obj.imageCheckBox350:setName("imageCheckBox350");

    obj.layout360 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout360:setParent(obj.rectangle1);
    obj.layout360:setLeft(455);
    obj.layout360:setTop(1226);
    obj.layout360:setWidth(21);
    obj.layout360:setHeight(21);
    obj.layout360:setName("layout360");

    obj.imageCheckBox351 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox351:setParent(obj.layout360);
    obj.imageCheckBox351:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox351:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox351:setWidth(21);
    obj.imageCheckBox351:setHeight(21);
    obj.imageCheckBox351:setField("fdv6");
    obj.imageCheckBox351:setName("imageCheckBox351");

    obj.layout361 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout361:setParent(obj.rectangle1);
    obj.layout361:setLeft(477);
    obj.layout361:setTop(1226);
    obj.layout361:setWidth(21);
    obj.layout361:setHeight(21);
    obj.layout361:setName("layout361");

    obj.imageCheckBox352 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox352:setParent(obj.layout361);
    obj.imageCheckBox352:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox352:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox352:setWidth(21);
    obj.imageCheckBox352:setHeight(21);
    obj.imageCheckBox352:setField("fdv7");
    obj.imageCheckBox352:setName("imageCheckBox352");

    obj.layout362 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout362:setParent(obj.rectangle1);
    obj.layout362:setLeft(499);
    obj.layout362:setTop(1226);
    obj.layout362:setWidth(21);
    obj.layout362:setHeight(21);
    obj.layout362:setName("layout362");

    obj.imageCheckBox353 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox353:setParent(obj.layout362);
    obj.imageCheckBox353:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox353:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox353:setWidth(21);
    obj.imageCheckBox353:setHeight(21);
    obj.imageCheckBox353:setField("fdv8");
    obj.imageCheckBox353:setName("imageCheckBox353");

    obj.layout363 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout363:setParent(obj.rectangle1);
    obj.layout363:setLeft(521);
    obj.layout363:setTop(1226);
    obj.layout363:setWidth(21);
    obj.layout363:setHeight(21);
    obj.layout363:setName("layout363");

    obj.imageCheckBox354 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox354:setParent(obj.layout363);
    obj.imageCheckBox354:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox354:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox354:setWidth(21);
    obj.imageCheckBox354:setHeight(21);
    obj.imageCheckBox354:setField("fdv9");
    obj.imageCheckBox354:setName("imageCheckBox354");

    obj.layout364 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout364:setParent(obj.rectangle1);
    obj.layout364:setLeft(543);
    obj.layout364:setTop(1226);
    obj.layout364:setWidth(21);
    obj.layout364:setHeight(21);
    obj.layout364:setName("layout364");

    obj.imageCheckBox355 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox355:setParent(obj.layout364);
    obj.imageCheckBox355:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox355:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox355:setWidth(21);
    obj.imageCheckBox355:setHeight(21);
    obj.imageCheckBox355:setField("fdv10");
    obj.imageCheckBox355:setName("imageCheckBox355");

    obj.layout365 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout365:setParent(obj.rectangle1);
    obj.layout365:setLeft(565);
    obj.layout365:setTop(1226);
    obj.layout365:setWidth(21);
    obj.layout365:setHeight(21);
    obj.layout365:setName("layout365");

    obj.imageCheckBox356 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox356:setParent(obj.layout365);
    obj.imageCheckBox356:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox356:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox356:setWidth(21);
    obj.imageCheckBox356:setHeight(21);
    obj.imageCheckBox356:setField("fdv11");
    obj.imageCheckBox356:setName("imageCheckBox356");

    obj.layout366 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout366:setParent(obj.rectangle1);
    obj.layout366:setLeft(587);
    obj.layout366:setTop(1226);
    obj.layout366:setWidth(21);
    obj.layout366:setHeight(21);
    obj.layout366:setName("layout366");

    obj.imageCheckBox357 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox357:setParent(obj.layout366);
    obj.imageCheckBox357:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox357:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox357:setWidth(21);
    obj.imageCheckBox357:setHeight(21);
    obj.imageCheckBox357:setField("fdv12");
    obj.imageCheckBox357:setName("imageCheckBox357");

    obj.frmTeste = GUI.fromHandle(_obj_newObject("form"));
    obj.frmTeste:setParent(obj);
    obj.frmTeste:setName("frmTeste");
    obj.frmTeste:setHeight(0);
    obj.frmTeste:setTheme("light");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.frmTeste);
    obj.dataLink31:setFields({'vit12', 'vit11', 'vit10', 'vit9', 'vit8', 'vit7', 'vit6', 'vit5', 'vit4', 'vit3', 'vit2', 'vit1'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.frmTeste);
    obj.dataLink32:setFields({'acd12', 'acd11', 'acd10', 'acd9', 'acd8', 'acd7', 'acd6', 'acd5', 'acd4', 'acd3', 'acd2', 'acd1'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.frmTeste);
    obj.dataLink33:setFields({'for9', 'for8', 'for7', 'for6', 'for5', 'for4', 'for3', 'for2', 'for1'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.frmTeste);
    obj.dataLink34:setFields({'per9', 'per8', 'per7', 'per6', 'per5', 'per4', 'per3', 'per2', 'per1'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmTeste);
    obj.dataLink35:setFields({'car9', 'car8', 'car7', 'car6', 'car5', 'car4', 'car3', 'car2', 'car1'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.frmTeste);
    obj.dataLink36:setFields({'des9', 'des8', 'des7', 'des6', 'des5', 'des4', 'des3', 'des2', 'des1'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.frmTeste);
    obj.dataLink37:setFields({'int9', 'int8', 'int7', 'int6', 'int5', 'int4', 'int3', 'int2', 'int1'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.frmTeste);
    obj.dataLink38:setFields({'man9', 'man8', 'man7', 'man6', 'man5', 'man4', 'man3', 'man2', 'man1'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.frmTeste);
    obj.dataLink39:setFields({'vig9', 'vig8', 'vig7', 'vig6', 'vig5', 'vig4', 'vig3', 'vig2', 'vig1'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.frmTeste);
    obj.dataLink40:setFields({'rac9', 'rac8', 'rac7', 'rac6', 'rac5', 'rac4', 'rac3', 'rac2', 'rac1'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.frmTeste);
    obj.dataLink41:setFields({'ap9', 'ap8', 'ap7', 'ap6', 'ap5', 'ap4', 'ap3', 'ap2', 'ap1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.frmTeste);
    obj.dataLink42:setFields({'pront9', 'pront8', 'pront7', 'pront6', 'pront5', 'pront4', 'pront3', 'pront2', 'pront1'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.frmTeste);
    obj.dataLink43:setFields({'acad9', 'acad8', 'acad7', 'acad6', 'acad5', 'acad4', 'acad3', 'acad2', 'acad1'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.frmTeste);
    obj.dataLink44:setFields({'poke9', 'poke8', 'poke7', 'poke6', 'poke5', 'poke4', 'poke3', 'poke2', 'poke1'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.frmTeste);
    obj.dataLink45:setFields({'esp9', 'esp8', 'esp7', 'esp6', 'esp5', 'esp4', 'esp3', 'esp2', 'esp1'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.frmTeste);
    obj.dataLink46:setFields({'comp9', 'comp8', 'comp7', 'comp6', 'comp5', 'comp4', 'comp3', 'comp2', 'comp1'});
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.frmTeste);
    obj.dataLink47:setFields({'ofc9', 'ofc8', 'ofc7', 'ofc6', 'ofc5', 'ofc4', 'ofc3', 'ofc2', 'ofc1'});
    obj.dataLink47:setName("dataLink47");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.frmTeste);
    obj.dataLink48:setFields({'bri9', 'bri8', 'bri7', 'bri6', 'bri5', 'bri4', 'bri3', 'bri2', 'bri1'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.frmTeste);
    obj.dataLink49:setFields({'habit9', 'habit8', 'habit7', 'habit6', 'habit5', 'habit4', 'habit3', 'habit2', 'habit1'});
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.frmTeste);
    obj.dataLink50:setFields({'cond9', 'cond8', 'cond7', 'cond6', 'cond5', 'cond4', 'cond3', 'cond2', 'cond1'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.frmTeste);
    obj.dataLink51:setFields({'esq9', 'esq8', 'esq7', 'esq6', 'esq5', 'esq4', 'esq3', 'esq2', 'esq1'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.frmTeste);
    obj.dataLink52:setFields({'inves9', 'inves8', 'inves7', 'inves6', 'inves5', 'inves4', 'inves3', 'inves2', 'inves1'});
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.frmTeste);
    obj.dataLink53:setFields({'et9', 'et8', 'et7', 'et6', 'et5', 'et4', 'et3', 'et2', 'et1'});
    obj.dataLink53:setName("dataLink53");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.frmTeste);
    obj.dataLink54:setFields({'emp9', 'emp8', 'emp7', 'emp6', 'emp5', 'emp4', 'emp3', 'emp2', 'emp1'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.frmTeste);
    obj.dataLink55:setFields({'act9', 'act8', 'act7', 'act6', 'act5', 'act4', 'act3', 'act2', 'act1'});
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.frmTeste);
    obj.dataLink56:setFields({'dir9', 'dir8', 'dir7', 'dir6', 'dir5', 'dir4', 'dir3', 'dir2', 'dir1'});
    obj.dataLink56:setName("dataLink56");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.frmTeste);
    obj.dataLink57:setFields({'expre9', 'expre8', 'expre7', 'expre6', 'expre5', 'expre4', 'expre3', 'expre2', 'expre1'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.frmTeste);
    obj.dataLink58:setFields({'ling9', 'ling8', 'ling7', 'ling6', 'ling5', 'ling4', 'ling3', 'ling2', 'ling1'});
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.frmTeste);
    obj.dataLink59:setFields({'seg9', 'seg8', 'seg7', 'seg6', 'seg5', 'seg4', 'seg3', 'seg2', 'seg1'});
    obj.dataLink59:setName("dataLink59");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.frmTeste);
    obj.dataLink60:setFields({'intim9', 'intim8', 'intim7', 'intim6', 'intim5', 'intim4', 'intim3', 'intim2', 'intim1'});
    obj.dataLink60:setName("dataLink60");

    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj.frmTeste);
    obj.dataLink61:setFields({'med9', 'med8', 'med7', 'med6', 'med5', 'med4', 'med3', 'med2', 'med1'});
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj.frmTeste);
    obj.dataLink62:setFields({'furt9', 'furt8', 'furt7', 'furt6', 'furt5', 'furt4', 'furt3', 'furt2', 'furt1'});
    obj.dataLink62:setName("dataLink62");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj.frmTeste);
    obj.dataLink63:setFields({'lid9', 'lid8', 'lid7', 'lid6', 'lid5', 'lid4', 'lid3', 'lid2', 'lid1'});
    obj.dataLink63:setName("dataLink63");

    obj.dataLink64 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink64:setParent(obj.frmTeste);
    obj.dataLink64:setFields({'cie9', 'cie8', 'cie7', 'cie6', 'cie5', 'cie4', 'cie3', 'cie2', 'cie1'});
    obj.dataLink64:setName("dataLink64");

    obj.dataLink65 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink65:setParent(obj.frmTeste);
    obj.dataLink65:setFields({'sob9', 'sob8', 'sob7', 'sob6', 'sob5', 'sob4', 'sob3', 'sob2', 'sob1'});
    obj.dataLink65:setName("dataLink65");

    obj.dataLink66 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink66:setParent(obj.frmTeste);
    obj.dataLink66:setFields({'manh9', 'manh8', 'manh7', 'manh6', 'manh5', 'manh4', 'manh3', 'manh2', 'manh1'});
    obj.dataLink66:setName("dataLink66");

    obj.dataLink67 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink67:setParent(obj.frmTeste);
    obj.dataLink67:setFields({'cul9', 'cul8', 'cul7', 'cul6', 'cul5', 'cul4', 'cul3', 'cul2', 'cul1'});
    obj.dataLink67:setName("dataLink67");

    obj.dataLink68 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink68:setParent(obj.frmTeste);
    obj.dataLink68:setFields({'cac9', 'cac8', 'cac7', 'cac6', 'cac5', 'cac4', 'cac3', 'cac2', 'cac1'});
    obj.dataLink68:setName("dataLink68");

    obj.dataLink69 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink69:setParent(obj.frmTeste);
    obj.dataLink69:setFields({'cor12', 'cor11', 'cor10', 'cor9', 'cor8', 'cor7', 'cor6', 'cor5', 'cor4', 'cor3', 'cor2', 'cor1'});
    obj.dataLink69:setName("dataLink69");

    obj.dataLink70 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink70:setParent(obj.frmTeste);
    obj.dataLink70:setFields({'ins12', 'ins11', 'ins10', 'ins9', 'ins8', 'ins7', 'ins6', 'ins5', 'ins4', 'ins3', 'ins2', 'ins1'});
    obj.dataLink70:setName("dataLink70");

    obj.dataLink71 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink71:setParent(obj.frmTeste);
    obj.dataLink71:setFields({'fdv12', 'fdv11', 'fdv10', 'fdv9', 'fdv8', 'fdv7', 'fdv6', 'fdv5', 'fdv4', 'fdv3', 'fdv2', 'fdv1'});
    obj.dataLink71:setName("dataLink71");

    obj.dataLink72 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink72:setParent(obj.frmTeste);
    obj.dataLink72:setFields({'recon10', 'recon9', 'recon8', 'recon7', 'recon6', 'recon5', 'recon4', 'recon3', 'recon2', 'recon1'});
    obj.dataLink72:setName("dataLink72");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR1 == nil then
            						sheet.imageCounterR1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR1 = (sheet.imageCounterR1 + 1) % #picsR1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon1 = picsR1[sheet.imageCounterR1 +1];
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR2 == nil then
            						sheet.imageCounterR2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR2 = (sheet.imageCounterR2 + 1) % #picsR2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon2 = picsR2[sheet.imageCounterR2 +1];
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR3 == nil then
            						sheet.imageCounterR3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR3 = (sheet.imageCounterR3 + 1) % #picsR3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon3 = picsR3[sheet.imageCounterR3 +1];
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR4 == nil then
            						sheet.imageCounterR4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR4 = (sheet.imageCounterR4 + 1) % #picsR4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon4 = picsR4[sheet.imageCounterR4 +1];
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR5 == nil then
            						sheet.imageCounterR5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR5 = (sheet.imageCounterR5 + 1) % #picsR5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon5 = picsR5[sheet.imageCounterR5 +1];
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR6 == nil then
            						sheet.imageCounterR6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR6 = (sheet.imageCounterR6 + 1) % #picsR6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon6 = picsR6[sheet.imageCounterR6 +1];
        end, obj);

    obj._e_event6 = obj.button7:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR7 == nil then
            						sheet.imageCounterR7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR7 = (sheet.imageCounterR7 + 1) % #picsR7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon7 = picsR7[sheet.imageCounterR7 +1];
        end, obj);

    obj._e_event7 = obj.button8:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR8 == nil then
            						sheet.imageCounterR8 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR8 = (sheet.imageCounterR8 + 1) % #picsR8;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon8 = picsR8[sheet.imageCounterR8 +1];
        end, obj);

    obj._e_event8 = obj.button9:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR9 == nil then
            						sheet.imageCounterR9 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR9 = (sheet.imageCounterR9 + 1) % #picsR9;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon9 = picsR9[sheet.imageCounterR9 +1];
        end, obj);

    obj._e_event9 = obj.button10:addEventListener("onClick",
        function (_)
            if sheet.imageCounterR10 == nil then
            						sheet.imageCounterR10 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterR10 = (sheet.imageCounterR10 + 1) % #picsR10;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.recon10 = picsR10[sheet.imageCounterR10 +1];
        end, obj);

    obj._e_event10 = obj.button11:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF1 == nil then
            						sheet.imageCounterF1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF1 = (sheet.imageCounterF1 + 1) % #picsF1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama1 = picsF1[sheet.imageCounterF1 +1];
        end, obj);

    obj._e_event11 = obj.button12:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF2 == nil then
            						sheet.imageCounterF2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF2 = (sheet.imageCounterF2 + 1) % #picsF2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama2 = picsF2[sheet.imageCounterF2 +1];
        end, obj);

    obj._e_event12 = obj.button13:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF3 == nil then
            						sheet.imageCounterF3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF3 = (sheet.imageCounterF3 + 1) % #picsF3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama3 = picsF3[sheet.imageCounterF3 +1];
        end, obj);

    obj._e_event13 = obj.button14:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF4 == nil then
            						sheet.imageCounterF4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF4 = (sheet.imageCounterF4 + 1) % #picsF4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama4 = picsF4[sheet.imageCounterF4 +1];
        end, obj);

    obj._e_event14 = obj.button15:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF5 == nil then
            						sheet.imageCounterF5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF5 = (sheet.imageCounterF5 + 1) % #picsF5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama5 = picsF5[sheet.imageCounterF5 +1];
        end, obj);

    obj._e_event15 = obj.button16:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF6 == nil then
            						sheet.imageCounterF6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF6 = (sheet.imageCounterF6 + 1) % #picsF6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama6 = picsF6[sheet.imageCounterF6 +1];
        end, obj);

    obj._e_event16 = obj.button17:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF7 == nil then
            						sheet.imageCounterF7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF7 = (sheet.imageCounterF7 + 1) % #picsF7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama7 = picsF7[sheet.imageCounterF7 +1];
        end, obj);

    obj._e_event17 = obj.button18:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF8 == nil then
            						sheet.imageCounterF8 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF8 = (sheet.imageCounterF8 + 1) % #picsF8;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama8 = picsF8[sheet.imageCounterF8 +1];
        end, obj);

    obj._e_event18 = obj.button19:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF9 == nil then
            						sheet.imageCounterF9 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF9 = (sheet.imageCounterF9 + 1) % #picsF9;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama9 = picsF9[sheet.imageCounterF9 +1];
        end, obj);

    obj._e_event19 = obj.button20:addEventListener("onClick",
        function (_)
            if sheet.imageCounterF10 == nil then
            						sheet.imageCounterF10 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterF10 = (sheet.imageCounterF10 + 1) % #picsF10;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.fama10 = picsF10[sheet.imageCounterF10 +1];
        end, obj);

    obj._e_event20 = obj.button21:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI1 == nil then
            						sheet.imageCounterI1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI1 = (sheet.imageCounterI1 + 1) % #picsI1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ1 = picsI1[sheet.imageCounterI1 +1];
        end, obj);

    obj._e_event21 = obj.button22:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI2 == nil then
            						sheet.imageCounterI2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI2 = (sheet.imageCounterI2 + 1) % #picsI2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ2 = picsI2[sheet.imageCounterI2 +1];
        end, obj);

    obj._e_event22 = obj.button23:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI3 == nil then
            						sheet.imageCounterI3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI3 = (sheet.imageCounterI3 + 1) % #picsI3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ3 = picsI3[sheet.imageCounterI3 +1];
        end, obj);

    obj._e_event23 = obj.button24:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI4 == nil then
            						sheet.imageCounterI4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI4 = (sheet.imageCounterI4 + 1) % #picsI4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ4 = picsI4[sheet.imageCounterI4 +1];
        end, obj);

    obj._e_event24 = obj.button25:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI5 == nil then
            						sheet.imageCounterI5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI5 = (sheet.imageCounterI5 + 1) % #picsI5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ5 = picsI5[sheet.imageCounterI5 +1];
        end, obj);

    obj._e_event25 = obj.button26:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI6 == nil then
            						sheet.imageCounterI6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI6 = (sheet.imageCounterI6 + 1) % #picsI6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ6 = picsI6[sheet.imageCounterI6 +1];
        end, obj);

    obj._e_event26 = obj.button27:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI7 == nil then
            						sheet.imageCounterI7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI7 = (sheet.imageCounterI7 + 1) % #picsI7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ7 = picsI7[sheet.imageCounterI7 +1];
        end, obj);

    obj._e_event27 = obj.button28:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI8 == nil then
            						sheet.imageCounterI8 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI8 = (sheet.imageCounterI8 + 1) % #picsI8;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ8 = picsI8[sheet.imageCounterI8 +1];
        end, obj);

    obj._e_event28 = obj.button29:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI9 == nil then
            						sheet.imageCounterI9 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI9 = (sheet.imageCounterI9 + 1) % #picsI9;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ9 = picsI9[sheet.imageCounterI9 +1];
        end, obj);

    obj._e_event29 = obj.button30:addEventListener("onClick",
        function (_)
            if sheet.imageCounterI10 == nil then
            						sheet.imageCounterI10 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterI10 = (sheet.imageCounterI10 + 1) % #picsI10;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.influ10 = picsI10[sheet.imageCounterI10 +1];
        end, obj);

    obj._e_event30 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vit12 == true then
            		sheet.vit11 = true;
            		sheet.vit10 = true;
            		sheet.vit9 = true;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit11 == true then
            		sheet.vit12 = false;
            		sheet.vit10 = true;
            		sheet.vit9 = true;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit10 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit9 = true;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit9 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit8 = true;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit8 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit7 = true;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit7 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit6 = true;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit6 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit5 = true;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit5 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit4 = true;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit4 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit3 = true;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit3 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit2 = true;
            		sheet.vit1 = true;
            	elseif sheet.vit2 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit3 = false;
            		sheet.vit1 = true;	
            	elseif sheet.vit1 == true then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit3 = false;
            		sheet.vit2 = false;
            	elseif sheet.vit1 == false then
            		sheet.vit12 = false;
            		sheet.vit11 = false;
            		sheet.vit10 = false;
            		sheet.vit9 = false;
            		sheet.vit8 = false;
            		sheet.vit7 = false;
            		sheet.vit6 = false;
            		sheet.vit5 = false;
            		sheet.vit4 = false;
            		sheet.vit3 = false;
            		sheet.vit2 = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.acd12 == true then
            		sheet.acd11 = true;
            		sheet.acd10 = true;
            		sheet.acd9 = true;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd11 == true then
            		sheet.acd12 = false;
            		sheet.acd10 = true;
            		sheet.acd9 = true;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd10 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd9 = true;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd9 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd8 = true;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd8 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd7 = true;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd7 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd6 = true;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd6 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd5 = true;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd5 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd4 = true;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd4 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd3 = true;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd3 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd2 = true;
            		sheet.acd1 = true;
            	elseif sheet.acd2 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd3 = false;
            		sheet.acd1 = true;	
            	elseif sheet.acd1 == true then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd3 = false;
            		sheet.acd2 = false;
            	elseif sheet.acd1 == false then
            		sheet.acd12 = false;
            		sheet.acd11 = false;
            		sheet.acd10 = false;
            		sheet.acd9 = false;
            		sheet.acd8 = false;
            		sheet.acd7 = false;
            		sheet.acd6 = false;
            		sheet.acd5 = false;
            		sheet.acd4 = false;
            		sheet.acd3 = false;
            		sheet.acd2 = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.for9 == true then
            		sheet.for8 = true;
            		sheet.for7 = true;
            		sheet.for6 = true;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for8 == true then
            		sheet.for9 = false;
            		sheet.for7 = true;
            		sheet.for6 = true;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for7 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for6 = true;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for6 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for5 = true;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for5 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for4 = true;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for4 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for3 = true;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for3 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for2 = true;
            		sheet.for1 = true;
            	elseif sheet.for2 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for3 = false;
            		sheet.for1 = true;	
            	elseif sheet.for1 == true then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for3 = false;
            		sheet.for2 = false;
            	elseif sheet.for1 == false then
            		sheet.for9 = false;
            		sheet.for8 = false;
            		sheet.for7 = false;
            		sheet.for6 = false;
            		sheet.for5 = false;
            		sheet.for4 = false;
            		sheet.for3 = false;
            		sheet.for2 = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.per9 == true then
            		sheet.per8 = true;
            		sheet.per7 = true;
            		sheet.per6 = true;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per8 == true then
            		sheet.per9 = false;
            		sheet.per7 = true;
            		sheet.per6 = true;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per7 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per6 = true;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per6 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per5 = true;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per5 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per4 = true;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per4 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per3 = true;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per3 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per2 = true;
            		sheet.per1 = true;
            	elseif sheet.per2 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per3 = false;
            		sheet.per1 = true;	
            	elseif sheet.per1 == true then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per3 = false;
            		sheet.per2 = false;
            	elseif sheet.per1 == false then
            		sheet.per9 = false;
            		sheet.per8 = false;
            		sheet.per7 = false;
            		sheet.per6 = false;
            		sheet.per5 = false;
            		sheet.per4 = false;
            		sheet.per3 = false;
            		sheet.per2 = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.car9 == true then
            		sheet.car8 = true;
            		sheet.car7 = true;
            		sheet.car6 = true;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car8 == true then
            		sheet.car9 = false;
            		sheet.car7 = true;
            		sheet.car6 = true;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car7 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car6 = true;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car6 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car5 = true;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car5 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car4 = true;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car4 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car3 = true;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car3 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car2 = true;
            		sheet.car1 = true;
            	elseif sheet.car2 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car3 = false;
            		sheet.car1 = true;	
            	elseif sheet.car1 == true then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car3 = false;
            		sheet.car2 = false;
            	elseif sheet.car1 == false then
            		sheet.car9 = false;
            		sheet.car8 = false;
            		sheet.car7 = false;
            		sheet.car6 = false;
            		sheet.car5 = false;
            		sheet.car4 = false;
            		sheet.car3 = false;
            		sheet.car2 = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.des9 == true then
            		sheet.des8 = true;
            		sheet.des7 = true;
            		sheet.des6 = true;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des8 == true then
            		sheet.des9 = false;
            		sheet.des7 = true;
            		sheet.des6 = true;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des7 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des6 = true;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des6 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des5 = true;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des5 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des4 = true;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des4 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des3 = true;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des3 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des2 = true;
            		sheet.des1 = true;
            	elseif sheet.des2 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des3 = false;
            		sheet.des1 = true;	
            	elseif sheet.des1 == true then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des3 = false;
            		sheet.des2 = false;
            	elseif sheet.des1 == false then
            		sheet.des9 = false;
            		sheet.des8 = false;
            		sheet.des7 = false;
            		sheet.des6 = false;
            		sheet.des5 = false;
            		sheet.des4 = false;
            		sheet.des3 = false;
            		sheet.des2 = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.int9 == true then
            		sheet.int8 = true;
            		sheet.int7 = true;
            		sheet.int6 = true;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int8 == true then
            		sheet.int9 = false;
            		sheet.int7 = true;
            		sheet.int6 = true;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int7 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int6 = true;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int6 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int5 = true;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int5 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int4 = true;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int4 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int3 = true;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int3 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int2 = true;
            		sheet.int1 = true;
            	elseif sheet.int2 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int3 = false;
            		sheet.int1 = true;	
            	elseif sheet.int1 == true then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int3 = false;
            		sheet.int2 = false;
            	elseif sheet.int1 == false then
            		sheet.int9 = false;
            		sheet.int8 = false;
            		sheet.int7 = false;
            		sheet.int6 = false;
            		sheet.int5 = false;
            		sheet.int4 = false;
            		sheet.int3 = false;
            		sheet.int2 = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.man9 == true then
            		sheet.man8 = true;
            		sheet.man7 = true;
            		sheet.man6 = true;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man8 == true then
            		sheet.man9 = false;
            		sheet.man7 = true;
            		sheet.man6 = true;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man7 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man6 = true;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man6 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man5 = true;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man5 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man4 = true;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man4 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man3 = true;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man3 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man2 = true;
            		sheet.man1 = true;
            	elseif sheet.man2 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man3 = false;
            		sheet.man1 = true;	
            	elseif sheet.man1 == true then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man3 = false;
            		sheet.man2 = false;
            	elseif sheet.man1 == false then
            		sheet.man9 = false;
            		sheet.man8 = false;
            		sheet.man7 = false;
            		sheet.man6 = false;
            		sheet.man5 = false;
            		sheet.man4 = false;
            		sheet.man3 = false;
            		sheet.man2 = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vig9 == true then
            		sheet.vig8 = true;
            		sheet.vig7 = true;
            		sheet.vig6 = true;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig8 == true then
            		sheet.vig9 = false;
            		sheet.vig7 = true;
            		sheet.vig6 = true;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig7 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig6 = true;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig6 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig5 = true;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig5 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig4 = true;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig4 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig3 = true;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig3 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig2 = true;
            		sheet.vig1 = true;
            	elseif sheet.vig2 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig3 = false;
            		sheet.vig1 = true;	
            	elseif sheet.vig1 == true then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig3 = false;
            		sheet.vig2 = false;
            	elseif sheet.vig1 == false then
            		sheet.vig9 = false;
            		sheet.vig8 = false;
            		sheet.vig7 = false;
            		sheet.vig6 = false;
            		sheet.vig5 = false;
            		sheet.vig4 = false;
            		sheet.vig3 = false;
            		sheet.vig2 = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.rac9 == true then
            		sheet.rac8 = true;
            		sheet.rac7 = true;
            		sheet.rac6 = true;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac8 == true then
            		sheet.rac9 = false;
            		sheet.rac7 = true;
            		sheet.rac6 = true;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac7 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac6 = true;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac6 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac5 = true;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac5 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac4 = true;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac4 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac3 = true;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac3 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac2 = true;
            		sheet.rac1 = true;
            	elseif sheet.rac2 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac3 = false;
            		sheet.rac1 = true;	
            	elseif sheet.rac1 == true then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac3 = false;
            		sheet.rac2 = false;
            	elseif sheet.rac1 == false then
            		sheet.rac9 = false;
            		sheet.rac8 = false;
            		sheet.rac7 = false;
            		sheet.rac6 = false;
            		sheet.rac5 = false;
            		sheet.rac4 = false;
            		sheet.rac3 = false;
            		sheet.rac2 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ap9 == true then
            		sheet.ap8 = true;
            		sheet.ap7 = true;
            		sheet.ap6 = true;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap8 == true then
            		sheet.ap9 = false;
            		sheet.ap7 = true;
            		sheet.ap6 = true;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap7 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap6 = true;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap6 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap5 = true;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap5 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap4 = true;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap4 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap3 = true;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap3 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap2 = true;
            		sheet.ap1 = true;
            	elseif sheet.ap2 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap3 = false;
            		sheet.ap1 = true;	
            	elseif sheet.ap1 == true then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap3 = false;
            		sheet.ap2 = false;
            	elseif sheet.ap1 == false then
            		sheet.ap9 = false;
            		sheet.ap8 = false;
            		sheet.ap7 = false;
            		sheet.ap6 = false;
            		sheet.ap5 = false;
            		sheet.ap4 = false;
            		sheet.ap3 = false;
            		sheet.ap2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.pront9 == true then
            		sheet.pront8 = true;
            		sheet.pront7 = true;
            		sheet.pront6 = true;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront8 == true then
            		sheet.pront9 = false;
            		sheet.pront7 = true;
            		sheet.pront6 = true;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront7 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront6 = true;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront6 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront5 = true;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront5 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront4 = true;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront4 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront3 = true;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront3 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront2 = true;
            		sheet.pront1 = true;
            	elseif sheet.pront2 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront3 = false;
            		sheet.pront1 = true;	
            	elseif sheet.pront1 == true then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront3 = false;
            		sheet.pront2 = false;
            	elseif sheet.pront1 == false then
            		sheet.pront9 = false;
            		sheet.pront8 = false;
            		sheet.pront7 = false;
            		sheet.pront6 = false;
            		sheet.pront5 = false;
            		sheet.pront4 = false;
            		sheet.pront3 = false;
            		sheet.pront2 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.acad9 == true then
            		sheet.acad8 = true;
            		sheet.acad7 = true;
            		sheet.acad6 = true;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad8 == true then
            		sheet.acad9 = false;
            		sheet.acad7 = true;
            		sheet.acad6 = true;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad7 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad6 = true;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad6 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad5 = true;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad5 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad4 = true;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad4 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad3 = true;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad3 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad2 = true;
            		sheet.acad1 = true;
            	elseif sheet.acad2 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad3 = false;
            		sheet.acad1 = true;	
            	elseif sheet.acad1 == true then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad3 = false;
            		sheet.acad2 = false;
            	elseif sheet.acad1 == false then
            		sheet.acad9 = false;
            		sheet.acad8 = false;
            		sheet.acad7 = false;
            		sheet.acad6 = false;
            		sheet.acad5 = false;
            		sheet.acad4 = false;
            		sheet.acad3 = false;
            		sheet.acad2 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.poke9 == true then
            		sheet.poke8 = true;
            		sheet.poke7 = true;
            		sheet.poke6 = true;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke8 == true then
            		sheet.poke9 = false;
            		sheet.poke7 = true;
            		sheet.poke6 = true;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke7 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke6 = true;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke6 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke5 = true;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke5 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke4 = true;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke4 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke3 = true;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke3 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke2 = true;
            		sheet.poke1 = true;
            	elseif sheet.poke2 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke3 = false;
            		sheet.poke1 = true;	
            	elseif sheet.poke1 == true then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke3 = false;
            		sheet.poke2 = false;
            	elseif sheet.poke1 == false then
            		sheet.poke9 = false;
            		sheet.poke8 = false;
            		sheet.poke7 = false;
            		sheet.poke6 = false;
            		sheet.poke5 = false;
            		sheet.poke4 = false;
            		sheet.poke3 = false;
            		sheet.poke2 = false;
            	end;
        end, obj);

    obj._e_event44 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esp9 == true then
            		sheet.esp8 = true;
            		sheet.esp7 = true;
            		sheet.esp6 = true;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp8 == true then
            		sheet.esp9 = false;
            		sheet.esp7 = true;
            		sheet.esp6 = true;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp7 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp6 = true;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp6 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp5 = true;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp5 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp4 = true;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp4 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp3 = true;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp3 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp2 = true;
            		sheet.esp1 = true;
            	elseif sheet.esp2 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp3 = false;
            		sheet.esp1 = true;	
            	elseif sheet.esp1 == true then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp3 = false;
            		sheet.esp2 = false;
            	elseif sheet.esp1 == false then
            		sheet.esp9 = false;
            		sheet.esp8 = false;
            		sheet.esp7 = false;
            		sheet.esp6 = false;
            		sheet.esp5 = false;
            		sheet.esp4 = false;
            		sheet.esp3 = false;
            		sheet.esp2 = false;
            	end;
        end, obj);

    obj._e_event45 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.comp9 == true then
            		sheet.comp8 = true;
            		sheet.comp7 = true;
            		sheet.comp6 = true;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp8 == true then
            		sheet.comp9 = false;
            		sheet.comp7 = true;
            		sheet.comp6 = true;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp7 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp6 = true;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp6 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp5 = true;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp5 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp4 = true;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp4 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp3 = true;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp3 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp2 = true;
            		sheet.comp1 = true;
            	elseif sheet.comp2 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp3 = false;
            		sheet.comp1 = true;	
            	elseif sheet.comp1 == true then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp3 = false;
            		sheet.comp2 = false;
            	elseif sheet.comp1 == false then
            		sheet.comp9 = false;
            		sheet.comp8 = false;
            		sheet.comp7 = false;
            		sheet.comp6 = false;
            		sheet.comp5 = false;
            		sheet.comp4 = false;
            		sheet.comp3 = false;
            		sheet.comp2 = false;
            	end;
        end, obj);

    obj._e_event46 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ofc9 == true then
            		sheet.ofc8 = true;
            		sheet.ofc7 = true;
            		sheet.ofc6 = true;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc8 == true then
            		sheet.ofc9 = false;
            		sheet.ofc7 = true;
            		sheet.ofc6 = true;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc7 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc6 = true;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc6 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc5 = true;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc5 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc4 = true;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc4 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc3 = true;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc3 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc2 = true;
            		sheet.ofc1 = true;
            	elseif sheet.ofc2 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc3 = false;
            		sheet.ofc1 = true;	
            	elseif sheet.ofc1 == true then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc3 = false;
            		sheet.ofc2 = false;
            	elseif sheet.ofc1 == false then
            		sheet.ofc9 = false;
            		sheet.ofc8 = false;
            		sheet.ofc7 = false;
            		sheet.ofc6 = false;
            		sheet.ofc5 = false;
            		sheet.ofc4 = false;
            		sheet.ofc3 = false;
            		sheet.ofc2 = false;
            	end;
        end, obj);

    obj._e_event47 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.bri9 == true then
            		sheet.bri8 = true;
            		sheet.bri7 = true;
            		sheet.bri6 = true;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri8 == true then
            		sheet.bri9 = false;
            		sheet.bri7 = true;
            		sheet.bri6 = true;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri7 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri6 = true;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri6 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri5 = true;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri5 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri4 = true;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri4 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri3 = true;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri3 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri2 = true;
            		sheet.bri1 = true;
            	elseif sheet.bri2 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri3 = false;
            		sheet.bri1 = true;	
            	elseif sheet.bri1 == true then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri3 = false;
            		sheet.bri2 = false;
            	elseif sheet.bri1 == false then
            		sheet.bri9 = false;
            		sheet.bri8 = false;
            		sheet.bri7 = false;
            		sheet.bri6 = false;
            		sheet.bri5 = false;
            		sheet.bri4 = false;
            		sheet.bri3 = false;
            		sheet.bri2 = false;
            	end;
        end, obj);

    obj._e_event48 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.habit9 == true then
            		sheet.habit8 = true;
            		sheet.habit7 = true;
            		sheet.habit6 = true;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit8 == true then
            		sheet.habit9 = false;
            		sheet.habit7 = true;
            		sheet.habit6 = true;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit7 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit6 = true;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit6 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit5 = true;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit5 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit4 = true;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit4 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit3 = true;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit3 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit2 = true;
            		sheet.habit1 = true;
            	elseif sheet.habit2 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit3 = false;
            		sheet.habit1 = true;	
            	elseif sheet.habit1 == true then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit3 = false;
            		sheet.habit2 = false;
            	elseif sheet.habit1 == false then
            		sheet.habit9 = false;
            		sheet.habit8 = false;
            		sheet.habit7 = false;
            		sheet.habit6 = false;
            		sheet.habit5 = false;
            		sheet.habit4 = false;
            		sheet.habit3 = false;
            		sheet.habit2 = false;
            	end;
        end, obj);

    obj._e_event49 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cond9 == true then
            		sheet.cond8 = true;
            		sheet.cond7 = true;
            		sheet.cond6 = true;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond8 == true then
            		sheet.cond9 = false;
            		sheet.cond7 = true;
            		sheet.cond6 = true;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond7 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond6 = true;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond6 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond5 = true;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond5 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond4 = true;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond4 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond3 = true;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond3 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond2 = true;
            		sheet.cond1 = true;
            	elseif sheet.cond2 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond3 = false;
            		sheet.cond1 = true;	
            	elseif sheet.cond1 == true then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond3 = false;
            		sheet.cond2 = false;
            	elseif sheet.cond1 == false then
            		sheet.cond9 = false;
            		sheet.cond8 = false;
            		sheet.cond7 = false;
            		sheet.cond6 = false;
            		sheet.cond5 = false;
            		sheet.cond4 = false;
            		sheet.cond3 = false;
            		sheet.cond2 = false;
            	end;
        end, obj);

    obj._e_event50 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esq9 == true then
            		sheet.esq8 = true;
            		sheet.esq7 = true;
            		sheet.esq6 = true;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq8 == true then
            		sheet.esq9 = false;
            		sheet.esq7 = true;
            		sheet.esq6 = true;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq7 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq6 = true;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq6 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq5 = true;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq5 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq4 = true;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq4 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq3 = true;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq3 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq2 = true;
            		sheet.esq1 = true;
            	elseif sheet.esq2 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq3 = false;
            		sheet.esq1 = true;	
            	elseif sheet.esq1 == true then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq3 = false;
            		sheet.esq2 = false;
            	elseif sheet.esq1 == false then
            		sheet.esq9 = false;
            		sheet.esq8 = false;
            		sheet.esq7 = false;
            		sheet.esq6 = false;
            		sheet.esq5 = false;
            		sheet.esq4 = false;
            		sheet.esq3 = false;
            		sheet.esq2 = false;
            	end;
        end, obj);

    obj._e_event51 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.inves9 == true then
            		sheet.inves8 = true;
            		sheet.inves7 = true;
            		sheet.inves6 = true;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves8 == true then
            		sheet.inves9 = false;
            		sheet.inves7 = true;
            		sheet.inves6 = true;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves7 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves6 = true;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves6 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves5 = true;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves5 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves4 = true;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves4 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves3 = true;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves3 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves2 = true;
            		sheet.inves1 = true;
            	elseif sheet.inves2 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves3 = false;
            		sheet.inves1 = true;	
            	elseif sheet.inves1 == true then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves3 = false;
            		sheet.inves2 = false;
            	elseif sheet.inves1 == false then
            		sheet.inves9 = false;
            		sheet.inves8 = false;
            		sheet.inves7 = false;
            		sheet.inves6 = false;
            		sheet.inves5 = false;
            		sheet.inves4 = false;
            		sheet.inves3 = false;
            		sheet.inves2 = false;
            	end;
        end, obj);

    obj._e_event52 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.et9 == true then
            		sheet.et8 = true;
            		sheet.et7 = true;
            		sheet.et6 = true;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et8 == true then
            		sheet.et9 = false;
            		sheet.et7 = true;
            		sheet.et6 = true;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et7 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et6 = true;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et6 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et5 = true;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et5 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et4 = true;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et4 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et3 = true;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et3 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et2 = true;
            		sheet.et1 = true;
            	elseif sheet.et2 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et3 = false;
            		sheet.et1 = true;	
            	elseif sheet.et1 == true then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et3 = false;
            		sheet.et2 = false;
            	elseif sheet.et1 == false then
            		sheet.et9 = false;
            		sheet.et8 = false;
            		sheet.et7 = false;
            		sheet.et6 = false;
            		sheet.et5 = false;
            		sheet.et4 = false;
            		sheet.et3 = false;
            		sheet.et2 = false;
            	end;
        end, obj);

    obj._e_event53 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.emp9 == true then
            		sheet.emp8 = true;
            		sheet.emp7 = true;
            		sheet.emp6 = true;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp8 == true then
            		sheet.emp9 = false;
            		sheet.emp7 = true;
            		sheet.emp6 = true;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp7 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp6 = true;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp6 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp5 = true;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp5 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp4 = true;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp4 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp3 = true;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp3 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp2 = true;
            		sheet.emp1 = true;
            	elseif sheet.emp2 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp3 = false;
            		sheet.emp1 = true;	
            	elseif sheet.emp1 == true then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp3 = false;
            		sheet.emp2 = false;
            	elseif sheet.emp1 == false then
            		sheet.emp9 = false;
            		sheet.emp8 = false;
            		sheet.emp7 = false;
            		sheet.emp6 = false;
            		sheet.emp5 = false;
            		sheet.emp4 = false;
            		sheet.emp3 = false;
            		sheet.emp2 = false;
            	end;
        end, obj);

    obj._e_event54 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.act9 == true then
            		sheet.act8 = true;
            		sheet.act7 = true;
            		sheet.act6 = true;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act8 == true then
            		sheet.act9 = false;
            		sheet.act7 = true;
            		sheet.act6 = true;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act7 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act6 = true;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act6 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act5 = true;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act5 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act4 = true;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act4 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act3 = true;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act3 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act2 = true;
            		sheet.act1 = true;
            	elseif sheet.act2 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act3 = false;
            		sheet.act1 = true;	
            	elseif sheet.act1 == true then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act3 = false;
            		sheet.act2 = false;
            	elseif sheet.act1 == false then
            		sheet.act9 = false;
            		sheet.act8 = false;
            		sheet.act7 = false;
            		sheet.act6 = false;
            		sheet.act5 = false;
            		sheet.act4 = false;
            		sheet.act3 = false;
            		sheet.act2 = false;
            	end;
        end, obj);

    obj._e_event55 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.dir9 == true then
            		sheet.dir8 = true;
            		sheet.dir7 = true;
            		sheet.dir6 = true;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir8 == true then
            		sheet.dir9 = false;
            		sheet.dir7 = true;
            		sheet.dir6 = true;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir7 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir6 = true;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir6 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir5 = true;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir5 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir4 = true;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir4 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir3 = true;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir3 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir2 = true;
            		sheet.dir1 = true;
            	elseif sheet.dir2 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir3 = false;
            		sheet.dir1 = true;	
            	elseif sheet.dir1 == true then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir3 = false;
            		sheet.dir2 = false;
            	elseif sheet.dir1 == false then
            		sheet.dir9 = false;
            		sheet.dir8 = false;
            		sheet.dir7 = false;
            		sheet.dir6 = false;
            		sheet.dir5 = false;
            		sheet.dir4 = false;
            		sheet.dir3 = false;
            		sheet.dir2 = false;
            	end;
        end, obj);

    obj._e_event56 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.expre9 == true then
            		sheet.expre8 = true;
            		sheet.expre7 = true;
            		sheet.expre6 = true;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre8 == true then
            		sheet.expre9 = false;
            		sheet.expre7 = true;
            		sheet.expre6 = true;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre7 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre6 = true;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre6 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre5 = true;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre5 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre4 = true;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre4 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre3 = true;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre3 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre2 = true;
            		sheet.expre1 = true;
            	elseif sheet.expre2 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre3 = false;
            		sheet.expre1 = true;	
            	elseif sheet.expre1 == true then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre3 = false;
            		sheet.expre2 = false;
            	elseif sheet.expre1 == false then
            		sheet.expre9 = false;
            		sheet.expre8 = false;
            		sheet.expre7 = false;
            		sheet.expre6 = false;
            		sheet.expre5 = false;
            		sheet.expre4 = false;
            		sheet.expre3 = false;
            		sheet.expre2 = false;
            	end;
        end, obj);

    obj._e_event57 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ling9 == true then
            		sheet.ling8 = true;
            		sheet.ling7 = true;
            		sheet.ling6 = true;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling8 == true then
            		sheet.ling9 = false;
            		sheet.ling7 = true;
            		sheet.ling6 = true;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling7 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling6 = true;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling6 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling5 = true;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling5 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling4 = true;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling4 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling3 = true;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling3 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling2 = true;
            		sheet.ling1 = true;
            	elseif sheet.ling2 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling3 = false;
            		sheet.ling1 = true;	
            	elseif sheet.ling1 == true then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling3 = false;
            		sheet.ling2 = false;
            	elseif sheet.ling1 == false then
            		sheet.ling9 = false;
            		sheet.ling8 = false;
            		sheet.ling7 = false;
            		sheet.ling6 = false;
            		sheet.ling5 = false;
            		sheet.ling4 = false;
            		sheet.ling3 = false;
            		sheet.ling2 = false;
            	end;
        end, obj);

    obj._e_event58 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.seg9 == true then
            		sheet.seg8 = true;
            		sheet.seg7 = true;
            		sheet.seg6 = true;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg8 == true then
            		sheet.seg9 = false;
            		sheet.seg7 = true;
            		sheet.seg6 = true;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg7 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg6 = true;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg6 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg5 = true;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg5 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg4 = true;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg4 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg3 = true;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg3 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg2 = true;
            		sheet.seg1 = true;
            	elseif sheet.seg2 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg3 = false;
            		sheet.seg1 = true;	
            	elseif sheet.seg1 == true then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg3 = false;
            		sheet.seg2 = false;
            	elseif sheet.seg1 == false then
            		sheet.seg9 = false;
            		sheet.seg8 = false;
            		sheet.seg7 = false;
            		sheet.seg6 = false;
            		sheet.seg5 = false;
            		sheet.seg4 = false;
            		sheet.seg3 = false;
            		sheet.seg2 = false;
            	end;
        end, obj);

    obj._e_event59 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.intim9 == true then
            		sheet.intim8 = true;
            		sheet.intim7 = true;
            		sheet.intim6 = true;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim8 == true then
            		sheet.intim9 = false;
            		sheet.intim7 = true;
            		sheet.intim6 = true;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim7 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim6 = true;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim6 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim5 = true;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim5 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim4 = true;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim4 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim3 = true;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim3 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim2 = true;
            		sheet.intim1 = true;
            	elseif sheet.intim2 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim3 = false;
            		sheet.intim1 = true;	
            	elseif sheet.intim1 == true then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim3 = false;
            		sheet.intim2 = false;
            	elseif sheet.intim1 == false then
            		sheet.intim9 = false;
            		sheet.intim8 = false;
            		sheet.intim7 = false;
            		sheet.intim6 = false;
            		sheet.intim5 = false;
            		sheet.intim4 = false;
            		sheet.intim3 = false;
            		sheet.intim2 = false;
            	end;
        end, obj);

    obj._e_event60 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.med9 == true then
            		sheet.med8 = true;
            		sheet.med7 = true;
            		sheet.med6 = true;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med8 == true then
            		sheet.med9 = false;
            		sheet.med7 = true;
            		sheet.med6 = true;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med7 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med6 = true;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med6 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med5 = true;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med5 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med4 = true;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med4 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med3 = true;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med3 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med2 = true;
            		sheet.med1 = true;
            	elseif sheet.med2 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med3 = false;
            		sheet.med1 = true;	
            	elseif sheet.med1 == true then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med3 = false;
            		sheet.med2 = false;
            	elseif sheet.med1 == false then
            		sheet.med9 = false;
            		sheet.med8 = false;
            		sheet.med7 = false;
            		sheet.med6 = false;
            		sheet.med5 = false;
            		sheet.med4 = false;
            		sheet.med3 = false;
            		sheet.med2 = false;
            	end;
        end, obj);

    obj._e_event61 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.furt9 == true then
            		sheet.furt8 = true;
            		sheet.furt7 = true;
            		sheet.furt6 = true;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt8 == true then
            		sheet.furt9 = false;
            		sheet.furt7 = true;
            		sheet.furt6 = true;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt7 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt6 = true;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt6 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt5 = true;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt5 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt4 = true;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt4 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt3 = true;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt3 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt2 = true;
            		sheet.furt1 = true;
            	elseif sheet.furt2 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt3 = false;
            		sheet.furt1 = true;	
            	elseif sheet.furt1 == true then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt3 = false;
            		sheet.furt2 = false;
            	elseif sheet.furt1 == false then
            		sheet.furt9 = false;
            		sheet.furt8 = false;
            		sheet.furt7 = false;
            		sheet.furt6 = false;
            		sheet.furt5 = false;
            		sheet.furt4 = false;
            		sheet.furt3 = false;
            		sheet.furt2 = false;
            	end;
        end, obj);

    obj._e_event62 = obj.dataLink63:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.lid9 == true then
            		sheet.lid8 = true;
            		sheet.lid7 = true;
            		sheet.lid6 = true;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid8 == true then
            		sheet.lid9 = false;
            		sheet.lid7 = true;
            		sheet.lid6 = true;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid7 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid6 = true;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid6 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid5 = true;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid5 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid4 = true;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid4 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid3 = true;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid3 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid2 = true;
            		sheet.lid1 = true;
            	elseif sheet.lid2 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid3 = false;
            		sheet.lid1 = true;	
            	elseif sheet.lid1 == true then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid3 = false;
            		sheet.lid2 = false;
            	elseif sheet.lid1 == false then
            		sheet.lid9 = false;
            		sheet.lid8 = false;
            		sheet.lid7 = false;
            		sheet.lid6 = false;
            		sheet.lid5 = false;
            		sheet.lid4 = false;
            		sheet.lid3 = false;
            		sheet.lid2 = false;
            	end;
        end, obj);

    obj._e_event63 = obj.dataLink64:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cie9 == true then
            		sheet.cie8 = true;
            		sheet.cie7 = true;
            		sheet.cie6 = true;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie8 == true then
            		sheet.cie9 = false;
            		sheet.cie7 = true;
            		sheet.cie6 = true;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie7 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie6 = true;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie6 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie5 = true;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie5 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie4 = true;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie4 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie3 = true;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie3 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie2 = true;
            		sheet.cie1 = true;
            	elseif sheet.cie2 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie3 = false;
            		sheet.cie1 = true;	
            	elseif sheet.cie1 == true then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie3 = false;
            		sheet.cie2 = false;
            	elseif sheet.cie1 == false then
            		sheet.cie9 = false;
            		sheet.cie8 = false;
            		sheet.cie7 = false;
            		sheet.cie6 = false;
            		sheet.cie5 = false;
            		sheet.cie4 = false;
            		sheet.cie3 = false;
            		sheet.cie2 = false;
            	end;
        end, obj);

    obj._e_event64 = obj.dataLink65:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.sob9 == true then
            		sheet.sob8 = true;
            		sheet.sob7 = true;
            		sheet.sob6 = true;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob8 == true then
            		sheet.sob9 = false;
            		sheet.sob7 = true;
            		sheet.sob6 = true;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob7 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob6 = true;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob6 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob5 = true;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob5 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob4 = true;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob4 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob3 = true;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob3 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob2 = true;
            		sheet.sob1 = true;
            	elseif sheet.sob2 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob3 = false;
            		sheet.sob1 = true;	
            	elseif sheet.sob1 == true then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob3 = false;
            		sheet.sob2 = false;
            	elseif sheet.sob1 == false then
            		sheet.sob9 = false;
            		sheet.sob8 = false;
            		sheet.sob7 = false;
            		sheet.sob6 = false;
            		sheet.sob5 = false;
            		sheet.sob4 = false;
            		sheet.sob3 = false;
            		sheet.sob2 = false;
            	end;
        end, obj);

    obj._e_event65 = obj.dataLink66:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.manh9 == true then
            		sheet.manh8 = true;
            		sheet.manh7 = true;
            		sheet.manh6 = true;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh8 == true then
            		sheet.manh9 = false;
            		sheet.manh7 = true;
            		sheet.manh6 = true;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh7 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh6 = true;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh6 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh5 = true;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh5 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh4 = true;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh4 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh3 = true;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh3 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh2 = true;
            		sheet.manh1 = true;
            	elseif sheet.manh2 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh3 = false;
            		sheet.manh1 = true;	
            	elseif sheet.manh1 == true then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh3 = false;
            		sheet.manh2 = false;
            	elseif sheet.manh1 == false then
            		sheet.manh9 = false;
            		sheet.manh8 = false;
            		sheet.manh7 = false;
            		sheet.manh6 = false;
            		sheet.manh5 = false;
            		sheet.manh4 = false;
            		sheet.manh3 = false;
            		sheet.manh2 = false;
            	end;
        end, obj);

    obj._e_event66 = obj.dataLink67:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cul9 == true then
            		sheet.cul8 = true;
            		sheet.cul7 = true;
            		sheet.cul6 = true;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul8 == true then
            		sheet.cul9 = false;
            		sheet.cul7 = true;
            		sheet.cul6 = true;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul7 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul6 = true;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul6 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul5 = true;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul5 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul4 = true;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul4 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul3 = true;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul3 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul2 = true;
            		sheet.cul1 = true;
            	elseif sheet.cul2 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul3 = false;
            		sheet.cul1 = true;	
            	elseif sheet.cul1 == true then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul3 = false;
            		sheet.cul2 = false;
            	elseif sheet.cul1 == false then
            		sheet.cul9 = false;
            		sheet.cul8 = false;
            		sheet.cul7 = false;
            		sheet.cul6 = false;
            		sheet.cul5 = false;
            		sheet.cul4 = false;
            		sheet.cul3 = false;
            		sheet.cul2 = false;
            	end;
        end, obj);

    obj._e_event67 = obj.dataLink68:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cac9 == true then
            		sheet.cac8 = true;
            		sheet.cac7 = true;
            		sheet.cac6 = true;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac8 == true then
            		sheet.cac9 = false;
            		sheet.cac7 = true;
            		sheet.cac6 = true;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac7 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac6 = true;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac6 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac5 = true;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac5 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac4 = true;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac4 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac3 = true;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac3 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac2 = true;
            		sheet.cac1 = true;
            	elseif sheet.cac2 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac3 = false;
            		sheet.cac1 = true;	
            	elseif sheet.cac1 == true then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac3 = false;
            		sheet.cac2 = false;
            	elseif sheet.cac1 == false then
            		sheet.cac9 = false;
            		sheet.cac8 = false;
            		sheet.cac7 = false;
            		sheet.cac6 = false;
            		sheet.cac5 = false;
            		sheet.cac4 = false;
            		sheet.cac3 = false;
            		sheet.cac2 = false;
            	end;
        end, obj);

    obj._e_event68 = obj.dataLink69:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cor12 == true then
            		sheet.cor11 = true;
            		sheet.cor10 = true;
            		sheet.cor9 = true;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor11 == true then
            		sheet.cor12 = false;
            		sheet.cor10 = true;
            		sheet.cor9 = true;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor10 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor9 = true;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor9 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor8 = true;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor8 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor7 = true;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor7 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor6 = true;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor6 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor5 = true;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor5 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor4 = true;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor4 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor3 = true;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor3 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor2 = true;
            		sheet.cor1 = true;
            	elseif sheet.cor2 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor3 = false;
            		sheet.cor1 = true;	
            	elseif sheet.cor1 == true then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor3 = false;
            		sheet.cor2 = false;
            	elseif sheet.cor1 == false then
            		sheet.cor12 = false;
            		sheet.cor11 = false;
            		sheet.cor10 = false;
            		sheet.cor9 = false;
            		sheet.cor8 = false;
            		sheet.cor7 = false;
            		sheet.cor6 = false;
            		sheet.cor5 = false;
            		sheet.cor4 = false;
            		sheet.cor3 = false;
            		sheet.cor2 = false;
            	end;
        end, obj);

    obj._e_event69 = obj.dataLink70:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ins12 == true then
            		sheet.ins11 = true;
            		sheet.ins10 = true;
            		sheet.ins9 = true;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins11 == true then
            		sheet.ins12 = false;
            		sheet.ins10 = true;
            		sheet.ins9 = true;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins10 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins9 = true;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins9 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins8 = true;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins8 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins7 = true;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins7 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins6 = true;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins6 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins5 = true;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins5 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins4 = true;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins4 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins3 = true;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins3 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins2 = true;
            		sheet.ins1 = true;
            	elseif sheet.ins2 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins3 = false;
            		sheet.ins1 = true;	
            	elseif sheet.ins1 == true then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins3 = false;
            		sheet.ins2 = false;
            	elseif sheet.ins1 == false then
            		sheet.ins12 = false;
            		sheet.ins11 = false;
            		sheet.ins10 = false;
            		sheet.ins9 = false;
            		sheet.ins8 = false;
            		sheet.ins7 = false;
            		sheet.ins6 = false;
            		sheet.ins5 = false;
            		sheet.ins4 = false;
            		sheet.ins3 = false;
            		sheet.ins2 = false;
            	end;
        end, obj);

    obj._e_event70 = obj.dataLink71:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.fdv12 == true then
            		sheet.fdv11 = true;
            		sheet.fdv10 = true;
            		sheet.fdv9 = true;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv11 == true then
            		sheet.fdv12 = false;
            		sheet.fdv10 = true;
            		sheet.fdv9 = true;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv10 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv9 = true;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv9 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv8 = true;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv8 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv7 = true;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv7 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv6 = true;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv6 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv5 = true;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv5 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv4 = true;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv4 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv3 = true;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv3 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv2 = true;
            		sheet.fdv1 = true;
            	elseif sheet.fdv2 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv3 = false;
            		sheet.fdv1 = true;	
            	elseif sheet.fdv1 == true then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv3 = false;
            		sheet.fdv2 = false;
            	elseif sheet.fdv1 == false then
            		sheet.fdv12 = false;
            		sheet.fdv11 = false;
            		sheet.fdv10 = false;
            		sheet.fdv9 = false;
            		sheet.fdv8 = false;
            		sheet.fdv7 = false;
            		sheet.fdv6 = false;
            		sheet.fdv5 = false;
            		sheet.fdv4 = false;
            		sheet.fdv3 = false;
            		sheet.fdv2 = false;
            	end;
        end, obj);

    obj._e_event71 = obj.dataLink72:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            		if sheet.recon10 == 3 then
            		sheet.recon9 = 3;
            		sheet.recon8 = 3;
            		sheet.recon7 = 3;
            		sheet.recon6 = 3;
            		sheet.recon5 = 3;
            		sheet.recon4 = 3;
            		sheet.recon3 = 3;
            		sheet.recon2 = 3;
            		sheet.recon1 = 3;	
            		end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
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
        if self.dataLink71 ~= nil then self.dataLink71:destroy(); self.dataLink71 = nil; end;
        if self.imageCheckBox296 ~= nil then self.imageCheckBox296:destroy(); self.imageCheckBox296 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
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
        if self.dataLink68 ~= nil then self.dataLink68:destroy(); self.dataLink68 = nil; end;
        if self.imageCheckBox210 ~= nil then self.imageCheckBox210:destroy(); self.imageCheckBox210 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout249 ~= nil then self.layout249:destroy(); self.layout249 = nil; end;
        if self.imageCheckBox289 ~= nil then self.imageCheckBox289:destroy(); self.imageCheckBox289 = nil; end;
        if self.imageCheckBox304 ~= nil then self.imageCheckBox304:destroy(); self.imageCheckBox304 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.imageCheckBox271 ~= nil then self.imageCheckBox271:destroy(); self.imageCheckBox271 = nil; end;
        if self.frmTeste ~= nil then self.frmTeste:destroy(); self.frmTeste = nil; end;
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
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.layout365 ~= nil then self.layout365:destroy(); self.layout365 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
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
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
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
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.imageCheckBox326 ~= nil then self.imageCheckBox326:destroy(); self.imageCheckBox326 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.layout362 ~= nil then self.layout362:destroy(); self.layout362 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.layout325 ~= nil then self.layout325:destroy(); self.layout325 = nil; end;
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
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
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
        if self.imageCheckBox173 ~= nil then self.imageCheckBox173:destroy(); self.imageCheckBox173 = nil; end;
        if self.imageCheckBox309 ~= nil then self.imageCheckBox309:destroy(); self.imageCheckBox309 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox128 ~= nil then self.imageCheckBox128:destroy(); self.imageCheckBox128 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.imageCheckBox205 ~= nil then self.imageCheckBox205:destroy(); self.imageCheckBox205 = nil; end;
        if self.layout296 ~= nil then self.layout296:destroy(); self.layout296 = nil; end;
        if self.layout320 ~= nil then self.layout320:destroy(); self.layout320 = nil; end;
        if self.imageCheckBox315 ~= nil then self.imageCheckBox315:destroy(); self.imageCheckBox315 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.imageCheckBox333 ~= nil then self.imageCheckBox333:destroy(); self.imageCheckBox333 = nil; end;
        if self.layout200 ~= nil then self.layout200:destroy(); self.layout200 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox298 ~= nil then self.imageCheckBox298:destroy(); self.imageCheckBox298 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
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
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.imageCheckBox339 ~= nil then self.imageCheckBox339:destroy(); self.imageCheckBox339 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.layout329 ~= nil then self.layout329:destroy(); self.layout329 = nil; end;
        if self.imageCheckBox305 ~= nil then self.imageCheckBox305:destroy(); self.imageCheckBox305 = nil; end;
        if self.imageCheckBox231 ~= nil then self.imageCheckBox231:destroy(); self.imageCheckBox231 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.imageCheckBox247 ~= nil then self.imageCheckBox247:destroy(); self.imageCheckBox247 = nil; end;
        if self.dataLink69 ~= nil then self.dataLink69:destroy(); self.dataLink69 = nil; end;
        if self.layout211 ~= nil then self.layout211:destroy(); self.layout211 = nil; end;
        if self.layout347 ~= nil then self.layout347:destroy(); self.layout347 = nil; end;
        if self.layout309 ~= nil then self.layout309:destroy(); self.layout309 = nil; end;
        if self.imageCheckBox125 ~= nil then self.imageCheckBox125:destroy(); self.imageCheckBox125 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout303 ~= nil then self.layout303:destroy(); self.layout303 = nil; end;
        if self.layout222 ~= nil then self.layout222:destroy(); self.layout222 = nil; end;
        if self.layout302 ~= nil then self.layout302:destroy(); self.layout302 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout202 ~= nil then self.layout202:destroy(); self.layout202 = nil; end;
        if self.layout220 ~= nil then self.layout220:destroy(); self.layout220 = nil; end;
        if self.dataLink67 ~= nil then self.dataLink67:destroy(); self.dataLink67 = nil; end;
        if self.imageCheckBox322 ~= nil then self.imageCheckBox322:destroy(); self.imageCheckBox322 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.imageCheckBox262 ~= nil then self.imageCheckBox262:destroy(); self.imageCheckBox262 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
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
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.imageCheckBox237 ~= nil then self.imageCheckBox237:destroy(); self.imageCheckBox237 = nil; end;
        if self.imageCheckBox347 ~= nil then self.imageCheckBox347:destroy(); self.imageCheckBox347 = nil; end;
        if self.imageCheckBox291 ~= nil then self.imageCheckBox291:destroy(); self.imageCheckBox291 = nil; end;
        if self.layout219 ~= nil then self.layout219:destroy(); self.layout219 = nil; end;
        if self.layout245 ~= nil then self.layout245:destroy(); self.layout245 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout218 ~= nil then self.layout218:destroy(); self.layout218 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout333 ~= nil then self.layout333:destroy(); self.layout333 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
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
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.imageCheckBox258 ~= nil then self.imageCheckBox258:destroy(); self.imageCheckBox258 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.layout339 ~= nil then self.layout339:destroy(); self.layout339 = nil; end;
        if self.layout366 ~= nil then self.layout366:destroy(); self.layout366 = nil; end;
        if self.layout271 ~= nil then self.layout271:destroy(); self.layout271 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.layout253 ~= nil then self.layout253:destroy(); self.layout253 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox229 ~= nil then self.imageCheckBox229:destroy(); self.imageCheckBox229 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.layout292 ~= nil then self.layout292:destroy(); self.layout292 = nil; end;
        if self.imageCheckBox293 ~= nil then self.imageCheckBox293:destroy(); self.imageCheckBox293 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
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
        if self.imageCheckBox134 ~= nil then self.imageCheckBox134:destroy(); self.imageCheckBox134 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
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
        if self.imageCheckBox338 ~= nil then self.imageCheckBox338:destroy(); self.imageCheckBox338 = nil; end;
        if self.layout348 ~= nil then self.layout348:destroy(); self.layout348 = nil; end;
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
        if self.layout213 ~= nil then self.layout213:destroy(); self.layout213 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.imageCheckBox303 ~= nil then self.imageCheckBox303:destroy(); self.imageCheckBox303 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
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
        if self.imageCheckBox348 ~= nil then self.imageCheckBox348:destroy(); self.imageCheckBox348 = nil; end;
        if self.imageCheckBox276 ~= nil then self.imageCheckBox276:destroy(); self.imageCheckBox276 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.layout321 ~= nil then self.layout321:destroy(); self.layout321 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout208 ~= nil then self.layout208:destroy(); self.layout208 = nil; end;
        if self.layout293 ~= nil then self.layout293:destroy(); self.layout293 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout356 ~= nil then self.layout356:destroy(); self.layout356 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.imageCheckBox270 ~= nil then self.imageCheckBox270:destroy(); self.imageCheckBox270 = nil; end;
        if self.layout297 ~= nil then self.layout297:destroy(); self.layout297 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.dataLink65 ~= nil then self.dataLink65:destroy(); self.dataLink65 = nil; end;
        if self.imageCheckBox281 ~= nil then self.imageCheckBox281:destroy(); self.imageCheckBox281 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.imageCheckBox201 ~= nil then self.imageCheckBox201:destroy(); self.imageCheckBox201 = nil; end;
        if self.imageCheckBox254 ~= nil then self.imageCheckBox254:destroy(); self.imageCheckBox254 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout324 ~= nil then self.layout324:destroy(); self.layout324 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.imageCheckBox317 ~= nil then self.imageCheckBox317:destroy(); self.imageCheckBox317 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.imageCheckBox209 ~= nil then self.imageCheckBox209:destroy(); self.imageCheckBox209 = nil; end;
        if self.imageCheckBox218 ~= nil then self.imageCheckBox218:destroy(); self.imageCheckBox218 = nil; end;
        if self.layout319 ~= nil then self.layout319:destroy(); self.layout319 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.imageCheckBox228 ~= nil then self.imageCheckBox228:destroy(); self.imageCheckBox228 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox261 ~= nil then self.imageCheckBox261:destroy(); self.imageCheckBox261 = nil; end;
        if self.imageCheckBox321 ~= nil then self.imageCheckBox321:destroy(); self.imageCheckBox321 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.layout197 ~= nil then self.layout197:destroy(); self.layout197 = nil; end;
        if self.layout355 ~= nil then self.layout355:destroy(); self.layout355 = nil; end;
        if self.layout214 ~= nil then self.layout214:destroy(); self.layout214 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
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
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.layout239 ~= nil then self.layout239:destroy(); self.layout239 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.layout354 ~= nil then self.layout354:destroy(); self.layout354 = nil; end;
        if self.layout258 ~= nil then self.layout258:destroy(); self.layout258 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.imageCheckBox311 ~= nil then self.imageCheckBox311:destroy(); self.imageCheckBox311 = nil; end;
        if self.imageCheckBox312 ~= nil then self.imageCheckBox312:destroy(); self.imageCheckBox312 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.layout332 ~= nil then self.layout332:destroy(); self.layout332 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout353 ~= nil then self.layout353:destroy(); self.layout353 = nil; end;
        if self.layout305 ~= nil then self.layout305:destroy(); self.layout305 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox230 ~= nil then self.imageCheckBox230:destroy(); self.imageCheckBox230 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
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
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.layout195 ~= nil then self.layout195:destroy(); self.layout195 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
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
        if self.layout283 ~= nil then self.layout283:destroy(); self.layout283 = nil; end;
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
        if self.dataLink63 ~= nil then self.dataLink63:destroy(); self.dataLink63 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.layout311 ~= nil then self.layout311:destroy(); self.layout311 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
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
        if self.dataLink72 ~= nil then self.dataLink72:destroy(); self.dataLink72 = nil; end;
        if self.imageCheckBox154 ~= nil then self.imageCheckBox154:destroy(); self.imageCheckBox154 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.layout307 ~= nil then self.layout307:destroy(); self.layout307 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.layout235 ~= nil then self.layout235:destroy(); self.layout235 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
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
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
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
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.imageCheckBox249 ~= nil then self.imageCheckBox249:destroy(); self.imageCheckBox249 = nil; end;
        if self.layout360 ~= nil then self.layout360:destroy(); self.layout360 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.layout268 ~= nil then self.layout268:destroy(); self.layout268 = nil; end;
        if self.layout351 ~= nil then self.layout351:destroy(); self.layout351 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.dataLink64 ~= nil then self.dataLink64:destroy(); self.dataLink64 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.imageCheckBox351 ~= nil then self.imageCheckBox351:destroy(); self.imageCheckBox351 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.layout364 ~= nil then self.layout364:destroy(); self.layout364 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.dataLink70 ~= nil then self.dataLink70:destroy(); self.dataLink70 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.layout230 ~= nil then self.layout230:destroy(); self.layout230 = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
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
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.imageCheckBox157 ~= nil then self.imageCheckBox157:destroy(); self.imageCheckBox157 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.imageCheckBox156 ~= nil then self.imageCheckBox156:destroy(); self.imageCheckBox156 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.layout227 ~= nil then self.layout227:destroy(); self.layout227 = nil; end;
        if self.imageCheckBox222 ~= nil then self.imageCheckBox222:destroy(); self.imageCheckBox222 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.imageCheckBox307 ~= nil then self.imageCheckBox307:destroy(); self.imageCheckBox307 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
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
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.layout201 ~= nil then self.layout201:destroy(); self.layout201 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout323 ~= nil then self.layout323:destroy(); self.layout323 = nil; end;
        if self.layout190 ~= nil then self.layout190:destroy(); self.layout190 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.imageCheckBox292 ~= nil then self.imageCheckBox292:destroy(); self.imageCheckBox292 = nil; end;
        if self.imageCheckBox308 ~= nil then self.imageCheckBox308:destroy(); self.imageCheckBox308 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.layout346 ~= nil then self.layout346:destroy(); self.layout346 = nil; end;
        if self.imageCheckBox195 ~= nil then self.imageCheckBox195:destroy(); self.imageCheckBox195 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.layout336 ~= nil then self.layout336:destroy(); self.layout336 = nil; end;
        if self.imageCheckBox344 ~= nil then self.imageCheckBox344:destroy(); self.imageCheckBox344 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.imageCheckBox283 ~= nil then self.imageCheckBox283:destroy(); self.imageCheckBox283 = nil; end;
        if self.layout250 ~= nil then self.layout250:destroy(); self.layout250 = nil; end;
        if self.imageCheckBox306 ~= nil then self.imageCheckBox306:destroy(); self.imageCheckBox306 = nil; end;
        if self.imageCheckBox215 ~= nil then self.imageCheckBox215:destroy(); self.imageCheckBox215 = nil; end;
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
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.layout215 ~= nil then self.layout215:destroy(); self.layout215 = nil; end;
        if self.layout221 ~= nil then self.layout221:destroy(); self.layout221 = nil; end;
        if self.imageCheckBox256 ~= nil then self.imageCheckBox256:destroy(); self.imageCheckBox256 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.layout334 ~= nil then self.layout334:destroy(); self.layout334 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout352 ~= nil then self.layout352:destroy(); self.layout352 = nil; end;
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
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.imageCheckBox146 ~= nil then self.imageCheckBox146:destroy(); self.imageCheckBox146 = nil; end;
        if self.layout313 ~= nil then self.layout313:destroy(); self.layout313 = nil; end;
        if self.layout280 ~= nil then self.layout280:destroy(); self.layout280 = nil; end;
        if self.imageCheckBox300 ~= nil then self.imageCheckBox300:destroy(); self.imageCheckBox300 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.imageCheckBox278 ~= nil then self.imageCheckBox278:destroy(); self.imageCheckBox278 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
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
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.imageCheckBox223 ~= nil then self.imageCheckBox223:destroy(); self.imageCheckBox223 = nil; end;
        if self.imageCheckBox266 ~= nil then self.imageCheckBox266:destroy(); self.imageCheckBox266 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.imageCheckBox245 ~= nil then self.imageCheckBox245:destroy(); self.imageCheckBox245 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.imageCheckBox259 ~= nil then self.imageCheckBox259:destroy(); self.imageCheckBox259 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.layout291 ~= nil then self.layout291:destroy(); self.layout291 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout294 ~= nil then self.layout294:destroy(); self.layout294 = nil; end;
        if self.layout233 ~= nil then self.layout233:destroy(); self.layout233 = nil; end;
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
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.imageCheckBox203 ~= nil then self.imageCheckBox203:destroy(); self.imageCheckBox203 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.layout342 ~= nil then self.layout342:destroy(); self.layout342 = nil; end;
        if self.layout350 ~= nil then self.layout350:destroy(); self.layout350 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
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
        if self.dataLink66 ~= nil then self.dataLink66:destroy(); self.dataLink66 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.imageCheckBox144 ~= nil then self.imageCheckBox144:destroy(); self.imageCheckBox144 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.layout184 ~= nil then self.layout184:destroy(); self.layout184 = nil; end;
        if self.layout161 ~= nil then self.layout161:destroy(); self.layout161 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.layout286 ~= nil then self.layout286:destroy(); self.layout286 = nil; end;
        if self.layout349 ~= nil then self.layout349:destroy(); self.layout349 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.layout265 ~= nil then self.layout265:destroy(); self.layout265 = nil; end;
        if self.imageCheckBox212 ~= nil then self.imageCheckBox212:destroy(); self.imageCheckBox212 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox282 ~= nil then self.imageCheckBox282:destroy(); self.imageCheckBox282 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.imageCheckBox273 ~= nil then self.imageCheckBox273:destroy(); self.imageCheckBox273 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
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
        if self.layout284 ~= nil then self.layout284:destroy(); self.layout284 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout237 ~= nil then self.layout237:destroy(); self.layout237 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.layout340 ~= nil then self.layout340:destroy(); self.layout340 = nil; end;
        if self.imageCheckBox232 ~= nil then self.imageCheckBox232:destroy(); self.imageCheckBox232 = nil; end;
        if self.imageCheckBox167 ~= nil then self.imageCheckBox167:destroy(); self.imageCheckBox167 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.layout301 ~= nil then self.layout301:destroy(); self.layout301 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPokeRPGT1_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPokeRPGT1_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPokeRPGT1_svg = {
    newEditor = newfrmPokeRPGT1_svg, 
    new = newfrmPokeRPGT1_svg, 
    name = "frmPokeRPGT1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmPokeRPGT1_svg = _frmPokeRPGT1_svg;
Firecast.registrarForm(_frmPokeRPGT1_svg);

return _frmPokeRPGT1_svg;
